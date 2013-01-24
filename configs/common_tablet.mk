# Inherit common stuff
$(call inherit-product, vendor/pax/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/pax/overlay/common_tablet

PRODUCT_COPY_FILES += \
    vendor/pax/prebuilt/common/media/audio/notifications/Evil.Sound.mp3:system/audio/notifications/Evil.Sound.mp3 \
    vendor/pax/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3
