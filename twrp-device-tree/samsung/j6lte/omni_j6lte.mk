#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from j6lte device
$(call inherit-product, device/samsung/j6lte/device.mk)

PRODUCT_DEVICE := j6lte
PRODUCT_NAME := omni_j6lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J600FN
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j6ltexx-user 10 QP1A.190711.020 J600FNXXS9CTI2 release-keys"

BUILD_FINGERPRINT := samsung/j6ltexx/j6lte:10/QP1A.190711.020/J600FNXXS9CTI2:user/release-keys
