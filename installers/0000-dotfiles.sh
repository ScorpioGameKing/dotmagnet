#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what we're doing
show_install_start_splash "We're now grabbing and installing git, Stow and our dotfiles"

# Ensure git is installed
show_app_install "git"
sudo pacman -S --noconfirm git
show_app_completion "git"

# Starting Message. After which we clone the dotfile repo to the user's home
show_app_install "dotfiles"
git clone https://github.com/ScorpioGameKing/Scorpio-Gruv-dotfiles ~/dotfiles
show_app_completion "dotfiles"

# We're grabbing stow 
show_app_install "stow"
sudo pacman -S --noconfirm stow
show_app_completion "stow"

# Saving the current dir so we can hop to the dotfiles, install and return
cur_dir= pwd
cd ~/dotfiles
stow .
cd $cur_dir

# Tell the user this stage is over
show_install_end_splash "Dotfiles are set up, continuing."
