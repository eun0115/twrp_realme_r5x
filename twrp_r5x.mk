#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r5x device
$(call inherit-product, device/realme/r5x/device.mk)

PRODUCT_DEVICE := r5x
PRODUCT_NAME := twrp_r5x
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 Series
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

BUILD_FINGERPRINT := realme/aosp_r5x/r5x:14/AP1A.240405.002/eng.celest.20240419.133510:userdebug/release-keys
