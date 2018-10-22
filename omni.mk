# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# Inherit some common OMNIROM stuff.
$(call inherit-product, vendor/omni/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/cp3622a/cp3622a.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp3622a
PRODUCT_NAME := aosp_cp3622a
PRODUCT_BRAND := Coolpad
PRODUCT_MODEL := Coolpad 3622a
PRODUCT_MANUFACTURER := Coolpad
PRODUCT_RELEASE_NAME := LMY47V

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cp3622a-user 5.1.1 LMY47V 0700208 release-keys" \
    BUILD_FINGERPRINT="Coolpad/cp3622a/cp3622a:5.1.1/LMY47V/0700208:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-coolpad

