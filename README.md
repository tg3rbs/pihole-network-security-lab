# Pi-hole Network Security Lab

A Raspberry Pi network security lab using Pi-hole for DNS-level ad and tracker blocking, network monitoring, and Linux administration.

## Project Overview

This project uses a Raspberry Pi 4 running Raspberry Pi OS Lite as a dedicated Pi-hole DNS server. The goal is to gain hands-on experience with Linux administration, DNS, networking, SSH, and network-level filtering.

## Hardware

- Raspberry Pi 4 Model B
- 2 GB RAM
- microSD card
- Ethernet connection
- Raspberry Pi power supply

## Technologies

- Raspberry Pi OS Lite (64-bit)
- Linux
- Pi-hole
- SSH
- DNS
- Ethernet networking

## Setup

1. Installed Raspberry Pi OS Lite onto a microSD card using Raspberry Pi Imager.
2. Configured hostname, user account, networking, and SSH.
3. Connected the Raspberry Pi directly to the router through Ethernet.
4. Accessed the Raspberry Pi remotely using SSH.
5. Updated the operating system and installed Pi-hole.
6. Configured Pi-hole as a DNS server.
7. Configured a client device to send DNS queries through Pi-hole.
8. Verified DNS filtering and blocking.

## Verification

Confirmed that normal DNS requests resolve successfully:

```bash
nslookup example.com 192.168.1.240
