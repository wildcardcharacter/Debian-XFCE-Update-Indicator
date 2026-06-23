# Debian XFCE Update Indicator

A lightweight XFCE Genmon widget that displays available Debian package updates directly in the panel and allows one-click system upgrades.

The widget provides a simple visual indicator for available updates and automatically refreshes its status after upgrades are completed.

## Features

* Display available APT package updates
* Color-coded update status
* One-click system upgrades
* Automatic refresh after updates
* XFCE Genmon integration
* Lightweight Bash implementation

## Status Indicators

### System Up To Date

```text
🛡️✓
```

### Updates Available

```text
🛡️⬆ 3
```

## Color Coding

| Status               | Color  |
| -------------------- | ------ |
| No updates available | Green  |
| Less than 10 updates | Orange |
| 10 or more updates   | Red    |

## Requirements

* Debian 13 (or compatible Linux distribution)
* XFCE Desktop Environment
* xfce4-genmon-plugin
* APT package manager

## Installation

Copy the widget script to:

```bash
~/.local/bin/update-indicator.sh
```

Make it executable:

```bash
chmod +x ~/.local/bin/update-indicator.sh
```

Create an additional update helper script:

```bash
~/.local/bin/apt-update-run.sh
```

Make it executable:

```bash
chmod +x ~/.local/bin/apt-update-run.sh
```

## apt-update-run.sh

```bash
#!/bin/bash

sudo apt update
sudo apt full-upgrade
sudo apt update

nohup xfce4-panel -r >/dev/null 2>&1 &

exit 0
```

## XFCE Genmon Configuration

**Command:**

```text
~/.local/bin/update-indicator.sh
```

**Refresh Interval:**

```text
300
```

**Enable:**

```text
Use Markup
```

## Usage

The widget checks for available package updates and displays the current status directly in the XFCE panel.

Clicking the widget opens a terminal and starts:

```bash
sudo apt update
sudo apt full-upgrade
```

After completion:

* Package lists are refreshed
* The XFCE panel is automatically restarted
* All Genmon widgets are refreshed
* The update count is recalculated immediately

## Automatic Refresh After Updates

Earlier versions could continue displaying available updates after a successful upgrade until the next Genmon refresh interval was reached.

The current version uses a dedicated update script and automatically reloads the XFCE panel after upgrades are completed.

### Benefits

* Instant status refresh
* No outdated update counters
* More reliable update process
* Improved user experience

## Technologies

* Bash
* APT
* XFCE Genmon Plugin

## License

MIT License
