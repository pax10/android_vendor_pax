#
# Setup device specific product configuration.
#
$(call inherit-product, device/samsung/toro/full_toro.mk)
# Inherit common settings
$(call inherit-product, vendor/raumzero/config/common.mk)
# Inherit
$(call inherit-product, vendor/raumzero/config/common_phone.mk)

PRODUCT_COPY_FILES += \
    vendor/raumzero/prebuilt/common/media/bootanimation-xhdpi.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_DISPLAY_ID=JDQ39 BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_NAME := raumzero_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

