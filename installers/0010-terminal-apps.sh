#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/installer_functions.sh"

# Tell the user what step this is
clear
echo "Installing and setting up Terminal applications"

# Install yeet for flexible package management
echo "Installing yeet: Flexible Package Management"
yay -S yeet
complete_msg "yeet"

# Install NeoViM for better text editing
echo "NeoVim: The Best Editor Ever"
install_app "neovim"

# Install Neovim Plugins
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
complete_msg "NeoVim Plugins"

# Install Yazi for better file management
echo "Installing Yazi: Blazingly fast Terminal File Manager"
install_app "yazi"

# Install eza for a better ls
echo "Installing eza: Just a better ls"
install_app "eza"

# Install zoxdie for a better cd
echo "Installing zoxide: Intelligent cd"
install_app "zoxide"

# Install fzf for better searching 
echo "Installing fzf: Better ways to search"
install_app "fzf"

# Install starship for a better looking terminal
echo "Installing starship: Pretty Prompt"
install_app "starship"

# Install fastfetch for a sick system fetch
echo "Installing fastfetch: Snappy and Configurable System Fetch"
install_app "fastfetch"

# Install mpd for a music daemon 
echo "Installing mpd: It makes noise"
install_app "mpd"

# Install rmpc for a mpd client 
echo "Installing rmpc: It tells you what that noise is"
install_app "rmpc"

# Install github cli so we can auth
echo "Installing github cli: Use github from the cli"
install_app "github-cli"

# Install lazygit for nice git manager 
echo "Installing lazygit: Git Management Helper"
install_app "lazygit"

# Install udiske for auto usb mounting
echo "Installing udiskie: Auto usb mounting"
install_app "udiskie"

# We're done with installing terminal apps
complete_msg "Terminal Application"

