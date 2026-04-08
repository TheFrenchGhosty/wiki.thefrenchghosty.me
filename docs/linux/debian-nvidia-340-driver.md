# How to Install the Nvidia 340 Driver on Debian?

This guide has been tested on an installation of [Linux Mint Debian Edition](https://www.linuxmint.com/download_lmde.php), but it should work on Debian itself or on any distributions based on Debian.

### Checking what Nvidia Driver You Need

Install and run nvidia-detect:

```
apt install nvidia-detect
```

If the output mention that you need to install `nvidia-legacy-340xx-driver`, this guide is for you.

### Removing Every Old Nvidia Driver (including Nouveau)

We now have to remove every other Nvidia drivers so that the system correctly use the Nvidia 340 driver.

```
apt purge nvidia.
```

*Note the `.` after nvidia*

### Install the Nvidia 340 Driver

```
apt install nvidia-legacy-340xx-driver
```
