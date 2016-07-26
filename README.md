# PiFM webUI with youtube support
This is a webinterface for fm_transmitter (https://github.com/markondej/fm_transmitter) that can play youtube URL's.

To install : 

```sh
nano Install.sh
```
Copy and paste this code into the editor :
```sh
#!/bin/sh
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

sudo apt-get update
sudo apt-get -y install make gcc g++
sudo mkdir /opt/fm_webui
cd /opt/fm_webui
sudo wget -O fm_transmitter.zip https://github.com/moriceh/pifm-youtube-webui/raw/master/fm_transmitter.zip
sudo unzip fm_transmitter.zip
sudo rm fm_transmitter.zip
sudo make

echo "Installing web server."
echo "Press enter to continue"
read touche
case $touche in
*)      echo ""
        ;;
esac

sudo apt-get install apache2 php5 libapache2-mod-php5 php5-mcrypt
cd /var/www/html
sudo rm index.html
sudo wget -O fm.php https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/fm.php
sudo wget -O killall.php https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/killall.php
sudo wget -O index.html https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/index.html

sudo cd /etc
sudo rm sudoers
sudo wget -O sudoers https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/sudoers

sudo apt-get install sox libsox-fmt-all

echo "To modify frequency, do"
echo "sudo nano /opt/fm_webui/yt.sh"
echo "and modify at the start of the script the freq=87.5 to the frequency you want."
echo "Install finished. Press a key to exit."
read touche
case $touche in
*)      echo ""
        ;;
esac
```
Press CTRL+O and enter to save and after, CTRL+X to exit the editor.
Then, do
```sh
sh Install.sh
```


# How to use

To play a music, go tu your PI's URL and put the URL of the youtube video in the text box. Click Submit and the music will start to play on 87.5 FM.
If you want to change the frequency, do 
```sh
sudo nano /opt/fm_webui/yt.sh
```
And change the freq=87.5 in the file to the frequency you want.

To stop the broadcast, click on the youtube logo on the page.
