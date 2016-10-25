
#
# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/falcon

# Assert
TARGET_OTA_ASSERT_DEVICE := xt1031,xt1032,xt1033,xt1034,falcon_umts,falcon_umtsds,falcon_cdma,falcon_retuaws,falcon,falcon_gpe

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

#Kernel Toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-

USE_CLANG_PLATFORM_BUILD := true

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9

# Kernel
KERNEL_OUT := $(ANDROID_BUILD_TOP)/$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
TARGET_KERNEL_SOURCE := kernel/motorola/msm8226
#BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := falcon_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_falcon
TARGET_RECOVERY_DEVICE_MODULES := libinit_falcon
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400 # 5930614784 - 16384
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 694288384

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/motorola/falcon/BoardConfigVendor.mk
