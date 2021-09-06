ARCH=arm64
ADDRESS=0xA0000000

conv:
	mkimage -A $(ARCH) -O u-boot -T script -C none -n "sample" -a $(ADDRESS) -d script.cmd script.scr
