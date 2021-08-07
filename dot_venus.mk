#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

PRODUCT_NAME := dot_venus
PRODUCT_DEVICE := venus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL :=Xiaomi Mi 11

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi-user 11 RKQ1.200928.002 V12.5.9.0.RKBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/venus/venus:11/RKQ1.200928.002/V12.5.9.0.RKBCNXM:user/release-keys
