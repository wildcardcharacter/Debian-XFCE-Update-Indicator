# Debian XFCE Update Indicator

Ein leichtgewichtiges XFCE-Genmon-Widget zur Anzeige verfügbarer Systemupdates direkt im Panel.

Das Widget zeigt die Anzahl verfügbarer APT-Updates an und ermöglicht die Installation per Mausklick.

## Funktionen

* Anzeige verfügbarer Debian-Paketupdates
* Farbliche Statusanzeige
* Direkte Update-Installation per Klick
* Automatische Aktualisierung nach erfolgreichem Upgrade
* Integration in das XFCE Genmon Plugin
* Leichtgewichtiges Bash-Skript

## Statusanzeige

### System aktuell

```text
🛡️✓
```

### Updates verfügbar

```text
🛡️⬆ 3
```

## Farbcodierung

| Status                 | Farbe  |
| ---------------------- | ------ |
| Keine Updates          | Grün   |
| Weniger als 10 Updates | Orange |
| 10 oder mehr Updates   | Rot    |

## Voraussetzungen

* Debian 13 oder kompatible Linux-Distribution
* XFCE Desktop
* xfce4-genmon-plugin
* APT Paketverwaltung

## Installation

Widget-Skript nach:

```bash
~/.local/bin/update-indicator.sh
```

kopieren und ausführbar machen:

```bash
chmod +x ~/.local/bin/update-indicator.sh
```

Zusätzlich das Update-Skript anlegen:

```bash
~/.local/bin/apt-update-run.sh
```

und ausführbar machen:

```bash
chmod +x ~/.local/bin/apt-update-run.sh
```

## Inhalt von apt-update-run.sh

```bash
#!/bin/bash

sudo apt update
sudo apt full-upgrade
sudo apt update

nohup xfce4-panel -r >/dev/null 2>&1 &

exit 0
```

## XFCE Genmon Konfiguration

**Befehl:**

```text
/home/USERNAME/.local/bin/update-indicator.sh
```

**Aktualisierungsintervall:**

```text
300
```

**Option aktivieren:**

```text
Use Markup
```

## Verwendung

Das Widget überprüft verfügbare Updates und zeigt den aktuellen Status direkt im XFCE-Panel an.

Ein Klick auf das Symbol öffnet ein Terminal und startet:

```bash
sudo apt update
sudo apt full-upgrade
```

Nach Abschluss:

* werden die Paketlisten aktualisiert
* wird das XFCE-Panel automatisch neu geladen
* werden alle Genmon-Widgets aktualisiert
* wird die Update-Anzeige sofort neu berechnet

## Verbesserungen

### Automatische Aktualisierung nach Updates

Frühere Versionen konnten nach einem erfolgreichen Upgrade weiterhin verfügbare Updates anzeigen, bis das nächste Genmon-Intervall erreicht wurde.

Die aktuelle Version verwendet ein separates Update-Skript und startet das XFCE-Panel nach Abschluss automatisch neu.

Vorteile:

* Sofort aktualisierte Anzeige
* Keine veralteten Update-Zähler
* Zuverlässigerer Update-Prozess
* Bessere Benutzererfahrung

## Verwendete Technologien

* Bash
* APT
* XFCE Genmon Plugin

## Lizenz

MIT License
