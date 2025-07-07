#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
echo "Installing hyprland apps"

# Grab hyprland first
install_app "hyprland" "auto"

# Grab our system apps 
install_app "hyprlock" "auto"
install_app "hypridle" "auto"
install_app "hyprpolkitagent" "auto"
install_app "hyprcursor" "auto"
install_app "rose-pine-hyprcursor" "auto"
install_app "rofi" "auto"
install_app "swaync" "auto"

# Install our wallpaper engine and provider
install_app "python-imageio" "auto"
install_app "python-imageio-ffmpeg" "auto"
install_app "python-pillow" "auto"
install_app "python-screeninfo" "auto"
install_app "waypaper" "auto"
install_app "swww" "auto"

# Tell the user we're done
echo "hyprland Applications are Installed"
