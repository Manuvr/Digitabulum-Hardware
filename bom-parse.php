#!/usr/bin/php
<?php
/*
* Author:    J. Ian Lindsay
* File:      bom_parse.php
*
* This is a script to parse KiCAD BOM files, and scrape Digikey's site to estimate the cost of
*   building so many copies of the design (defaults to cost for a single copy).
*
*
* VERSION HISTORY:
* ========================================================================================================================
* 0.0.1:      Created file, and added the boilerplate.
* 0.1.3:      Began tracking version information in the source file itself. Added multi-BOM support.
* 0.1.4:      Follow 301 redirects. Changed field names to something meaningful. Fixed delimiters.
* 0.1.5:      Ugly hack to intercetp a formed URL for a specific part, whose BOM values won't systematize nicely.
*
*
*/

/*
Goto URL and parse the values from the following table...

<tr><th>Price Break</th><th>Unit Price</th><th>Extended Price
</th></tr>
<tr><td align=center >1</td><td align="right" >0.32000</td><td align="right" >0.32</td></tr>
<tr><td align=center >10</td><td align="right" >0.28000</td><td align="right" >2.80</td></tr>
<tr><td align=center >25</td><td align="right" >0.20000</td><td align="right" >5.00</td></tr>
<tr><td align=center >50</td><td align="right" >0.17000</td><td align="right" >8.50</td></tr>
<tr><td align=center >100</td><td align="right" >0.14000</td><td align="right" >14.00</td></tr>
<tr><td align=center >250</td><td align="right" >0.11200</td><td align="right" >28.00</td></tr>
<tr><td align=center >500</td><td align="right" >0.10200</td><td align="right" >51.00</td></tr>
<tr><td align=center >1,000</td><td align="right" >0.09200</td><td align="right" >92.00</td></tr>
<tr><td align=center >2,500</td><td align="right" >0.08000</td><td align="right" >200.00</td></tr>
</table></td></tr>
*/


/****************************************************************************************************
* Runtime constants                                                                                 *
****************************************************************************************************/
define('DK_P_NUM',      'Digikey_Number');
define('MANU_P_NUM',    'Manu_Number');
define('DK_BASE_URL',   'http://www.digikey.com/product-detail/en/');
define('CACHE_FILE',    '.bom_parse_cache');
define('LOG_FILE',      '.bom_parse_log');

define('CONSOLE_WIDTH',        64);


define('COMPONENT_NAME',     'BOM_PARSER');
define('COMPONENT_VERSION',  '0.1.5');


$maximum_src_str_len = 4;


function dump_script_header() {
  $f_dat = file_get_contents(__FILE__);
  $offset = strpos($f_dat, "/*") + 2;
  $length = (strpos($f_dat, "*/") - $offset) - 2;
  $nu_mass = substr($f_dat, $offset, $length);
  $nu_mass = str_replace("\n* ", "\n", $nu_mass);
  $nu_mass = str_replace("\n*", "\n", $nu_mass);
  echo $nu_mass;
  echo "This file's SHA256 hash is ".hash_file('sha256', __FILE__)."\n";
  return true;
}

  
/*
* Logging function.
*/
function appendToLog($source, $message, $level = 7) {
  global $conf, $maximum_src_str_len;
  $cli = true;
  $maximum_src_str_len = max($maximum_src_str_len, strlen($source));
  
  if (isset($conf['verbosity']) && $conf['verbosity'] >= $level) {
    switch ($level) {
      case 0:
      case 1:
        echo "\033[00;31m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      case 2:
      case 3:
        echo "\033[01;31m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      case 4:
        echo "\033[01;33m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      case 5:
        echo "\033[01;35m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      case 6:
        echo "\033[00;32m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      case 7:
        echo "\033[01;32m".str_pad($source, $maximum_src_str_len+3)."\033[0m".$message."\n";
        break;
      default:
        echo $message."\n";
        break;
    }
  }
}




function cURL($url, $post = false){
    $results        = array();
    $ch = curl_init();
    if ($post) {
        if (is_array($post)) {
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
        }
        else {
            $url    = ($post)       ? $url.'?'.$post : $url;
        }
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); 
    $results['results']     = curl_exec($ch);
    if ($results['results'] === false) {
        appendToLog(__METHOD__, 'The cURL library had a bad problem: '.curl_error($ch), 1);
    }
    $info           = curl_getinfo($ch);
    $results['http_code']   = $info['http_code'];
    curl_close($ch);
    return $results;
}


function cache_price_data($prices) {
  if (count($prices) > 0) {
    $data = base64_encode(json_encode($prices))."\n";
    if (! file_put_contents(CACHE_FILE, $data, FILE_APPEND)) {
      appendToLog(__METHOD__, 'Failed to write cache file.', 2);
    }
    else {
      appendToLog(__METHOD__, 'Wrote '.count($prices).' part prices to the cache.', 5);
    }
  }
}
 

function clear_cached_price_data() {
  if (false === file_put_contents(CACHE_FILE, "")) {
    appendToLog(__METHOD__, 'Failed to clear cache.', 2);
  }
}



function populate_cache() {
  $return_value = array();
  if (!file_exists(CACHE_FILE)) return $return_value;
  
  $data = file_get_contents(CACHE_FILE);
  if ($data) {
    // The cache file exists, was readable, and was not empty.
    $ex_arr = explode("\n", $data);
    $i = 0;
    foreach ($ex_arr as $encoded_price) {
      $usable_array = json_decode(base64_decode($encoded_price), true);
      if (is_array($usable_array)) {
        foreach ($usable_array as $key => $value) {
          $return_value[$key] = $value;
          $i++;
        }
      }
    }
    appendToLog(__METHOD__, 'Loaded '.$i.' cached part prices.', 5);
  }
  return $return_value;
}



function parse_html_into_array($html) {
  $return_value = array();
  $rows = explode('</tr>', $html);
  if (count($rows) > 1) {
    array_shift($rows);  // Throw away the table header...
  }
  foreach ($rows as $row) {
    $row_parsed = str_ireplace('</td>', '^', $row);
    $stripped = trim(strip_tags($row_parsed), "\"\t\n\r\0");
    $fields = explode('^', $stripped);
    if (count($fields) >= 2) {
      $fields[0] = str_replace(',', '', $fields[0]);
      $return_value[] = array($fields[0], $fields[1]);
    }
  }
  return $return_value;
}


function parse_price_for_part($manu_part, $dk_part) {
  if ((strlen($manu_part) == 0) || (strlen($dk_part) == 0)) {
    return false;
  }
  if ($dk_part == 'LTC2942CDCB-1#TRMPBFCT-ND') {
    $url = 'https://www.digikey.com/product-detail/en/LTC2942CDCB-1-TRMPBF/LTC2942CDCB-1-TRMPBFCT-ND/2355253';
  }
  else {
    $url = DK_BASE_URL.urlencode($manu_part).'/'.urlencode($dk_part);
  }
  $t_res = cURL($url);
  if ($t_res) {
    if (($t_res['http_code'] < 300) && ($t_res['http_code'] >= 200)) {
      $start = strpos($t_res['results'], 'Price Break');
      if ($start) {
        $stop = strpos($t_res['results'], '</table>', $start);
        if ($stop) {
          $markup_block = substr($t_res['results'], $start, ($stop - $start));
          return parse_html_into_array($markup_block);
        }
      }
    }
    else {
      echo "Bad HTTP return code: ".$t_res['http_code']." from URL ".$url."\n";
    }
  }
  return false;
}


function print_usage() {
  global $argv;
  echo COMPONENT_NAME.' v'.COMPONENT_VERSION."\n\n";
  echo 'Usage: '.basename($argv[0])." <BOM File> [options]\n\n";
  echo str_pad("===<\033[01;35m Availible options \033[0m>=", CONSOLE_WIDTH, '=')."\n";
  echo "  --units        How many units to calculate cost for? Defaults to 1.\n";
  echo "  --non-bom-cost Supply an extra per-unit cost that is not reflected in the BOM.\n\n";
  
  echo " Output and formatting\n";
  echo "  --width        Set the maximum comlumn width. Defaults to unlimited.\n";
  echo "  --show-breaks  Print a column to indicate price-breaks on quantity.\n";
  echo "  --output-file  Write a tab-delimited output file for import into a spreadsheet.\n\n";
  
  echo " Price data caching\n";
  echo "  --cache-stats  Dump the cache and some of its stats.\n";
  echo "  --cache-clear  Wipe the cache file.\n";
  echo "\n\n";
}



function read_and_parse_bom_files($bom_file_list) {
  global $field_defs;        // TODO: Yuck.
  $return_value = array();   // TODO: Unpleasing. Remove once better idea happens.
  
  $first_file = true;
  foreach ($bom_file_list as $bom_file) {
    if (file_exists($bom_file)) {
      $bom_raw = file_get_contents($bom_file);
      if ($bom_raw) {
        
        /* Split the file up by lines... */
        $rows_raw = explode("\n", $bom_raw);
        
        /* Throw away any chaff lines... */
        foreach ($rows_raw as $key => $value) {
          if (strlen($value) < 3) unset($rows_raw[$key]);
        }
        
        /* Retain the first non-empty line of the file. It will be our field list. */
        // TODO: Need to compare these... If they are not the same, confusing things will happen.
        if ($first_file) $field_defs = explode(",", $rows_raw[0]);
        
        /* Discard the field def row. */
        unset($rows_raw[0]);
        
        /* Merge the results down into the return value. */
        $return_value = array_merge($return_value, $rows_raw);
        
        appendToLog(__METHOD__, $bom_file.' contained '.count($rows_raw).' parts.', 6);
      }
      else {
        die("The BOM file exists, but we were unable to read anything from it.\n");
      }
    }
    else {
      die("BOM file not found.\n");
    }
    $first_file = false;
  }

  return $return_value;
}



/****************************************************************************************************
* Execution begins below this block.                                                                *
****************************************************************************************************/

$conf = array('verbosity'      => 3,
              'width'             => CONSOLE_WIDTH,
              'tabs'              => false,
              'show-breaks'       => false,
              'hide-failures'     => false,
              'non-bom-cost'      => 0,
              'units'             => 1);

if (count($argv) < 2) {
  print_usage();
  dump_script_header();
  die();
}

$bom_file_list = array();


$i = 1;
while ($i < $argc) {
  if (strpos($argv[$i], '--') !== false) {
    $temp_key = substr(strtolower($argv[$i]), 2);
    if ((($i + 1) < $argc) && (strpos($argv[$i+1], '--') === false)) {
      $conf[$temp_key] = $argv[++$i];
    }
    else {
      switch ($temp_key) {
        case 'cache-stats':
          $conf['cache-stats'] = true;
          break;
        case 'cache-clear':
          clear_cached_price_data();
          exit(0);
        case 'hide-failures':
          $conf['hide-failures'] = true;
          break;
        case 'show-breaks':
          $conf['show-breaks'] = true;
          break;
      }
    }
  }
  else {
    $bom_file_list[] = $argv[$i];
  }
  $i++;
}


$price_cache = populate_cache();

/* These are one-off sub-programs that don't involve loading the BOM. */
if (isset($conf['cache-stats'])) {
  echo str_pad("===<\033[01;35m Part Price Cache \033[0m>=", CONSOLE_WIDTH, '=')."\n";
  echo '  '.count($price_cache)." Digikey part numbers have been cached.\n\n";
  exit(0);
}


/* Read in all of the BOM files... */
$field_defs  = false;
$bom_return  = read_and_parse_bom_files($bom_file_list);


  


{
  {
    $failures = array();
    $successes = array();
    $condensed_part_list = array();
    
    // Read the first line to get field indicies...
    $f_indicies = array();
    foreach ($field_defs as $key => $value) {
      $f_indicies[trim($value)] = trim($key, "\"\t\n\r\0");
      appendToLog(__METHOD__, 'Found field '.$value.' with index '.$key);
    }
    
    for ($i=0; $i < count($bom_return); $i++) {
      str_replace("\t\t", "\t~\t", $bom_return[$i]);
      $temp_row_asploded = explode("\",\"", $bom_return[$i]);
      
      if (count($temp_row_asploded) >= max($f_indicies[DK_P_NUM], $f_indicies[MANU_P_NUM])) {  // Is there a chance our required fields exist?
        for ($j=0; $j < count($temp_row_asploded); $j++) {
          $temp_row_asploded[$j] = trim($temp_row_asploded[$j], "\"\t\n\r\0");  // Lose the needless whitespace in all fields...
        }
        
        if ((strlen($temp_row_asploded[$f_indicies[MANU_P_NUM]]) > 0) && (strlen($temp_row_asploded[$f_indicies[DK_P_NUM]]) > 0)) {
          // If the required fields are populated, lets add the part to our list of lookups...
          if (array_key_exists($temp_row_asploded[$f_indicies[DK_P_NUM]], $condensed_part_list)) {
            // Have we seen this part yet?
            $condensed_part_list[$temp_row_asploded[$f_indicies[DK_P_NUM]]]['quantity']++;
          }
          else {
            // If not, add it to our lookup list...
            $condensed_part_list[$temp_row_asploded[$f_indicies[DK_P_NUM]]] = array('quantity' => 1, 'ref' => $temp_row_asploded[0], 'manu_part' => $temp_row_asploded[$f_indicies[MANU_P_NUM]], 'prices' => array());
          }
          if (!isset($condensed_part_list[$temp_row_asploded[$f_indicies[DK_P_NUM]]]['ref_list'])) {
            // Add this part ref to the list of refs that this part satisfies...
            $condensed_part_list[$temp_row_asploded[$f_indicies[DK_P_NUM]]]['ref_list'] = array();
          }
          $condensed_part_list[$temp_row_asploded[$f_indicies[DK_P_NUM]]]['ref_list'][] = $temp_row_asploded[0];
        }
        else {
          $failures[$temp_row_asploded[0]] = 'Fields exist, but are empty.';
        }
      }
      else {
        $failures[$temp_row_asploded[0]] = 'Fields do not exist.';
      }
    }
      
    // Now to tie price data to the parts...
    $new_price_data = array();
    foreach (array_keys($condensed_part_list) as $dk_part) {
      if (!isset($price_cache[$dk_part])) {
      // Go out to the world and fetch price data for each unique part number we have. If that works, add the price data to the part...
      $temp_pp = parse_price_for_part($condensed_part_list[$dk_part]['manu_part'], $dk_part);
      if ($temp_pp) {
        $condensed_part_list[$dk_part]['prices'] = $temp_pp;
        $new_price_data[$dk_part] = $temp_pp;
        $price_cache[$dk_part] = $temp_pp;
      }
      else {
        $failures[$condensed_part_list[$dk_part]['ref']] = 'Failed to retrieve or parse price data.';
      }
      }
      else {
      $condensed_part_list[$dk_part]['prices'] = $price_cache[$dk_part];
      }
    }
    
    if (count($new_price_data) > 0) {
      cache_price_data($new_price_data);
    }
    
    // Calculate total cost...
    $total_cost = 0;
    foreach (array_keys($condensed_part_list) as $dk_part) {
      $p_break = 0;
      if (isset($condensed_part_list[$dk_part]['prices'])) {
        $p_break = $condensed_part_list[$dk_part]['prices'][0][1];
        $condensed_part_list[$dk_part]['price-break'] = 1;
        
        foreach ($condensed_part_list[$dk_part]['prices'] as $p) {
          $quant = $p[0];
          $paq   = $p[1];
          if ($conf['units'] * $condensed_part_list[$dk_part]['quantity'] >= $quant) {
            $p_break = $paq;
            $condensed_part_list[$dk_part]['price-break'] = $quant;
          }
        }
        $condensed_part_list[$dk_part]['total_price'] = $conf['units'] * $p_break * $condensed_part_list[$dk_part]['quantity'];
        $total_cost += $condensed_part_list[$dk_part]['total_price'];
      }
      else {
        $failures[$condensed_part_list[$dk_part]['ref']] = 'No price data in object, despite indications of successful retreival..';
      }
    }
    
    $max_lengths = array(0,0,0,0,0);
    if ($conf['show-breaks']) {
      $max_lengths[] = 0;
    }
    foreach ($condensed_part_list as $dk_part => $p_data) {
      $max_lengths[0] = max($max_lengths[0], strlen($dk_part)+1);
      $max_lengths[1] = max($max_lengths[1], strlen($p_data['manu_part'])+1);
      $max_lengths[2] = max($max_lengths[2], strlen($p_data['quantity'])+1);
      $max_lengths[3] = max($max_lengths[3], strlen($p_data['total_price'])+1);
      $max_lengths[4] = min($conf['width'], max($max_lengths[4], strlen(implode(',', $p_data['ref_list']))+1));
      if ($conf['show-breaks']) {
        $max_lengths[5] = max($max_lengths[5], strlen($condensed_part_list[$dk_part]['price-break'])+1);
      }
    }
    echo str_pad("Ref", $max_lengths[4]).str_pad("DK Part #", $max_lengths[0]).str_pad("Manu Part #", $max_lengths[1]).str_pad("Q", $max_lengths[2]).str_pad("Cost", $max_lengths[3])."\n";
    echo str_pad("=", $max_lengths[0] + $max_lengths[1] + $max_lengths[2] + $max_lengths[3] + $max_lengths[4] + (($conf['show-breaks'])?$max_lengths[5]:0), '=')."\n";
    $csv_output_string = '';
    if (isset($conf['output-file'])) {
      // Write a header for the output file if it was requested.
      $csv_output_string .= "REF\tDIGIKEY #\tMANU #\tQUANTITY\tTOTAL COST\n";
    }
    foreach ($condensed_part_list as $dk_part => $p_data) {
      $txt_overflow = array('');
      $tof_pos = 0;
      foreach ($p_data['ref_list'] as $current_ref) {
        $csv_output_string .= $current_ref.' ';
        if ((strlen($txt_overflow[$tof_pos]) + strlen($current_ref) + 2) >= $conf['width']) {
          $tof_pos++;
          $txt_overflow[$tof_pos] = '  '.$current_ref;
        }
        else {
          if (strlen($txt_overflow[$tof_pos]) > 0) {
            $txt_overflow[$tof_pos] .= ', ';
          }
          $txt_overflow[$tof_pos] .= $current_ref;
        }
      }
      $temp_ref_str = array_shift($txt_overflow);
      echo str_pad($temp_ref_str, $max_lengths[4]).str_pad($dk_part, $max_lengths[0]).str_pad($p_data['manu_part'], $max_lengths[1]).str_pad($p_data['quantity'], $max_lengths[2]).str_pad($p_data['total_price'], $max_lengths[3]);
      
      if (isset($conf['output-file'])) {
        $csv_output_string .= "\t".$dk_part."\t".$p_data['manu_part']."\t".$p_data['quantity']."\t".$p_data['total_price']."\n";
      }
      
      if ($conf['show-breaks']) {
        echo str_pad($p_data['price-break'], $max_lengths[5]);
      }
      echo "\n";
      while (count($txt_overflow) > 0) {
        echo array_shift($txt_overflow)."\n";
      }
    }
    if (isset($conf['output-file'])) {
      file_put_contents($conf['output-file'], $csv_output_string);
    }
    if ($conf['non-bom-cost'] > 0) {
      echo str_pad('NON-BOM', $max_lengths[4]).str_pad(' ', $max_lengths[0]).str_pad(' ', $max_lengths[1]).str_pad('1', $max_lengths[2]).str_pad(($conf['non-bom-cost']*$conf['units']), $max_lengths[3])."\n";
      $total_cost += $conf['non-bom-cost'] * $conf['units'];
    }
    
    echo str_pad("=", $max_lengths[0] + $max_lengths[1] + $max_lengths[2] + $max_lengths[3] + $max_lengths[4] + (($conf['show-breaks'])?$max_lengths[5]:0), '=')."\n";
    echo "Total cost per unit: ".($total_cost / $conf['units'])."\n";
    if ($conf['units'] > 1) {
      echo "Total cost for ".$conf['units']." units: ".($total_cost)."\n";
    }
    echo "\n\n\n";
  
    // Print failures...
    if ((!$conf['hide-failures']) & (count($failures) > 0)) {
      echo "These parts failed:\n";
      
      $max_lengths = array(0,0);
      foreach ($failures as $dk_part => $failure) {
        $max_lengths[0] = max($max_lengths[0], strlen($dk_part)+1);
        $max_lengths[1] = max($max_lengths[1], strlen($failure)+1);
      }
      echo str_pad("Ref", $max_lengths[0]).str_pad("Failure Cause", $max_lengths[1])."\n";
      echo str_pad("=", $max_lengths[0] + $max_lengths[1], '=')."\n";
      foreach ($failures as $ref => $failure) {
        echo str_pad($ref, $max_lengths[0]).str_pad($failure, $max_lengths[1])."\n";
        $max_lengths[0] = max($max_lengths[0], strlen($ref)+1);
        $max_lengths[1] = max($max_lengths[1], strlen($failure)+1);
      }
    }
  }
}



?>
