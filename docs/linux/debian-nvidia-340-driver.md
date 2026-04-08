# How to install the Nvidia 340 driver on Debian?

This guide has been tested on an installation of [Linux Mint Debian Edition](https://www.linuxmint.com/download_lmde.php), but it should work on Debian itself or on any distributions based on Debian.

### Checking what Nvidia driver you need

Install and run nvidia-detect:

```
apt install nvidia-detect
```

If the output mention that you need to install `nvidia-legacy-340xx-driver`, this guide is for you.

### Removing every old Nvidia driver (including Nouveau)

We now have to remove every other Nvidia drivers so that the system correctly use the Nvidia 340 driver.

```
apt purge nvidia.
```

*Note the `.` after nvidia*


### Install the Nvidia 340 driver

```
apt install nvidia-legacy-340xx-driver
```
