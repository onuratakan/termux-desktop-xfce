#!/bin/bash

clear 

echo "Updating desktop, please wait"

sleep 5

#install new packages

pkg install -y ristretto

pkg install -y tumbler

pkg install -y mpv

pkg install -y python-tkinter 

pkg install -y geany-plugins

pkg install -y xfce4-taskmanager

pkg install -y xfce4-whiskermenu-plugin

pkg install -y xfce4-clipman-plugin

#configuring update

rm -rf $PREFIX/bin/music

rm -rf $PREFIX/startdesktop 

cp -rf $HOME/termux-desktop-xfce/music $PREFIX/bin

cp -rf $HOME/termux-desktop-xfce/startdesktop $PREFIX/bin

rm -rf $HOME/.config.old 

cp -rf $HOME/.config $HOME/.config.old 

rm -rf $HOME/.config 

cp -rf $HOME/termux-desktop-xfce/.config $HOME

clear 

echo "update finished, enjoy!"

exit