#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from maya-l22 device
$(call inherit-product, device/huawei/maya-l22/device.mk)

PRODUCT_DEVICE := maya-l22
PRODUCT_NAME := omni_maya-l22
PRODUCT_BRAND := huawei
PRODUCT_MODEL := maya-l22
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_maya-l22-user 6.0 MRA58K 1495900354 test-keys"

BUILD_FINGERPRINT := huawei/full_maya-l22/maya-l22:6.0/MRA58K/1495900354:user/test-keys
