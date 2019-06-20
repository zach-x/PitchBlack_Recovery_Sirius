#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := sirius

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from omni custom product configuration
$(call inherit-product, vendor/batik/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sirius
PRODUCT_NAME := omni_sirius
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := sirius
TARGET_VENDOR_DEVICE_NAME := sirius
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=sirius \
    BUILD_PRODUCT=sirius \
    PRODUCT_NAME=sirius

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    ro.product.name=sirius \
    ro.product.mod_device=sirius_global
