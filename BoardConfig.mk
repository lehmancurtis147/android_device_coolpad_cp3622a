LOCAL_PATH := $(call my-dir)device/coolpad/cp3622a

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

KBUILD_OUTPUT += \
    $(mkdir "/home/curtis/android/5.1/out/target/product/cp3622a/obj/KERNEL_OBJ/usr")

# Platform
TARGET_CROSS_COMPILE := arm-linux-androideabi-
TARGET_NO_BOOTLOADER := true
BOARD_VENDOR := Coolpad
TARGET_PLATFORM := android-22
TARGET_BOARD_PLATFORM := msm8909
TARGET_SOC := qcom
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304
TARGET_BOOTLOADER_BOARD_NAME := cp3622a
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_CORTEX_A7 := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := cp3622a

# codename
TARGET_OTA_ASSERT_DEVICE := cp3622a

# device tree path
DEVICE_PATH := device/coolpad/cp3622a

# include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Audio
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# FM radio
TARGET_QCOM_NO_FM_FIRMWARE := true

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Kernel
TARGET_USES_PREBUILT_KERNEL := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board
TARGET_KERNEL_HEADER_ARCH := arm
BOARD_KERNEL_ARCH := $(TARGET_ARCH)
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
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_NAME := cp3622a
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100           
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CROSS_COMPILE := /home/curtis/android/5.1/ndk/toolchains/arm-linux-androideabi-4.8
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
TARGET_KERNEL_SOURCE := /kernel/coolpad/cp3622a
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_DEFCONFIG := cp3622a_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):/home/curtis/android/5.1/out/target/product/cp3622a/obj/KERNEL_OBJ/usr

# TARGET_CUSTOM_DTBTOOL := $(LOCAL_PATH)/dtbtool/Android.mk

# Extracted with libbootimg
# BOARD_CUSTOM_BOOTIMG_MK :=  $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_SEPERATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board
TARGET_CUSTOM_DTBTOOL := $(LOCAL_PATH)/dtbtool/Android.mk

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory
MALLOC_IMPL := dlmalloc

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1825361920
BOARD_CACHEIMAGE_PARTITION_SIZE := ox10000000
BOARD_OEMIMAGE_PARTITION_SIZE := 0x100000
BOARD_FLASH_BLOCK_SIZE := 131072

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp/twrp.fstab
TARGET_USERIMAGES_USE_EXT4 := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/coolpad/cp3622a/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    file_contexts \
    kernel.te \
    mediaserver.te \
    mm-qcamerad.te \
    property.te \
    property_contexts \
    rmt_storage.te \
    system_server.te \
    vold.te \
    wcnss_service.te

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun1/file

PROTOBUF_SUPPORTED := true

# TWRP
DEVICE_RESOLUTION := 854x480
TW_THEME := portrait_hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.591617/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/prebuilt/fstab.qcom
TARGET_TWRP_FSTAB := device/coolpad/cp3622a/prebuilt/twrp.fstab
PRODUCT_COPY_FILES += $(TARGET_TWRP_FSTAB):recovery/root/etc
BOARD_HAS_NO_SELECT_BUTTON := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_PROVIDES_WCNSS_QMI := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

PRIMA_ROOT := vendor/qcom/opensource/wlan/prima
PRIMA_MODULE:
	$(hide) mkdir -p $(KERNEL_OUT)/$(PRIMA_ROOT)
	$(hide) cp -f $(PRIMA_ROOT)/Kbuild $(KERNEL_OUT)/$(PRIMA_ROOT)/Makefile
	$(hide) cp -rf $(PRIMA_ROOT)/CORE $(KERNEL_OUT)/$(PRIMA_ROOT)/CORE
	$(hide) cp -rf $(PRIMA_ROOT)/riva $(KERNEL_OUT)/$(PRIMA_ROOT)/riva
	$(hide) $(MAKE) $(MAKE_FLAGS) -C $(KERNEL_OUT) M=$(KERNEL_OUT)/$(PRIMA_ROOT) ARCH=$(TARGET_ARCH) $(KERNEL_CROSS_COMPILE) MODNAME=wlan CONFIG_PRONTO_WLAN=m WLAN_ROOT=$(PRIMA_ROOT) modules
	$(hide) arm-eabi-strip --strip-debug $(KERNEL_OUT)/$(PRIMA_ROOT)/wlan.ko
	$(hide) mkdir -p $(KERNEL_MODULES_OUT)/pronto
	$(hide) cp -f $(KERNEL_OUT)/$(PRIMA_ROOT)/wlan.ko $(KERNEL_MODULES_OUT)/pronto/pronto_wlan.ko
	$(hide) if [ -L $(KERNEL_MODULES_OUT)/wlan.ko ]; then rm $(KERNEL_MODULES_OUT)/wlan.ko; fi
	$(hide) ln -s /system/lib/modules/pronto/pronto_wlan.ko  $(KERNEL_MODULES_OUT)/wlan.ko
TARGET_KERNEL_MODULES += PRIMA_MODULE

CORE_CTL_MODULE:
	$(hide) cp -rf $(LOCAL_PATH)/core_ctl.ko $(KERNEL_MODULES_OUT)/
TARGET_KERNEL_MODULES += CORE_CTL_MODULE

# include vendor
include vendor/coolpad/cp3622a/BoardConfigVendor.mk

# Use build_number tag for ota file
BUILD_NUMBER := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(OMNI_BUILDTYPE)
