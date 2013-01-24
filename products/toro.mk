# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit pax common bits
$(call inherit-product, vendor/pax/configs/common.mk)

# Inherit common phone files
$(call inherit-product, vendor/pax/configs/common_phone.mk)

# Inherit common Verizon Wireless Files
$(call inherit-product, vendor/pax/configs/vzw.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pax/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := pax_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/pax/prebuilt/bootanimation/bootanimation-toro.zip:system/media/bootanimation.zip
