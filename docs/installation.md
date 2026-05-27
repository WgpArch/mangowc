# 🛠️ Installation

This setup uses a Dual Waybar system launched from the `~/.config/mango` directory.

## Prerequisites

**Core:**
- `mango` (Mango Window Compositor)
- `waybar`
- `rofi`
- `swaybg` (Wallpaper setter)

**Utilities:**
- `lxterminal` (Default terminal)
- `firefox-nightly` (Default browser)
- `ghostty` (Launched via Mod+R)
- `pactl` / `pavucontrol` (Audio)
- `brightnessctl` (Backlight)
- `playerctl` (Media keys)

## Deploying the Config

1. Clone the repository:
        
        git clone https://codeberg.org/WgpArch/mangowc.git ~/.dotfiles/mangowc

2. Symlink the Mango configuration:
        
        ln -sf ~/.dotfiles/mangowc/configs/mango ~/.config/mango

3. Ensure scripts are executable:
        
        chmod +x ~/.config/mango/Screenshot.sh
        chmod +x ~/.config/mango/scripts/*
