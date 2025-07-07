# What is dotmagnet?

Dotmagnet is a "BYOIS" or "Bring Your Own Install Script" manager. Using Dotmagnet you can easily stage your install
scripts into multiple, easily manageable steps. Provided along with the runner are useful helper funtions to reduce
the amount of required code letting you focus more on deciding what to install. 

# Features

[ ] - Dotmagnet Top Menu
[-] - Installer
    [x] - Base Installer Script
    [-] - Installation Flags
        [x] - Auto Confirm
        [ ] - Pass Package Manager
        [ ] - Install Script Directory
[-] - Menus
    [x] - Hardcoded Splashes
    [ ] - Dotmagnet Option Menus
    [ ] - "Build Your Own" Menus
[-] - Installation Helpers
[ ] - Uninstaller
    [ ] - Base Uninstaller Script
    [ ] - Uninstallation Flags
        [ ] - Auto Confirm
        [ ] - Pass Package Manager
        [ ] - Uninstall Script Directory
[ ] - Rebuilder
    [ ] - Base Rebuilder Script
    [ ] - Rebuilder Flags
        [ ] - Auto Confirm
        [ ] - Pass Package Manager
        [ ] - Pass Install Script Directory
        [ ] - Pass Uninstall Script Directory
[ ] - Themes
    [ ] - Colors
    [ ] - Borders
    [ ] - Default Messages

# How to use

Dotmagnet is incredibly simple to use, be careful about running this right away as it will attempt to install the provided
example installation files:

```sh
git clone https://github.com/ScorpioGameKing/dotmagnet
cd dotmagnet
./install.sh install
```

# How to Make Your Own

Any bash file placed in the `installers/` directory by default will be run by the installer. It's highly recomended to
enforce some form of ordering so that your files will install in the correct order. To use the helper functions provided
bt Dotmagnet add the following snippet near the top of your file:

```sh
# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"
```

Please see the files in `functions/` for further information on what functions are provided and how to use them.
