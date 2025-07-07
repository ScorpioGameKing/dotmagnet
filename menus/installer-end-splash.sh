#! /bin/usr

# Tell the user that installer ($1) has finished. 
function show_install_end_splash () {
    clear
    echo ""
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo ""
    echo "$1"
    echo ""
    echo "|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
    echo ""

    # Wait a few seconds
    sleep 2
}
