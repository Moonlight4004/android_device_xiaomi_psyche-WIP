#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit psyche device configuration
$(call inherit-product, device/xiaomi/psyche/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_psyche
PRODUCT_DEVICE := psyche
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 12x
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="psyche_eea_global-user 12 RKQ1.211001.001/V13.0.2.0.SLDEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/psyche_eea_global/psyche:12/RKQ1.211001.001/V13.0.2.0.SLDEUXM:user/release-keys
