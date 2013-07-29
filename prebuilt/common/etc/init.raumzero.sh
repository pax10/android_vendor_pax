#!/system/bin/sh
#

    # Execute /system/etc/init.d scripts on boot
        chgrp -R 2000 /system/etc/init.d
        chmod -R 777 /system/etc/init.d
        /system/xbin/busybox run-parts /system/etc/init.d

# Stop init.pzosp.sh script

