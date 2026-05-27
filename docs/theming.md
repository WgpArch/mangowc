# 🎨 Look & Feel

MangoWM offers deep customization over animations, blur, and layout behavior directly in `config.conf`.

## General Appearance
- **Gaps (Inner):** 3px
- **Gaps (Outer):** 3px
- **Border Width:** 3px (Pixel style).
- **Border Radius:** 10px (No radius when only one window).
- **Smart Gaps:** Disabled.

## Colors
- **Root Background:** `#201b14`
- **Border:** `#444444`
- **Focus Border:** `#000000`
- **Maximized Screen:** `#89aa61`
- **Urgent:** `#ad401f`
- **Overlay:** `#14a57c`

## Animations
Highly customized animations are enabled:
- **Open/Close:** Slide animations with custom bezier curves (`0.2,0.8,0.2,1`).
- **Fade:** Enabled for both opening and closing windows.
- **Duration:** Move (500ms), Open (400ms), Tag switch (350ms), Close (800ms).

## Blur & Shadows
- **Blur:** Enabled (Size: 3, Passes: 5, Radius: 5, Noise: 0.02).
- **Shadows:** Disabled for tiled windows, enabled for floating windows (Size: 10, Blur: 15).

## Layouts
MangoWM supports multiple layouts. By default, all workspaces are set to `tile`. Available layouts include:
- `tile`, `scroller`, `grid`, `deck`, `monocle`, `center_tile`, `vertical_tile`, `vertical_scroller`.

## Input Devices
- **Keyboard:** US layout, repeat rate 25, delay 600.
- **Trackpad:** Tap-to-click, drag, natural scroll, and disable-while-typing enabled.
- **Mouse:** Natural scrolling disabled.
