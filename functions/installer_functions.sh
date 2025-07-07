#! /bin/sh

# Useful Functions
function complete_msg () {
    clear
    echo "$1 Setup Complete"
}

function install_app () {
    if [ "$2" = "auto" ]; then
        echo "Trying to install: $1"
        yes '' | yeet -S $1
        complete_msg $1
    else
        echo "Trying to install: $1"
        yeet -S $1
        complete_msg $1
    fi
}

