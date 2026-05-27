# 📊 Waybar & Scripts

This setup features a **Dual Waybar** configuration to provide different aesthetic and functional choices, particularly regarding the weather module and workspace representation.

## Waybar 1 (Primary)
- **Config:** `~/.config/mango/waybar/config.jsonc` & `style.css`
- **Modules Left:** Arch Launcher, Power, `dwl/tags`, Layout indicator.
- **Modules Center:** Clock, Weather (via `parse_weather.rb`).
- **Modules Right:** Temperature, Memory, CPU, Disk, Battery, Tray.

## Waybar 2 (Alternative)
- **Config:** `~/.config/mango/waybar1/config.jsonc` & `style.css`
- **Modules Left:** Arch Launcher, `ext/workspaces`, MPRIS (Media Player), `dwl/window`.
- **Modules Center:** Clock, Weather (Feature-rich widget with icons).
- **Modules Right:** CPU, Memory, Temperature, Battery, Power Profiles, Network, Power, Tray.

### The Weather Widgets
There are two distinct weather implementations available:
1. **Standard (Waybar 1):** Uses the standard `parse_weather.rb` script also used in River and dwl setups.
2. **Feature-Rich (Waybar 2):** Uses the `waybar-weather-widget` module, which provides detailed weather data, custom icons, and click actions to cycle through forecasts.

To switch between Waybars, edit the `exec-once` lines in `~/.config/mango/config.conf` to uncomment the desired bar and comment out the other.

## 📜 Key Scripts

Located in `~/.config/mango/scripts/`:

| Script | Description |
| :--- | :--- |
| `screenshot.sh` | Screenshot utility with `--now`, `--area`, `--in5`, and `--in10` delays. |

Located in `~/.config/mango/waybar1/weather/waybar/scripts/weather/`:

| Script | Description |
| :--- | :--- |
| `get_weather.rb` | Fetches detailed weather data for the feature-rich widget. |
