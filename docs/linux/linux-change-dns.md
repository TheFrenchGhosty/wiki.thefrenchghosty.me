Changing the DNS server of a linux machine is needlessly complicated, so this guide is sadly necessary.

For a full list of DNS see the Adguard DNS web page that lists all the relevant one https://adguard-dns.io/kb/general/dns-providers/

This guide will use the Adguard non-filtering servers, because it's basically the best (Quad9 is also good, but has a tendency to make some application bug out... maybe because of a strong rate limit)


# /etc/network/interfaces

Edit the network interfaces file:

```
sudo nano /etc/network/interfaces
```

Find the section for your network interface (usually named eth0 for wired or wlan0 for wireless) and add or edit the `dns-nameservers` line to include your desired DNS servers. For example:

```
dns-nameservers 94.140.14.140 94.140.14.141
```

Replace 94.140.14.140 and 94.140.14.141 with the IP addresses of the DNS servers you want to use. Separate multiple DNS servers with a space.


# /etc/resolv.conf

Edit the resolv.conf file:

Note that this file might be automatically overwritten by network manager tools (still, it's recommended to edit it in case none of the network manager tools do their job).

```
sudo nano /etc/resolv.conf
```

Add or edit the `nameserver` line to include your desired DNS servers. For example:

```
nameserver 94.140.14.140
nameserver 94.140.14.141
```

Replace 94.140.14.140 and 94.140.14.141 with the IP addresses of the DNS servers you want to use. One line = one DNS server

## Stop dhclient from modifying /etc/resolv.conf

If you have dhclient installed (default on Debian) you have to make it so it doesn't touch /etc/resolv.conf

```
echo 'make_resolv_conf() { :; }' > /etc/dhcp/dhclient-enter-hooks.d/leave_my_resolv_conf_alone
chmod 755 /etc/dhcp/dhclient-enter-hooks.d/leave_my_resolv_conf_alone
```

(taken from https://wiki.debian.org/resolv.conf )


# Systemd-networkd and Systemd-resolved (optional)

Some distro uses systemd-networkd and systemd-resolved and those are unnecessarily awful to configure (since the previous 2 files takes precedent, meaning that you basically have 4 files to edit if you use them).

## /etc/systemd/network/*.network

Open the existing file (if it exists):

```
sudo nano /etc/systemd/network/*.network
```

Edit the DNS line under `[Network]`:

```
[Network]
DNS=94.140.14.140 94.140.14.141
```

Replace 94.140.14.140 and 94.140.14.141 with the IP addresses of the DNS servers you want to use. Separate multiple DNS servers with a space.


## /etc/systemd/resolved.conf

Note: if all the lines of the files are commented, it shouldn't be necessary to edit it since the first two files will keep "control".

```
sudo nano /etc/systemd/resolved.conf
```

Edit the DNS line under `[Resolve]`:

```
[Resolve]
DNS=94.140.14.140 94.140.14.141
```

Replace 94.140.14.140 and 94.140.14.141 with the IP addresses of the DNS servers you want to use. Separate multiple DNS servers with a space.


## Applying the changes (if you don't reboot)

Restart networking:

After editing the file, restart networking for the changes to take effect:

```
$ sudo systemctl daemon-reload
$ sudo systemctl restart systemd-networkd
$ sudo systemctl restart systemd-resolved
$ sudo systemctl restart networking
```


# The end

It is strongly recommended that you reboot after that, however it shouldn't be mandatory.
