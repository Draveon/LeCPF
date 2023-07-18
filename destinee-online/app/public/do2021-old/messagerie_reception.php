<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

include ("debut.php");
include ("menu.php");
entete("Messagerie");
include ("connect.php");
include("temps_ecoulement.php");

$nom = $_SESSION['nom'];
$nom = $nom;
$royaume = $_SESSION['royaume'];

include ("messagerie_include.php");


// nettoyage de la base de données des messages: 14 jours 
$limite = floor(time()/60) - 14*$duree_jour;
$delete = "DELETE FROM messagerie WHERE temps < '$limite' AND lu = '1'";
$reqdel = mysql_query($delete) or die('Erreur SQL !<br>'.mysql_error());


$sql = "SELECT id FROM messagerie WHERE `destinataire` = '$nom' ORDER BY temps DESC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nombre = mysql_num_rows($req);
for($i=0; $i < $nombre; $i++)
{
	if(!isset($_GET[$i]))
	{}
	else
	{
		$id = $_GET[$i];
		$delete = mysql_query("DELETE FROM messagerie WHERE id = '$id'") or die(mysql_error());;
		mysql_query($delete,$db);
	}
}

echo '<form method="get" action="messagerie_reception.php">
	<table class="localtable630"><tbody>';
//echo ligneliens(4);


echo '<tr>	<td colspan="2" style="vertical-align: top"><h2>Votre boîte à missives</h2>&nbsp;</td>
	'.ligneliens(2).'</tr>
<tr>	<td class="cl_entete" style="width:100px;">Date</td>
	<td class="cl_entete"			  >Auteur</td>
	<td class="cl_entete" style="width: 50%;" >Titre</td>
	<td class="cl_entete" style="width: 1%;"  ><td>    </tr>
<tr>	<td colspan="4" class="hline"></td></tr>
';

$sql = "SELECT * FROM messagerie WHERE `destinataire` = '$nom' OR `destinataire` = 'Tous' ORDER BY temps DESC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nombre = mysql_num_rows($req);
for($i=0; $i < $nombre; $i++)
{
	$data = mysql_fetch_row($req);
	$id = $data[0];
	$auteur = $data[1];
	$destinataire = $data[2];
	$titre2 = $data[3];
	if ($titre2 == "")
		$titre2 = "Aucun titre...";
	$date = $data[5];
	$lu = $data[7];
	$officiel = isofficiel($auteur);
	
	if ($officiel)
	{
		$sql2 = "SELECT missive_publique FROM joueurs_modificateurs WHERE `nom` = '$nom'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$lu = $data2[0];
	}
	
	$stylebold = ($lu==0) ? ' style="font-weight: bold;"' : '';
	$checkbox = ($destinataire != "Tous") ? '<input type="checkbox" name="'.$i.'" value="'.$id.'">' : '';

	echo '	<tr class="rollovercolor" '.$stylebold.'>
		<td style="vertical-align: center; text-align: left;">'.$date.'</td>
		<td style="text-align: left;">';
	if (!$officiel)
		echo '<a class="discret" href="messagerie_compose.php?destinataire='.$auteur.'&titre='.$titre2.'">'.$auteur.'</a>';
	else
		echo $auteur;

	echo '</td>
		<td class="tdlef"><a class="discret" href="messagerie_ouvrir.php?message='.$id.'" onclick="NewWindow(this.href,\'name\',\'650\',\'400\',\'yes\');return false">'.$titre2.'</td>
		<td>'.$checkbox.'</td></tr>
	<tr>	<td colspan="4" class="hline"></td></tr>'."\n";
}

if ($nombre == 0)
	echo "<tr><td colspan='4'><center>Vous n'avez aucun message...</td></tr>";

if ($nombre > 0)
	echo "<tr><td colspan='4'><div align=right><input type='submit' value=' Effacer >> '></div></td></tr>";

	
echo "</tbody></table>";
mysql_close();
include("fin.php");

?>
