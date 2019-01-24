# Bootloader
TARGET_BOOTLOADER_BOARD_NAME     := msm8909
TARGET_NO_BOOTLOADER             := false

# Platform
TARGET_BOARD_PLATFORM            := msm8909
TARGET_BOARD_PLATFORM_GPU        := qcom-adreno304

# Architecture
TARGET_ARCH                      := arm
TARGET_ARCH_VARIANT              := armv7-a-neon
TARGET_ARCH_VARIANT_CPU          := cortex-a9
TARGET_CPU_ABI                   := armeabi-v7a
TARGET_CPU_ABI2                  := armeabi
TARGET_CPU_SMP                   := true
TARGET_CPU_VARIANT               := cortex-a7

BOARD_KERNEL_CMDLINE             := \
	console=ttyHSL0,115200,n8 \
	androidboot.console=ttyHSL0 \
	androidboot.hardware=qcom \
	user_debug=31 \
	msm_rtb.filter=0x3F \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk

BOARD_KERNEL_BASE                 := 0x80000000
BOARD_KERNEL_PAGESIZE             := 2048
BOARD_MKBOOTIMG_ARGS              := \
	--base 0x80000000 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x01000000 \
	--tags_offset 0x00000100 \
	--dt device/coolpad/cp3622a/dt.img \
	--board ""

# prebuilt kernel
TARGET_PREBUILT_KERNEL             := device/coolpad/cp3622a/kernel

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1913651200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5815402496
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR   := true

TARGET_USERIMAGES_USE_EXT4         := true
TARGET_USERIMAGES_USE_F2FS         := true
BOARD_HAS_NO_SELECT_BUTTON         := true

# TWRP
TW_THEME                           := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH   := true
BOARD_SUPPRESS_SECURE_ERASE        := true
RECOVERY_SDCARD_ON_DATA            := true
BOARD_SUPPRESS_SECURE_ERASE        := true
RECOVERY_SDCARD_ON_DATA            := true
BOARD_HAS_NO_REAL_SDCARD           := true
TW_BRIGHTNESS_PATH                 := "/sys/class/leds/lcd-backlight/brightness"
TW_NO_SCREEN_TIMEOUT               := true
