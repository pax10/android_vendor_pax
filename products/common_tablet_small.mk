# Inherit common tuff
$(call inherit-product, vendor/aka/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aka/overlay/common_tablets_small

PRODUCT_PACKAGES += \
    HoloLauncherHD \
	NovaLauncher

# Inherit drm blobs
-include vendor/aka/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
