<?php
function couleur($x)
{
//	return (($x % 2) == 0) ? '#CCCC66' : '';
	return (($x % 2) == 0) ? '#E4CB8C' : '';
}
function jarterAccents($text)
{
					$text = str_replace("é", "e", $text);
					$text = str_replace("è", "e", $text);
					$text = str_replace("ê", "e", $text);
					$text = str_replace("ë", "e", $text);
					$text = str_replace("à", "a", $text);
					$text = str_replace("ä", "a", $text);
					$text = str_replace("â", "a", $text);
					$text = str_replace("ù", "u", $text);
					$text = str_replace("û", "u", $text);
					$text = str_replace("ü", "u", $text);
					$text = str_replace("ô", "o", $text);
					$text = str_replace("ö", "o", $text);
					$text = str_replace("î", "i", $text);
					$text = str_replace("ï", "i", $text);
					$text = str_replace("ç", "c", $text);
	return $text;
}


// CONNECTION
$dbtable = 'chat';
$prov = (isset($_GET['province'])) ? jarterAccents(urldecode($_GET['province'])) : '';
$guil = (isset($_GET['guilde'])) ? jarterAccents(urldecode($_GET['guilde'])) : '';
$pathinclude = (isset($_GET['pathinclude'])) ? $_GET['pathinclude'] : '';
$srv_id = $_GET['srv'];

echo $guil;
//$acc1 = array('é','à','è','î','ï','ë');
//$acc0 = array("Ã©","Ã","Ã¨","Ã®","Ã¯","Ã«");
//$prov = str_replace($acc0, $acc1, $prov);
//$guil = str_replace($acc0, $acc1, $guil);


$serveur_off = $srv_id;

include('administration/choix_serveurs_off.php');
//mysql_query("SET NAMES utf-8");
mysql_query('DELETE FROM "'.$dbtable.'" WHERE time < "'.(time() - 259200).'"');
// ----------

//	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>destinee-online.com</title>
	<?php
	if ($_GET['refresh'] == 1)
	{
		echo '<meta http-equiv="refresh" content="15; url=chatframe.php?srv='.$srv_id.'&guilde='.urlencode($guil).'&province='.urlencode($prov).'&refresh='.$_GET['refresh'].'&pathinclude='.$pathinclude.'">';
	}
	?>

	<meta name="description" content="A free PHP medieval online game !">
	<meta name="keywords"content="Maegia, browsergame, online game, internetgame, free game, free online game, free, massive multiplayers online game, browser-based internetgame, free onlinegame, onlinegame, play online">
	<meta name="abstract" content="A free PHP medieval online game !">
	<meta name="author" content="Camille BLANC">
	<meta name="copyright" content="destinee-online-09">
	<meta http-equiv="Content-type" content="text/html; charset="UTF-8">
	
	<meta name="language" content="fr">
	<meta http-equiv="Content-Language" content="fr">
	<meta name="robots" content="index, follow">
	<meta name="revisit-after" content="30 days">
	<meta name="identifier-url" content="http://www.maegia.com/">
	<meta name="subject" content="Free PHP medieval online game !">
	<meta name="expires" content="never">
	<meta name="publisher" content="Camille BLANC">
	<meta name="location" content="FRANCE">
	<meta name="rating" content="general">
	<meta name="category" content="game">
	<meta name="generator" content="notepad">
	<style type="text/css">
	.chat {
	    font-size: 11px;
	    font-family: Verdana, Arial, Helvetica, sans-serif;
	    color: #000000;
	    letter-spacing: -0px;
	}
	</style>
	<script type="text/javascript">
	<!--
	function scrollBottom()
	{
		//window.scrollTo(0,document['body'].offsetHeight);
		document.getElementById('body').scrollTop = 10000;
	}
	//-->
	</script>
</head>
<body topmargin=2 marginheight=0 leftmargin=2 marginwidth=0 alink="none" vlink="none" link="none" TEXT="FFFFFF" id="body" style="background-color: antiquewhite;" onload="javascript:scrollBottom()">
<?php


echo '<span class="chat">
<table style="width: 100%;">
';

include ('chat/chat.php');
$smilies = getSmiliesTable(2);
echo htmlspecialchars($guil);

$nbr = 50;
$sql = "SELECT COUNT(`id`) FROM `$dbtable` WHERE `province` = '$prov' AND `guilde` = '".str_replace('é', '&eacute;', $guil)."'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$start = max(0, $data[0]-$nbr);

$sql = 'SELECT author, text, time FROM `'.$dbtable.'` WHERE `province` = "'.$prov.'" AND `guilde` = "'.$guil.'" ORDER BY id ASC LIMIT '.$start.', '.$nbr.'';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nbr = mysql_num_rows($req);
for ($i=0; $i<$nbr; $i++)
{
	$dat = mysql_fetch_array($req);
	$dat[1] = stripslashes(trim(str_replace($smilies[0], $smilies[1], ' '.$dat[1].' ')));
	$dat[1] = (preg_match("%(\s|^)(http://((serveurtest\.|www\.)?destinee-online\.com|do-roleplay\.bbfr\.net)/([a-z0-9_-]+/)*([a-z0-9._-]+\.(php|html|htm)(\?(([a-z0-9_-]*=[a-z0-9+_-]*[\#a-z0-9]*(&amp;)?)*)?)?))(\s|$)%is", $dat[1])) ? preg_replace("%(\s|^)(http://((serveurtest\.|www\.)?destinee-online\.com|do-roleplay\.bbfr\.net)/([a-z0-9_-]+/)*([a-z0-9._-]+\.(php|html|htm)(\?(([a-z0-9_-]*=[a-z0-9+_-]*[#a-z0-9]*(&amp;)?)*)?)?))(\s|$)%isU", ' <a href="$2" target="_blank" title="Lien proposé par '.$dat[0].'">$2</a> ', $dat[1]) : $dat[1];
	$aname = ($i == $nbr-1) ? '<a name="bottom"></a>' : '';
	$date = gmdate("G:i:s", $dat[2]);
	$stylemsg = '';
	$separator = ': ';
	if (substr($dat[1],0,4)=='/me ')
	{
		$dat[1] = substr($dat[1],4);
		$stylemsg = 'font-weight: bold;';
		$separator = ' ';
		
	}
	echo '<tr style="background-color: '.couleur($i).';"><td style="padding-left:62px; text-indent:-62px;"><span class="chat"><b>'.$dat[0].$separator.'</b></span><span class="chat" style="'.$stylemsg.'">'.$dat[1].$aname.'</span></td></tr>';
}

mysql_close();
?>
</table>
</span>

</body>
</html>
