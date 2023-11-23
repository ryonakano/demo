#!/bin/bash

S=$(cd $(dirname $0); echo $PWD)
D=~/.local/share/applications/

SUPERTUX_TAG=v0.6.3

sudo apt install -y wget libadwaita-1-examples

wget -nc -P $D https://github.com/SuperTux/supertux/releases/download/$SUPERTUX_TAG/SuperTux-$SUPERTUX_TAG.glibc2.29-x86_64.AppImage
wget -nc -P $D https://raw.githubusercontent.com/SuperTux/supertux/$SUPERTUX_TAG/supertux2.svg

install -Dm 644 $S/adwaita-1-demo.desktop $D/adwaita-1-demo.desktop
install -Dm 644 $S/org.supertuxproject.SuperTux.desktop $D/org.supertuxproject.SuperTux.desktop
