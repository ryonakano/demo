#!/bin/bash

S=$(cd $(dirname $0); echo $PWD)
D=~/.local/share/applications/

SUPERTUX_TAG=v0.6.3

# Adwaita Demo
install -Dm 644 $S/adwaita-1-demo.desktop $D/adwaita-1-demo.desktop

# SuperTux
wget -nc -P $D https://github.com/SuperTux/supertux/releases/download/$SUPERTUX_TAG/SuperTux-$SUPERTUX_TAG.glibc2.29-x86_64.AppImage
wget -nc -P $D https://raw.githubusercontent.com/SuperTux/supertux/$SUPERTUX_TAG/supertux2.svg
install -Dm 644 $S/org.supertuxproject.SuperTux.desktop $D/org.supertuxproject.SuperTux.desktop

# WezTerm
wget -nc -P $D https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/WezTerm-20240203-110809-5046fc22-Ubuntu20.04.AppImage
wget -nc -P $D https://raw.githubusercontent.com/wez/wezterm/main/assets/icon/wezterm-icon.svg
install -Dm 644 $S/org.wezfurlong.wezterm.desktop $D/org.wezfurlong.wezterm.desktop

# GIMP
wget -nc -P $D https://inkscape.org/ja/gallery/item/44616/Inkscape-091e20e-x86_64.AppImage
wget -nc -P $D https://gitlab.com/inkscape/inkscape/-/raw/master/packaging/inkscape.48.png.bz2
bunzip2 $D/inkscape.48.png.bz2
install -Dm 644 $S/org.inkscape.Inkscape.desktop $D/org.inkscape.Inkscape.desktop

# Krita
wget -nc -P $D https://download.kde.org/stable/krita/5.2.2/krita-5.2.2-x86_64.appimage
wget -nc -P $D https://raw.githubusercontent.com/KDE/krita/master/pics/krita.png
install -Dm 644 $S/org.kde.krita.desktop $D/org.kde.krita.desktop
