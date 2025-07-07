#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
echo "Installing hyprland ecosystem apps"

# Grab hyprland first
install_app "hyprland" "auto"

# Grab our lock screen
install_app "hyprlock" "auto"

# Grab our idle daemon
install_app "hypridle" "auto"

# Grab our auth tool
install_app "hyprpolkitagent" "auto"

# Grab our cursor
install_app "hyprcursor" "auto"

# Grab our cursor theme
install_app "rose-pine-hyprcursor" "auto"

# Grab our application runner
install_app "rofi" "auto"

# Install our wallpaper engine and provider
install_app "python-imageio" "auto"
install_app "python-imageio-ffmpeg" "auto"
install_app "python-pillow" "auto"
install_app "python-screeninfo" "auto"
install_app "waypaper" "auto"
install_app "swww" "auto"

# Grab our Notification
install_app "swaync" "auto"
