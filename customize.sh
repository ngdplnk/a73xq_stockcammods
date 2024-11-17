if [ "$API" -lt 34 ]
then
  ui_print "! Unsupported SDK: $API"
  abort "! Minimal supported SDK is 34 (Android 14/ OneUI 6)"
else
  ui_print "- Device SDK is valid: $API"
fi

ui_print "- Remounting..."
mount -o rw,remount /system

ui_print "- Unlocking features..."
cp -f "${MODPATH}/system/cameradata/camera-feature.xml" "/system/cameradata/camera-feature.xml"
chmod 644 "/system/cameradata/camera-feature.xml"
chown root:root "/system/cameradata/camera-feature.xml"
mount -o ro,remount /system

ui_print "- Forcing camera stop..."
am force-stop com.sec.android.app.camera

ui_print "- Clearing camera data..."
pm clear com.sec.android.app.camera

ui_print "Reboot is required."
ui_print "If you are using KernelSU, toggle 'Umount modules' OFF for the Camera app to get the mods working!!!"
ui_print "Enjoy your new camera features!"