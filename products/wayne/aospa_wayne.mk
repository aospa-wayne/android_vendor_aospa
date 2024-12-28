#
# Copyright (C) 2022 The LineageOS Project
# Copyright (C) 2021-2022 Miku UI
#
# SPDX-License-Identifier: Apache-2.0
#

# Check for target product
ifeq (aospa_wayne,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit from common AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aospa_wayne
PRODUCT_DEVICE := wayne
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := xiaomi/wayne/wayne:9/PKQ1.180904.001/V12.0.2.0.PDCCNXM:user/release-keys

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

endif
