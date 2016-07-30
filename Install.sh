#!/bin/sh
clear
echo " ____  __  ____  _  _      _  _  ____      _  _  ____  ____  _  _  __  ";
echo "(  _ \(  )(  __)( \/ ) ___( \/ )(_  _)___ / )( \(  __)(  _ \/ )( \(  ) ";
echo " ) __/ )(  ) _) / \/ \(___))  /   )( (___)\ /\ / ) _)  ) _ () \/ ( )(  ";
echo "(__)  (__)(__)  \_)(_/    (__/   (__)     (_/\_)(____)(____/\____/(__) ";

echo "Inatalling PiFM-Youtube-webUI"
echo "Press enter to continue"
read touche
case $touche in
*)      echo ""
        ;;
esac

apt-get update
apt-get -y install make gcc g++
mkdir /opt/fm_webui
cd /opt/fm_webui
wget -O fm_transmitter.zip https://github.com/moriceh/pifm-youtube-webui/raw/master/fm_transmitter.zip
unzip fm_transmitter.zip
rm fm_transmitter.zip
make clean
make
chmod +x /opt/fm_webui/*.sh
chmod -R 777 /opt/fm_webui

echo "Installing web server."
echo "Press enter to continue"
read touche
case $touche in
*)      echo ""
        ;;
esac

apt-get -y install apache2 php5 libapache2-mod-php5 php5-mcrypt
cd /var/www/html
rm index.html
wget -O killall.php https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/killall.php
wget -O index.html https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/index.html
wget -O youtube.html https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/youtube.html
wget -O bg.gif https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/bg.gif
wget -O youtube.png https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/youtube.png
wget -O stop.png https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/stop.png
wget -O yt.php https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/yt.php
wget -O yt.zip https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/youtube.zip
unzip yt.zip
rm yt.zip

echo 'nobody ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
echo 'www-data ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

sudo apt-get -y install sox libsox-fmt-all

echo ""
echo "To modify frequency for youtube broadcast, do"
echo "sudo nano /opt/fm_webui/yt.sh"
echo "and modify at the start of the script the freq=87.5 to the frequency you want."
echo ""
echo "To modify frequency for webradio broadcast, do"
echo "sudo nano /opt/fm_webui/radio.sh"
echo "and modify at the start of the script the freq=87.5 to the frequency you want."
echo ""
echo "Install finished. Press a key to exit."
read touche
case $touche in
*)      echo ""
        ;;
esac
