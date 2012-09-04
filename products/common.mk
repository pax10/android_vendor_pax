PRODUCT_NAME := reDDrom
PRODUCT_BRAND := reDDrom
PRODUCT_DEVICE := generic

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PACKAGE_OVERLAYS += vendor/pax/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pax/overlay/common

PRODUCT_PACKAGES += \
    Browser \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Stk \
	Mms \
	Wallpapers
#    ThemeChooser
#    ThemeManager
#    ROMControl

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    vendor/pax/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip


# Term binary for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/pax/proprietary/Term.apk:system/app/Term.apk \
    vendor/pax/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so 

# SU binary and APK
PRODUCT_COPY_FILES +=  \
    vendor/pax/prebuilt/common/su:system/bin/su \
    vendor/pax/prebuilt/common/Superuser.apk:system/app/Superuser.apk

# BusyBox binary
PRODUCT_COPY_FILES +=  \
    vendor/pax/prebuilt/common/busybox:system/xbin/busybox
	
# SSH binary
PRODUCT_COPY_FILES +=  \
    vendor/pax/prebuilt/common/ssh:system/xbin/ssh

# Holo Launcher HD
PRODUCT_COPY_FILES +=  \
    vendor/pax/prebuilt/common/HoloLauncherHD.apk:system/app/HoloLauncherHD.apk

# Browser
PRODUCT_COPY_FILES +=  \
    vendor/pax/prebuilt/common/Browser.apk:system/app/Browser.apk

# ringtones, notifications and alarms
PRODUCT_COPY_FILES += \
    vendor/pax/prebuilt/common/Matrix_Phone.ogg:system/media/audio/ringtones/Matrix_Phone.ogg \
    vendor/pax/prebuilt/common/Coding.ogg:system/media/audio/notifications/Coding.ogg \
    vendor/pax/prebuilt/common/Buzzer_Alarm.ogg:system/media/audio/alarms/Buzzer_Alarm.ogg

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=290 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.dataroaming=false \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Matrix_Phone.ogg \
    ro.config.notification_sound=Coding.ogg \
    ro.config.alarm_alert=Buzzer_Alarm.ogg \
    ro.modversion=reDDrom-411-build-1.6 \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240
