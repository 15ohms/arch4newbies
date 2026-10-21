# Purpose
The reason that this exists is to introduce people to Arch and tools like it, such as: hyprland, a tiling window manager; neovim, a command-line text (and code!) editor; and much more. This projects' purpose, as stated in the description is to help those who either don't have time, don't want to, or cannot configure themselves. The aim of this project is to have *very* good documentation for all of the files, so that even fresh arch users will find it easy to configure themselves after some time. This project is made by me, who started with Arch as their first distro, and I believe I can help make Arch a smoother experience.

>[!NOTE]
>Arch has a god tier wiki. Almost any issue that you can come across in Arch is solved or explained in the [wiki](https://wiki.archlinux.org/title/Main_page)

>[!NOTE]
>This is meant to help *after you have installed Arch.* For guidance through installing arch, see either the [wiki](https://wiki.archlinux.org/title/Main_page) or use [archinstall](https://wiki.archlinux.org/title/Archinstall)

# Status
>[!IMPORTANT]
>This section is about the stability of each "module". This section contains a list of all of the "modules" and their status and stability. Due to the nature of open-source, updates to the modules, for example hyprland, may bring breaking changes. In the future the would be a tool to make migration a simple script.

Status Key:

🟢 - This means that the module is tested, and no major changes are being made.

🟡 - This means that the module is in a state of development. Usable, but it is recommended to wait until green. If you are comfortable editing the configurations yourself, then this may not pose as a big problem

🔴 - This means that there are breaking changes/the module is unstable. Your are effectively using something bound to fail, or something that doesn't work correctly.


>[!NOTE]
>There will be a restatement of these statuses in the module's `.md` file.

🔴 - `hyprland`


# Installation
>[!NOTE]
>This assumes you know what [pacman](https://wiki.archlinux.org/title/Pacman) is and that you know some very basic bash.

>[!NOTE]
>If you find that any parts of this guide are incorrectly documented, or need expansion/clarification, please open an issue

To install first clone this repository to its own folder. While this is not required, it helps keep everything organized.
``` bash
git clone https://github.com/15ohms/arch4newbies
```
If this does not work, install git with `sudo pacman -S git` and try again.

>[!NOTE]
>As evident, this guide is quite explicit and goes into some detail. This is true across the entirety of this project, as explicit instructions are easier for people, especially newer ones.

Now, you should have this repo cloned to your computer in a location of ease, e.g. `~/arch4newbies`
From here on out, each "module" will have its own folder, and in some cases maybe even sub-folders.
In each, you should navigate to the module that you want to configure.
There will be a `module/app.md` file, containing a brief explanation and some links to useful references. If you are new, I suggest keeping these next to your configuration files for later use.
This file will contain a brief explanation of the tool, along with useful sources and instructions to install.
There will be files and/or folders in along with the `.md` file, what to do with them will be explained in said `.md` file.
