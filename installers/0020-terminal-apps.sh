#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what step this is
clear
echo "Installing and setting up Terminal applications"

# Installing the 2 big ones and their plugins first
echo "Installing yeet"
yay -S --noconfirm yeet
complete_msg "yeet"

install_app "tmux" "auto"

# Install tmux plugin manager
echo "Installing tmux plugins"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
complete_msg "tmux plugins"

install_app "neovim" "auto"

# Install Neovim Plugins
echo "Installing NeoVim Plugins"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
complete_msg "NeoVim Plugins"

# Install the rest
install_app "yazi" "auto"
install_app "eza" "auto"
install_app "zoxide" "auto"
install_app "fzf" "auto"
install_app "starship" "auto"
install_app "fastfetch" "auto"
install_app "mpd" "auto"
install_app "rmpc" "auto"
install_app "github-cli" "auto"
install_app "lazygit" "auto"
install_app "udiskie" "auto"

# We're done with installing terminal apps
complete_msg "Terminal Application"

