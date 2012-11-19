rm -rf .xinitrc
touch .xinitrc
echo "volumeicon &" > .xinitrc
echo "hsetroot -solid #000000 &" >> .xinitrc
echo "xcompmgr -F &" >> .xinitrc
echo "exec ck-launch-session dbus-launch awesome" >> .xinitrc
startx
