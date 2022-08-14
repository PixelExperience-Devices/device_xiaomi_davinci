#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Extras
AWAKEN_BUILD_TYPE := official
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_NAME := awaken_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
