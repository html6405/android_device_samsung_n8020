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

LOCAL_PATH := device/samsung/n8020

N8020 := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35

# Kernel
TARGET_KERNEL_CONFIG := lineageos_i925_defconfig

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_VENDORIMAGE_PARTITION_SIZE := 587202560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11811160048
BOARD_FLASH_BLOCK_SIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/n8020/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/n8020/selinux/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += device/samsung/n8020/selinux/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/samsung/n8020/selinux/private

# assert
TARGET_OTA_ASSERT_DEVICE := m0,p4notelte,n8020,GT-N8020,SCH-I925,i925,p4noteltevzw