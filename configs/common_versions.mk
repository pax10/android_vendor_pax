# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/pax/tools/getdate)
DEVICE=$($(TARGET_BUILD) | cut -f2 -d "_")

ifneq ($(PAX_BUILD),)
	# PAX_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=pax \
	    ro.goo.rom=raum00 \
	    ro.goo.version=raum00_$(DEVICE)-4.2.1-$(DATE) \
	    ro.raum.version=raum00_$(DEVICE)-4.2.1-$(DATE)
else
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.raum.version=raum00_$(DEVICE)_unofficial-4.2.1-$(DATE)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
