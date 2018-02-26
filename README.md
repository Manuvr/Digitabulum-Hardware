# Digitabulum-Hardware


    .__       ,    .     .
    |  \* _ *-+- _.|_ . .|. .._ _
    |__/|(_]| | (_][_)(_||(_|[ | )
         ._|                      


Hardware source files for Manuvr's motion capture glove.

------------------------

## KiCAD Projects in this repo

### Production Parts

Project | Purpose
:-----|:------
Digitabulum-r2 | Sensor front-end PCB. (Pending release)
r2-Metacarpals | Flex circuit for the metacarpals. (Pending release)
r2-Digit | Flex circuit for digits. (Pending release)
[r2-Backplane](r2-Backplane) | A backplane PCB containing the power-management block and associated support circuits.
[Compute-WROOM32](Compute-WROOM32) | A digitabulum compute PCB based on Espressif's WROOM32 module.



### Hacking and Development Tools

Project | Purpose
:-----|:------
[r2-Dev-Backplane](r2-Dev-Backplane) | A backplane intended for developing CPLD images, Compute PCBs, and power management subsystems.
[PowerPlant-Module](PowerPlant-Module) | Digitabulum's power-management block implemented as a stand-alone breadboard module.
[r2-Adapter](r2-Adapter) | A debugging and development tool. It adapts a Digitabulum board to a standard breadboard. It is also useful as a template for a custom backplane.
[Compute-Template](Compute-Template) | A debugging and development tool. Provides a breakout to the compute/comm PCB connector on an r2-Backplane. It is also useful as a template for a custom Compute PCB.
[SmallTools](SmallTools) | Debugging and development tools.


------------------------

## 3D Models

Blender files for various casings and mocks can be found in the [3DModels](3DModels directory).


------------------------

## License

Manuvr's logo (our trademark) is provided indirectly for the sake of reproducing PCBs of our design, but may not be used on original work without written permission from Manuvr, Inc.
