#!/usr/bin/env bash

# Создаем скрипт для автозапуска при входе пользователя
# Это самый надежный способ для Silverblue/GNOME
mkdir -p /etc/skel/.config/autostart

cat <<EOF > /etc/skel/.config/autostart/set-wallpaper.desktop
[Desktop Entry]
Type=Application
Exec=gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/osana/osana_ocean_1.jpg"
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Set Ocean Wallpaper
EOF

# Также устанавливаем для системы в целом (для новых юзеров)
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/osana/osana_ocean_1.jpg"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/osana/osana_ocean_1.jpg"
