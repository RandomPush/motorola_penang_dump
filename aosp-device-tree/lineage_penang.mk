#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from penang device
$(call inherit-product, device/motorola/penang/device.mk)

PRODUCT_DEVICE := penang
PRODUCT_NAME := lineage_penang
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Holi for arm64
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="penang_g-user 11 T1TP33.75-57-1 7b1563 release-keys"

BUILD_FINGERPRINT := motorola/penang_g/penang:11/T1TP33.75-57-1/7b1563:user/release-keys
