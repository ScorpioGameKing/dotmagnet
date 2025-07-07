#! /bin/sh

# Show the user a completion message when finished installing the application ($1)
function show_app_completion () {
    clear
    echo ""
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo ""
    echo "$1 Installation Complete"
    echo ""
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo ""

    # Wait a few seconds
    sleep 3
}
