#!/bin/bash

# Firefox
#echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" > /etc/apt/sources.list.d/debian-mozilla.list
#cd ~/
#wget mozilla.debian.net/pkg-mozilla-archive-keyring_1.1_all.deb
#dpkg -i pkg-mozilla-archive-keyring_1.1_all.deb
#apt-get update
#apt-get install -t jessie-backports firefox
apt-get install -y firefox-esr

# Geckdriver
cd /usr/local/bin/
wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
tar -xvzf geckodriver-v0.26.0-linux64.tar.gz
chmod +x geckodriver

pip install selenium
