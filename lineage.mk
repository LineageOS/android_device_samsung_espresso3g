#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit common LineageOS configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# LineageOS specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso3g/overlay/custom
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressowifi/overlay/custom-common

# Inherit device specific configuration
$(call inherit-product, device/samsung/espresso3g/aosp_espresso3g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_espresso3g

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espresso10rfxx \
    BUILD_FINGERPRINT="samsung/espresso10rfxx/espresso10rf:4.2.2/JDQ39/P5100XXDNA1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10rfxx-user 4.2.2 JDQ39 P5100XXDNA1 release-keys"

# Packages
PRODUCT_PACKAGES += \
    SamsungServiceMode
