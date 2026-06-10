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


## Optional: Run Updates Without a Password Prompt

If you would like to start updates directly from the panel without entering your sudo password, add the following rule to your sudoers configuration:

```bash
sudo visudo
```

Add the following line at the end of the file (replace yourusername with your actual username):

```text
yourusername ALL=(root) NOPASSWD: /usr/bin/apt update, /usr/bin/apt full-upgrade
```

This allows the update indicator to execute only the required update commands without prompting for a password.

### Security Note

This configuration is more secure than allowing unrestricted passwordless sudo access because only the following commands are permitted:

* `apt update`
* `apt full-upgrade`

All other administrative commands will continue to require authentication.
