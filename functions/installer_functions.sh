#! /bin/sh

# Useful Functions
function complete_msg () {
    clear
    echo "$1 Setup Complete"
}

function install_app () {
    yeet -S $1
    complete_msg $1
}

