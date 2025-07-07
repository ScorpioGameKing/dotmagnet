#! /bin/sh

# Import our Menus
menu_dir=./menu
parent_dir="$(builtin cd "$menu_dir"; pwd)"
source "$parent_dir/menus/menus.sh"

# Tell the user that MANUAL SETUP of the application ($1) is complete
function complete_msg () {
    show_app_completion $1
}

# Install the given application ($1). $2 is a "noconfirm" option
function install_app () {
    if [ "$2" = "auto" ]; then
        show_app_install $1
        yes '' | yeet -S $1
        show_app_completion $1
    else
        show_app_install $1
        yeet -S $1
        show_app_completion $1
    fi
}

