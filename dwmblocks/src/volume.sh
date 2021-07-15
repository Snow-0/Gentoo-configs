#!/bin/sh

# Prints the current volume or 🔇 if muted.

case $BLOCK_BUTTON in
	1) setsid -f pavucontrol ;;
esac


vol="$(pactl list sinks | grep '^[[:space:]]Volume:' |     head -n $(( $SINK + 2 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')"

if [[ "$vol" -gt "60" ]]; then
	icon="  "
elif [[ "$vol" -gt "20" ]]; then
	icon="  "
else
	icon="  "
fi

echo "$icon$vol%"

