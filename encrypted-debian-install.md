---
title: Encrypted Debian Install
description: 
published: true
date: 2021-09-26T13:27:48.737Z
tags: 
editor: markdown
dateCreated: 2021-09-25T17:19:15.700Z
---

# Encrypted Debian Install (UEFI, No LVM, KDE Plasma) - Complete setup


# 1- Create the bootable media


Note: To avoid any issue, always use the [non-free firmware iso](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/). For Debian 11 it's `firmware-11.0.0-amd64-netinst.iso` from [Here](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.0.0+nonfree/amd64/iso-cd/).

## Make the bootable media:

Use [Ventoy](https://ventoy.net/) or dd:

```
dd bs=4M if=path/to/debian.iso of=/dev/sdx status=progress oflag=sync
```


# 2- Installation

## Locale and keyboard layout

Language: English
Location: Your location (in my case: other/Europe/France)
Locale: en_US.UTF-8
Keymap: Your keymap (in my case: French)

## Hostname and users

Hostname: debian
Domain name: [Blank Value] (remove `home`)
Root: Give it a strong password
Full name of the user account: [Blank Value]
Username of the user account: Choose an username
Password: Give it a strong password


## Partitioning

(If asked: Force UEFI installation: YES)

Partition method: Manual

Choose a your drive
Create partition table

Choose "FREE SPACE" of this drive
Create a new partition
Size: `500 MB`
Begining
Name: [Empty Value]
Use as EXT4 jounrnaling file system"
Mount as /boot
Click "Done setting up the partition"

Choose "FREE SPACE" of this drive
Create a new partition
Size: `500 MB`
Begining
Name: [Empty Value]
Use as "EFI System Partition"
Click "Done setting up the partition"


Choose "FREE SPACE" of this drive
Create a new partition
Size: all available (default value)
Name: [Empty Value]
Use as "Physical volume for encryption"
Erase data: no
Click "Done setting up the partition"

## Encryption

Configure encrypted volumes
Write the changes: YES
Create encrypted volumes
Choose the crypto partition
Finish
Encryption passphrase: Choose one
Done

Choose the encrypted volume
Mount point /
Click "Done setting up the partition"
Done

Click "Finish partitioning and write changes to disk"

When asked to setup swap, choose "No" (we'll setup a swapfile later, that way our swap will be encrypted)
Write the changes to disk

## Installation

Mirror country: Choose a country with good internet near you
Choose deb.debian.org
Proxy: [blank]

Participate in the package usage survey: No

Software to install:

- KDE Plasma
- standard system utilities

Untick everything else (including "Debian desktop environment")

# 3- Post-Install


## Sudo setup

```
su - root
visudo
```

Scroll down until "User privilege specification"

Add your user with the same privilege as root

Save

## Locale fix

It's possible that because this setup uses 2 locale, only one is properly setup. This will cause various issues, from warning to software crashing, to fix this:

```
sudo nano /etc/locale.gen
```
Uncomment the secondary locale (UTF-8), in my case, I need to uncomment: `fr_FR.UTF-8 UTF-8`.

Save and regenerate the locale:

```
sudo locale-gen
```

## KDE Plasma Configuration

Open System Settings

### Appearance

Global theme: "Breeze Dark"

### Workspace

#### Workspace behavior

##### General behavior:

Animation speed: Instant
Click behavior: "Double-click to open files and folders"

##### Screen locking:

Untick: "After X minutes"


#### Startup and Shutdown:

```
sudo apt install sddm-theme-breeze
```

##### Login Screen (SDDM):

Theme: Breeze

### Personalization

#### Regionnal Settings

##### Formats

Tick "Detailed Settings"

Time: Set to your locale (in my case fr_FR)

Measurment Units: Set to your locale (in my case fr_FR)

#### Users

Your username: Set picture (in my case to a Konqi)

## Software installation


### General tools:

To install everything:
```
apt install krita nfoview qbittorrent mpv smplayer mumble peek thunderbird birdtray micro keepassxc
```

Software list:

- krita: Photoshop but not by Adobe
- nfoview: Render NFO files the right way
- qbittorrent: Torrent stuff the right way
- mpv: The best media player
- smplayer: The best frontend to mpv, the best media player
- mumble: Voice chat but good
- peek: The best way to record short GIF/WEBM/MP4 to share on the internet
- thunderbird: The best e-mail client
- birdtray: Allow Thunderbird to go into the tray
- micro: nano but better, without going to vim
- keepassxc: The best password manager

### Advanced tools:

To install everything:

```
apt install pulseaudio-module-bluetooth gsmartcontrol whois hardinfo htop neofetch rclone aegisub curl electrum monero filezilla mediainfo-gui mkvtoolnix-gui torbrowser-launcher innoextract neovim
```

Software list:

- pulseaudio-module-bluetooth: Audio speaker support for Bluetooth
- gsmartcontrol: GUI SMART data monitor
- whois: Get informations on domain name
- hardinfo: Get informations on your hardware
- htop: Everyone's favorites system monitor
- neofetch: /r/unixporn favorite tool
- rclone: Interact with cloud storage provider the right way
- aegisub: The best subtitle editor
- curl: It's cURL
- electrum: The best Bitcoin wallet
- monero: The best Monero wallet
- filezilla: SFTP the right way
- mediainfo-gui: Get information about media files
- mkvtoolnix-gui: The best way to work with video files
- torbrowser-launcher: It's the TOR Browser
- innoextract: Extract files from Inno setup installer (mainly for GOG games installers)
- neovim: vim but better, because it's always useful to have


## Software that aren't in Debian's repo:

A good installer for .deb files:

```
sudo apt install gdebi
```

- Librewolf

Get the AppImage from: https://librewolf-community.gitlab.io/install/

Move it to `~/.AppImage`

Make it executable and run it


- Syncthing

Install instruction: https://apt.syncthing.net/

- Element Desktop: The best Matrix client

Install instruction: https://element.io/get-started

---

TODO: Find an Audacity alternative in the Debian repos, document the installation of yt-dlp, jdownloader2, rclone-brower, spek-alternative, torrent-file-editor, vscodium, cdemu/kde-cdemu-manager

---

MORE TODO