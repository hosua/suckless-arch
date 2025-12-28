# Archlinux & Suckless Build

This repo quickly sets up my suite of [suckless](https://suckless.org/) builds and configurations, since manually patching them every time gets to be quite cumbersome. By default, it will install everything needed for guest/host virtual machine clipboard sharing, so if running this on real hardware, that can be uninstalled.

Great for running on old Thinkpads and NUCs!

# Installation Instructions

First, go through the Archlinux installation process. At a minimum, you will need `git` installed so that you can clone the repository. You will also obviously need a working internet connection.

```
mkdir -p ~/dev && cd ~/dev
git clone https://github.com/hosua/suckless-arch.git
cd suckless-arch
./setup.sh
```

When `setup.sh` finishes installing and configuring everything, it will reboot your computer since there were a few things that don't work until after the reboot.

When you login, you will start with just a `tty`. To launch the graphical environment, run the `startx` command.

# What's in here?

My minimally patched versions of suckless (dmenu, dwm, dwmblocks, st, surf). However, I don't actually recommend using surf. It consumes way more memory than it should and has far too many incompatibility issues with the modern web. `qutebrowser`, however, is great for vim nerds. However, it does not support the usual chrome/firefox plugins, so you may end up wanting to just install `brave`.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/20699486-4310-47ac-9e26-09bd8961f4cf" />

Quick launch `qutebrowser` with `Super+q`: 

https://github.com/user-attachments/assets/d0eef1bb-8049-4acf-93b1-a07483413498

A bunch of dotfiles from my [configs](https://github.com/hosua/configs) repo are also included. Note that my configs contain more than what is necessary for this setup, I added the entire repo as a submodule to keep things simple. The most important dotfiles from my configs repo are probably `tmux`, `neovim`, and `ranger` which are what I tend to universally use.

# dwm Keybinds

**Modifier:** `Super` (Windows key)

## Applications
- `Super+q` - Launch browser (qutebrowser)
  - This will run a dmenu script that will launch whatever URL you enter. If the input is not a URL, it will automatically Google search what you type.
- `Super+r` - Launch dmenu
- `Super+Return` - Launch terminal (st)

## Window Management
- `Super+j/k` - Focus next/previous window in stack
- `Super+Shift+j/k` - Rotate stack up/down
- `Super+c` - Kill focused window
- `Super+z` - Zoom focused window to master area
- `Super+Tab` - Switch to previous tag view

## Layouts
- `Super+t` - Tile layout
- `Super+f` - Floating layout
- `Super+m` - Monocle layout
- `Super+Space` - Cycle layouts
- `Super+Shift+Space` - Toggle floating for focused window

## Master Area
- `Super+i/d` - Increase/decrease number of master windows
- `Super+h/l` - Decrease/increase master area size

## Tags
- `Super+1-9` - View tag
- `Super+Shift+1-9` - Move window to tag
- `Super+Ctrl+1-9` - Toggle tag view
- `Super+Ctrl+Shift+1-9` - Toggle tag for window
- `Super+0` - View all tags
- `Super+Shift+0` - Move window to all tags

## Monitors
- `Super+,/.` - Focus previous/next monitor
- `Super+Shift+,/.` - Move window to previous/next monitor

## Other
- `Super+b` - Toggle bar visibility
- `Super+Shift+q` - Quit dwm

## Mouse
- Click tag in bar - View tag
- Right-click tag - Toggle tag view
- `Super+Click` tag - Move window to tag
- `Super+Right-click` tag - Toggle tag for window
- Click layout symbol - Cycle layouts
- Right-click layout symbol - Monocle layout
- Middle-click status bar - Launch terminal
- `Super+Drag` window - Move window
- `Super+Right-drag` window - Resize window
- Middle-click window title - Zoom window

