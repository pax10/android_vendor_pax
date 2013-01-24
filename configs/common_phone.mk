# Media/Audio
PRODUCT_COPY_FILES += \
    prebuilt/common/media/audio/notifications/Evil.Sound.mp3:system/media/audio/notifications/Evil.Sound.mp3 \
    prebuilt/common/media/audio/ringtones/Demon.Voices.mp3:system/media/audio/ringtones/Demon.Voices.mp3 \
    prebuilt/common/media/audio/ringtones/Yo.Phone.Is.Ringing.mp3:system/media/audio/ringtones/Yo.Phone.Is.Ringing.mp3 \
    prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.com.android.dataroaming=false \
    camera.flash_off=0 \
    persist.sys.camera-sound=0 \
    ro.config.ringtone=Demon.Voices.mp3
