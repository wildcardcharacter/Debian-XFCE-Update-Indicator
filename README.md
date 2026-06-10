# Debian-XFCE-Update-Indicator
A lightweight Bash script for the XFCE Genmon Plugin that displays the number of available APT updates directly in the panel.

## Features

* Shows the number of available package updates.
* Color-coded status display:

  * 🟢 Green: System is up to date.
  * 🟠 Orange: Fewer than 10 updates available.
  * 🔴 Red: 10 or more updates available.
* Tooltip with update information.
* One-click system update via XFCE Terminal.
* Designed for Debian and Debian-based distributions using XFCE.

## Requirements

* Debian 13 (or compatible Debian-based distribution)
* XFCE Desktop Environment
* xfce4-genmon-plugin
* xfce4-terminal

## Usage

Add the script to the XFCE Genmon Plugin and set a refresh interval of your choice. Clicking the panel indicator opens a terminal and runs:

```bash
sudo apt update && sudo apt full-upgrade
```

This provides a simple and convenient way to monitor and install system updates directly from the XFCE panel.
