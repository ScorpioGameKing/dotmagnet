#! /bin/sh

# Ensure git is installed
sudo pacman -S --noconfirm git

# Starting Message. After which we clone the dotfile repo to the user's home
echo "Downloading and installing Dotfiles"
git clone https://github.com/ScorpioGameKing/Scorpio-Gruv-dotfiles ~/dotfiles

# We're grabbing stow and saving the current dir so we can hop to the dotfiles, install and return
sudo pacman -S --noconfirm stow
cur_dir= pwd
cd ~/dotfiles
stow .
cd $cur_dir

# Tell the user this stage is over
echo "Dotfiles are set up, continuing."
