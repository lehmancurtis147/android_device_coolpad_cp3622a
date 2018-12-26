BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB          := true

# include vendor
-include /vendor/coolpad/cp3622a/BoardConfigVendor.mk

# Local Path
LOCAL_PATH    := $(call my-dir)

# Location of this devices .mk files
DEVICE_PATH   := device/coolpad/cp3622a/

# java libruary
JAVALIB_PATH  := external/libjava/javalib.jar

# Qcom-common tools
QCPATH := device/qcom/common

-include /device/qcom/sepolicy/Android.mk
-include /kernel/qcom/kernel_msm-3.10/scripts/dtc/Makefile
-include /kernel/qcom/kernel_msm-3.10/scripts/selinux/Makefile

LOCAL_KERNEL_OBJ_PATH   := $(strip $(LOCAL_KERNEL_OBJ_PATH))

ifeq ($(KERNEL_OBJ),)
  LOCAL_KERNEL_OBJ_PATH := out/target/product/cp3622a/obj/KERNEL_OBJ
endif

# QCOM 
BOARD_USES_QCOM_HARDWARE         := true
TARGET_USES_QCOM_BSP             := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT        := caf-msm8909
TARGET_QCOM_DISPLAY_VARIANT      := caf-msm8909
TARGET_QCOM_MEDIA_VARIANT        := caf-msm8909
TARGET_COMPILE_WITH_MSM_KERNEL   := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME     := cp3622a
TARGET_NO_BOOTLOADER             := false

# Platform
TARGET_BOARD_PLATFORM            := msm8909
TARGET_BOARD_PLATFORM_GPU        := qcom-adreno304

# Architecture
TARGET_HAVE_HDMI_OUT             := false
TARGET_USES_OVERLAY              := true
TARGET_USES_PCI_RCS              := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS  := 3
TARGET_NO_KERNEL                 := false
TARGET_NO_RADIOIMAGE             := true
TARGET_NO_RPC                    := true
GET_FRAMEBUFFER_FORMAT_FROM_HWC  := true

TARGET_GLOBAL_CFLAGS             += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS           += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH                      := arm
TARGET_ARCH_VARIANT              := armv7-a-neon
TARGET_CPU_ABI                   := armeabi-v7a
TARGET_CPU_ABI2                  := armeabi
TARGET_CPU_VARIANT               := cortex-a7

ARCH_ARM_HAVE_TLS_REGISTER       := true

TARGET_HARDWARE_3D               := false

# Kernel
TARGET_USES_PREBUILT_KERNEL := true

BOARD_KERNEL_CMDLINE        := \
	console=ttyHSL0,115200,n8 \
	androidboot.console=ttyHSL0 \
	androidboot.hardware=qcom \
	user_debug=31 \
	msm_rtb.filter=0x3F \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk
BOARD_KERNEL_CMDLINE        += androidboot.selinux=permissive

BOARD_KERNEL_BASE_ADDR      := 0x80000000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_KERNEL_SIZE           := 6511088
BOARD_RAMDISK_SIZE          := 639979
BOARD_DTB_SIZE              := 157696
BOARD_KERNEL_OFFSET         := 0x00008000
BOARD_SECOND_OFSET          := 0x00f00000
BOARD_RAMDISK_OFFSET        := 0x01000000
BOARD_KERNEL_TAGS_OFFSET    := 0x00000100
BOARD_KERNEL_SEPARATED_DT   := false
BOARD_KERNEL_DT_TYPE        := qcdt
BOARD_RAMDISK_COMP          := gzip

TARGET_DTBTOOL              := device/coolpad/cp3622a/dtbtool/dtbtool
TARGET_PREBUILT_KERNEL      := device/coolpad/cp3622a/kernel

# MKBOOTIMG
BOARD_MKBOOTIMG_ARGS := \
	--dt device/coolpad/cp3622a/dt.img \
	--base 0x80000000 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x01000000 \
	--tags_offset 0x00000100 \
	--board ""

# Partition info
TARGET_USERIMAGES_USE_EXT4         := true
TARGET_PLATFORM_DEVICE_BASE        := /devices/soc.0/
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1782580
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5415563
BOARD_CACHEIMAGE_PARTITION_SIZE    := 262144
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 32768
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED                 := true

TARGET_USES_ION                    := true
TARGET_USES_NEW_ION_API            := true
TARGET_USES_QCOM_BSP               := true
TARGET_PLATFORM_DEVICE_BASE        := /devices/soc.0/

#Add support for firmare upgrade on msm8909
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION          := true

# TWRP
TARGET_RECOVERY_VARIANT            := twrp
TWRP_THEME                         := portrait_mdpi
TARGET_RECOVERY_QCOM_RTC_FIX       := true
TARGET_SCREEN_WIDTH                := 480
TARGET_SCREEN_HEIGHT               := 854
RECOVERY_GRAPHICS_USE_LINELENGTH   := true
TARGET_RECOVERY_FSTAB              := device/coolpad/cp3622a/recovery/root/etc/recovery.fstab
TARGET_TWRP_FSTAB                  := device/coolpad/cp3622a/recovery/root/etc/twrp.fstab
BOARD_HAS_NO_SELECT_BUTTON         := true

PRODUCT_COPY_FILES += \
        $(TARGET_PREBUILT_KERNEL):out/kernel \
        $(TARGET_TWRP_FSTAB):out/target/product/cp3622a/recovery/root/etc \
        $(TARGET_RECOVERY_FSTAB):out/target/product/cp3622a/recovery/root/etc \
	device/coolpad/cp3622a/dtbToolCM:/out/host/linux-x86/bin/dtbToolCM \
        $(JAVALIB_PATH):out/host/common/obj/JAVA_LIBRARIES/platform-test-annotations-host_intermediates/javalib.jar

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
