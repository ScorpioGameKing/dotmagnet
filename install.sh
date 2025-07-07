#! /bin/sh 

# Import our Menus
menu_dir=./menu
parent_dir="$(builtin cd "$menu_dir"; pwd)"
source "$parent_dir/menus/menus.sh"

# Help Menu
if [ "$1" = "" ] || [ "$1" = "help" ]; then
   show_help_menu
fi

# Install Menu
if [ "$1" = "install" ]; then
    show_install_menu

    # Wait a few seconds
    sleep 5
    
    # Begin Installation
    echo ""
    echo "Begining to run installers"

    # Iterate through the installers
    for file in ./installers/*; do
        if [ -f "$file" ]; then
            show_next_installer $file 
            # Run the installer
            sh "$file"
        fi
    done
fi
