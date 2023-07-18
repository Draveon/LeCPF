<?

//Remboursement du membre
$result = mysql_query("SELECT * FROM `foire_vente` WHERE `vendeur` = '$joueur'");

for($i=0; $i<mysql_num_rows($result); $i++)
{
	$data = mysql_fetch_array($result);
	$nom_acheteur = $data['acheteur'];
	$or = $data['offre'];
	
	$result2 = mysql_query("SELECT * FROM `joueurs_stats` WHERE `nom` = '".$nom_acheteur."'");
	$data2 = mysql_fetch_array($result2);
	$or_ancien = $data2['argent'];
	$or = $or_ancien + $or;
	
	mysql_query("UPDATE `joueurs_stats` SET `argent` = '".$or."' WHERE `nom` = '".$nom_acheteur."'");
}


// faire en sorte que l'acheteur reseteur ne puisse pas récupérer son fric
mysql_query("UPDATE `foire_vente` SET `acheteur` = 'Compte supprimé' WHERE `acheteur` = '".$joueur."'");


// décrémente le nombre de joueurs dans la table guilde et vérifie si l'armada tombe en dessous du nombre de membre légal pour les guerres
$sql = "SELECT guilde FROM joueurs_bonus WHERE nom = '$joueur'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_row($req))
{
	$guilde = $data[0];
	
	$sql = "SELECT nb_membres FROM guildes WHERE nom = '$guilde'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		$sql = "UPDATE guildes SET nb_membres = '".($data[0]-1)."' WHERE nom = '$guilde'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	}
}

// pertes des messages dans la messagerie
$sql = "UPDATE messagerie SET auteur = 'Compte supprimé (".substr($joueur,0,10).")' WHERE auteur = '$joueur'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$sql = "UPDATE messagerie SET destinataire = 'Compte supprimé (".substr($joueur,0,10).")' WHERE destinataire = '$joueur'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());




//modification archive

$result = mysql_query("SELECT * FROM `combat_joueurs` WHERE `attaquant`='".$joueur."'");
$result2 = mysql_query("SELECT * FROM `combat_joueurs` WHERE `defendant`='".$joueur."'");
$nouveau_nom = "remplacant"; 

for($i=0; $i<mysql_num_rows($result); $i++)
{
	$data  = mysql_fetch_array($result);
	$defendant = $data['defendant'];
	$temps = $data['temps'];
	mysql_query("UPDATE `combat_joueurs` SET `attaquant` = '".$nouveau_nom."' WHERE `attaquant`='".$joueur."'");
}
for($i=0; $i<mysql_num_rows($result2); $i++)
{
	mysql_query("UPDATE `combat_joueurs` SET `defendant` = '".$nouveau_nom."' WHERE `defendant`='".$joueur."'");
}

$delete = mysql_query("DELETE FROM `foire_vente` WHERE `vendeur` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `guildes_inscription` WHERE `joueur` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `guildes_creation` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_aptitudes` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_aptitudes_base` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_heros` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_inventaire` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_objets` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_stats` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_batiments_id` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_créatures` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_créatures_id` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_connexions` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_terre` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_terre_utile` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_modificateurs` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_magies` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_sorts` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_bonus` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_combat` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_batspe` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `candidat_palatinat` WHERE `NOM` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `votant_palatinat` WHERE `VOTANT` = '$joueur'");
mysql_query($delete,$db);

?>

