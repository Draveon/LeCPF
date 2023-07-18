<?php
session_start();

// --- Connexion : Sont mises en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];

include("connect.php");
$sql = "SELECT niveau FROM joueurs_stats WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niv = $data[0];

include ("debut.php");
include ("menu.php");
entete("Choix aptitudes");

include("connect.php");
$sql = "SELECT * FROM joueurs_aptitudes_base WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_array($req);
mysql_close();

$apt_1 = $data[2];
$apt_2 = $data[3];
$apt_3 = $data[4];
$apt_4 = $data[5];
$apt_5 = $data[6];
$apt_6 = $data[11];
$apt_7 = $data[12];
$apt_8 = $data[13]; // 8 aptitudes max auparavant == niveau 32
$apt_9 = $data[32];
$apt_10 = $data[33];
$apt_11 = $data[34];
$apt_12 = $data[35];
$apt_13 = $data[36];
$apt_14 = $data[37];
$apt_15 = $data[38];
$apt_16 = $data[39];
$apt_17 = $data[40];
$apt_18 = $data[41];
$apt_19 = $data[42];
$apt_20 = $data[43];
$apt_21 = $data[44];
$apt_22 = $data[45];
$apt_23 = $data[46];
$apt_24 = $data[47];
$apt_25 = $data[48];
$apt_26 = $data[49];
$apt_27 = $data[50];
$apt_28 = $data[51];
$apt_29 = $data[52];
$apt_30 = $data[53];
$apt_31 = $data[54];
$pts = $data[7];
$apts_a_choisir = $data['apts_a_choisir'];

if ($apts_a_choisir > 0)
{
	include("connect.php");
	$sql = "SELECT * FROM aptitudes_liste WHERE `niveau` <= '$niv'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	
	?><table border="0" style="width: 630px; text-align: center;"><tbody><tr><td colspan="4" style="text-align: center;">
	<strong><big><big><span style='font-family: papyrus;'>- ATTENTION -<br></big>~ Bien lire ce qui suit ~</big></span></strong><br>
	<div align="left";><P STYLE="text-indent: 1cm">
	Vous êtes sur le point de CHOISIR une aptitude, soit car il s'agit de votre première visite sur cette page, soit car vous
	avez atteint un niveau supérieur donnant droit à une nouvelle aptitude. En cliquant sur l'une ou l'autre des images suivantes,
	l'aptitude correspondante sera sélectionnée comme étant votre choix ! Vous êtes invité à bien lire les descriptions des
	aptitudes dans l'encyclopédie avant de faire votre choix. Bien qu'une confirmation vous soit demandée lors du clic, votre choix <b>NE PEUT PAS</b> être modifié par la suite !<!-- Un seul
	clic sur l'une ou l'autre de ces images est suffisant pour sélectionner l'aptitude.--> Considérez-vous comme étant averti. En
	cas d'hésitation, prenez le temps de mûrir votre réflexion. Ce choix est définitif.
	</P><br></td></tr>
<tr><?php
	
	$x=0;
	for ($i=0; $i<$nombre; $i++)
	{
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$aptitude = $data[1];
		
		/*if ($id != $apt_1 AND $id != $apt_2 AND $id != $apt_3 AND $id != $apt_4 AND $id != $apt_5 AND $id != $apt_6 AND $id != $apt_7 AND $id != $apt_8)*/
		if ($id != $apt_1 AND $id != $apt_2 AND $id != $apt_3 AND $id != $apt_4 AND $id != $apt_5 AND $id != $apt_6 AND $id != $apt_7 AND $id != $apt_8 AND $id != $apt_9 AND $id != $apt_10 AND $id != $apt_11 AND $id != $apt_12 AND $id != $apt_13 AND $id != $apt_14 AND $id != $apt_15 AND $id != $apt_16 AND $id != $apt_17 AND $id != $apt_18 AND $id != $apt_19 AND $id != $apt_20 AND $id != $apt_21 AND $id != $apt_22 AND $id != $apt_23 AND $id != $apt_24 AND $id != $apt_25 AND $id != $apt_26 AND $id != $apt_27 AND $id != $apt_28 AND $id != $apt_29 AND $id != $apt_30 AND $id != $apt_31)
		{
			$x++;
			echo '	<td><a href="info_aptitudes.php?mode=form&amp;aptitude='.$id.'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false"><img src="'.$data[2].'" width="88px" height="125px" alt="'.$aptitude.'" title="'.$data[3].'"  border=1></a><br>'.$aptitude."<br>&nbsp;</td>\n";
			if ($x == 4)
			{
				echo "</tr>\n<tr>";
				$x = 0;
			}
		}
	}
	for (;($x<4)&&($x!=0); $x++)
		echo "	<td>&nbsp;</td>\n";
		
	echo "</tr></tbody></table>";
	mysql_close();
}
else
{
	echo 'Vous ne pouvez pas encore choisir d\'aptitudes. Attendez d\'avoir un niveau plus élevé.<br><br>';
	echo 'Une aptitude est débloquée aux niveaux suivants : 1, 5 si aptitude de départ commune à celle de la classe ou 8, 12 puis tous les 4 niveaux...<br><br>';
	echo '<a href="aptitudes.php">~ Retour ~</a>';
} 

include ("fin.php");



?>