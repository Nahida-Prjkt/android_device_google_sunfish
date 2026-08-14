#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false
TARGET_BOOT_ANIMATION_RES := 1080

WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
WITH_PIXEL_LAUNCHER := false
TARGET_USE_MAPS := ftrue
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := false
USE_REALITY_ENGINE := true
PRODUCT_NO_CAMERA := true

# Enable UI enhancements
TARGET_ENABLE_BLUR := false
PERF_ANIM_OVERRIDE := true

# Enable features
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGING := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys" \
    BuildFingerprint=google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys \
    DeviceProduct=sunfish

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
