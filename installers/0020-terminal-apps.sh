#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what step this is
clear
echo "Installing and setting up Terminal applications"

# Install yeet for flexible package management
echo "Installing yeet: Flexible Package Management"
yay -S --noconfirm yeet
complete_msg "yeet"

# Install tmux for terminal management
install_app "tmux" "auto"

# Install tmux plugin manager
echo "Installing tmux plugins"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
complete_msg "tmux plugins"

# Install NeoViM for better text editing
install_app "neovim" "auto"

# Install Neovim Plugins
echo "Installing NeoVim Plugins"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
complete_msg "NeoVim Plugins"

# Install Yazi for better file management
install_app "yazi" "auto"

# Install eza for a better ls
install_app "eza" "auto"

# Install zoxdie for a better cd
install_app "zoxide" "auto"

# Install fzf for better searching 
install_app "fzf" "auto"

# Install starship for a better looking terminal
install_app "starship" "auto"

# Install fastfetch for a sick system fetch
install_app "fastfetch" "auto"

# Install mpd for a music daemon 
install_app "mpd" "auto"

# Install rmpc for a mpd client 
install_app "rmpc" "auto"

# Install github cli so we can auth
install_app "github-cli" "auto"

# Install lazygit for nice git manager 
install_app "lazygit" "auto"

# Install udiske for auto usb mounting
install_app "udiskie" "auto"

# We're done with installing terminal apps
complete_msg "Terminal Application"

