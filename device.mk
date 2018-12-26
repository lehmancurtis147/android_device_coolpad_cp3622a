ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/coolpad/cp3622a/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_NAME := omni_cp3622a
PRODUCT_DEVICE := cp3622a

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):system/root/kernel \
	device/coolpad/cp3622a/rootdir/init.qcom.rc:system/root/init.qcom.rc \
	device/coolpad/cp3622a/rootdir/init.qcom.usb.rc:system/root/init.qcom.usb.rc \
	device/coolpad/cp3622a/rootdir/init.recovery.hlthchrg.rc:recovery/root/init.recovery.hlthchrg.rc \
	device/coolpad/cp3622a/rootdir/init.recovery.service.rc:recovery/root/init.recovery.service.rc \
	device/coolpad/cp3622a/rootdir/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
	device/coolpad/cp3622a/rootdir/fstab.qcom:system/root/fstab.qcom \
	device/coolpad/cp3622a/rootdir/ueventd.qcom.rc:system/root/ueventd.qcom.rc \
	device/coolpad/cp3622a/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
	device/coolpad/cp3622a/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab \
	external/libjava/javalib.jar:out/host/common/obj/JAVA_LIBRARIES/platform-test-annotations-host_intermediates/javalib.jar

$(call inherit-product-if-exists, build/target/product/full.mk)
$(call inherit-product-if-exists, vendor/coolpad/cp3622a/device-vendor.mk)
