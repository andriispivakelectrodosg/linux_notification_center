# deadd-notification-center — Openbox + tint2 setup with Vedic day themes

## Overview

This directory contains a complete configuration for running
[deadd-notification-center](https://github.com/phuhl/linux_notification_center)
on Openbox with tint2, featuring **Vedic day-of-week color themes**.

All themes use a **black background** with a day-specific accent color based
on the Vedic (Jyotish) planetary rulership of each day:

| Day | Vedic Name | Planet | Accent Color |
|-----|-----------|--------|-------------|
| Sunday | Surya-vara | Sun | #FFD700 Yellow |
| Monday | Chandra-vara | Moon | #FFF5E6 Milk white |
| Tuesday | Mangala-vara | Mars | #8B0000 Blood red |
| Wednesday | Budha-vara | Mercury | #228B22 Grass green |
| Thursday | Guru-vara | Jupiter | #CC7722 Ochre/sattvic orange |
| Friday | Shukra-vara | Venus | #E8909C Natural pink |
| Saturday | Shani-vara | Saturn | #0C1445 Dark night-sky blue |

## Installation

```bash
# 1. Copy config
cp deadd.yml ~/.config/deadd/deadd.yml

# 2. Copy themes
mkdir -p ~/.config/deadd/themes
cp themes/*.css ~/.config/deadd/themes/

# 3. Install scripts
cp scripts/*.sh ~/bin/
chmod +x ~/bin/deadd-set-daily-theme.sh ~/bin/toggle-noti-center.sh

# 4. Install tint2 launcher
cp deadd-noti-center.desktop ~/.local/share/applications/
# Then add to tint2rc: launcher_item_app = deadd-noti-center.desktop

# 5. Add to Openbox autostart (~/.config/openbox/autostart):
# ~/bin/deadd-set-daily-theme.sh && deadd-notification-center &

# 6. Add Openbox keybinding Super+N (~/.config/openbox/rc.xml):
# <keybind key="W-n">
#   <action name="Execute">
#     <command>toggle-noti-center.sh</command>
#   </action>
# </keybind>
```

## Usage

- **Super+N** or tint2 icon: toggle notification center panel
- **Mouse1** on popup: dismiss notification
- **Mouse3** on popup: trigger default action
- Theme changes automatically each day at login/session start

## Requirements

- deadd-notification-center 2.1.1+
- Openbox, tint2
- GTK3

## Known Issues

- The binary requires a CSS file at `~/.config/deadd/deadd.css` — without it,
  it crashes with `Prelude.head: empty list`
- Translation files must be placed at the hardcoded build path (see main repo)
