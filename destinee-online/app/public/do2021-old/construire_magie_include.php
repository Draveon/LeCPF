<?php

// prérequis: $id
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];

switch ($id)
{
	case'1': $lvl = 1; break;
	case'2': $lvl = 2; break;
	case'3': $lvl = 3; break;
	case'4': $lvl = 4; break;
	case'5': $lvl = 5; break;
}

$prix_base = 50000 * $lvl;

// Modificateur de charisme au coût des sorts
$req = mysql_query("SELECT cha FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$mod_charisme =  2 / pow(($data[0] + 29), 1/5);

$prix_base = round($prix_base * $mod_charisme);


$req = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM classes WHERE classe = '".$classe."'") or die('Erreur SQL !<br>'.mysql_error());
$sorts = mysql_fetch_assoc($req);
$nombre = $sorts[$lvl];
$sortTot = 0;
$sortJusque = 0;
for ($i=1; $i<$lvl; $i++)
{
	$sortTot += $sorts[$i];
	$sortJusque += $sorts[$i];
}
$sortTot += $sorts[$lvl];

// liste des sorts connus à ce niveau
$connus = array();
$nb_connus = 0;
$req = mysql_query("SELECT * FROM joueurs_sorts WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
for ($i=$sortJusque+1; $i<=$sortTot; $i++) {
	$connus[] = $data[$i];
	if ($data[$i] != '0') {
		$nb_connus++;
	}
}

// liste des sorts à choix
$choix_complet = array();
$choix = array();
$sql = "SELECT id, nom, image, type, élément, coutor, coutmana, soufre, mercure, cristal, gemme FROM magies_liste WHERE niveau = '".$lvl."' AND `victime` != 'Spécial' ORDER BY `nom` ASC";
/*
$sql = "SELECT id, nom, image, type, élément, coutor, coutmana, soufre, mercure, cristal, gemme FROM magies_liste WHERE niveau = '".$lvl."' AND `victime` != 'Spécial' ORDER BY `type`, `élément`, `nom` ASC";
*/
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req)) {
	$choix_complet[] = $data;
	if (!in_array($data['id'], $connus)) {
		$choix[] = $data;
	}
}
$sizeofchoix = sizeof($choix);


// calcule le cout des sorts en fonction de ceux déjà connus
function coutSorts ($nb_connus, $nb_modif, $nb_new)
{
	global $prix_base;
	$cout = round($nb_modif * ($prix_base + $prix_base/2 * ($nb_connus - 1)));
	for ($i=1;$i<=$nb_new;$i++) {
		$cout += $prix_base + $prix_base/2 * ($nb_connus - 1 + $i);
	}	
	return round($cout);
}


?>

