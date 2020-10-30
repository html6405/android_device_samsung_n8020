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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/n80xx-common/BoardConfigCommon.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

TARGET_BUILD_VARIANT:=user

LOCAL_PATH := device/samsung/n8020

# Headers
TARGET_SPECIFIC_HEADER_PATH += device/samsung/n8020/include

# Exynos4x12 Tablet
BOARD_GLOBAL_CFLAGS += -DEXYNOS4X12_TABLET

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/n80xx
TARGET_KERNEL_CONFIG := lineageos_i925_defconfig

# Filesystem
BOARD_NAND_PAGE_SIZE := 2048
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11811160064
BOARD_FLASH_BLOCK_SIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/n8020/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/n8020/selinux

# assert
TARGET_OTA_ASSERT_DEVICE := m0,p4notelte,n8020,GT-N8020,SCH-I925,i925,p4noteltevzw

# inherit from the proprietary version
-include vendor/samsung/p4notelte/p4notelte-vendor-blobs.mk
