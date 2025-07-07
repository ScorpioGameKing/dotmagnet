#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
echo "Installing GUI Applications"

# Install the applications
install_app "zen-browser-bin" "auto"
install_app "wezterm" "auto"

# Tell the user we're done
echo "GUI Applications are Installed"
