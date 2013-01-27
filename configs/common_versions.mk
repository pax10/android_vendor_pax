# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/pax/tools/getdate)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=pax \
    ro.goo.rom=raum00 \
    ro.goo.version=raum00-4.2.1-$(DATE) \
    ro.raum.version=raum00-$(DATE)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
