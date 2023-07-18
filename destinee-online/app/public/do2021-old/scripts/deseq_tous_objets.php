<?

function objetchangemodificateurs (&$obj_data, $joueur, $mode = '+', $refaireTest = true)
{
	if ($obj_data == false)
		return false;

	if ($mode == '-')
		$plus = false;
	else
		$plus = true;

	// bonus conférés par les objets
	$sql = "SELECT att, def, ini, cha, end, pui, chance FROM joueurs_bonus WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_bonus` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	// modificateurs
	$sql = "SELECT mana, montagne, Air, Terre, Eau, Feu, Électricité, chance, `res_phys`, `res_mag`, `res_feu`, `res_eau`, `res_terre`, `res_air`, `res_elec`, `res_elem`, `xp`, `terres`, `or`, `mana_consommation`, `HC_or`, `HC_mines`, `HC_recrut`, `prison`, `degat_phys`, `degat_mag`, `degat_range`, `res_range`, `degat_vs_range`, `res_vs_range`, `degat_cac`, `res_cac`, `degat_vs_cac`, `res_vs_cac`, `degat_vol`, `res_vol`, `degat_vs_vol`, `res_vs_vol`, `degat_vs_sol`, `res_vs_sol`, `degat_sol`, `degat_vs_phys`, `degat_vs_mag`, `res_sol`, `res_vs_phys`, `res_vs_mag`, `degat`, `res`, `degat_elem`, `effets_elem_def`, `res_effets_elem_def`, `cailloux_consommation`, `feu_def`, `eau_def`, `terre_def`, `air_def`, `elec_def`, `res_feu_def`, `res_eau_def`, `res_terre_def`, `res_air_def`, `res_elec_def`, `vol_ressources`, `globe_protect`, `cout_mana_creas`
		FROM joueurs_modificateurs WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_modificateurs` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	echo '<script> alert ('.$sql.');</script>';

	// stats yc les bonus des objets
	$sql = "SELECT att, def, ini, cha, end, pui FROM joueurs_stats WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_stats` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

// END_USER FUNCTION: ajoute un objet dans l'inventaire des trucs inutilisés. retourne vrai si réussi, false si pas de joueur ou pas de place
function ajouteDansInventaire ($joueur, $id_objet)
{
	$req = mysql_query("SELECT * FROM joueurs_objets WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 309 !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		for ($k=1; isset($data[$k]); $k++)
		{
			if ($data[$k] == 0)
			{
				$sql = "UPDATE `joueurs_objets` SET `".$k."` = '".$id_objet."' WHERE nom = '".$joueur."'";
				$req = mysql_query($sql) or die('Erreur SQL ioi.php 317 !<br>'.$sql.'<br>'.mysql_error());
				return true;
			}
		}
	}
	return false;
}

$db = mysql_connect("localhost", "destinee-online", "hNme2cGR6eqmSDY5") or die (mysql_error());
mysql_select_db("Destinee01");

// Liste des joueurs
$req_joueurs = mysql_query("SELECT `nom` FROM `joueurs_inventaire`") or die('Erreur SQL !<br>'.mysql_error());
while ($joueur_inventaire = mysql_fetch_assoc($req_joueurs)) {
	$joueur = $joueur_inventaire['nom'];
	echo "Traitement Joueur $joueur <br>";

	$sql = "SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL ioi.php 333 !<br>'.$sql.'<br>'.mysql_error());
	$obj = mysql_fetch_assoc($req);
	foreach ($obj AS $location => $id) {
		if ($id != 0) {
			if ($joueur_inventaire[$pos_c] != 0) {
				if (!ajouteDansInventaire ($joueur, $joueur_inventaire[$pos_c]))
				{
					// si vrai, l'objet a été placé dans l'inventaire.
					// si l'inventaire est plein, on ruse avec le marché central.
					$sql = "INSERT INTO `foire_vente` (`item`, `qtee`, `offre`, `temps`, `image`, `acheteur`, `type`, `type2`)
						VALUES ('".$id."', 1, 0, ".(floor(time()/60)-1).", '".$obj_data['image']."', '$joueur', 'objet', 'Déséquipement')";
					$req = mysql_query($sql) or die('Erreur SQL ioi.php 354 !<br>'.$sql.'<br>'.mysql_error());
				}
				// finalement on enlève les bonus et retire l'objet
				$req_del = mysql_query("UPDATE `joueurs_inventaire` SET `".$location."` = '0' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 357 !<br>'.mysql_error());
				objetchangemodificateurs ($obj_data, $joueur, '-', false);
			}
		}
	}
}

mysql_close();
include ("fin.php");
?>
