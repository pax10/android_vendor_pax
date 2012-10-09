# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/pax/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pax_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03R/402395:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03R 402395 release-keys" BUILD_NUMBER=402395

PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.effect.bgdropper.adj=0.2 \
    camera.flash_off=0 \
    ro.setupwizard.wifi_required=true \
    ro.setupwizard.gservices_wait=true

# Inherit common build.prop overrides
-include vendor/pax/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pax/proprietary/grouper/app/Camera.apk:system/app/Camera.apk \
    vendor/pax/proprietary/grouper/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pax/proprietary/grouper/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pax/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pax/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/pax/proprietary/common/app/Vending-nunr.apk:system/app/Vending.apk

# Inherit media effect blobs
-include vendor/pax/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/pax/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pax/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/pax/products/common_speech_recognition.mk

