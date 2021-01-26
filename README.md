
# Ubuntu-Setup

*requires pandas

Setup script for a new ubuntu 20.04/20.10 desktop. (Current Configuration) src/setup.py reads packages.csv, then generates a ubuntu_setup.sh file.

---
### package.csv

```python
# header: name,mode,args
```
- name: Name or Descriptor of package
- mode: Type of Install

|mode|arg1|arg2|What?|
|-|-|-|-|
|apt||n/a|
|snap||n/a|
|flatpak||n/a|
|raw|executable bash|n/a|
|repo||repo (ppa)|
|pass|n/a|n/a|
|Future...
|deb|url|n/a|
|ext||n/a|
|pip||n/a|
|appimage|url|n/a|

---

## Features
- Install Packages (Apt, Snap, Flat Pak, etc.)

### Future Features

- Install Packages (Extensions, App Images, Deb, etc.)
- Setup Applications
    - Setup Browser*
    - Setup Email
    - Setup Spotify*
    - Setup IDE's*
- Package Configuration Backup (Mackup, rsync)
    - restore*
    - backup*
- Backup and Sync
    - System Backup (Timeshift)*
    - Sync (Pcloud)*
    - Web App Backups
- Security & System
    - Harden (Fire Jail, Fire Wall/UFW)
    - Track (Prey)
    - Optimize (Tlp, auto Cpu, etc.)
    - Desktop Environment Setup
- Email Notifications when IDLE or FINISHED
- Finish Options (Lock Screen or Stay or Shutdown)

*priority

---

## Original/Acknowledgement(s)

Forked From https://github.com/hit12369/ubuntu-setup

