ARCH:=aarch64
SUBTARGET:=filogic
BOARDNAME:=Filogic 8x0 (MT798x)
CPU_TYPE:=cortex-a53
DEFAULT_PACKAGES += fitblk kmod-phy-aquantia kmod-crypto-hw-safexcel wpad-basic-openssl uboot-envtools \
	kmod-mt7996-firmware kmod-mt7996e
KERNELNAME:=Image dtbs

define Target/Description
	Build firmware images for MediaTek Filogic ARM based boards.
endef
