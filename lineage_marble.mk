#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble_global-user 15 AQ3A.250226.002 OS3.0.4.0.VMRMIXM release-keys" \
    BuildFingerprint=POCO/marble_global/marble:15/AQ3A.250226.002/OS3.0.4.0.VMRMIXM:user/release-keys \
    DeviceProduct=marble \
    SystemName=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Lunaris Official
LUNARIS_BUILD_TYPE := OFFICIAL
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true
WITH_BCR := true
TARGET_CUSTOM_UDFPS := false
WITH_GMS := true
TARGET_SUPPORTS_BLUR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
USE_REALITY_ENGINE := true
TORCH_STR_SUPPORTED := true
USE_ADVANCED_DISPLAY_COLOR := true

# Enable vulkan
USE_DEFAULT_VULKAN := true 


# For old devices add this also
# Vulkan video issue
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# refresh rate list (optional) - defining this flags makes the controller skip the parsing of Display.Mode refresh rates
# for supported refresh rates. The refresh rate controller will also assume that all the defined refresh rates are "supported"
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
