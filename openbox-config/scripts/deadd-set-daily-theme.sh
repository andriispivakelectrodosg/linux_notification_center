#!/bin/bash
# Set deadd-notification-center CSS theme based on Vedic day of week
# Surya(Sun)=yellow Chandra(Mon)=milk Mangala(Tue)=blood
# Budha(Wed)=grass Guru(Thu)=ochre Shukra(Fri)=pink Shani(Sat)=night-blue

THEMES_DIR="$HOME/.config/deadd/themes"
CSS_FILE="$HOME/.config/deadd/deadd.css"

declare -A DAY_MAP=(
  [0]="sunday" [1]="monday" [2]="tuesday" [3]="wednesday"
  [4]="thursday" [5]="friday" [6]="saturday"
)

TODAY=$(date +%w)
THEME="${DAY_MAP[$TODAY]}"

if [[ -f "$THEMES_DIR/${THEME}.css" ]]; then
    cp "$THEMES_DIR/${THEME}.css" "$CSS_FILE"
    echo "Applied ${THEME} theme"
else
    echo "Theme not found: $THEMES_DIR/${THEME}.css"
    exit 1
fi
