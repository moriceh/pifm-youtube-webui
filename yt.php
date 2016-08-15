<?php
exec('sudo killall fm_transmitter');
exec('sudo killall fm_transmitter');
exec('sudo killall fm_transmitter');
exec('/opt/fm_webui/yt.sh ",'.$_GET["url"].'" > /dev/null &');
header( "refresh:2;url=index.html" );
?>

<html>

<head>
<title>PiFM WebUI</title>
<style media="screen" type="text/css">
html { 
  background: url(bg.gif) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
</head>

<body>
<br><br><br><br><br><br>
<h1 style="text-align: center;">
	<span style="font-size:28px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>Broadcast started.</strong></span></span></h1>
</body>
</html>
