# Generic product
PRODUCT_NAME := pax
PRODUCT_BRAND := pax
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pax/overlay/common


# T-Mobile theme engine
include vendor/aokp/configs/themes_common.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Wallpapers

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/pax/proprietary/common/app/Books:system/app/Books.apk \
    vendor/pax/proprietary/common/app/BrowserGoogle.apk:system/app/BrowserGoogle.apk \
    vendor/pax/proprietary/common/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    vendor/pax/proprietary/common/app/CalendarProvider.apk:system/app/CalendarProvider.apk \
    vendor/pax/proprietary/common/app/Chrome.apk:system/app/Chrome.apk \
    vendor/pax/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/pax/proprietary/common/app/Currents.apk:system/app/Currents.apk \
    vendor/pax/proprietary/common/app/EmailGoogle.apk:system/app/EmailGoogle.apk \
    vendor/pax/proprietary/common/app/Exchange2Google.apk:system/app/Exchange2Google.apk \
    vendor/pax/proprietary/common/app/Gmail2.apk:system/app/Gmail.apk \
    vendor/pax/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/pax/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/pax/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/pax/proprietary/common/app/GoogleEarth.apk:system/app/GoogleEarth.apk \
    vendor/pax/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/pax/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/pax/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/pax/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/pax/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/pax/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/pax/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/pax/proprietary/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/pax/proprietary/common/app/Magazines.apk:system/app/Magazines.apk \
    vendor/pax/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/pax/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/pax/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/pax/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/pax/proprietary/common/app/PartnerBookmarksProvider.apk:system/app/PartnerBookmarksProvider.apk \
    vendor/pax/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/pax/proprietary/common/app/PlusOne.apk:system/app/PlusOne.apk \
    vendor/pax/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/pax/proprietary/common/app/SuperSU.apk:system/app/SuperSU.apk \
    vendor/pax/proprietary/common/app/TagGoogle.apk:system/app/TagGoogle.apk \
    vendor/pax/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/pax/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/pax/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/pax/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/pax/proprietary/common/app/VoiceSearchStub.apk:system/app/VoiceSearchStub.apk \
    vendor/pax/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/pax/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/pax/proprietary/common/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/pax/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/pax/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/pax/proprietary/common/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/pax/proprietary/common/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/pax/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/pax/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/pax/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/pax/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/pax/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/pax/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/pax/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/pax/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/pax/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/pax/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    vendor/pax/proprietary/common/xbin/su:system/xbin/su

ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/pax/proprietary/common/app/GoogleGallery.apk:system/app/GoogleGallery.apk \
    vendor/pax/proprietary/common/app/Music2.apk:system/app/Music.apk \
    vendor/pax/proprietary/common/app/YouTube.apk:system/app/YouTube.apk
endif

ifneq ($(filter pax_crespo pax_crespo4g pax_maguro pax_toro pax_toroplus pax_grouper,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/pax/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/pax/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

