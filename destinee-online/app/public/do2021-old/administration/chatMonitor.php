<html>
<head>
	<title>Utilitaire de nettoyage de chat</title>
</head>
<body>
<a href="administration.php">Administration</a><br>
<?php
include ('gestionauthentifications.php');


$chats = array(
	0 => array('chat', 'général', false),
	1 => array('chat', 'serveur 1', true),
	2 => array('chat', 'serveur 2', true),
	3 => array('chat', 'serveur 3', true)
);
$serveur = ((isset($_REQUEST['serveur']))&&(is_numeric($_REQUEST['serveur']))) ? $_REQUEST['serveur'] : 0;
$mode = (isset($_POST['mode'])) ? $_POST['mode'] : '';

echo '<b>Listing des chats de DO</b><br>
<form method="post" action="chatMonitor.php">';


$links ='Chats';
foreach ($chats AS $id => $chat)
{
	$style = ($id == $serveur) ? 'style="font-weight:bold;"' : '';
	$links .= ' <a href="chatMonitor.php?serveur='.$id.'" '.$style.'>'.$chat[1].'</a>';
}
echo $links.'<br>';

include ('../chat/chat.php');
$smilies = getSmiliesTable(2, '../');

if (isset($chats[$serveur]))
{
	$chat = $chats[$serveur];	
	echo '<br><b>Chat '.$chat[1].'</b><br>';
	$dbtable = $chat[0];
	include ('../administration/choix_serveurs.php');
	
	// supression des posts
	//echo '<xmp>'; print_r($_POST); echo '</xmp>';
	if ($mode == 'deletePost')
	{
		foreach ($_POST AS $var => $value)
		{
			if ((substr($var, 0,3) == 'del')&&(is_numeric(substr($var, 3)))&&($value == 'true'))
			{
				$id = substr($var, 3);
				$sql = "DELETE FROM `$dbtable` WHERE `id` = '$id' LIMIT 1";
				mysql_query ($sql);
			}
		}
	}
	
	// récupération des chats actifs
	$sql = 'SELECT province, guilde FROM `'.$dbtable.'` WHERE guilde = "" GROUP BY province, guilde ORDER BY province ASC, guilde ASC';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$prov = $data[0];
		$guil = $data[1];
		
		if (($prov == '')&&($guil != ''))	echo '<br><b>Guilde '.$guil.'</b><br>';
		else if (($prov != '')&&($guil == ''))	echo '<br><b>Province '.$prov.'</b><br>';
	
		$sql1 = 'SELECT author, text, time, id FROM `'.$dbtable.'` WHERE `province` = "'.$prov.'" AND `guilde` = "'.$guil.'" ORDER BY id ASC';
		$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.mysql_error());
		while ($data1 = mysql_fetch_row($req1))
		{
				$date = gmdate("d G:i:s", $data1[2]);
				$data1[1] = trim( str_replace($smilies[0], $smilies[1], ' '.$data1[1].' ') );
				echo '<input type="checkbox" name="del'.$data1[3].'" value="true"> ('.$data1[3].' '.$data1[0].' - '.$date.') '.$data1[1].'<br>';
		}
	}
	
	mysql_close();
}

echo '<br>
	<input type="hidden" name="serveur" value="'.$serveur.'">
	<input type="hidden" name="mode" value="deletePost">
	<input type="submit" value="Supprimer" onclick="return confirm(\'Etes-vous sûr de vouloir supprimer les post (action définitive?)\')"><br><br>';

echo $links;
?>
</form>
<br>
<a href="administration.php">Administration</a>
</body>
</html>
