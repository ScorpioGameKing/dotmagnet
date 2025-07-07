#! /bin/sh

# Tell user what we're doing
echo "Modifying the .bashrc file"

# This is going to be dirty for now, we'll be smart later if we bother

# First we wipe the existing bash file, we'll also make a backup to recover
cp ~/.bashrc ~/.bashrc.backup_copy
> ~/.bashrc

# Now we rebuild the .bashrc VERY CAREFULLY
echo "#" >> ~/.bashrc
echo "# ~/.bashrc" >> ~/.bashrc
echo "#" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "# If not running interactively, don't do anything" >> ~/.bashrc
echo "[[ \$- != *i* ]] && return" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "alias grep='grep --color=auto'" >> ~/.bashrc
echo "alias ls='eza -TF -L 1 -a -s type --icons=auto -lUmh --git-repos --no-permissions'" >> ~/.bashrc
echo "alias fneo='clear && fastfetch'" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "fneo" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "function y() {" >> ~/.bashrc
echo "    local tmp=\"\$(mktemp -t \"yazi-cwd.XXXXXX\")\" cwd" >> ~/.bashrc
echo "    yazi \"\$@\" --cwd-file=\"\$tmp\"" >> ~/.bashrc
echo "    if cwd=\"\$(command cat -- \"\$tmp\")\" && [ -n \"\$cwd\" ] && [ \"\$cwd\" != \"\$PWD\" ]; then " >> ~/.bashrc
echo "        builtin cd -- \"\$cwd\"" >> ~/.bashrc
echo "    fi" >> ~/.bashrc
echo "    rm -f -- \"\$tmp\"" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "PS1='[\u@\h \W]\\$ '" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "eval \"\$(starship init bash)\"" >> ~/.bashrc
echo "eval \"\$(zoxide init --cmd cd bash)\"" >> ~/.bashrc

# Tell the user we're done
echo ".bashrc file has been set up"
