#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS
CHERISH_BUILD_TYPE=OFFICIAL

# Maintainer
CHERISH_MAINTAINER := Agatha

# Cherish Flags
CHERISH_CHIPSET := SM6225-5.15
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2400

# Rom Specific Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true
USE_PIXEL_CHARGING := true
TARGET_BUILD_APERTURE_CAMERA := false

# Gapps
WITH_GMS := true

# Device identifier
PRODUCT_NAME := cherish_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
