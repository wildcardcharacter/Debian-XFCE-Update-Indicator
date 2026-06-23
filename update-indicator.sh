#!/bin/bash

UPDATES=$(apt list --upgradable 2>/dev/null | sed '1d' | wc -l)

if [ "$UPDATES" -eq 0 ]; then
    COLOR="lime"
    TEXT="🛡️✓"
    TOOLTIP="System ist aktuell"
elif [ "$UPDATES" -lt 10 ]; then
    COLOR="orange"
    TEXT="🛡️⬆ $UPDATES"
    TOOLTIP="$UPDATES Updates verfügbar"
else
    COLOR="red"
    TEXT="🛡️⬆ $UPDATES"
    TOOLTIP="$UPDATES Updates verfügbar"
fi

echo "<txt><span foreground='$COLOR'>$TEXT</span></txt>"
echo "<tool>$TOOLTIP</tool>"

echo "<txtclick>xfce4-terminal --command='$HOME/.local/bin/apt-update-run.sh'</txtclick>"