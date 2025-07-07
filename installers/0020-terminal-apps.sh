#! /bin/sh

# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"

# Tell the user what step this is
show_install_start_splash "Installing and setting up Terminal applications"

# Installing the 2 big ones and their plugins first
show_app_install "yeet"
yay -S --noconfirm yeet
show_app_complete "yeet"

install_app "tmux" "auto"

# Install tmux plugin manager
show_app_install "tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
show_app_complete "tmux plugins"

install_app "neovim" "auto"

# Install Neovim Plugins
show_app_install "NeoVim Plugins"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
show_app_complete "NeoVim Plugins"

# Install the rest
install_app "yazi" "auto"
install_app "eza" "auto"
install_app "zoxide" "auto"
install_app "fzf" "auto"
install_app "starship" "auto"
install_app "fastfetch" "auto"
install_app "github-cli" "auto"
install_app "lazygit" "auto"

# We're done with installing terminal apps
show_install_end_splash "Terminal Application"

