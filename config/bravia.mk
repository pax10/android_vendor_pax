# Bravia 3 Engine
PRODUCT_COPY_FILES += \
	vendor/raumzero/prebuilt/common/etc/be_movie:system/etc/be_movie \
	vendor/raumzero/prebuilt/common/etc/be_photo:system/etc/be_photo \
	vendor/raumzero/prebuilt/common/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
	vendor/raumzero/prebuilt/common/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
	ro.service.swiqi.supported=true \
	persist.service.swiqi.enable=1
