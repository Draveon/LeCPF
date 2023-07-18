<? session_start();

include("../administration/connect_5.php");

$id_crea = $_GET['id_crea'];
$pvs_test = 100000;
$resultat_final = 0;

$sql = "SELECT * FROM creatures WHERE id = $id_crea";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$crea = mysql_fetch_assoc($req);
$nom_crea = $crea['nom'];
$niv_crea = $crea['niveau'];
$nbr_crea_ini = round($pvs_test / $crea['pvs']);
$pvs_crea_ini = $nbr_crea_ini * $crea['pvs'];
$nb_vict_crea = $nb_combats = 0;

$sql = "SELECT * FROM creatures WHERE id != $id_crea AND niveau = $niv_crea AND id > 5 AND speciale = 0 AND constructible = 1";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

while ($adv = mysql_fetch_assoc($req)) {
	$pb = false;
	$pvs_crea = $pvs_crea_ini;
	$pvs_adv = round($pvs_test / $adv['pvs']) * $adv['pvs'];
	
	if ($adv['ini'] > $crea['ini']) {
		$x = $adv;
		$x['pvs_ini'] = $pvs_adv;
		$x['pvs_restant'] = $pvs_adv;
		$v = $crea;
		$v['pvs_ini'] = $pvs_crea;
		$v['pvs_restant'] = $pvs_crea;
	} else if ($crea['ini'] > $adv['ini']) {
		$x = $crea;
		$x['pvs_ini'] = $pvs_crea;
		$x['pvs_restant'] = $pvs_crea;
		$v = $adv;
		$v['pvs_ini'] = $pvs_adv;
		$v['pvs_restant'] = $pvs_adv;
	} else {
		// PROBLEME
		$pb = true;
		$nom_bug = $adv['nom'];
		//echo "Meme init que $nom_bug <br>";
	}
	
	$x['1er_tour'] = true;
	$v['1er_tour'] = true;
	
	if (!$pb) {
		$nb_combats++;
		while ($x['pvs_restant'] > 0) {
			$degat = ceil($x['pvs_restant'] / $x['pvs']) *($x['min'] + $x['max']) / 2;
			$degat2 = ($x['att_mag'] == 1) ? $degat * (100 + max(0, $x['att'] - $v['end'])) / (100 + max(0, $v['end'] - $x['att'])) : $degat * (100 + max(0, $x['att'] - $v['def'])) / (100 + max(0, $v['def'] - $x['att']));
			if ($x['1er_tour']) {
				if ($x['range'] == 1) {
					$degat2 /= 2;
				} else {
					$degat2 = 0;
				}
				$x['1er_tour'] = false;
			}
			if ($v['vol'] == 1 && $x['vol'] == 0) {
				if ($x['range'] == 0) {
					$degat2 /= 1.18;
				} else {
					$degat2 /= 1.06;
				}
			}
			if ($x['bgh'] == 1) {
				$degat2 *= 1.075;
			}
			$v['pvs_restant'] -= $degat2;
			$v_copy = $v;
			$v = $x;
			$x = $v_copy;
		}
		$vainqueur = $v['nom'];
		$vaincu = $x['nom'];
		$pourc_restant = round($v['pvs_restant'] / $v['pvs_ini'] * 100, 2);
		echo "$vainqueur gagne contre $vaincu avec $pourc_restant% restant<br>";
		if ($v['id'] == $id_crea) {
			$nb_vict_crea++;
			$resultat_final += $pourc_restant;
		}
	}
}

$resultat_final /= $nb_combats;
echo "Nombre de victoires: $nb_vict_crea / $nb_combats et moyenne de troupes restantes = $resultat_final%";

?>