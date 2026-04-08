# KVM/QEMU/Libvirt/Virt-Manager Setup (PC and Server)

This guide is based on [Mental Outlaw's tutorial](https://redirect.invidious.io/watch?v=wxxP39cNJOs) but goes further with a server side KVM, and with a full Debian setup.

## PC Pre-requisites (to Use KVM and Connect to Remote KVM):

## Debian

```
apt install virt-manager
```

### Arch Linux:

```
pacman -S virt-manager libvirt qemu-full dnsmasq
```

## Server Pre-requisites (to Use KVM from a Remote Endpoint - through SSH):

### Debian

```
apt install qemu-system libvirt-clients libvirt-daemon dnsmasq netcat
```

### Arch Linux:

```
pacman -S libvirt qemu-full dnsmasq openbsd-netcat
```

## Setup

```
systemctl enable --now libvirtd
```

```
sudo nano /etc/libvirt/libvirtd.conf
```

Uncomment or add (Note: This can be considered a security risk):

```
unix_sock_group = "libvirt"
unix_sock_ro_perms = "0777"
unix_sock_rw_perms = "0770"
```

Add your user to the list of users allowed to use KVM (Note: if this is on a server, this user must be accessible via SSH):

```
sudo usermod -aG libvirt [USERNAME]
```

Logout (or reconnect to your SSH session)

```
systemctl restart libvirtd
```

## Add SSH Connection to Virt-manager

Virt-Manager doesn't have an interface to add details to SSH connections other than username/hostname, you need to do it from the cli directly:

```
virt-manager -c 'qemu+ssh://[USERNAME]@[HOSTNAME]:[PORT]/system?keyfile=[NAME OF YOUR SSH KEYFILE]'
```
