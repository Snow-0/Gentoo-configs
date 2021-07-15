#!/bin/sh

# Prints the current volume or 🔇 if muted.

case $BLOCK_BUTTON in
	1) setsid -f pavucontrol ;;
esac


#vol="$(pamixer --get-volume)"
vol="$(pulsemixer --get-volume | awk '{print $1}')"

if [[ "$vol" -gt "60" ]]; then
	icon="  "
elif [[ "$vol" -gt "20" ]]; then
	icon="  "
else
	icon="  "
fi

echo "$icon$vol%"

