#!/bin/zsh
# vim: set ft=zsh:

if [ -d /etc/X11/xinit/xinitrc.d ]; then
 for f in /etc/X11/xinit/xinitrc.d/*; do
   [ -x "$f" ] && . "$f"
 done
 unset f
fi

## Dual Monitors Setup

if [[ `xrandr | grep "VGA" | awk '{print $2}'` = "disconnected" ]]; then
	export EXT_CONNECTED=0;
    echo "No monitor connected"
else
	export EXT_CONNECTED=1;
    xrandr --output LVDS1 --primary --output VGA1 --auto --above LVDS1
fi

## For MUZIK
mpd /home/ttzhou/.config/mpd/mpd.conf &

## Fonts
xset fp+ /usr/share/fonts/TTF
xset fp+ /usr/share/fonts/OTF
xset fp+ /usr/share/fonts/artwiz-fonts
xset fp+ /usr/share/fonts/local
xset fp+ /usr/share/fonts/misc
xset fp rehash

# Default Settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

## Source Colors
xrdb -merge ~/.colors/ttz/.Xres

## Cursors
xsetroot -cursor_name left_ptr &
xset dpms 300 &
unclutter -noevents &

## Background
#xsetroot -bg \#688da0 -mod 2 2 &
$LOCAL/bin/setwall

## Hotkeys
sxhkd &

## Urxvt Daemon
urxvtd -q -o -f

exec /home/ttzhou/.config/bspwm/wm
#exec bspwm
