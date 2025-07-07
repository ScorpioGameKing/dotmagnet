#! /bin/sh

# Tell the user what's up
echo "Installing hyprland plugins, user input will be required"

# Install our workspace manager
hyprpm update

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces

hyprpm enable split-monitor-workspaces

# Tell the user we're done
echo "Hyprland Plugins installed"
