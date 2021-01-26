
# Ubuntu-Setup

Setup script for a new ubuntu 20.10 desktop.

---

## Run The Setup
```bash
wget -qO - https://raw.githubusercontent.com/hit12369/ubuntu-setup/master/setup.py | sudo python -
```

---
### package.csv

```python
# header: name,mode,arg1,arg2
```
- name: Name or Descriptor of package
- mode: Type of Install

|mode|arg1|arg2|What?|
|-|-|-|-|
|apt||n/a|
|snap||n/a|
|flat||n/a|
|appimage|url|n/a|
|deb|url|n/a|
|raw|executable bash|n/a|
|repo||repo (ppa)|
|pass|n/a|n/a|
|Future...
|ext||n/a|
|pip||n/a|
---

## Features
- Install Packages (Extensions, App Images, Deb, Apt, Snap, Flat Pak, etc.)

### Future Features

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

