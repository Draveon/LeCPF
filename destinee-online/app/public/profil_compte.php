<?php session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
	exit;
}



function showPerso($donnees_perso) {
	echo '<b>'.$donnees_perso['nom'].', '.$donnees_perso['titre'].' '.$donnees_perso['royaume'].'</b><br><br>
		<img src="'.$donnees_perso['avatar'].'" width="300" height="300" alt="'.$donnees_perso['nom'].'" border="1px solid black"><br><br>
		<b>'.$donnees_perso['classe'].' '.$donnees_perso['race'].', </b>fidèle de <b>'.$donnees_perso['dieu'].'</b><br><br>
		Puissance: <b>'.number_format($donnees_perso['puissance'], 0, ",", ",").'</b><br>
		Niveau: <b>'.$donnees_perso['niveau'].'<br><br>';
	if ($donnees_perso['description'] != '') {
		echo '<i>'.$donnees_perso['description'].'</i><br><br>';
	}
}

include ("debut.php");
include ("menu.php");
entete("Fiche joueur");

$id_compte_vu = $_GET['show_compte'];
$serveur_off = $_GET['serv'];

include("administration/choix_serveurs_off.php");

$req = "SELECT * from `joueurs_infos` WHERE id = $id_compte_vu";
$result = mysql_query($req) or die("Erreur SQL sur admin_compte.php: ".mysql_error());
$donnees_joueur = mysql_fetch_assoc($result);

$sql = "SELECT joueurs_heros.*, joueurs_stats.niveau FROM joueurs_heros INNER JOIN joueurs_stats ON joueurs_heros.id = joueurs_stats.id WHERE joueurs_heros.id_compte = $id_compte_vu";
$result = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$nb_persos = mysql_num_rows($result);
$perso1 = mysql_fetch_assoc($result);
$perso2 = mysql_fetch_assoc($result);
$perso3 = mysql_fetch_assoc($result);

$sql = "SELECT * FROM compte_medailles WHERE id_compte = $id_compte_vu";
$medailles = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

echo '<font size=+2><b><span style="font-family: papyrus;">'.$donnees_joueur['login'].'</b></font></span><br><br>
		Score: <b>'.floor($donnees_joueur['score']).'</b>';

// MEDAILLES
echo '<div style="width:90%"><h2><u>Médailles</u></h2></div>';
echo '<table class="localtable963"><tbody>
		<tr>';
$a = 0;
while ($medaille = mysql_fetch_assoc($medailles)) {
	if($a == 4){$a = 0; echo"</tr>\n<tr>";}
	$a++;
	echo '<td class="creatbatiliste"><img src="'.$medaille['image'].'" title="'.$medaille['libelle'].'"><br><i>'.$medaille['libelle'].'</i></td>';
}
echo '</tr></tbody></table>';

// PERSONNAGES
echo '<div style="width:90%"><h2><u>Personnages</u></h2></div>';
echo '<table style="width:90%">
			<tbody>
				<tr valign="top">';
if ($nb_persos == 3) {
	echo '<td style="width:47.5%">';
	showPerso($perso1);
	echo '</td><td style="width:5%"></td><td style="width:47.5%">';
	showPerso($perso2);
	echo '<td style="width:47.5%">';
	showPerso($perso3);
} else if ($nb_persos == 2) {
	echo '<td style="width:47.5%">';
	showPerso($perso1);
	echo '</td><td style="width:5%"></td><td style="width:47.5%">';
	showPerso($perso2);
} else if ($nb_persos == 1) {
	echo '<td>';
	showPerso($perso1);
} else {
	echo "Aucun personnage créé";
}
echo '</td></tr></tbody></table>';

include("fin.php");
mysql_close();


?>
