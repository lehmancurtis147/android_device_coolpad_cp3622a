
# Inherit device configuration
$(call inherit-product, device/coolpad/cp3622a/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_cp3622a
PRODUCT_DEVICE := cp3622a
PRODUCT_BRAND := coolpad
PRODUCT_MANUFACTURER := coolpad

