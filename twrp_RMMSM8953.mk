#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, build/target/product/embedded.mk)

# DynaPart
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true


# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMMSM8953
PRODUCT_NAME := twrp_RMMSM8953
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := Realme 2 C1
PRODUCT_MANUFACTURER := Oppo
