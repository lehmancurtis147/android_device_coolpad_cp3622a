#
# Copyright 2014 The Android Open-Source Project
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
LOCAL_PATH := $(call my-dir)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# media_profiles and media_codecs xmls for 8909
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/MTP_Bluetooth_cal.acdb:system/etc/MTP_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Bluetooth_cal.acdb:system/etc/QRD_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Bluetooth_cal.acdb:system/etc/QRD_SKUE_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_Bluetooth_cal.acdb:system/etc/QRD_SKUT_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_General_cal.acdb:system/etc/MTP_General_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_General_cal.acdb:system/etc/QRD_General_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_General_cal.acdb:system/etc/QRD_SKUE_General_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_General_cal.acdb:system/etc/QRD_SKUT_General_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_Global_cal.acdb:system/etc/MTP_Global_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Global_cal.acdb:system/etc/QRD_Global_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Global_cal.acdb:system/etc/QRD_SKUE_Global_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_Global_cal.acdb:system/etc/QRD_SKUT_Global_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_Handset_cal.acdb:system/etc/MTP_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Handset_cal.acdb:system/etc/QRD_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Handset_cal.acdb:system/etc/QRD_SKUE_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT__Handset_cal.acdb:system/etc/QRD_SKUT_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_Hdmi_cal.acdb:system/etc/MTP_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Hdmi_cal.acdb:system/etc/QRD_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Hdmi_cal.acdb:system/etc/QRD_SKUE_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_Hdmi_cal.acdb:system/etc/QRD_SKUT_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_Headset_cal.acdb:system/etc/MTP_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Headset_cal.acdb:system/etc/QRD_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Headset_cal.acdb:system/etc/QRD_SKUE_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_Headset_cal.acdb:system/etc/QRD_SKUT_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/MTP_Speaker_cal.acdb:system/etc/MTP_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_Speaker_cal.acdb:system/etc/QRD_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUE_Speaker_cal.acdb:system/etc/QRD_SKUE_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/QRD_SKUT_Speaker_cal.acdb:system/etc/QRD_SKUT_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/libacdb-fts.so:system/vendor/lib/libacdb-fts.so \
    $(LOCAL_PATH)/audio/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    $(LOCAL_PATH)/audio/libacdbmapper.so:system/vendor/lib/libacdbmapper.so \
    $(LOCAL_PATH)/audio/libacdbrtac.so:system/vendor/lib/libacdbrtac.so
	
# coolpad sensors fix
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensors.msm8909.so:system/lib/hw/sensors.msm8909.so \
	$(LOCAL_PATH)/sensors/sensors.qcom.so:system/lib/hw/sensors.qcom.so

# Libcutils
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/sensors/libcutils.so:system/lib/hw/libcutils.so

#Twrp fstab
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab

# coolpad sim files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/operator/libqmi_nv_api.so:system/lib/libqmi_nv_api.so \
    $(LOCAL_PATH)/operator/libqmi_oem_api.so:system/lib/libqmi_oem_api.so

# Feature definition files for msm8909
PRODUCT_COPY_FILES += \
  	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/android.hardware.camera.flash-autofocus.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.accessory.xm:system/etc/permissions/android.hardware.usb.accessory.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.direct.xm:system/etc/permissions/android.hardware.wifi.direct.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/btmultisim.xml:system/etc/permissions/btmultisim.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.nfc.helper.xml:system/etc/permissions/com.android.nfc.helper.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.android.qcom.nfc_extras.xml:system/etc/permissions/com.android.qcom.nfc_extras.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.gsma.services.nfc.xml:system/etc/permissions/com.gsma.services.nfc.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.qti.snapdragon.sdk.display.xml:system/etc/permissions/com.qti.snapdragon.sdk.display.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.qti.videocall.permissions.xml:system/etc/permissions/com.qti.videocall.permissions.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.quicinc.wbc.xml:system/etc/permissions/com.quicinc.wbc.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/com.vzw.nfc.xml:system/etc/permissions/com.vzw.nfc.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/device_api.xml:system/etc/permissions/device_api.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/dpmapi.xml:system/etc/permissions/dpmapi.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/dsi_config.xml:system/etc/permissions/dsi_config.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/imscm.xml:system/etc/permissions/imscm.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/interface_permissions.xml:system/etc/permissions/interface_permissions.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/netmgr_config.xml:system/etc/permissions/netmgr_config.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/platform.xml:system/etc/permissions/platform.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/qmi_config.xml:system/etc/permissions/qmi_config.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/qti_permissions.xml:system/etc/permissions/qti_permissions.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/rcs_plugin_aidl.xml:system/etc/permissions/rcs_plugin_aidl.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/rcs_service_aidl.xml:system/etc/permissions/rcs_service_aidl.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/rcs_service_api.xml:system/etc/permissions/rcs_service_api.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/telephonyservice.xml:system/etc/permissions/telephonyservice.xml \
	$(LOCAL_PATH)/frameworks/native/data/etc/videocallapi.xml:system/etc/permissions/videocallapi.xml \

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

#wlan driver
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/WCNSS_wlan_dictionary.dat:system/etc/wifi/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8909 \
    audio_policy.msm8909 \
    tinymix \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    libsrsprocessing

# Camera
PRODUCT_PACKAGES += \
    mm-qcamera-app \
    camera.msm8909 \
    libmmjpeg_interface \
    libqomx_core

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# FM
PRODUCT_PACKAGES += \
    qcom.fmradio \
    FM2 \
    FMRecord

# GPS
PRODUCT_PACKAGES += \
    gps.msm8909

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8909 \
    gralloc.msm8909 \
    memtrack.msm8909 \
    hwcomposer.msm8909 \
    libtinyxml \
    libagl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8909 \
    lightsd \
    LedWakelock

# INIT
PRODUCT_PACKAGES += \
    init.target.rc \
    init.qcom.bt.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.class_main.sh \
    vold.fstab \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    fstab.qcom \
    init.qcom.zram.sh \
    init.qcom.bms.sh \
    init.qcom.fm.sh

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8909

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni

# KEYPAD
PRODUCT_PACKAGES += \
    synaptics_rmi4_i2c.kl \
    synaptics_dsx.kl \
    ft5x06_ts.kl \
    gpio-keys.kl

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVdpp \
    libOmxVenc \
    libOmxVidEnc \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8909

#Peripheral Client
PRODUCT_PACKAGES += \
    libperipheral_client

# Ril
PRODUCT_PACKAGES += \
    libxml2

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    wpa_supplicant \
    libwpa_client \
    wcnss_service \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd \
    hostapd_cli \
    hostapd_default.conf \
    hostapd.deny \
    hostapd.accept \
    dhcpcd.conf

PRODUCT_BOOT_JARS += \
    qcmediaplayer \
    qcom.fmradio

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapminfree=6m \
    dalvik.vm.heapstartsize=14m

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq
