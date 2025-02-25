#!/bin/bash
apt update
apt install -y git build-essential shellinabox || exit 1
apt install -y nethack-console slashem cataclysm-dda-curses zangband crawl bsdgames || exit 1

# build ch33ter
./ch33ter.sh || exit 1

# Create a user for shellinabox - used by some games
useradd shellinaboxu -m -p pass || exit 1
# Remove the default theme options
rm /etc/shellinabox/options-enabled/00* || exit 1
# Rename the default themes, change the default theme to dark
cd /etc/shellinabox/options-available && mv "00+Black on White.css" 00_Light.css || exit 1
cd /etc/shellinabox/options-available && mv "00_White On Black.css" 00+Dark.css || exit 1
# Create symlinks to the new themes
ln -s /etc/shellinabox/options-available/00_Light.css /etc/shellinabox/options-enabled/00_Light.css || exit 1
ln -s /etc/shellinabox/options-available/00+Dark.css /etc/shellinabox/options-enabled/00+Dark.css || exit 1