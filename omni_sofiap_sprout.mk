#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sofiap_sprout device
$(call inherit-product, device/motorola/sofiap_sprout/device.mk)

PRODUCT_DEVICE := sofiap_sprout
PRODUCT_NAME := omni_sofiap_sprout
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofiap_ao_eea-user 11 S0PRS32.44-11-10-2-11 0d901 release-keys"

BUILD_FINGERPRINT := motorola/sofiap_ao_eea/sofiap_sprout:11/S0PRS32.44-11-10-2-11/0d901:user/release-keys
