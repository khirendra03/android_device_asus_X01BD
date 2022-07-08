#
# Copyright (C) 2020 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common evolutionOS stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# build tag
EVO_BUILD_TYPE := CUSTOM

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Asus Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003 8671607 release-keys"

# Build fingerprint
BUILD_FINGERPRINT="google/raven/raven:12/SQ3A.220705.003/8671607:user/release-keys"
