#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run nm-applet
run caffeine
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
run xrandr --output DP-4 --mode 1920x1080 --rate 144.0 --primary --right-of HDMI-0
#run nitrogen --restore
run conky -c $HOME/.config/awesome/system-overview
#you can set wallpapers in themes as well
feh --bg-fill ~/backgrounds/halleys_comet.jpg
#set a random background image
#feh --bg-fil --randomize -r  /usr/share/backgrounds/logicyugi/
run redshift -l 51.2194475:4.4024643 &


#run applications from startup
#run firefox
#run atom
#run dropbox
#run insync start
#run spotify
#run ckb-next -b
#run discord
#run telegram-desktop

