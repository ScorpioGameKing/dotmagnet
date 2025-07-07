#! /bin/sh

# This is used to bring our multiple menus into 1 easy file to import

# Set up our sourcing dir
menu_dir=./menu
parent_dir="$(builtin cd "$menu_dir"; pwd)"

# Bring in our menus
source "$parent_dir/menus/help-menu.sh"
source "$parent_dir/menus/install-menu.sh"
source "$parent_dir/menus/file-runner.sh"

