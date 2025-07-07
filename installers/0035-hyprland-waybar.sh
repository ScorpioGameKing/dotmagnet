#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
show_install_start_splash "Building waybar with cava support"

# Grab waybar dependencies
show_app_install "Requirements"
install_app "meson" "auto"
install_app "ninja" "auto"
install_app "gtkmm3" "auto"
install_app "jsoncpp" "auto"
install_app "libsigc++" "auto"
install_app "chrono_date" "auto"
install_app "spdlog" "auto"
install_app "gobject-introspection" "auto"
install_app "libappindicator-gtk3" "auto"
install_app "libdbusmenu-gtk3" "auto"
install_app "sndio" "auto"
install_app "cmake" "auto"
install_app "scdoc" "auto"
install_app "iniparser" "auto"
install_app "libcava" "auto"
install_app "cava" "auto"
install_app "gdbus_codegen" "auto"
install_app "glib2-devel" "auto"

# Build and install waybar with cava support
show_app_install "waybar"
git clone https://github.com/Alexays/Waybar
cd Waybar
meson setup build
ninja -C build install
cd ..
rm -rf Waybar

# Tell the user we're done
show_install_end_splash "Waybar Installation Complete"
