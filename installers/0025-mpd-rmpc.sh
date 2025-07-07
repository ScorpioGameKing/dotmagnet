#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what step this is
show_install_start_splash "Installing and setting up mpd and rmpc"

# mpd is special and requires extra setup
install_app "mpd" "auto"
touch ~/.config/mpd/database
touch ~/.config/mpd/stickers.sql
mkdir ~/.config/mpd/playlists

# rmpc is easy though
install_app "rmpc" "auto"

# Tell the user we're done
show_install_end_splash "mpd and rmpc have been set up"
