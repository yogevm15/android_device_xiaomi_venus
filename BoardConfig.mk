#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/venus

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 411

# Fingerprint
SOONG_CONFIG_XIAOMI_LAHAINA_FOD_POS_X = 439
SOONG_CONFIG_XIAOMI_LAHAINA_FOD_POS_Y = 1655
SOONG_CONFIG_XIAOMI_LAHAINA_FOD_SIZE = 202

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_venus
TARGET_RECOVERY_DEVICE_MODULES := libinit_venus

# Kernel
TARGET_KERNEL_CONFIG := venus_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := venus

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/venus/BoardConfigVendor.mk
