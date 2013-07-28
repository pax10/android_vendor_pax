PRODUCT_BRAND ?= raumzero

# use / build koush's Superuser
-include vendor/raumzero-priv/keys.mk
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

# overrides rz
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

# overrides testing
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.lockprof.threshold=850 \
	persist.sys.purgeable_assets=1 \
	persist.sys.use_dithering=0 \
	dalvik.vm.verify-bytecode=false

# Backup Tool
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
	vendor/raumzero/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
	vendor/raumzero/prebuilt/common/bin/50-rz.sh:system/addon.d/50-rz.sh \
	vendor/raumzero/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
	vendor/raumzero/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# raumzero-specific init file
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/init.local.rc:root/init.raumzero.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/bin/compcache:system/bin/compcache \
	vendor/raumzero/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
	vendor/raumzero/proprietary/Term.apk:system/app/Term.apk \
	vendor/raumzero/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
	vendor/raumzero/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
	vendor/raumzero/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
	frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is raumzero!
PRODUCT_COPY_FILES += \
	vendor/raumzero/config/permissions/com.raumzero.android.xml:system/etc/permissions/com.raumzero.android.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# nfc enhanced
-include vendor/raumzero/config/nfc_enhanced.mk

# T-Mobile theme engine
include vendor/raumzero/config/themes_common.mk

# packages
PRODUCT_PACKAGES += \
	Camera \
	LatinIME \
	Music \
	MusicFX \
	audio_effects.conf \
	HoloSpiralWallpaper \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	PhotoTable

# optional packages
PRODUCT_PACKAGES += \
	Basic \
	Galaxy4 \
	NoiseField \
	PhaseBeam \
	SoundRecorder \
	VisualizationWallpapers \
	VideoEditor \
	VoiceDialer \
	Welcome

# more optinal packages
PRODUCT_PACKAGES += \
	Calendar \
	QuickSearchBox \
	SmartCardService \
	Welcome \
	busybox \
	Superuser \
	su

# cyanogenmod
PRODUCT_PACKAGES += \
	CMFileManager \
	Trebuchet

# tools
PRODUCT_PACKAGES += \
	CellBroadcastReceiver \
	SpareParts

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

# openssh
PRODUCT_PACKAGES += \
	scp \
	sftp \
	ssh \
	sshd \
	sshd_config \
	ssh-keygen \
	start-ssh

# openvpn
PRODUCT_PACKAGES += \
	openvpn

# proprietary
PRODUCT_PACKAGES += \
	ViPER4Android_FX \
	ViPER4Android_XHifi \
	LMTLauncher \
	AutoHideSoftKeys

# version
RELEASE = false
ROM_VERSION_MAJOR = 1
ROM_VERSION_MINOR = 1
ROM_VERSION_MAINTENANCE = 4
ROM_VERSION_TESTING = 7
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
PRODUCT_MOTD :="\n +----$(RAUMZERO_VERSION)----+\n|-|  http://raum.mobileinfern.us  |-|\n|-|    raumzero@mobileinfern.us   |-|\n|-|        Builds@Dev-Host        |-|\n|-| http://d-h.st/users/MikereDD/ |-|\n +---------------------------------+\n"
