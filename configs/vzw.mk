#Permissions and Lib for Verizon Wireless Apps
PRODUCT_PACKAGES += \
    MyVerizon \
    VerizonSSO
#    VZWBackupAssistant
#    VZWAPNLib \
#    VZWAPNService \
#    VZWBackupAssistant \
#    VerizonSSO

PRODUCT_COPY_FILES += \
    vendor/pax/prebuilt/vzw/etc/permissions/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/pax/prebuilt/vzw/etc/permissions/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/pax/prebuilt/vzw/etc/permissions/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/pax/prebuilt/vzw/lib/libmotricity.so:system/lib/libmotricity.so
#    vendor/pax/prebuilt/vzw/vendor/etc/sirfgps.conf:system/vendor/etc/sirfgps.conf \
#    vendor/pax/prebuilt/vzw/vendor/lib/hw/gps.omap4.so:system/vendor/lib/hw/gps.omap4.so

