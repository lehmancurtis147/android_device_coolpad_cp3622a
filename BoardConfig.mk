#
# Copyright (C) 2017 The Android Open-Source Project
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

LOCAL_PATH := device/coolpad/cp3622a

-include vendor/coolpad/cp3622a/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := false

# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8909
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := cp3622a

# Architecture Extensions 
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_BASE         := 0x80000000
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_KERNEL_ADDRESS      := 0x80008000
BOARD_KERNEL_OFFSET       := 0x00008000
BOARD_KERNEL_SIZE         := 6511088
BOARD_SECOND_ADDRESS      := 0x80F00000
BOARD_SECOND_OFFSET       := 0x00F00000
BOARD_SECOND_SIZE         := 0
BOARD_RAMDISK_ADDRESS     := 0x81000000
BOARD_RAMDISK_OFFSET      := 0x01000000
BOARD_RAMDISK_SIZE        := 1151455
BOARD_KERNEL_TAGS_ADDRESS := 0x80000100
BOARD_KERNEL_TAGS_OFFSET  := 0x00000100
BOARD_KERNEL_SEPARATED_DT := false
BOARD_DT_SIZE             := 157696
BOARD_KERNEL_CMDLINE := \
	console=ttyHSL0,115200,n8 \
	androidboot.console=ttyHSL0 \
	androidboot.hardware=qcom \
	user_debug=31 \
	msm_rtb.filter=0x3F \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk

BOARD_MKBOOTIMG_ARGS := \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--cmdline '$(BOARD_KERNEL_CMDLINE)'
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Use qcom power hal
TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_CPU_BOOST_HINT := true


# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT := true
TW_NO_EXFAT_FUSE := true

# Logs
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# SELinux
TWHAVE_SELINUX := true
BOARD_SEPOLICY_DIRS += \
	$(LOCAL_PATH)/sepolicy

# MISC
BOARD_USES_QC_TIME_SERVICES := true

# Charger
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/charging_enabled
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_VARIANT := twrp

# TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH :=  /sys/devices/platform/msm_hsusb/gadget/lun0/file
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 10
TW_NEVER_UNMOUNT_SYSTEM := false
TW_TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Set to true in order to enable localization
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en

# MTP support
TW_EXCLUDE_MTP := true
TW_HAS_USB_STORAGE := true
TW_INCLUDE_FB2PNG := true
TWRP_NEW_THEME := true
TW_THEME := portrait_hdpi
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
