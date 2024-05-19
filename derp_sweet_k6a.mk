#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet_k6a/device.mk)

# Inherit some common DerpFrest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_USES_PICO_GAPPS := true

PRODUCT_NAME := derp_sweet_k6a
PRODUCT_DEVICE := sweet_k6a
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/sweet_k6a_global/sweet_k6a:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_k6a_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys"
