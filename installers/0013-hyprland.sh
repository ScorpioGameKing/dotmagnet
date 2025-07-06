#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/installer_functions.sh"

# Tell the user what we're doing
echo "Installing hyprland ecosystem apps"

# Grab hyprland first
install_app "hyprland"

# Grab our lock screen
install_app "hyprlock"

# Grab our idle daemon
install_app "hypridle"

# Grab our auth tool
install_app "hyprpolkitagent"

# Grab our cursor
install_app "hyprcursor"

# Grab our cursor theme
install_app "rose-pine-hyprcursor"

# Grab our application runner
install_app "rofi"

