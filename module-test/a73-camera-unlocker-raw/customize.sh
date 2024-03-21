VERSION=$(grep_prop version "${MODPATH}/module.prop")
ui_print "- Installing A73 Camera Features Unlocker $VERSION"

if [ "$API" -lt 34 ]; then
  ui_print "! Unsupported sdk: $API"
  abort "! Minimal supported sdk is 34 (Android 14/ One UI 6)"
else
  ui_print "- Device sdk is valid: $API"
fi

ui_print "- Extracting..."

ui_print "- Forcing camera stop..."
am force-stop com.sec.android.app.camera

ui_print "- Clearing camera data..."
pm clear com.sec.android.app.camera

ui_print "Done. Reboot is required."
ui_print "Enjoy your new camera features!"