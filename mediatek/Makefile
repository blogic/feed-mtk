# Copyright (c) 2015 OpenWrt.org
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=mediatek
BOARDNAME:=MediaTek Ralink ARM
SUBTARGETS:=mt7622 mt7623 mt7629 filogic
FEATURES:=dt-overlay emmc fpu gpio nand pci pcie rootfs-part separate_ramdisk squashfs usb

KERNEL_PATCHVER:=6.6

GENERIC_BACKPORT_DIR := ${CURDIR}/backport-$(KERNEL_PATCHVER)
GENERIC_PATCH_DIR := ${CURDIR}/pending-$(KERNEL_PATCHVER)
GENERIC_HACK_DIR := ${CURDIR}/hack-$(KERNEL_PATCHVER)
GENERIC_LINUX_CONFIG := ${CURDIR}/config-$(KERNEL_PATCHVER)
GENERIC_FILES_DIR := ${CURDIR}/files-generic

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	kmod-leds-gpio kmod-gpio-button-hotplug -wpad-basic-openssl

$(eval $(call BuildTarget))
