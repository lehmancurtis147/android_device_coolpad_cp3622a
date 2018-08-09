#
# Copyright (C) 2016 The Android Open-Source Project
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

DEVICE_PATH := device/coolpad/cp3622a

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8909
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

TARGET_USES_PREBUILT_KERNEL := true

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# Kernel
BOARD_KERNEL_CMDLINE := \
	console=ttyHSL0,115200,n8 \
	androidboot.console=ttyHSL0 \
	androidboot.hardware=qcom \
	user_debug=31 \
	msm_rtb.filter=0x237 \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE         := 0x80000000
BOARD_NAME                := msm8909
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_HASH_TYPE           := sha1
BOARD_KERNEL_OFFSET       := 0x00008000
BOARD_RAMDISK_OFFSET      := 0x01000000
BOARD_SECOND_OFFSET       := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET  := 0x00000100
BOARD_KERNEL_SEPERATED_DT := true
BOARD_MKBOOTIMG_ARGS := \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--second_offset $(BOARD_SECOND_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--cmdline '$(BOARD_KERNEL_CMDLINE)'

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_PREBUILT_DT := $(DEVICE_PATH)/prebuilt/dt
# BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk

# TARGET_KERNEL_SOURCE := kernel/coolpad/cp3622a
# TARGET_KERNEL_CONFIG := msm8909_defconfig

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_SPARSE := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1825361920
BOARD_CACHEIMAGE_PARTITION_SIZE    := ox10000000
BOARD_OEMIMAGE_PARTITION_SIZE      := 0x100000
BOARD_FLASH_BLOCK_SIZE := 2048

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP
TW_THEME := portrait_mdpi
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_NO_CPU_TEMP := true
TW_NEVER_UNMOUNT_SYSTEM := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Encryption
#TW_INCLUDE_CRYPTO := true
