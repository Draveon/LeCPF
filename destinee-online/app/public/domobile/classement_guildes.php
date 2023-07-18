<?php session_start();

$head_title = 'Classement des armadas';
$head_keywords = 'classement, armada, guilde, joueur, mmorpg';

if (!isset($_SESSION['connexion']))
	{$_SESSION['connexion'] = 0;}

include ("debut.php");
if ($_SESSION['connexion'] != 1){
	include ("menu_index.php");
}

if ($_SESSION['connexion'] == 1){
    include ("menu.php");
}
entete_index("Classement");

$temps = floor(time()/60);


// On détermine quel serveur on affiche
if(!isset($_GET['affichage']))	$serveur_off = 0;
else				$serveur_off = $_GET['affichage'];
if ( (isset($_SESSION['serveur'])) && ($serveur_off == 0) )
	$serveur_off = $_SESSION['serveur'];




if ($serveur_off == 0)
{
	echo '<table class="localtable630"><tbody>
		<tr><td><h2>Classements des guildes</h2></td></tr>
		<tr><td style="text-align: center;">
		~ <a href="classement_guildes.php?affichage=1">Serveur 1</a> |
		  <a href="classement_guildes.php?affichage=2">Serveur 2</a> |
		  <a href="classement_guildes.php?affichage=3">Serveur RP</a> ~ </td></tr>';
}

// Si le serveur a été choisi (ou si joueur connecté) !
if ($serveur_off != 0)
{

	include("administration/choix_serveurs_off.php");
	
	// vérification du nombre de joueurs et mise à jour de la puissance de l'armada
	$req1 = mysql_query("SELECT nom FROM guildes") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req1))
	{
		$guilde = $data[0];
		$sql = "SELECT ROUND(0.2 * COUNT(joueurs_bonus.id) *POW(AVG(POW(joueurs_stats.puissance,0.5)),2)) AS `puissance`, COUNT(joueurs_bonus.id) AS `nbr` FROM `joueurs_bonus` INNER JOIN joueurs_stats ON joueurs_stats.id = joueurs_bonus.id INNER JOIN joueurs_connexions ON joueurs_connexions.id = joueurs_bonus.id WHERE joueurs_bonus.guilde = '".$guilde."' AND joueurs_connexions.connexion_dernière < '".($temps+1)."' GROUP BY joueurs_bonus.guilde";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$datapuiss = mysql_fetch_row($req);
		$sql = "SELECT COUNT(joueurs_bonus.id) AS `nbr` FROM `joueurs_bonus` WHERE joueurs_bonus.guilde = '".$guilde."' GROUP BY joueurs_bonus.guilde";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$datanbr = mysql_fetch_row($req);
		$sql = "UPDATE `guildes` SET `nb_membres` = '".$datanbr[0]."', `puissance` = '".$datapuiss[0]."' WHERE nom = '$guilde'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}

	
	// preparation des menus serveurs 1/2/3
	$colspan = 8;
	$page = 'classement_guildes.php?&affichage=';
	$bold = array( array('', ''), array('<b>', '</b>'));
	$menuserv = '<tr><td style="text-align: center;" colspan="'.$colspan.'"> ~ ';
	$b = ($serveur_off == 1) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'1">Serveur 1</a>'.$b[1].' | ';
	$b = ($serveur_off == 2) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'2">Serveur 2</a>'.$b[1].' | ';
	$b = ($serveur_off == 3) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'3">Serveur RP</a>'.$b[1].' ~ <br>&nbsp;</td></tr>'."\n";
	
	// affichage
	$sql = "SELECT * FROM guildes ORDER BY puissance DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$qtee = mysql_num_rows($req);
	
	echo '<table class="localtable680combat"><tbody>
		<tr><td colspan="8"><h2>Classement des guildes</h2></td></tr>';
	echo $menuserv;
	echo '
	<tr>	<td></td>
		<td style="width: 1%;"></td>
		<td class="cl_entete">Nom de l`Armada</td>
		<td class="cl_entete">Chef Actuel</td>
		<td class="cl_entete">Province</td>
		<td class="cl_entete">Membres</td>
		<td class="cl_entete">Jours</td>
		<td class="cl_entete">Puissance</td></tr>
	<tr>	<td></td>
		<td></td>
		<td colspan="6" class="hline"></td></tr>
	';
	
	for($i=0; $i < $qtee; $i++)
	{
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$nom_guilde = $data[1];
		$province = $data[2];
		$membres = $data[3];
		$date = floor(($temps - $data[4])/1440);
		$image = $data[5];
		$chef = $data[6];
		$pui_moy = $data[10];
		$pui_moy = number_format($pui_moy, 0, ",", ",");
		$rang = $i + 1;
		
		echo '<tr class="rollovercolor">
			<td><div align="right"><small>'.$rang.' -</small></td>
			<td><a href="armadas.php?armada='.$id.'&serveur='.$serveur_off.'"><img src="'.$image.'" width="20" height="20" alt="'.$nom_guilde.'" ALIGN=middle border=1></a></td>
			<td><div align="left"><a href="classement.php?affichage='.$serveur_off.'&debut=0&nb=50&type=1&ordre=Puissance&armada='.urlencode($nom_guilde).'">'.$nom_guilde.'</a></td>
			<td style="text-align: left;">'.$chef.'</td>
			<td style="text-align: left;">'.$province.'</td>
			<td style="text-align: center;">'.$membres.'</td>
			<td style="text-align: center;">'.$date.'</td>
			<td style="text-align: right;">'.$pui_moy.'</td>	</tr>
		<tr>	<td></td>
			<td></td>
			<td colspan="6" class="hline"></td></tr>'."\n";
	}
	
	echo '<tr><td colspan="'.$colspan.'">&nbsp;</td></tr>';
	echo $menuserv;
	
	mysql_close();
}
echo "</tbody></table>";
include ("fin.php"); ?>
