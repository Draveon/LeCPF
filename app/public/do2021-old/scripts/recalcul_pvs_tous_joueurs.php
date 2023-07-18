<? session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];
//include("connect.php");

$serveur = (!isset($_SESSION['serveur'])) ? 2 : $_SESSION['serveur'];

$db = mysql_connect("localhost", "destinee-online", "hNme2cGR6eqmSDY5") or die (mysql_error());
mysql_select_db("Destinee02");

// Total points de vie des créatures
$pvs_crea = array();
$req = mysql_query("SELECT id, pvs FROM creatures") or die('Erreur SQL !<br>'.mysql_error());
while ($row = mysql_fetch_row($req)) {
	$pvs_crea[$row[0]] = $row[1];
}

// Liste des joueurs
$req_joueurs = mysql_query("SELECT `nom` FROM `joueurs_infos`") or die('Erreur SQL !<br>'.mysql_error());
while ($joueur = mysql_fetch_row($req_joueurs)) {
	$nom = $joueur[0];
	echo "nom du joueur : $nom <br>";
	$pvstotal = 0;
	
	$req = mysql_query("SELECT * FROM joueurs_créatures WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	
	for ($i=1; isset($dat[$i]); $i++) {
		$pvstotal += $dat[$i] * $pvs_crea[$i];
	}
	

	// On met à jour en base et on recalcule la puissance
	$sql = 'UPDATE `joueurs_modificateurs` SET `pvstotal` = '.$pvstotal.' WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	include(puissance.php);		
}

mysql_close();

echo "Success!";
?>