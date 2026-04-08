# Arch Linux - Switch to LTS Kernel

Check you current kernel type:

```
uname -r
```

If it displays `X.XX.X-arch1-X` (or similar) this guide is for you

## Install the Actual LTS Kernel

```
pacman -S linux-lts
```

## Uninstall the Original Kernel

```
pacman -Rc linux
```

Do not confirm the un-installation yet, take note of the things uninstalled things (along with the kernel), and find the LTS/generic alternative.

When you found them, process, and install those alternatives

## Rebuild Grub to Make it Use This New Kernel (if You Use Grub)

```
grub-mkconfig -o /boot/grub/grub.cfg
```

## Reboot

```
reboot now
```

## Check You New Kernel Type:

```
uname -r
```

If it displays `X.XX.X-lts` (or similar) you successfully moved to the LTS kernel
