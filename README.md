# PiFM webUI with youtube support
This is a webinterface for fm_transmitter (https://github.com/markondej/fm_transmitter) that can play youtube URL's.

To install (I use curl because wget get a corrupted file...) : 

```sh
curl https://raw.githubusercontent.com/moriceh/pifm-youtube-webui/master/Install.sh > Install.sh && sh Install.sh
```

# How to use

To play a music, go tu your PI's URL and put the URL of the youtube video in the text box. Click Submit and the music will start to play on 87.5 FM.
If you want to change the frequency, do 
```sh
sudo nano /opt/fm_webui/yt.sh
```
And change the freq=87.5 in the file to the frequency you want.

To stop the broadcast, click on the youtube logo on the page.
