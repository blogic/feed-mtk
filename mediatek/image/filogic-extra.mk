
define Device/mediatek_mt7988a-arcadyan-mozart
  DEVICE_VENDOR := MediaTek / Arcadyan
  DEVICE_MODEL := Mozart
  DEVICE_DTS := mt7988a-arcadyan-mozart
  DEVICE_DTS_DIR := ../dts
  DEVICE_DTC_FLAGS := --pad 4096
  DEVICE_DTS_LOADADDR := 0x45f00000
  DEVICE_PACKAGES := blkid kmod-hwmon-pwmfan e2fsprogs f2fsck mkf2fs kmod-hwmon-pwmfan
  KERNEL_LOADADDR := 0x46000000
  KERNEL := kernel-bin | gzip
  KERNEL_INITRAMFS := kernel-bin | lzma | \
	fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb with-initrd | pad-to 64k
  KERNEL_INITRAMFS_SUFFIX := .itb
  KERNEL_IN_UBI := 1
  IMAGE_SIZE := $$(shell expr 64 + $$(CONFIG_TARGET_ROOTFS_PARTSIZE))m
  IMAGES := sysupgrade.bin sysupgrade.itb
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/sysupgrade.itb := append-kernel | fit gzip $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb external-with-rootfs | pad-rootfs | append-metadata
  SUPPORTED_DEVICES += arcadyan,mozart
endef
TARGET_DEVICES += mediatek_mt7988a-arcadyan-mozart
