killall Discord &


# Display configuration
xrandr --output DP-2 --primary --mode 1920x1080 --rate 144 --left-of DP-4 &
xrandr --output DP-4  --mode 1920x1080 --rate 144 --right-of DP-2 &

xset s noblank &
xset -dpms &
xset s off &

# Mouse
xinput --set-prop 12 298 -0.70 &

# Status Bar
dwmblocks &

# Compositor
picom --experimental-backends &

# Wallpaper
nitrogen --restore &

discord &

killall brave &

pipewire &

xrdb -merge ~/.Xresources &
eval $(dbus-launch --sh-syntax --exit-with-session dwm) &

exec dbus-launch --exit-with-session dwm &


while true; do
      dwm >/dev/null 2>&1
done

exec dwm
