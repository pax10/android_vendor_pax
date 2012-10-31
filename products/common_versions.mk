# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

RAUM_BUILD=build-0.1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=pax10 \
    ro.goo.rom=raum0 \
    ro.goo.version=raum0-$(RAUM_BUILD) \
    ro.modversion=$(TARGET_PRODUCT)-412-build-$(RAUM_BUILD)
