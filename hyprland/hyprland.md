# About
Hyprland is the core of your desktop. Hyprland controls the all of the windows that appear on your screen, their arrangement, etc. Hyprland is also a sort of ecosystem, *but not in the invasive way*. Hyprland has some other applications of its own, such as hyprlauncher and hyprpaper. These have similar looks and feel as hyprland itself, and is more "immersive" in one theme, rather than having different tools have to mimick eachother.

# Status
Hyprland is currently ***YELLOW***

This is because it is still in heavy development, with core features missing

# Resources
[hyprland wiki](https://wiki.hypr.land/)


# Installation
>[!IMPORTANT]
>If the below command prompts to install graphics related stuff ***DO NOT CLICK ENTER! PICK THE ONE FOR YOUR GPU BRAND***

First install hyprland with
```
sudo pacman -S hyprland
```

Now we can move the config file to the needed place.

First check if the path exists
```
ls ~/.config/hypr
```
If not make it with
```
mkdir ~/.config/hypr
```
Then move the configuration file there

>[!NOTE]
>This command assumes that you are in the directory of the hyprland.lua file

```
mv hyprland.lua ~/.config/hypr/
```
