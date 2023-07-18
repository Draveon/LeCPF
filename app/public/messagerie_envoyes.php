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

$nom = $_SESSION['nom'];
$royaume = $_SESSION['royaume'];

include ("connect.php");
include ("messagerie_include.php");


echo '<table class="localtable630"><tbody>';
echo '
<tr>	<td colspan="2"><h2>Votre boîte d\'envoi</h2>&nbsp;</td>
	'.ligneliens(2).'</tr>
<tr>	<td class="cl_entete" style="width: 100px"	>Date</td>
	<td class="cl_entete"				>Destinataire</td>
	<td class="cl_entete" style="width: 50%;"	>Titre</td>
	<td class="cl_entete" style="width: 40px;"	>Etat</td>	</tr>
<tr>	<td class="hline" colspan="4"></td></tr>
';

$sql = "SELECT * FROM messagerie WHERE `auteur` = '$nom' ORDER BY temps DESC";
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
		
	echo '<tr class="rollovercolor">
		<td style="vertical-align: center; text-align: left;">'.$date.'</td>
		<td style="text-align: left;">';
	if (!$officiel)
		echo '<a class="discret" href="messagerie_compose.php?destinataire='.$destinataire.'&titre='.$titre2.'">'.$destinataire.'</a>';
	else
		echo $destinataire;	
	echo '</td>
		<td class="tdlef"><a class="discret" href="messagerie_ouvrir.php?message='.$id.'" onclick="NewWindow(this.href,\'name\',\'650\',\'400\',\'yes\');return false">';
	if ($lu == 0)
		echo '<b>'.$titre2.'</b></a></td><td>Non Lu</td>';
	else
		echo $titre2.'</a></td><td>Lu</td>';
	
	echo '</tr>'."\n";
	echo '<td colspan="4" class="hline"></td></tr>'."\n";
}

if ($nombre == 0)
	echo '<tr><td colspan="4"><center>Vous n\'avez envoyé aucun message récemment...</td></tr>'."\n";

mysql_close();
echo "</tbody></table>";
include("fin.php");

?>