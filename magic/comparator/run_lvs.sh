#!/bin/bash
# Usage: run_rcx.sh <cellname>
# where <cellname> is a magic layout (<cellname>.mag)

PDK_ROOT=/home/jrsharp/old_home_mnt/asic/sky130_pdk/share/pdk/
PDK=sky130A

PDK_ROOT=${PDK_ROOT} magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc > magic.lvs.log << EOF
load strong_arm_latch
extract all
ext2spice lvs
ext2spice -o strong_arm_latch.lvs.out.spice
quit -noprompt
EOF

netgen -batch lvs "strong_arm_latch.lvs.out.spice strong_arm_latch" "strong_arm_latch.xschem.out.spice strong_arm_latch" ${PDK_ROOT}/${PDK}/libs.tech/netgen/${PDK}_setup.tcl

echo "Done!"
exit 0 
