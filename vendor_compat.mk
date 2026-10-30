# Copyright (C) 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

_n8020_vendor_compat_local_path := $(LOCAL_PATH)
LOCAL_PATH := vendor/samsung/n8020
include vendor/samsung/n8020/n8020-vendor.mk

# Generate the Qualcomm RIL with the source-built libcutils dependency.
PRODUCT_COPY_FILES := $(filter-out %:vendor/lib/libsec-ril.so %:vendor/lib/libcutils-v29.so,$(PRODUCT_COPY_FILES))

LOCAL_PATH := $(_n8020_vendor_compat_local_path)
_n8020_vendor_compat_local_path :=
