#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_SUPPORTS_CAMERA := false
PRODUCT_IS_ATV := true

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)
$(call inherit-product, device/google/atv/products/atv_lowram_defaults.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := Droidlogic
PRODUCT_DEVICE := ampere
PRODUCT_GMS_CLIENTID_BASE := android-google-tv
PRODUCT_MANUFACTURER := Droidlogic
PRODUCT_MODEL := X96mini_RP
PRODUCT_NAME := lineage_ampere

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ampere-userdebug 9 PPR1.180610.011 20240520 test-keys" \
    BuildFingerprint=Droidlogic/ampere/ampere:9/PPR1.180610.011/20240520:userdebug/test-keys \
    DeviceName=ampere \
    DeviceProduct=ampere \
    SystemDevice=ampere \
    SystemName=ampere
