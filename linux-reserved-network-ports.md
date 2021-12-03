---
title: Linux's Reserved Network Ports
description: 
published: true
date: 2021-12-03T21:50:26.819Z
tags: 
editor: markdown
dateCreated: 2021-12-03T21:50:26.819Z
---

# Linux's Reserved Network Ports

When hosting some services, some ports should be avoided, those ports are:

**0-1023:** The "Well-Known Ports": used/reserved by system processes and core services

**32768–65535:** The "ephemeral ports": automatically allocated by the system to application that needs to bind to a port.


---

## About the "ephemeral ports":

Some distribition have a different lower values for the "ephemeral ports" (usually 49152 instead of 32768).

Some distribition have a different higher values for the "ephemeral ports" (usually 60999 or 61000 instead of 65535).

**To be safe it's easier to assume any port above 32768 is "unsafe" to use *everywhere*.**

To check what is the value on your system, you can do:

```
/usr/sbin/sysctl net.ipv4.ip_local_port_range
```

or

```
cat /proc/sys/net/ipv4/ip_local_port_range
```

The output of either of those will be `[LOWER VALUE] [HIGHER VALUE]`.


---

#### Sources:

- Me, TheFrenchGhosty, trying to host services on "ephemeral ports", and discovering the issue.

- https://www.thegeekdiary.com/which-network-ports-are-reserved-by-the-linux-operating-system/

- https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers

- https://www.ncftp.com/ncftpd/doc/misc/ephemeral_ports.html#Linux

- https://www.cyberciti.biz/tips/linux-increase-outgoing-network-sockets-range.html