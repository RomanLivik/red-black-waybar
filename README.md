![photo_2026-01-31_16-34-10](https://github.com/user-attachments/assets/53926786-6bee-4dcd-8f00-fa76aecfa9c9)

Red and black theme for waybar for arch linux with hyprland. 

> The product is under development.
> Please, treat this with understanding and keep track of changes in this repository.

## Packets you need
* eww (aur)

## Installation
```
git clone https://github.com/RomanLivik/red-black-waybar.git
mkdir -r ~/.config/waybar
mv ~/red-black-waybar/config.jsonc ~/.config/waybar
mv ~/red-black-waybar/style.css ~/.config/waybar
mv ~/red-black-waybar/eww ~/.config
```
## To accept changes
* reboot hyprland or pc if you have waybar in autoexec
* killall waybar && waybar if you have not got it in autoexec

If there is a very big gap between the waybar and the windows, you should edit theese plines in ~/.config/hypr/hyprland.config:
```
#####################
### LOOK AND FEEL ###
#####################
general{
  gaps_in = 3 <=== gap from border
  gaps_out = 2 <=== gap from top
  border_size = 2 <=== gap between windows
