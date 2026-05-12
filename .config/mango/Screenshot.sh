#!/usr/bin/env bash

# Screenshot script for MangoWC
sDIR="$HOME/.config/mango"
time=$(date +"%d-%m-%Y_%H-%M-%S")
dir="/home/wgparch/Pictures/My Screenshots"    # ← HARDCODED (no xdg-user-dir)
file="Screenshot_${time}.png"

# Create directory if not exists
[[ ! -d "$dir" ]] && mkdir -p "$dir"

# Notify function
notify_view() {
    if [[ -e "$dir/$file" ]]; then
        notify-send -u low -i camera-photo "Screenshot Saved" "Saved to: $dir/$file"
    else
        notify-send -u low -i dialog-error "Screenshot Failed" "Screenshot was not saved"
    fi
}

# Countdown function
countdown() {
    for sec in $(seq "$1" -1 1); do
        notify-send -t 1000 -i camera-photo "Taking screenshot in: $sec seconds"
        sleep 1
    done
}

# Full screen screenshot
shotnow() {
    grim - | tee "$dir/$file" | wl-copy
    notify_view
}

# Timed screenshot (5 seconds)
shot5() {
    countdown 5
    grim - | tee "$dir/$file" | wl-copy
    notify_view
}

# Timed screenshot (10 seconds)
shot10() {
    countdown 10
    grim - | tee "$dir/$file" | wl-copy
    notify_view
}

# Area selection screenshot
shotarea() {
    grim -g "$(slurp)" - | tee "$dir/$file" | wl-copy
    notify_view
}

# Main script
case "$1" in
    --now)
        shotnow
        ;;
    --in5)
        shot5
        ;;
    --in10)
        shot10
        ;;
    --area)
        shotarea
        ;;
    *)
        echo "Usage: $0 {--now|--in5|--in10|--area}"
        echo "  --now   : Full screen screenshot"
        echo "  --in5   : Screenshot in 5 seconds"
        echo "  --in10  : Screenshot in 10 seconds"
        echo "  --area  : Select area to screenshot"
        exit 1
        ;;
esac

exit 0
