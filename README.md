# Hyprland dotfiles

My `~/.config` setup: a Lua-based Hyprland config on CachyOS (ThinkPad T480), themed to match the
**Dynamic Island** shell.

The island lives in [`quickshell/`](quickshell) and is also kept as its own repo,
[aronkv/dynamic-island](https://github.com/aronkv/dynamic-island). Its README covers features,
installation, keybindings and IPC.

## What is here

Everything outside `quickshell/`. Copy whichever folders you want into `~/.config/`.

| Folder | What it is |
| --- | --- |
| [`hypr/`](hypr) | Hyprland config written in Lua (`hyprland.lua` + `config/*.lua`), hyprpaper |
| [`matugen/`](matugen) | Wallpaper-based color generation |
| [`kitty/`](kitty) | Terminal |
| [`fish/`](fish) | Shell |
| [`gtk-3.0/`](gtk-3.0), [`gtk-4.0/`](gtk-4.0), [`qt6ct/`](qt6ct), [`nwg-look/`](nwg-look), [`kdeglobals`](kdeglobals) | GTK / Qt theming |
| [`cava/`](cava) | Audio visualizer (also drives the island's bars) |
| [`btop/`](btop), [`micro/`](micro), [`spicetify/`](spicetify) | btop, micro editor, Spotify theming |
| [`mpv/`](mpv), [`mpd/`](mpd) | Video player (uosc + thumbfast) and music daemon for `rmpc` |
| [`autostart/`](autostart), [`systemd/`](systemd), [`mimeapps.list`](mimeapps.list) | Autostart entries, user services, default apps |
