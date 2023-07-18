<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

include ("debut.php");
include ("menu.php");
entete("Archives");
include("connect.php");


$nom     = $_SESSION['nom'];
$serveur = $_SESSION['serveur'];
$royaume = $_SESSION['royaume'];

include("temps_ecoulement.php");
include ("inclus/dates.inc");
$heure = nddate(0);

// debut de l'affichage
echo '<div class="localtable630">
<div style="text-align: left;"><h2>Archives intérieures du royaume '.$royaume.'</h2>
	<small>(L\'heure affichée est au format GMT - Il est actuellement '.$heure.')</small><br>&nbsp;</div>
<div class="cl_entete">Date</div>
	<div class="cl_entete">Message</div>
<div colspan="2" class="hline"></div>
';
$sql = "SELECT * FROM archives_combat_joueurs WHERE `attaquant` = '$nom' OR `defendant` = '$nom' ORDER BY temps DESC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$att = $data[1];
	$def = $data[2];
	$victoire = $data[4];
	$date = $data[5];
	if ($att == $nom)	{$texte = $data[6]; $a = 6;}
	else			{$texte = $data[7]; $a = 7;}

	$limitsize = 140;
	$link = false;
	if (strlen($texte) > $limitsize)
	{
		$link = true;
		$texte = substr($texte, 0, min($limitsize+10, strpos($texte, ' ', $limitsize-10)) ) . '...';
	}

	echo '<div class="rollovercolor">
		<div style="vertical-align: center; width: 15%; text-align: center;">'.$date.'</div>
		<div class="tdlef">';
	if ($link)	echo '<a class="discreb" href="info_message.php?message='.$id.'&texte='.$a.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'750\',\'245\',\'yes\');return false">'.$texte.'</a>';
	else		echo $texte;
	echo '</div></div>'."\n".'<div><div class="hline"></div></div>'."\n";
}

echo "</div>";
mysql_close();
include("fin.php");
