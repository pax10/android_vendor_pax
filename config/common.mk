SUPERUSER_EMBEDDED := true

# brand
PRODUCT_BRAND ?= raumzero

#u can haz root
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3

# overrides general
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# overrides raumzero
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.nocheckin=1 \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    pm.sleep_mode=1 \
    debug.performance.tuning=1 \
    persist.sys.purgeable_assets=1 \
    ro.ril.disable.power.collapse=0 \
    ro.config.hw_fast_dormancy=1 \
    dalvik.vm.execution-mode=int:jit \
    windowsmgr.max_events_per_sec=512 \
    dalvik.vm.dexopt-flags=m=y,v=n,o=v

#exp
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.lockprof.threshold=850 \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_dithering=0 \
    dalvik.vm.verify-bytecode=false

# packages
PRODUCT_PACKAGES += \
    Camera \
    MusicFX \
    audio_effects.conf \
    LiveWallpapers \
    LiveWallpapersPicker \
    PhotoTable \
    Torch \
    Superuser \
    su

# raumzero
PRODUCT_PACKAGES += \
    LatinIME \
    Launcher2

# tools
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

PRODUCT_PACKAGES += \
    armzipalign \
    e2fsck \
    mke2fs \
    tune2fs \
    nano \
    bash \
    libncurses \
    vim \
    htop \
    powertop

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# themes
#include vendor/raumzero/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raumzero/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/raumzero/overlay/common

# bin
PRODUCT_COPY_FILES += \
    vendor/raumzero/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
    vendor/raumzero/prebuilt/common/etc/init.raumzero.rc:root/init.raumzero.rc

# initd
PRODUCT_COPY_FILES += \
    vendor/raumzero/prebuilt/common/etc/init.d/01bomb:system/etc/init.d/01bomb \
    vendor/raumzero/prebuilt/common/etc/init.d/02kernel:system/etc/init.d/02kernel \
    vendor/raumzero/prebuilt/common/etc/init.d/99system:system/etc/init.d/99system \
    vendor/raumzero/prebuilt/common/etc/init.d/05fs:system/etc/init.d/05fs \
    vendor/raumzero/prebuilt/common/etc/init.d/91zipalign:system/etc/init.d/91zipalign

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/raumzero/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/raumzero/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/raumzero/prebuilt/common/xbin/zipalign:system/xbin/zipalign
#    vendor/raumzero/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip \
#    vendor/raumzero/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
#    vendor/raumzero/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# nfc
PRODUCT_COPY_FILES += \
    vendor/raumzero/config/permissions/com.raumzero.android.xml:system/etc/permissions/com.raumzero.android.xml \
    vendor/raumzero/config/permissions/com.raumzero.nfc.enhanced.xml:system/etc/permissions/com.raumzero.nfc.enhanced.xml

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# version
RELEASE = false
RAUMZERO_VERSION_MAJOR = 1
RAUMZERO_VERSION_MINOR = 6

ifeq ($(RELEASE),true)
    RAUMZERO_VERSION := raumZero-4.2.2-v$(RAUMZERO_VERSION_MAJOR).$(RAUMZERO_VERSION_MINOR)
else
    RAUMZERO_VERSION := raumZero-4.2.2-$(shell date +%0d%^b%Y)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.raumzero.version=$(RAUMZERO_VERSION)
