#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2023 Awayume
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TAB-A04-BR3 device
$(call inherit-product, device/sts-tottori/a04br3/device.mk)

PRODUCT_DEVICE := a04br3
PRODUCT_NAME := a04br3
PRODUCT_BRAND := benesse
PRODUCT_MODEL := a04br3
PRODUCT_MANUFACTURER := sts-tottori

PRODUCT_GMS_CLIENTID_BASE := android-sts-tottori

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TAB-A04-BR3-user 7.0 02.04.000 02.04.000 release-keys"

BUILD_FINGERPRINT := benesse/TAB-A04-BR3/TAB-A04-BR3:7.0/02.04.000/02.04.000:user/release-keys
