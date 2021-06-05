#!/bin/sh

# Displays number of upgradeable packages.
# For this to work, have a `pacman -Sy` command run in the background as a
# cronjob every so often as root. This script will then read those packages.
# When clicked, it will run an upgrade via pacman.
#
# Add the following text as a file in /usr/share/libalpm/hooks/statusbar.hook:
#
# [Trigger]
# Operation = Upgrade
# Type = Package
# Target = *
#
# [Action]
# Description = Updating statusbar...
# When = PostTransaction
# Exec = /usr/bin/pkill -RTMIN+8 dwmblocks # Or i3blocks if using i3.

case $BLOCK_BUTTON in
	1) setsid -f "alacritty" -e sudo pacman -Syu --noconfirm ;;
esac

cupd=$(checkupdates | wc -l)
echo "   $cupd updates "
