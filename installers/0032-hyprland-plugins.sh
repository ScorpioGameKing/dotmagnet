#! /bin/sh

# Tell the user what's up
show_install_start_splash "Installing hyprland plugins, user input will be required"

# Install our workspace manager
hyprpm update

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces

hyprpm enable split-monitor-workspaces

# Tell the user we're done
show_install_end_splash "Hyprland Plugins installed"
