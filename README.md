# Indomitable

## This is a WIP. I have just been able to run this in a VM. Use at your own risk.

[![build-indomitable](https://github.com/trs-sod/indomitable/actions/workflows/build.yml/badge.svg)](https://github.com/trs-sod/indomitable/actions/workflows/build.yml)

This is my attempt at building a Hyprland based uBlue-OS image. 

The plan is to be as minimal as possible, focusing on flatpaks and distrobox, with all the needed tools to theme or rice available. 


## Known issues

Rebasing from the Sericea uBlue image does not work (Haven't looked into it yet).

Rebasing from the Base uBlue image might give you a login screen with only a text cursor. To resolve this:

 - Go into a TTY and login
 - Make sure the file `/etc/sddm.conf.d/current.conf` exists and matches the one in this repo under: `/usr/etc/sddm.conf.d/current.conf`


## Installation

> **Warning**
> This is an experimental feature and should not be used in production, try it in a VM for a while!

To rebase an existing Silverblue/Kinoite installation to the latest build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/trs-sod/indomitable:latest
```

This repository builds date tags as well, so if you want to rebase to a particular day's build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/trs-sod/indomitable:20230403
```


## Just

The `just` task runner is included in `ublue-os/main`-derived images, and we have provided several template commands which help you perform further customization after first boot.

You'll are able to run the following commands:

- `just` - Show all tasks, more will be added in the future
- `just bios` - Reboot into the system bios (Useful for dualbooting)
- `just changelogs` - Show the changelogs of the pending update
- Set up distroboxes for the following images:
  - `just distrobox-boxkit`
  - `just distrobox-debian`
  - `just distrobox-opensuse`
  - `just distrobox-ubuntu`
- `just setup-flatpak-repos` - Enable a bunch of flatpak repos if they weren't already
- `just setup-flatpaks` - Install all of the flatpaks declared in recipe.yml
- `just setup-gaming` - Install Steam, Heroic Game Launcher, OBS Studio, Discord, Boatswain, Bottles, and ProtonUp-Qt. MangoHud is installed and enabled by default, hit right Shift-F12 to toggle
- `just nix-me-up` - Install Nix with dnkmmr69420's Nix Silverblue install script
- `just update` - Update rpm-ostree, flatpaks, and distroboxes in one command
