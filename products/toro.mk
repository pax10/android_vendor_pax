# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/pax/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pax_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys" BUILD_NUMBER=424425

# Inherit common build.prop overrides
-include vendor/pax/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pax/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pax/proprietary/tuna/app/VerizonLogin.apk:system/app/VerizonLogin.apk \
    vendor/pax/proprietary/tuna/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/pax/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pax/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pax/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Inherit media effect blobs
-include vendor/pax/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pax/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pax/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/pax/products/common_speech_recognition.mk

