#! /bin/sh 

# Help Menu
if [ "$1" = "" ] || [ "$1" = "help" ]; then
    clear
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo "Welcome to the dotmagnet help menu. Below are the included commands."
    echo ""
    echo "help     ->  Show this menu"
    echo "install  ->  Begin the dotmagnet installation process."
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
fi

if [ "$1" = "install" ]; then
    # Welcome Message
    clear
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo "Welcome to the installation section of dotmagnet! Shortly the program"
    echo "will begin to search through the './installers/' directory for any '.sh'"
    echo "file you've added there. By default my hyprland rice will be included as"
    echo "a working example."
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    
    # Wait a few seconds
    sleep 5
    
    echo ""
    echo "Begining to run installers"
    echo ""

    # Iterate through the installers
    for file in ./installers/*; do
        if [ -f "$file" ]; then
            echo "Running: $file"
            echo ""
            sh "$file"
        fi
    done
fi
