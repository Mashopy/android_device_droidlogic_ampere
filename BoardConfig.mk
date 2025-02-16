#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/droidlogic/ampere

## Bluetooth
BOARD_HAVE_BLUETOOTH := false

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := p281

## DTB
TARGET_DTB_NAME := gxl_p281_1g

## GPU
TARGET_AMLOGIC_GPU_ARCH := utgard

## Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=d0074000.emmc

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    ssv6xxx/ssv6051:kbuild \
    ssv6xxx/ssv6x5x:kbuild \
    ssv6xxx/ssv_hwif_ctrl:kbuild

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## TEE
TARGET_HAS_TEE := false

## Wi-Fi
BOARD_WLAN_DEVICE := amlogic
MULTI_WIFI_SUPPORT := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_multi
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_multi
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_CFI_INCLUDE_PATHS += hardware/amlogic/wifi/multi_wifi/wpa_supplicant_8_lib
PRODUCT_CFI_INCLUDE_PATHS += hardware/amlogic/wifi/wifi_hal/wpa_supplicant_8_lib

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/droidlogic/ampere/BoardConfigVendor.mk
