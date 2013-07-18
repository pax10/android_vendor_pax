# brand                  
PRODUCT_BRAND ?= raumzero

# use / build koush's Superuser
#-include vendor/raumzero-priv/keys.mk
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.raumzero.superuser

# give root access
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
	PhotoTable
#    DSPManager \
#    libcyanogen-dsp \

PRODUCT_PACKAGES += \
	busybox \
	Torch \
	Superuser \
	su \
#    PermissionsManager

# raumzero
PRODUCT_PACKAGES += \
	LatinIME \
	Launcher2 \
	Trebuchet \
	CMFileManager

# tools
PRODUCT_PACKAGES += \
	CellBroadcastReceiver
#    SpeakerProximity

PRODUCT_PACKAGES += \
	e2fsck \
	mke2fs \
	tune2fs \
	armzipalign \
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

# OpenVPN
PRODUCT_PACKAGES += \
	openvpn



# themes
include vendor/raumzero/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/raumzero/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/raumzero/overlay/common

# bin
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/bin/sysinit:system/bin/sysinit

# etc
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/init.raumzero.rc:root/init.raumzero.rc

# initd <<< moved to per device common_*.mk
#PRODUCT_COPY_FILES += \
#	vendor/raumzero/prebuilt/common/etc/init.d/01bomb:system/etc/init.d/01bomb \
#	vendor/raumzero/prebuilt/common/etc/init.d/02kernel:system/etc/init.d/02kernel \
#	vendor/raumzero/prebuilt/common/etc/init.d/99system:system/etc/init.d/99system \
#	vendor/raumzero/prebuilt/common/etc/init.d/05fs:system/etc/init.d/05fs \
#	vendor/raumzero/prebuilt/common/etc/init.d/91zipalign:system/etc/init.d/91zipalign

# prebuilt
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/xbin/sysro:system/xbin/sysro \
	vendor/raumzero/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
	vendor/raumzero/prebuilt/common/media/rz_bootanimation.zip:system/media/bootanimation.zip
#	vendor/raumzero/prebuilt/common/xbin/zipalign:system/xbin/zipalign \

# nfc
PRODUCT_COPY_FILES += \
	vendor/raumzero/config/permissions/com.raumzero.android.xml:system/etc/permissions/com.raumzero.android.xml \
	vendor/raumzero/config/permissions/com.raumzero.nfc.enhanced.xml:system/etc/permissions/com.raumzero.nfc.enhanced.xml

# sip/voip
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# version
RELEASE = false
ROM_VERSION_MAJOR = 1
ROM_VERSION_MINOR = 1
ROM_VERSION_MAINTENANCE = 4
ROM_VERSION_TESTING = 5
COMPILE_DATE = $(shell date +%b%d%Y)

ifeq ($(RELEASE),true)
    BUILD_VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR).$(ROM_VERSION_MAINTENANCE)
else
    BUILD_VERSION := TEST.v$(ROM_VERSION_TESTING)
endif

RAUMZERO_VERSION=raumZero-$(BUILD_VERSION)-$(COMPILE_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.raumzero.version=$(RAUMZERO_VERSION) \
	ro.romversion=$(RAUMZERO_VERSION) \
	ro.goo.developerid=pax10 \
	ro.goo.rom=raumZero \
	ro.goo.version=$(shell date +%s)

# MOTD displayed while flashing ROM
PRODUCT_MOTD :="\n+--$(RAUMZERO_VERSION)--+\n Site: http://raum.mobileinfern.us\n Email: raumzero@mobileinfern.us\n Rom Builds: @ Dev-Host\n +-- http://d-h.st/users/MikereDD/ --+\n"
