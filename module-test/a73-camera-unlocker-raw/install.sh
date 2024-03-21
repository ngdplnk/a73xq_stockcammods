#!/system/bin/sh

# Paths
destination_dir="/system/cameradata/"
destination_file="camera-feature.xml"
module_dir=$(dirname "$0")
source_file="$module_dir/$destination_file"

# Copy the file to the destination directory
if [ -d "$destination_dir" ]; then
    cp "$source_file" "$destination_dir"
    echo "Your new $destination_file has been installed successfully."
fi

# Force stop the camera app
am force-stop com.sec.android.app.camera


echo "Install completed."
exit 0
