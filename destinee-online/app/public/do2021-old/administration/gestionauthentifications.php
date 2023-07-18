<?
$temps = floor(time()/60);

//echo '<xmp>'; print_r($_SERVER); echo '</xmp>';
//echo 'Login : '.$_SERVER['PHP_AUTH_USER'].'<br>';

$param = 'adminConn'.substr($_SERVER['PHP_AUTH_USER'],0,10);
$remarques = substr($_SERVER['REQUEST_URI'],strrpos($_SERVER['REQUEST_URI'],'/')+1);

// Toutes les données sont sauvées sur le SERVEUR 1 !!!
$serveur = 1;
include("choix_serveurs.php");

// mise à jour de la connection du joueur
$sql = "SELECT * FROM destinee_statistiques WHERE `param` = '$param'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_assoc($req))
{
	// il existe déjà un enregistrement
	$sql = "UPDATE `destinee_statistiques` SET `valeur_entier` = '$temps', `remarques` = '$remarques' WHERE `param` = '$param'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
}
else
{
	// il n'existe pas d'enregistrements
	$sql = "INSERT INTO `destinee_statistiques` 	( `id` , `param` , `valeur_entier` , `valeur_double` , `remarques` )
						VALUES 	('',     '$param', '$temps',         '0', '$remarques')";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
}

// recherche des derniers connectés
echo 'Derniers connectés sur le panneau d\'admin: <small>(login - dernière connection - dernière page vue)</small><br>';
$i = 0;
$sql = "SELECT param, valeur_entier, remarques FROM destinee_statistiques WHERE `param` LIKE 'adminConn%' AND `valeur_entier` > '".($temps-60)."' ORDER BY valeur_entier DESC, param ASC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	echo '<b>'.substr($data[0],9).'</b> - il y a '.($temps-$data[1]).' minutes - '.$data[2].'<br>';
	$i++;
}
echo '<br>';


// Droits d'affichage de la page
function useraccess ($login, $page, $page2='', $page3='', $page4='', $page5='', $page6='')
{
	$accespages = array(
		'Gilnarfein'	=> array('tout'),
		'Eleusis'	=> array('tout'),
		'Ordak'		=> array('tout'),
		'Memnon'	=> array('tout'),
		'Miles'		=> array('tout'),
		'Bosary'	=> array('tout'),
		'Axilias'	=> array('tout'),
		'Yortsedd'	=> array('tout'),
		'Wobey'		=> array('tout'),
		'Candy'		=> array('tout'),
		'Itanagon'		=> array('tout'),
		'Aro'	=> array('tout'),
		'Draziel'	=> array('tout'),
		'Vordazeth' => array('tout'),
		'Draveon' => array('tout'),
		'Permanganate'	=> array('administration.php', 'news.php', 'inscription.php', 'joueur.php', 'Joueur2.php', 'parse_archives.php', 'supprimes.php', 'missives_signalees.php', 'gestion_foire.php'),
		'CrowCrow'	=> array('tout'),
		'Ainkurn'		=> array('tout'),
		'Tharkis'	=> array('tout'),
		'Madcat'	=> array('administration.php', 'news.php', 'joueur.php', 'Joueur2.php', 'Comptebloquer.php', 'parse_archives.php', 'multi.php', 'multi_attaques.php', 'missives_signalees.php', 'supprimes.php', 'gestion_foire.php'),
		'Geinfrindel'		=> array('administration.php', 'news.php', 'inscription.php', 'joueur.php', 'Joueur2.php', 'Comptebloquer.php', 'parse_archives.php', 'supprimes.php', 'missives_signalees.php'),
		'Tauren'		=> array('administration.php', 'news.php', 'joueur.php', 'Joueur2.php', 'Comptebloquer.php', 'parse_archives.php', 'multi.php', 'multi_attaques.php', 'missives_signalees.php', 'supprimes.php', 'gestion_foire.php'),
		'Han'		=> array('administration.php', 'Comptebloquer.php', 'parse_archives.php', 'supprimes.php', 'candidat.php', 'inscription_guilde.php', 'gestion_guilde.php', 'provinces.php'),
		'modo'		=> array('administration.php', 'joueur.php', 'Joueur2.php', 'parse_archives.php', 'supprimes.php', 'missives_signalees.php'),
		'rda'		=> array('administration.php', 'Comptebloquer.php', 'parse_archives.php', 'supprimes.php', 'candidat.php', 'inscription_guilde.php', 'gestion_guilde.php', 'provinces.php'),
		'rdi'		=> array('administration.php', 'news.php', 'inscription.php', 'joueur.php', 'Joueur2.php', 'Comptebloquer.php', 'parse_archives.php', 'supprimes.php', 'missives_signalees.php'),
		'rdm'		=> array('administration.php', 'news.php', 'joueur.php', 'Joueur2.php', 'Comptebloquer.php', 'parse_archives.php', 'multi.php', 'multi_attaques.php', 'missives_signalees.php', 'supprimes.php', 'gestion_foire.php')
	);

	//print_r($accespages[$login]); echo '<br>';
	if (!isset($accespages[$login]))
		return false;

	if ((in_array($page, $accespages[$login])) || ($accespages[$login][0] == 'tout'))
		return true;

	for ($i=2; $i<=6; $i++)
		if ((${'page'.$i} != '')&&(in_array(${'page'.$i}, $accespages[$login])))
			return true;

	return false;
}

// Gestion desdroits d'accès de la page
$login = $_SERVER['PHP_AUTH_USER'];
$page = substr($_SERVER['SCRIPT_NAME'],strrpos($_SERVER['SCRIPT_NAME'],'/')+1);
if (!useraccess($login, $page))
{
	echo 'Vous n\'avez pas les droits d\'accès à cette page.<br>';
	exit;
}


mysql_close();
?>
