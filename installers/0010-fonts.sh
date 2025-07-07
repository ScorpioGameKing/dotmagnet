#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
echo "Installing system fonts"

install_app "ttf-agave-nerd" "auto"
install_app "otf-font-awesome" "auto"
