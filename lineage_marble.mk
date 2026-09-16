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

RISING_MAINTAINER="Dhanush & Ashwani"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 7+gen2" \
    RisingMaintainer="Dhanush & Ashwani"
RISING_MAINTAINER := Dhanush & Ashwani
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# CORE build flags
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# VANILLA build with MICROG
#WITH_GMS := false
#WITH_MICROG := true