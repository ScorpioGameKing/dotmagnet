#! /bin/sh

# Show a completion message using the first argument
function complete_msg () {
    clear
    echo "$1 Setup Complete"
}

# Install the first argument. The second argument toggles noconfirm
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

