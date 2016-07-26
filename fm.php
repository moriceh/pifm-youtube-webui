<?php
exec('sudo killall fm_transmitter');
exec('sudo killall fm_transmitter');
exec('sudo killall fm_transmitter');
exec('/opt/fm_webui/yt.sh ",'.$_POST["url"].'" > /tmp/fm.log &');
header( "refresh:2;url=index.html" );
?>

<html>
<body background="http://www.musicalityacademy.com/wp-content/uploads/2014/01/music-notes-white-background-wallpaper.gif">
<br><br><br><br><br><br>
<h1 style="text-align: center;">
	<span style="font-size:28px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>La chanson se joue.</strong></span></span></h1>
</body>
