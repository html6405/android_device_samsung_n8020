#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/n8020

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:$(TARGET_COPY_OUT_RAMDISK)/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.target.rc

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# Include device blobs first
$(call inherit-product, vendor/samsung/n8020/n8020-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk