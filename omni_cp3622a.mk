# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/coolpad/cp3622a/device.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_NAME := omni_cp3622a
PRODUCT_DEVICE := cp3622a
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := cp3622a
PRODUCT_MANUFACTURER := coolpad

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Coolpad/cp3622a/cp3622a:5.1.1/LMY47V/0700208:user/release-keys" \
    PRIVATE_BUILD_DESC="cp3622a-user 5.1.1 LMY47V 0700208 release-keys"
