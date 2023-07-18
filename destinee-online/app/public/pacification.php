<?php
session_start ();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---


if (! isset ( $_SESSION ['connexion'] ) or $_SESSION ['connexion'] == 0) {
	if (! isset ( $_POST ['nom'] )) {
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit ();
	}
}

include ("debut.php");
include ("menu.php");
entete ( "Pacification" );

$nom = $_SESSION ['nom'];
$race = $_SESSION ['race'];
$classe = $_SESSION ['classe'];
$erreur = "";

include ("connect.php");

$sql = "SELECT acc_pacif1, acc_pacif2, acc_pacif3 FROM joueurs_bonus WHERE nom = '$nom'";
$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row ($req);
$acc_miss1 = $data[0];
$acc_miss2 = $data[1];
$acc_miss3 = $data[2];

$req = mysql_query ( "SELECT pvstotal, chance FROM joueurs_modificateurs WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
$data = mysql_fetch_row($req);
$pvstotal = $data[0];
$chance = $data[1];

$req = mysql_query ( "SELECT niveau, argent FROM joueurs_stats WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
$data = mysql_fetch_row ( $req );
$argent = $data [1];
$niveau = $data [0];

// Coefficient taille de l'armée
$limite_taille = $niveau * 4000;
$coef_armee = min(1, $pvstotal / $limite_taille);

if (isset($_POST ['etape']) && ($_POST ['etape'] == 1) && isset($_POST['investissement']) && is_numeric($_POST['investissement'])) {
	
	$investissement = round($_POST['investissement']);

	// 1 au coef de chance équivaut à un bonus de 4%
	$mod_chance = 1 + ($chance-10) * 0.04;
	$req = mysql_query ( "SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
	$jbonus = mysql_fetch_assoc ( $req );
	$province = $jbonus ['province'];
	$politique = $jbonus ['politique'];
	if ($jbonus['province'] == 'Aucune')
		$sql = "SELECT politiques_effets.exploration AS prov_batiment FROM politiques_effets WHERE politiques_effets.politique = '" . $jbonus ['politique'] . "'";
	else
		$sql = "SELECT politiques_effets.exploration + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '" . $jbonus ['politique'] . "' AND batiment_province.province = '" . $jbonus ['province'] . "' AND batiment_province.nom = 'Maître cartographe'";
	$req = mysql_query ($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row ( $req );
	$mod_explo_province = $data [0];
	
	$sql = "SELECT `20` FROM joueurs_aptitudes WHERE nom = '$nom'";
	$req = mysql_query ($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_assoc ( $req );
	$manipulation = $data ["20"];
	
	// Manipulation
	$mod_manip = 1 + $manipulation / 250;
	
	// Le joueur n'a pas assez d'or
	if ($argent < $investissement) {
		$erreur .= "Vous ne pouvez pas investir plus que vous ne possédez!<br><br>";
	} else {
		$modif_progression = true;
		// Coefficient appliqué aux gains des missions selon le niveau.
		$coef_mission1 = 1.5 - min(1, $niveau / 20);
		$coef_mission2 = max(0.25, 1 - (abs(15 - $niveau)/20));
		$coef_mission3 = min(1, max (0, $niveau - 15) / 20);
		
		// Le coût de base de chaque type de mission
		$cout_mission1 = 60000;
		$cout_mission2 = 140000;
		$cout_mission3 = 330000;
			
		$augmentation_mission1 = floor(1000 * $investissement * $coef_armee * $mod_explo_province * $coef_mission1 * $mod_manip * $mod_chance / $cout_mission1);
		$augmentation_mission2 = floor(1000 * $investissement * $coef_armee * $mod_explo_province * $coef_mission2 * $mod_manip * $mod_chance / $cout_mission2);
		$augmentation_mission3 = floor(1000 * $investissement * $coef_armee * $mod_explo_province * $coef_mission3 * $mod_manip * $mod_chance / $cout_mission3);
		
		// On affiche la progression des missions
		$message_debut = "Votre investissement vous a permis";
		$resolu1 = floor($augmentation_mission1 / 1000);
		$progression1 = fmod($augmentation_mission1, 1000) / 10;
		if ($resolu1 > 0 || $progression1 > 0) {
			$message_mission1 = $resolu1 > 0 ? "$message_debut de mener à bien $resolu1 <strong>mission(s) mineure(s)</strong> et d'accomplir $progression1% d'une nouvelle mission." : "$message_debut de faire progresser la <strong>mission mineure</strong> en cours de $progression1%.";
			echo "$message_mission1 <br />";
		}
		
		$resolu2 = floor($augmentation_mission2 / 1000);
		$progression2 = fmod($augmentation_mission2, 1000) / 10;
		if ($resolu2 > 0 || $progression2 > 0) {
			$message_mission2 = $resolu2 > 0 ? "$message_debut de mener à bien $resolu2 <strong>mission(s) majeure(s)</strong> et d'accomplir $progression2% d'une nouvelle mission." : "$message_debut de faire progresser la <strong>mission majeure</strong> en cours de $progression2%.";
			echo "$message_mission2 <br />";
		}
		
		$resolu3 = floor($augmentation_mission3 / 1000);
		$progression3 = fmod($augmentation_mission3, 1000) / 10;
		if ($resolu3 > 0 || $progression3 > 0) {
			$message_mission3 = $resolu3 > 0 ? "$message_debut de mener à bien $resolu3 <strong>mission(s) épique(s)</strong> et d'accomplir $progression3% d'une nouvelle mission." : "$message_debut de faire progresser la <strong>mission épique</strong> en cours de $progression3%.";
			echo "$message_mission3 <br />";
		}
		
		echo "<br>";
		
		$acc_miss1 += $augmentation_mission1;
		$acc_miss2 += $augmentation_mission2;
		$acc_miss3 += $augmentation_mission3;
		
		// On met à jour l'or du joueur et le total d'or investi dans la pacification
		$sql = "UPDATE `joueurs_stats` SET `argent` = `argent` - $investissement WHERE nom ='$nom'";
		$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_bonus` SET `pacif_invest_total` = `pacif_invest_total` + $investissement WHERE nom ='$nom'";
		$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
}

// RÉSOLUTION DES MISSIONS
require_once ('info_objets_include.php');

// On donne un objet pour chaque mission accomplie
while ($acc_miss1 > 999 && $erreur == "") {
	$places_libres = places_libres_inv($nom);
	if ($places_libres <= 0) {
		$erreur .= "Votre inventaire est plein! Veuillez faire un peu de place avant de recevoir vos récompenses.<br><br>";
	} else {
		$modif_progression = true;
		$acc_miss1 -= 1000;
		$req = mysql_query ("SELECT id, nom, image, type, niv FROM objets_stats WHERE niv <= '11' AND niv >= '2' AND trouvable = '1' ORDER BY RAND() LIMIT 1") or die ('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		$item = creer_objet($data['id']);
		if (($item != false) && (ajouteDansInventaire ( $nom, $item ))) {
			$obj_data = retourne_carac_display_objet ( $item );
			echo '<br>Au terme d\'une bataille à sens unique, un clan de barbares vous prête allégeance et vous offre leur bien le plus précieux en symbole de leur soumission !<br><br>';
			echo affiche_image_objet($obj_data['nom'], $obj_data['image'], $obj_data['item'], 100, 0);
			echo '<br><strong>'.$obj_data ['nom'].'</strong> vient d\'être ajouté à votre inventaire !<br><br>';
		}
	}
}

while ($acc_miss2 > 999 && $erreur == "") {
	$places_libres = places_libres_inv($nom);
	if ($places_libres <= 0) {
		$erreur .= "Votre inventaire est plein! Veuillez faire un peu de place avant de recevoir vos récompenses.<br><br>";
	} else {
		$modif_progression = true;
		$acc_miss2 -= 1000;
		$req = mysql_query ("SELECT id, nom, image, type, niv FROM objets_stats WHERE niv <= '18' AND niv >= '12' AND trouvable = '1' ORDER BY RAND() LIMIT 1") or die ('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		$item = creer_objet($data['id']);
		if (($item != false) && (ajouteDansInventaire ( $nom, $item ))) {
			$obj_data = retourne_carac_display_objet ( $item );
			echo '<br>Au terme d\'une bataille éprouvante contre un clan qui s\'était arrogé un territoire à l\'intérieur de vos frontières, vous remportez une éclatante victoire et reprenez le contrôle de la zone. Vos hommes reviennent avec un trophée de guerre.<br><br>';
			echo affiche_image_objet($obj_data['nom'], $obj_data['image'], $obj_data['item'], 100, 0);
			echo '<br><strong>'.$obj_data ['nom'].'</strong> vient d\'être ajouté à votre inventaire !<br><br>';
		}
	}
}

while ($acc_miss3 > 999 && $erreur == "") {
	$places_libres = places_libres_inv($nom);
	if ($places_libres <= 0) {
		$erreur .= "Votre inventaire est plein! Veuillez faire un peu de place avant de recevoir vos récompenses.<br><br>";
	} else {
		$modif_progression = true;
		$acc_miss3 -= 1000;
		$req = mysql_query ("SELECT id, nom, image, type, niv FROM objets_stats WHERE niv >= '19' AND trouvable = '1' ORDER BY RAND() LIMIT 1") or die ('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		$item = creer_objet($data['id']);
		if (($item != false) && (ajouteDansInventaire ( $nom, $item ))) {
			$obj_data = retourne_carac_display_objet ( $item );
			echo '<br>Grâce à une opération stratégique de grande envergure, votre milice parvient à mettre fin à une rébellion organisée qui progressait à l\'intérieur de votre royaume. L\'organisation à l\'origine de cette rébellion tirait son pouvoir d\'une puissante relique sur laquelle vous faites main basse !<br><br>';
			echo affiche_image_objet($obj_data['nom'], $obj_data['image'], $obj_data['item'], 100, 0);
			echo '<br><strong>'.$obj_data ['nom'].'</strong> vient d\'être ajouté à votre inventaire !<br><br>';
		}
	}
}
// FIN RÉSOLUTION DES MISSIONS

// On met à jour la progression des missions en cours si il y a eu des changements
if ($modif_progression) {
	$sql = "UPDATE `joueurs_bonus` SET `acc_pacif1` = $acc_miss1 WHERE nom ='$nom'";
	$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$sql = "UPDATE `joueurs_bonus` SET `acc_pacif2` = $acc_miss2 WHERE nom ='$nom'";
	$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$sql = "UPDATE `joueurs_bonus` SET `acc_pacif3` = $acc_miss3 WHERE nom ='$nom'";
	$req = mysql_query($sql) or die ('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

if (($erreur != "") || $modif_progression) {
	echo $erreur;
	echo cadre_fin();
	echo cadre_spacer();
	echo cadre_debut();
}


echo '<form method="post" action="pacification.php" id="form1">
	<table class="localtable630"><tbody>';
echo '<table class="localtable630"><tbody>';

$aide =	"<h2>La pacification</h2><br>Les missions de pacification vous permettent de rétablir votre souveraineté là où elle est remise en cause à l'intérieur même de vos frontières. Selon l'importance de l'organisation des insurgés, une opération de plus ou moins grande envergure est nécessaire pour reprendre le pouvoir sur les terres qu'ils occupent.
<br>Il existe ainsi 3 types de mission:<ul>
<li>les missions <strong>mineures</strong> consistent généralement à faire respecter votre autorité auprès de groupes barbares qui se refusent à se soumettre. Ils sont généralement isolés et sans grand danger, et vous donneront un objet mineur après vous avoir prêté allégeance (objet de niveau 2 à 11)</li>
<li>les missions <strong>majeures</strong> visent des clans organisés, réunissant souvent plusieurs villages qui se sont déclarés indépendants. Vous devrez dépêcher quelques bataillons pour lutter contre leur force armée et reprendre le contrôle de ces zones. Vous trouverez dans leurs coffres un objet majeur (objet de niveau 12 à 18)</li>
<li>les missions <strong>épiques</strong> visent à faire taire les rébellions qui prennent de l'ampleur dans votre royaume. Menées par un chef de guerre, il vous faudra des moyens colossaux pour venir à bout de telles rébellions, mais la victoire vous assurera l'acquisition de la relique sur laquelle le chef de guerre avait bâti sa légitimité (objet de niveau 19 et plus)</li>
</ul>
Lorsque vous attribuez des finances aux missions de pacification, vos hommes les accomplissent sans que vous ayez à vous en occuper. Vous pouvez suivre sur cette page le taux d'avancement des différentes missions.<br>
Si votre niveau est bas, vous n'avez le contrôle que sur des terres sans grande importance, et la majorité des troubles viendront de tribus barbares. Plus vous augmenterez en niveau et plus des groupes organisés contesteront votre autorité, tandis que les petites organisations vous resterons plus facilement fidèles: vous n'aurez donc plus trop à financer de missions mineures et votre or sera employé à des missions de plus grande envergure.";

echo '<tr><td colspan="3"><div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher l\'aide</a></div>';
echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher l\'aide</a><br><br><div style="font-family:default;text-align: left;">'.$aide.'</div></div></td></tr>';

$acc_miss1 = min(100, $acc_miss1/10);
$acc_miss2 = min(100, $acc_miss2/10);
$acc_miss3 = min(100, $acc_miss3/10);

echo '<img src="/images/divers/pacification.jpg" alt="Pacification">';

echo 	'<tr><td><br><br><h2>Missions de pacification en cours:</h2><br>
	Mission mineure accomplie à '.$acc_miss1.'%.<br><br>
	Mission majeure accomplie à '.$acc_miss2.'%.<br><br>
	Mission épique accomplie à '.$acc_miss3.'%.<br><br><br>
	Financer les missions de pacification : investir <input type="text" name="investissement" size="5" id="nombre"> pièces d\'or.';
if ($coef_armee < 1) {
	$coef_armee_pourc = round($coef_armee * 100);
	echo'<br><small>La faible puissance de votre armée fait que vos investissements de pacification ont une efficacité de '.$coef_armee_pourc.'% seulement!</small>';
}
echo '<br><br>
	<input type="hidden" name="etape" value="1">
	<input type="submit" value="Financer >>"><br><br>';
	
echo '</tr></td></tbody></table>';



mysql_close ();
$ifpubgoogle = false;
include ("fin.php");
