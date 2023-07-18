<?php

$delai_flou = 3/2*1440;
$delai_rouge = 3*1440;

$serveur_off = 1;
include('administration/choix_serveurs_off.php');

$sql = "SELECT `valeur_entier`, `remarques` FROM `destinee_statistiques` WHERE `param` = 'adminInscrValid'";
$req = mysql_query($sql) or die('Erreur SQL!<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$auteur = $data[1];

$temps = floor(time()/60);
$restant = $temps-$data[0];
$j = floor( $restant /60  /24);
$h = floor(($restant /60) %24);	
$m = floor( $restant %60 );
if ($j != 0)
	$reste = $j.' jours, ';
if ($h != 0)
	$reste.= $h.' heures, ';
$reste.= $m.' minutes';

if ($restant < $delai_flou)
	$reste = 'moins de '.($delai_flou/60).' heures';

mysql_close();

// récupération de données
$totalInscr = 0;
$nbrInscr = array();
for ($serveur=1; $serveur<4; $serveur++)
{
	include("administration/choix_serveurs.php");
	$sql = "SELECT COUNT(id) FROM joueurs_inscription";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$nbrInscr[$serveur] = $data[0];
	$totalInscr+=$data[0];
}
$color = (($restant > $delai_rouge)||($totalInscr > 30)) ? ' style=\"color:red;\"' : '';

echo 'document.write("<a href=\"../administration/administration.php\">Dernière validation des inscriptions: <span'.$color.'>il y a '.$reste.' (';
foreach ($nbrInscr AS $i => $nbr)
{
	echo $nbr;
	if ($i < 3)
		echo ', ';
}
echo ')</span></a>");';


?>
