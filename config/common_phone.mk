# common
$(call inherit-product, vendor/raumzero/config/common.mk)

# bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# extra ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# include rZ audio files
include vendor/raumzero/config/audio.mk

# bravia3
$(call inherit-product-if-exists, vendor/raumzero/config/bravia.mk)

# bluetooth
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# camera effects
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
	vendor/raumzero/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# packages
PRODUCT_PACKAGES += \
	Mms \
	Stk \
	Torch

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.ringtone=RetroPhoneRing.ogg \
	ro.config.notification_sound=Proxima.ogg \
	ro.config.alarm_alert=808alarm.ogg

# bootanimation
PRODUCT_COPY_FILESS += \
	vendor/raumzero/prebuilt/common/media/rz_bootanimation.zip:system/media/bootanimation.zip
