# What is Dot🧲Magnet?

Dot🧲Magnet is a "BYOIS" or "Bring Your Own Install Script" manager. Using Dot🧲Magnet you can easily stage your install
scripts into multiple, easily manageable steps. Provided along with the runner are useful helper funtions to reduce
the amount of required code letting you focus more on deciding what to install. Want a fancy logo for your installer?
Go right ahead! Want to change up the messages to the user or maybe the colors? Rice it up! While the options might not
be wide, the secondary aim of Dot🧲Magnet is to provide as much customizeable features as possible.

# Features

- [ ] Dot🧲Magnet Top Menu
    - [ ] Logo
    - [ ] Options
- [ ] Installer
    - [x] Base Installer Script
    - [ ] Installation Flags
        - [x] Auto Confirm
        - [ ] Pass Package Manager
        - [ ] Install Script Directory
- [ ] Menus
    - [x] Dot🧲Magnet Option Menus
        - [x] Installer Splash
        - [x] Help Splash
        - [x] Active File Notification
        - [x] Installing App Notification
        - [x] App Success Notification
        - [x] File Success Notification
        - [x] Installer Success Splash
    - [ ] "Build Your Own" Menus
- [x] Installation Helpers
- [ ] Uninstaller
    - [ ] Base Uninstaller Script
    - [ ] Uninstallation Flags
        - [ ] Auto Confirm
        - [ ] Pass Package Manager
        - [ ] Uninstall Script Directory
- [ ] Rebuilder
    - [ ] Base Rebuilder Script
    - [ ] Rebuilder Flags
        - [ ] Auto Confirm
        - [ ] Pass Package Manager
        - [ ] Pass Install Script Directory
        - [ ] Pass Uninstall Script Directory
- [ ] Themes
    - [ ] Colors
    - [ ] Borders
    - [ ] Default Messages

# How to use

Dot🧲Magnet is incredibly simple to use, be careful about running this right away as it will attempt to install the provided
example installation files:

```sh
git clone https://github.com/ScorpioGameKing/dotmagnet
cd dotmagnet
./install.sh install
```

# How to Make Your Own

Any bash file placed in the `installers/` directory by default will be run by the installer. It's highly recomended to
enforce some form of ordering so that your files will install in the correct order. To use the helper functions provided
by Dot🧲Magnet add the following snippet near the top of your file:

```sh
# Bring in our installer functions
function_dir=./../functions
parent_dir="$(builtin cd "$function_dir"; pwd)"
source "$parent_dir/functions/installer_functions.sh"
```

As for accessing menus, import them by adding the following if you haven't already imported `installer_functions`:

```sh
# Bring in our menus
menu_dir=./../menus
parent_dir="$(builtin cd "$menu_dir"; pwd)"
source "$parent_dir/menus/menus.sh"
```

Please see the files in `functions/` and `menus/` for further information on what functions and menus are provided and 
how to use them.
