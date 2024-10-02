#!/system/bin/sh

MODPATH=${0%/*}
TARGET=/system/cameradata
REPLACEMENT=$MODPATH/system/cameradata/camera-feature.xml

set_perm $MODPATH/system/cameradata/camera-feature.xml root root 644 u:object_r:system_file:s0

cp -f "$REPLACEMENT" "$TARGET/"
