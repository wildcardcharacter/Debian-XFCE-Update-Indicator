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

## Optional: Passwordless Updates

To avoid entering your password every time you run updates from the panel, you can allow specific APT commands to be executed via `sudo` without a password prompt.

Edit the sudoers file:

```bash
sudo visudo
```

Add the following line at the end of the file (replace `yourusername` with your actual username):

```bash
yourusername ALL=(root) NOPASSWD: /usr/bin/apt update, /usr/bin/apt full-upgrade
```

This configuration allows only the commands used by the update indicator to run without requiring a password, while keeping all other administrative commands protected.

**Note:** Granting access only to the required commands is more secure than allowing unrestricted passwordless sudo access to all APT operations.

