## FDT apply command example

## Directory structure
## (mmc0)
##    + /
##      + filelist.txt
##      + aaa.txt
##      + bbb.txt
##
## [filelist.txt]
## filelist=aaa.txt bbb.txt

## known Variables

## local Variables
list_addr=0x90000000
item_addr=0x91000000
cur_path=""

## Script
ls mmc 0 /
load mmc 0 ${list_addr} ${cur_path}/filelist.txt
env import -t ${list_addr} ${filesize}
env print filelist

for filename in ${filelist}; do
	echo "test ${curpath}/${filename}"
	if test -e mmc 0 ${curpath}/${filename}; then
		load mmc 0 ${itemaddr} ${curpath}/${filename}
		echo "${curpath}/${filename} FOUND size=${filesize}"
	else
		echo "${curpath}/${filename} NOT FOUND"
	fi
done
