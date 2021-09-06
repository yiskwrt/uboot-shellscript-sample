## FDT apply command example

## Directory structure
## (mmc0)
##    + /
##      + config.dtb
##      + patch.dtbo
##

## known Variables
# fdt_addr = 0x80000000
# kernel_addr = 0x88000000

## local Variables
# patch_addr = 0x91000000

## Script
ls mmc 0 /
load mmc 0 ${fdt_addr} /config.dtb
fdt addr ${fdt_addr}
echo "before patch"
fdt print
load mmc 0 ${patch_addr} /patch.dtbo
fdt resize ${filesize}
fdt apply ${patch_addr}
echo "after patch"
fdt print
