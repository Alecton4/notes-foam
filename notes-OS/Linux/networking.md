---
sitemap:
  lastmod: 2024-12-06 +0000
---

# Networking

Last modified: 2024-12-06 +0000

- [Interesting posts](#interesting-posts)
- [DNS](#dns)
- [IPv6](#ipv6)
- [BGP](#bgp)
- [Certificates](#certificates)
  - [Add trusted certificates](#add-trusted-certificates)
  - [Examine certificates](#examine-certificates)
- [Socket tuning for large traffic](#socket-tuning-for-large-traffic)
- [Web debugging proxies](#web-debugging-proxies)
- [Check open ports](#check-open-ports)
- [`ip route`](#ip-route)

## Interesting posts

- [About Networking \| Calico Documentation](https://docs.tigera.io/calico/latest/about/kubernetes-training/about-networking)
- [Glossary](https://www.networxsecurity.org/members-area/glossary.html)
- [OSI Model and Networking Protocols Relationship - Network Engineering Stack Exchange](https://networkengineering.stackexchange.com/questions/6380/osi-model-and-networking-protocols-relationship/6381#6381)
- [Reserved IP addresses - Wikipedia](https://en.wikipedia.org/wiki/Reserved_IP_addresses)
- [Difference Between Network Address Translation and Domain Name System - GeeksforGeeks](https://www.geeksforgeeks.org/difference-between-network-address-translation-and-domain-name-system/)
- [Zero Trust security \| What is a Zero Trust network? \| Cloudflare](https://www.cloudflare.com/learning/security/glossary/what-is-zero-trust/)
- [Masquerading and firewalls \| Security and Hardening Guide \| openSUSE Leap 15.6](https://doc.opensuse.org/documentation/leap/security/html/book-security/cha-security-firewall.html)
- [iptables: The two variants and their relationship with nftables \| Red Hat Developer](https://developers.redhat.com/blog/2020/08/18/iptables-the-two-variants-and-their-relationship-with-nftables#the_kernel_api)
- [iptables and nftables - English / Network/Internet - openSUSE Forums](https://forums.opensuse.org/t/iptables-and-nftables/147817)
- [What's the meaning of `linkdown` and `onlink' in Linux Route? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/579087/whats-the-meaning-of-linkdown-and-onlink-in-linux-route)
- [Stop using Telnet to test ports \| Enable Sysadmin](https://www.redhat.com/sysadmin/stop-using-telnet-test-port)
- [How to find your IP address in Linux \| Opensource.com](https://opensource.com/article/18/5/how-find-ip-address-linux)
- [Traceroute vs. tracepath: What's the difference? \| Enable Sysadmin](https://www.redhat.com/sysadmin/traceroute-tracepath-network-troubleshooting)
- [好用的開源內網穿透軟體比較，ZeroTier與Tailscale · Ivon的部落格](https://ivonblog.com/posts/foss-nat-traversal-solutions/)
- [What are the differences between lsof and netstat on linux? - Stack Overflow](https://stackoverflow.com/questions/49381124/what-are-the-differences-between-lsof-and-netstat-on-linux)
- [networking - Why do nmap, ss (netscan?) and lsof give different results? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/652556/why-do-nmap-ss-netscan-and-lsof-give-different-results)
- [Connection reset原因分析和解决方案-CSDN博客](https://blog.csdn.net/liyantianmin/article/details/82505734)
- [debian - What are the differences between iputils-ping and inetutils-ping? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/400351/what-are-the-differences-between-iputils-ping-and-inetutils-ping)
- [Traceroute vs. tracepath: What's the difference?](https://www.redhat.com/en/blog/traceroute-tracepath-network-troubleshooting)

## DNS

*References*:

- [Understanding Hosts Files - What You Need to Know \| Lenovo US](https://www.lenovo.com/us/en/glossary/hosts-file/)
- [What is DNS? How it works?. What about hosts file and resolv.conf? \| by Betul Ince \| Medium](https://medium.com/@Betulince/what-is-dns-how-it-works-12ea45b27e75)
- [Can I create a user-specific hosts file to complement /etc/hosts? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/10438/can-i-create-a-user-specific-hosts-file-to-complement-etc-hosts)

## IPv6

*References*:

- [You Thought There Was No NAT for IPv6, But NAT Still Exists](https://blogs.infoblox.com/ipv6-coe/you-thought-there-was-no-nat-for-ipv6-but-nat-still-exists/)
- [RFC 4864 - Local Network Protection for IPv6](https://datatracker.ietf.org/doc/html/rfc4864)
- [network - With IPv6 do we need to use NAT anymore? - Information Security Stack Exchange](https://security.stackexchange.com/questions/44065/with-ipv6-do-we-need-to-use-nat-anymore)

## BGP

*References*:

- [What is BGP? \| BGP routing explained \| Cloudflare](https://www.cloudflare.com/learning/security/glossary/what-is-bgp/)

## Certificates

### Add trusted certificates

*References*:

- [Adding trusted root certificates to the server](https://manuals.gfi.com/en/kerio/connect/content/server-configuration/ssl-certificates/adding-trusted-root-certificates-to-the-server-1605.html)
- [update-ca-certificates(8) — ca-certificates — Debian buster — Debian Manpages](https://manpages.debian.org/buster/ca-certificates/update-ca-certificates.8.en.html)
- [update-ca-trust(8) — Arch manual pages](https://man.archlinux.org/man/update-ca-trust.8)
- [Trust a self signed PEM certificate](https://unix.stackexchange.com/questions/17748/trust-a-self-signed-pem-certificate/126571#126571)

### Examine certificates

- `curl`:
  - Get the connection and SSL certificate details for a domain name: `curl https://example.com -vI`.

*References*:

- [Using curl to Check an SSL Certificate's Expiration Date and Details — Nick Janetakis](https://nickjanetakis.com/blog/using-curl-to-check-an-ssl-certificate-expiration-date-and-details)

## Socket tuning for large traffic

For servers that are handling large numbers of concurrent sessions, some TCP options should probably be tweaked.

With a large number of clients communicating with your server, it wouldn't be unusual to have 20,000 open sockets or more. To increase that range you append the following to the bottom of `/etc/sysctl.conf`:

```ini
# Use the full range of ports.
net.ipv4.ip_local_port_range = 1024 65535
```

You can also increase the recycling time of sockets, avoiding large numbers of them staying in the TIME_WAIT status by adding these values to `/etc/sysctl.conf`:

```ini
# Enables fast recycling of TIME_WAIT sockets.
# (Use with caution according to the kernel documentation!)
net.ipv4.tcp_tw_recycle = 1

# Allow reuse of sockets in TIME_WAIT state for new connections
# only when it is safe from the network stack’s perspective.
net.ipv4.tcp_tw_reuse = 1
```

Finally, one problem you'll find is that if a socket is listening and busy a connection backlog will pile up. The kernel will keep pending connections in a buffer before failing. You can tweak several values to increase the size of the backlog:

```ini
# 16MB per socket - which sounds like a lot, but will virtually never consume that much.
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216

# Increase the number of outstanding syn requests allowed.
# c.f. The use of syncookies.
net.ipv4.tcp_max_syn_backlog = 4096
net.ipv4.tcp_syncookies = 1

# The maximum number of "backlogged sockets".  Default is 128.
net.core.somaxconn = 1024
```

The trade-off here is that a connecting client will see a slow connection, but this is almost certainly better than a Connection Refused error.

Once you've made those additions you can cause them to be loaded by running:

```bash
sysctl -p
```

Finally, if you've changed these limits you will need to restart the associated daemons. (For example "service nginx restart".)

*References*:

- [Greenplum DBA - Socket Tuning in LINUX](https://www.greenplumdba.com/socket-tuning-in-linux)
- [Why Are Thousands of TIME_WAIT Sockets Stacked on the Client? - Alibaba Cloud Community](https://www.alibabacloud.com/blog/why-are-thousands-of-time-wait-sockets-stacked-on-the-client_595250)
- [ubuntu - What are the ramifications of setting tcp_tw_recycle/reuse to 1? - Server Fault](https://serverfault.com/questions/342741/what-are-the-ramifications-of-setting-tcp-tw-recycle-reuse-to-1)

## Web debugging proxies

*References*:

- [Comparing Charles Proxy, Fiddler, Wireshark, and Requestly \| by Requestly \| Requestly \| Medium](https://medium.com/requestly/comparing-charles-proxy-fiddler-and-wireshark-5da41363d263)
- [Wireshark is still listed, it's a lot more powerful and open source: https://cho... \| Hacker News](https://news.ycombinator.com/item?id=15792354)
- [Decrypt Traffic with Mitmproxy & Wireshark — Peter Girnus](https://www.petergirnus.com/blog/decrypting-https-traffic-with-mitmproxy-amp-wireshark)

## Check open ports

Use `ss -tupln`.

*References*:

- [How to check open ports in Linux using the CLI - nixCraft](https://www.cyberciti.biz/faq/how-to-check-open-ports-in-linux-using-the-cli/)
- [Check if port is open or closed on a Linux server? - Server Fault](https://serverfault.com/questions/309052/check-if-port-is-open-or-closed-on-a-linux-server)
- [How do I know if a TCP port is open or closed? - Synology Knowledge Center](https://kb.synology.com/en-me/DSM/tutorial/Whether_TCP_port_is_open_or_closed#x_anchor_id6)

## `ip route`

*References*:

- [What's the meaning of `linkdown` and `onlink` in Linux Route?](https://unix.stackexchange.com/questions/579087/whats-the-meaning-of-linkdown-and-onlink-in-linux-route)
- [Interface following a link](https://serverfault.com/questions/1079631/interface-following-a-link)
