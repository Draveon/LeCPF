<?php session_start();

$head_title = 'Joueurs connectes';
$head_keywords = 'joueurs, MMORPG, multijoueur, simultane, serveur';

if (!isset($_SESSION['connexion']))
    {$_SESSION['connexion'] = 0;}

include ("debut.php");
if ($_SESSION['connexion'] != 1){
    include ("menu_index.php");
}

if ($_SESSION['connexion'] == 1){
    include ("menu.php");
}
entete_index("État du Serveur");

$temps = time()/60;
$limite = $temps - 5;
$limite2 = $temps + 1;

// On détermine quel serveur on affiche
if(!isset($_GET['affichage'])){
    $serveur_off = 0;
}
else{
    $serveur_off = $_GET['affichage'];
}

if ($serveur_off == 0)
{
    include("administration/connect_p.php");
    $sql = "SELECT * FROM joueurs_connexions WHERE connexion_dernière > '$limite' AND connexion_dernière < '$limite2' ORDER BY connexion_dernière DESC";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $qtee1 = mysql_num_rows($req);
    mysql_close();
    
    include("administration/connect_b.php");
    $sql = "SELECT * FROM joueurs_connexions WHERE connexion_dernière > '$limite' AND connexion_dernière < '$limite2' ORDER BY connexion_dernière DESC";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $qtee2 = mysql_num_rows($req);
    mysql_close();
    
    include("administration/connect_a.php");
    $sql = "SELECT * FROM joueurs_connexions WHERE connexion_dernière > '$limite' AND connexion_dernière < '$limite2' ORDER BY connexion_dernière DESC";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $qtee3 = mysql_num_rows($req);
    mysql_close();

    echo '<table style="width: 630px; text-align: left;" border="0"><tbody>
    <tr>	<td><h2>État des serveurs</h2><center>
  ~ <a href="etatduserveur.php?affichage=1">Serveur 1  <small>( <i>'.$qtee1.' connectés</i> )</small></a> |
    <a href="etatduserveur.php?affichage=2">Serveur 2  <small>( <i>'.$qtee2.' connectés</i> )</small></a> |
    <a href="etatduserveur.php?affichage=3">Serveur RP <small>( <i>'.$qtee3.' connectés</i> )</small></a> ~
    <br></td></tr>';
}

// Si le serveur a été choisi !
if ($serveur_off != 0)
{
	include("administration/choix_serveurs_off.php");    
	$sql = "SELECT * FROM joueurs_connexions WHERE connexion_dernière > '$limite' AND connexion_dernière < '$limite2' ORDER BY connexion_dernière DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$qtee = mysql_num_rows($req);

	echo '<table class="localtable630"><tbody>
	<tr>	<td><h2>État du Serveur '.$serveur_off.'</h2>
	<center>';
	if ($qtee > 1)		echo "<i>$qtee joueurs actifs dans les 5 dernières minutes</i>";
	else if ($qtee == 1)	echo "<i>$qtee joueur actif dans les 5 dernières minutes</i>";
	else			echo "<i>Aucun joueur actif dans les 5 dernières minutes</i>";
	
	echo '</center>	<br>
	</td></tr></tbody></table>

	<table class="localtable630"><tbody>
	<tr>	<td style="text-align: center;"></td>
		<td class="cl_entete">Nom</td>
		<td class="cl_entete">Race</td>
		<td class="cl_entete">Classe</td>
		<td class="cl_entete">Dieu</td>
		<td class="cl_entete">Niv</td>
		<td class="cl_entete">Puissance</td></tr>
	<tr>	<td></td>
		<td colspan="6" class="hline"></td></tr>';

	for($i=0; $i < $qtee; $i++)
	{
		$data = mysql_fetch_row($req);
		$id_heros = $data[0];
		$nom_heros = $data[1];

		$sql3 = "SELECT * FROM joueurs_stats WHERE nom = '$nom_heros'";
		$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
		$data3 = mysql_fetch_row($req3);

		$niv2 = $data3[2];
		$puissance2 = number_format($data3[3], 0, ",", ",");

		$sql2 = "SELECT * FROM joueurs_heros WHERE nom = '$nom_heros'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		$data2 = mysql_fetch_assoc($req2);

		$dieu2 = $data2['dieu'];
		$titre2 = $data2['titre'];
		$royaume2 = $data2['royaume'];
		$race2 = $data2['race'];
		$classe2 = $data2['classe'];
		$avatar = $data2['avatar'];

		echo '<tr class="rollovercolor">
			<td><a href="information.php?cible='.$id_heros.'&serveur='.$serveur_off.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false">
				<img src="'.$avatar.'" width="20" height="20" alt="'.$nom_heros.'" ALIGN=middle border=1></a></td>
			<td style="vertical-align: bottom; text-align:left;">'.$nom_heros.', '.$titre2.' '.$royaume2.'</td>
			<td style="text-align: left;">'.$race2.'</td>
			<td style="text-align: left;">'.$classe2.'</td>
			<td style="text-align: left;">'.$dieu2.'</td>
			<td>'.$niv2.'</td>
			<td style="text-align: right;">'.$puissance2.'</td></tr>
		<tr>	<td></td>
			<td colspan="6" class="hline"></td></tr>';
	}
	
	mysql_close();
} // FIN DU TRUC POUR LE CHOIX DU SERVEUR
echo "</tbody></table>";
include ("fin.php"); ?>
