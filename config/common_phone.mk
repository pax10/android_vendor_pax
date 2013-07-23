﻿# common
$(call inherit-product, vendor/raumzero/config/common.mk)

# bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# bravia3
$(call inherit-product-if-exists, vendor/raumzero/config/bravia.mk)

# AK scripts
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/data/ak/init.d/98fq_codel:data/ak/init.d/98fq_codel \
	vendor/raumzero/prebuilt/common/data/ak/init.d/98frandom:data/ak/init.d/98frandom \
	vendor/raumzero/prebuilt/common/data/ak/init.d/99zipalign:data/ak/init.d/99zipalign \
	vendor/raumzero/prebuilt/common/data/ak/init.d/zram:data/ak/init.d/zram \
	vendor/raumzero/prebuilt/common/etc/init.d/98fq_codel:system/etc/init.d/98fq_codel \
	vendor/raumzero/prebuilt/common/etc/init.d/950iosettings:system/etc/init.d/950iosettings


# bluetooth
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# camera effects
PRODUCT_COPY_FILES +=  \
    vendor/raumzero/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/raumzero/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# packages
PRODUCT_PACKAGES += \
	Mms \
	Stk \
	Torch

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.ringtone=Hydra.ogg \
	ro.config.notification_sound=Proxima.ogg \
	ro.config.alarm_alert=Cesium.ogg

