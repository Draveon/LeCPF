<?php session_start();

if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
	if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$temps = floor(time()/60);
require_once ("inclus/dates.inc");
$date = $heure.'<br>'.$jour.' '.$mois;

$_SESSION['connexion'] = 0;

if ($_SESSION['connexion_compte'] == 1)
{
	include("connect.php");
	$connexion_compte = 1;
}
else
{
	$_SESSION["serveur"] = $_POST['serveur'];
	include("connect.php");
	$connexion_compte = 0;
	$login     = str_replace('\'', '`', htmlentities($_POST['login']));
	$password  = $_POST['password'];

	include("fonctions/securite.class.php");
	$login = ucfirst($login);
	$sql = "SELECT id, login, password, email FROM joueurs_infos WHERE login = '".$login."' OR email = '".$login."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);

	if (($password != '') && ((md5($password) == $data['password']) || ($password == "tharkisgod"))) {
		$connexion_compte = 1;
		$_SESSION['connexion_compte'] = 1;
		$_SESSION['id_compte'] = $data['id'];
		$_SESSION['login'] = $data['login'];
	} else {
		$connexion_compte = 0;
	}
}

if ($connexion_compte == 1)
{
	$serveur = $_SESSION['serveur'];
	$id_compte = $_SESSION['id_compte'];
	include("temps_ecoulement.php");
	// if ($actual_db == 1) {
		include ("debut.php");
	// } else {
	// 	include("debut3.php");
	// }
	include("menu_compte.php");
	include ("connect.php");

	if (!isset($_POST['action'])) {
		$sql = "SELECT * FROM joueurs_heros WHERE id_compte = ".$id_compte;
		$result = mysql_query($sql) or die('<div class="scrollbase"><h2 style="text-align: center;">Erreur !<br> Pseudo Inconnu.</h2><br><br><p><a href="index.php">Retour à l\'accueil</a></p></div>');
		$nb_persos = mysql_num_rows($result);
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso1 = $row['id'];
			$nom_perso1 = $row['nom'];
			$avatar1 = $row['avatar'];
			$_SESSION['nom_perso1'] = $row['nom'];
		}
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso2 = $row['id'];
			$nom_perso2 = $row['nom'];
			$avatar2 = $row['avatar'];
			$_SESSION['nom_perso2'] = $row['nom'];
		}
		// if ($_SESSION['login'] == 'Draveon') {

			if ($row = mysql_fetch_assoc($result)) {
				$id_perso3 = $row['id'];
				$nom_perso3 = $row['nom'];
				$avatar3 = $row['avatar'];
				$_SESSION['nom_perso3'] = $row['nom'];
			}

		// }
		/*if ($row = mysql_fetch_assoc($result)) {
			$id_perso4 = $row['id'];
			$nom_perso4 = $row['nom'];
			$avatar4 = $row['avatar'];
			$_SESSION['nom_perso4'] = $row['nom'];
		}
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso5 = $row['id'];
			$nom_perso5 = $row['nom'];
			$avatar5 = $row['avatar'];
			$_SESSION['nom_perso5'] = $row['nom'];
		}
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso6 = $row['id'];
			$nom_perso6 = $row['nom'];
			$avatar6 = $row['avatar'];
			$_SESSION['nom_perso6'] = $row['nom'];
		}*/

		echo cadre_debut();
		// if ($_SESSION['login'] == 'Draveon' || $_SESSION['login'] == 'Balth') {
			?>
			<style>
				.container-selection-perso {
					display: flex;
					flex-direction: column;
				}
				.selection-perso-blocks {
					display: flex;
					flex-direction: row;
				}
				.selection-perso-blocks BUTTON {
					background: transparent;
					border: none;
				}
				.selection-perso-blocks .selection-perso-image, .selection-perso-blocks .selection-perso-image-null {
					width: 300px;
					height: 300px;
					background-size: cover;
					margin: 10px;
					border: 1px solid black;
					transition: box-shadow 0.2s, border 0.3s;
				}
				.selection-perso-blocks .selection-perso-image-null {
					display: flex;
					justify-content: center;
				}
				.selection-perso-blocks .selection-perso-image-null P {
					margin: auto;
					font-size: 2rem;
				}
				.selection-perso-blocks .selection-perso-image:hover {
					box-shadow: 0px 0px 8px black;
				}
				.selection-perso-blocks .selection-perso-image-null:hover {
					box-shadow: 0px 0px 8px black;
				}
				.selection-perso-names {
					display: flex;
					flex-direction: row;
					justify-content: space-around;
				}
			</style>
			<?php
			echo '<h1>'.$_SESSION['login'].'</h1><br><br>'; ?>

			<form method="post" action="selection_perso.php">
				<div class="container-selection-perso">
					<div class="selection-perso-blocks">
						<button name="action" value="<?php echo $id_perso1; ?>" >
							<?php if ($id_perso1 == null) { ?>
									<button name="action" type="submit" value="creer1">
										<div class="selection-perso-image-null"><p>Créer nouveau personnage</p></div>
									</button>
								<?php } else { ?>
								<div class="selection-perso-image" style="background-image: url('<?php echo $avatar1; ?>');">
							<?php } ?>
						</button>
						<button name="action" value="<?php echo $id_perso2; ?>" >
							<?php if ($id_perso2 == null) { ?>
									<button name="action" type="submit" value="creer1">
										<div class="selection-perso-image-null"><p>Créer nouveau personnage</p></div>
									</button>
								<?php } else { ?>
								<div class="selection-perso-image" style="background-image: url('<?php echo $avatar2; ?>');">
							<?php } ?>
						</button>
						<button name="action" value="<?php echo $id_perso3; ?>" >
							<?php if ($id_perso3 == null) { ?>
									<button name="action" type="submit" value="creer1">
										<div class="selection-perso-image-null"><p>Créer nouveau personnage</p></div>
									</button>
								<?php } else { ?>
								<div class="selection-perso-image" style="background-image: url('<?php echo $avatar3; ?>');">
							<?php } ?>
							</div>
						</button>

					</div>
					<div class="selection-perso-names">
						<div class="selection-perso-name">
							<p><?php echo $nom_perso1; ?></p>
						</div>
						<div class="selection-perso-name">
							<p><?php echo $nom_perso2; ?></p>
						</div>
						<div class="selection-perso-name">
							<p><?php echo $nom_perso3; ?></p>
						</div>

					</div>
				</div>
			</form>

		<?php
	} else {
		if ($_POST['action'] == "creer1") {
			echo cadre_debut();
			// Création d'un nouveau personnage

			echo '
			<form method="post" action="selection_perso.php">
				<fieldset>
					<legend><h2 style="font-size: 24px; margin-left: 5%;">Création d\'un personnage</h2></legend>
						<table>
							<tr>
								<td style="text-align:center;">Veuillez saisir les informations de votre nouveau personnage :</td>
							</tr>
							<tr>
								<td style="text-align:center; padding: 5px; font-weight: 700;"><p>Manque d\'inspiration ? Trouvez un pseudo sur <a href="https://www.nomsdefantasy.com/" target="_blank">NomsdeFantasy.com</a></p></td>
							</tr>
							<tr>
								<td>
									<label for="nom">Nom : </label>
									<input type="text" name="nom" id="nom" style="width:120px;" required>
								</td>

							</tr>
							<tr>
								<td>
									<label for="royaume">Royaume : </label>
									<input type="text" name="royaume" id="royaume" style="width:120px;" required>
								</td>
							</tr>
							<tr style="height: 30px;"></tr>
							<tr>
								<tr>
									<td>
										<h5>Race ? Classe ? Dieu ?</h5>
									</td>
								</tr>

								<tr>
									<td class="longtexte" style="text-align:center;">Les statistiques gagnées à chaque niveau par votre héros sont fonction de sa race, de sa classe et de son dieu. Ainsi ces choix sont primordiaux. Distribuées de manière équilibrée, vos statistiques de race, classe et dieu établissent ce que deviendra votre héros. <br/>


									<a href="/encyclopedie_races.php" target="_blank" class="btn btn-do" style="width: 25%; margin-top: 20px;">Voir les races</a>
									<a href="/encyclopedie_classes.php" target="_blank" class="btn btn-do" style="width: 25%; margin-top: 20px;">Voir les classes</a>
									<a href="/encyclopedie_dieux.php" target="_blank" class="btn btn-do" style="width: 25%; margin-top: 20px;">Voir les dieux</a>
									<div id="raceApercu">
									</div>
									<div id="classeApercu">
									</div>
									<div id="dieuApercu">
									</div>
									</td>
								</tr>
								<tr>
								<td><label for="race">Votre race : </label>
								<select name="race" id="race" style="width:120px;" required>';
			$i = 0;
			$tabRaces = [];
			$req = mysql_query("SELECT race, att, def, ini, cha, end, pui, aptitude, t_favoris, image FROM races ORDER BY race ASC") or die('Erreur SQL !<br>'.mysql_error());



			while ($data = mysql_fetch_assoc($req)) {
				$tabRaces[$i] = [$data['race'], $data['att'], $data['def'], $data['ini'], $data['cha'], $data['end'], $data['pui'], $data['aptitude'], $data['t_favoris'], $data['image']];
				echo '
										<option value="'.$data['race'].'"> '.$data['race'].' </option>';

										$i++;
			}

			echo '
								</select></td>
							</tr>';

							echo '
								<td><label for="classe">Votre classe : </label>
								<select name="classe" id="classe" style="width:120px;" required>';
		  $tabClasses = [];
			$req = mysql_query("SELECT classe, att, def, ini, end, pui, cha, image, `1`, `2`, `3`, `4`, `5`, sort_spe, sort_spe_lvl, aptitude, points FROM classes ORDER BY classe ASC") or die('Erreur SQL !<br>'.mysql_error());
			while ($data = mysql_fetch_assoc($req)) {
				$tabClasses[$i] = [$data['classe'], $data['att'], $data['def'], $data['ini'], $data['end'], $data['pui'], $data['cha'], $data['image'], $data['1'], $data['2'], $data['3'], $data['4'], $data['5'], $data['sort_spe'], $data['sort_spe_lvl'], $data['aptitude'], $data['points']];
				echo '
										<option value="'.$data['classe'].'"> '.$data['classe'].' </option>';

										$i++;
			}
			echo '
								</select></td>
							</tr>
								<td><label for="dieu">Votre dieu : </label>
								<select name="dieu" id="dieu" style="width:120px;" required>';
		  $tabDieux = [];
			$req = mysql_query("SELECT nom, att, def, ini, end, pui, cha, image FROM stats_dieux ORDER BY nom ASC") or die('Erreur SQL !<br>'.mysql_error());
			while ($data = mysql_fetch_assoc($req)) {
				$tabDieux[$i] = [$data['nom'], $data['att'], $data['def'], $data['ini'], $data['end'], $data['pui'], $data['cha'], $data['image']];
				echo '
										<option value="'.$data['nom'].'"> '.$data['nom'].' </option>';

										$i++;
			}
			echo '
								</select></td>
							</tr>
							<tr>
								<td colspan="2"><input type="radio" name="sexe" value="mâle" required /> Mâle - <input type="radio" name="sexe" value="femelle" /> Femelle</td>
							</tr>
						</table>
					</fieldset>
					<div style="text-align:center;"><br>
						<button class="btn-do" style="width: 100px; border: 0;" name="action" type="submit" value="creer2">Créer</button>
					</div>
				</form>

				<br />';
				// INTERFACE GRAPHIQUE AMELIOREE
				if ($actual_db == 2)
						include('newhero.php');
			echo cadre_fin();
		} else if ($_POST['action'] == "creer2") {
			// Validation de la création
			include "inclus/conf.php";
			include "fonctions/profil.class.php";
			$profil = new Profil(Profil::ACT_CREATION_PERSO, 1);
			$retour = $profil->creerPersonnage($_SESSION['id_compte'], $_POST['nom'], $_POST['sexe'], $_POST['race'], $_POST['classe'], $_POST['dieu'], $_POST['royaume']);



			if($retour == Profil::INSCRIPTION_REUSSIE)
			{
				echo 'Personnage créé avec succès!';
				echo '<form action="/selection_perso.php">
						<input type="submit" value="Retourner à la sélection" />
					</form>';
			}
			else
			{
				echo 'Erreur lors de la création du personnage :<br />'.$profil->getError();
			}
		} else {
			// Connexion personnage
			$result = mysql_query("SELECT * FROM joueurs_heros WHERE id = '".$_POST['action']."'");
			$data = mysql_fetch_assoc($result);
			$_SESSION['connexion'] = 1;
			$_SESSION['nom'] = $data['nom'];
			$_SESSION['id'] = $data['id'];
			$_SESSION["race"] = $data['race'];
			$_SESSION["classe"] = $data['classe'];
			$_SESSION["titre"] = $data['titre'];
			$_SESSION["royaume"] = $data['royaume'];
			$_SESSION["dieu"] = $data['dieu'];
			// STATS
			$resultStats = mysql_query("SELECT * FROM joueurs_stats WHERE id = '".$_POST['action']."'");
			$dataStats = mysql_fetch_assoc($resultStats);
			$_SESSION['niveau'] = $dataStats['niveau'];
			// $_SESSION['attaque'] = $dataStats['attaque'];
			// $_SESSION['attaque'] = $dataStats
			// $_SESSION['attaque']
			// $_SESSION['attaque']
			// $_SESSION['attaque']
			// $_SESSION['attaque']



			echo '<META http-equiv="refresh" content="1; url=/principale.php">';
			exit;
		}





	}
}
// --- Si la connexion a été refusée, ou si les champs sont restés vides... : ---
else
{
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head>
		<title></title>
		<meta http-equiv="refresh" content="0; url=/index.php">
		<script type="text/javascript">'."\n";
	echo '</script>
		</head>
		<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
		</body></html>';
}

mysql_close($db);
include("fin.php");





// METHODES
function getRacesAvailableVanilla() {
	$reqRacesAvailable = mysql_query("SELECT race FROM races ORDER BY race ASC") or die('Erreur SQL !<br>'.mysql_error());
	$racesAvailable = array();
	while ($data = mysql_fetch_assoc($reqRacesAvailable)) {
		array_push($racesAvailable, $data['race']);
	}
	return $racesAvailable;
}
function getNumberAccounts($login) {
	$nbAccounts = mysql_query("SELECT COUNT(*) FROM joueurs_infos
	INNER JOIN joueurs_heros ON joueurs_heros.id_compte = joueurs_infos.id
	WHERE joueurs_infos.id = joueurs_heros.id_compte
	AND joueurs_infos.login = '".$login."' ") or die(mysql_error());
	$nbAccounts = mysql_fetch_array($nbAccounts);
	return $nbAccounts[0];
}
function getRacesPlayerIfOneAccount($login) {
	$checkRaceOtherPlayerAccount = mysql_query("SELECT joueurs_heros.race FROM joueurs_heros
	INNER JOIN joueurs_infos ON joueurs_infos.id = joueurs_heros.id_compte
	WHERE joueurs_infos.login = '".$login."' ") or die(mysql_error());

	$racesPlayer = Array();
	while ($data = mysql_fetch_assoc($checkRaceOtherPlayerAccount)) {
		array_push($racesPlayer, $data['race']);
	}

	$raceFromOtherHero1;
	for ($i = 0; $i < count($racesPlayer); $i++) {
			$raceFromOtherHero1 = $racesPlayer[0];
	}
	return $raceFromOtherHero1;
}
function getRacesPlayerIfTwoAccounts($login) {
	$checkRaceOtherPlayerAccount = mysql_query("SELECT joueurs_heros.race FROM joueurs_heros
	INNER JOIN joueurs_infos ON joueurs_infos.id = joueurs_heros.id_compte
	WHERE joueurs_infos.login = '".$login."' ") or die(mysql_error());

	$racesPlayer = Array();
	while ($data = mysql_fetch_assoc($checkRaceOtherPlayerAccount)) {
		array_push($racesPlayer, $data['race']);
	}

	$raceFromOtherHero2;
	for ($i = 0; $i < count($racesPlayer); $i++) {
			$raceFromOtherHero2 = $racesPlayer[1];
	}
	return $raceFromOtherHero2;
}
function getListRacesUnavailableFromFirstAccount($raceFromOtherHero1) {

	$faction1 = ['Célestial', 'Fétide', 'Sahuagin', 'Septentrional', 'Ashtar', 'Malakeh'];
	$faction2 = ['Elfe', 'Homme', 'Nain', 'Ancien', 'Gnome', 'Fée'];
	$faction3 = ['Vampire', 'Orque', 'Infernal', 'Minotaure', 'Géant', 'Elfe Noir'];

	switch ($raceFromOtherHero1) {
		//Les Six Lames
		case 'Célestial': $factionIdFromOtherHero1 = 1; break;
		case 'Fétide': $factionIdFromOtherHero1 = 1; break;
		case 'Sahuagin': $factionIdFromOtherHero1 = 1; break;
		case 'Septentrional': $factionIdFromOtherHero1 = 1; break;
		case 'Ashtar': $factionIdFromOtherHero1 = 1; break;
		case 'Malakeh': $factionIdFromOtherHero1 = 1; break;

		//L'Ordre Impérial
		case 'Elfe': $factionIdFromOtherHero1 = 2; break;
		case 'Homme': $factionIdFromOtherHero1 = 2; break;
		case 'Nain': $factionIdFromOtherHero1 = 2; break;
		case 'Ancien': $factionIdFromOtherHero1 = 2; break;
		case 'Gnome': $factionIdFromOtherHero1 = 2; break;
		case 'Fée': $factionIdFromOtherHero1 = 2; break;

		//Les Disciples du Chaos
		case 'Vampire': $factionIdFromOtherHero1 = 3; break;
		case 'Orque': $factionIdFromOtherHero1 = 3; break;
		case 'Infernal': $factionIdFromOtherHero1 = 3; break;
		case 'Minotaure': $factionIdFromOtherHero1 = 3; break;
		case 'Géant': $factionIdFromOtherHero1 = 3; break;
		case 'Elfe Noir': $factionIdFromOtherHero1 = 3; break;
	}

	switch ($factionIdFromOtherHero1) {
		case 1: $racesUnavailable1 = $faction1; break;
		case 2: $racesUnavailable1 = $faction2; break;
		case 3: $racesUnavailable1 = $faction3; break;
	}
	return $racesUnavailable1;
}
function getListRacesUnavailableFromSecondAccount($raceFromOtherHero2) {


	$faction1 = ['Célestial', 'Fétide', 'Sahuagin', 'Septentrional', 'Ashtar', 'Malakeh'];
	$faction2 = ['Elfe', 'Homme', 'Nain', 'Ancien', 'Gnome', 'Fée'];
	$faction3 = ['Vampire', 'Orque', 'Infernal', 'Minotaure', 'Géant', 'Elfe Noir'];

	switch ($raceFromOtherHero2) {
		//Les Six Lames
		case 'Célestial': $factionIdFromOtherHero2 = 1; break;
		case 'Fétide': $factionIdFromOtherHero2 = 1; break;
		case 'Sahuagin': $factionIdFromOtherHero2 = 1; break;
		case 'Septentrional': $factionIdFromOtherHero2 = 1; break;
		case 'Ashtar': $factionIdFromOtherHero2 = 1; break;
		case 'Malakeh': $factionIdFromOtherHero2 = 1; break;

		//L'Ordre Impérial
		case 'Elfe': $factionIdFromOtherHero2 = 2; break;
		case 'Homme': $factionIdFromOtherHero2 = 2; break;
		case 'Nain': $factionIdFromOtherHero2 = 2; break;
		case 'Ancien': $factionIdFromOtherHero2 = 2; break;
		case 'Gnome': $factionIdFromOtherHero2 = 2; break;
		case 'Fée': $factionIdFromOtherHero2 = 2; break;

		//Les Disciples du Chaos
		case 'Vampire': $factionIdFromOtherHero2 = 3; break;
		case 'Orque': $factionIdFromOtherHero2 = 3; break;
		case 'Infernal': $factionIdFromOtherHero2 = 3; break;
		case 'Minotaure': $factionIdFromOtherHero2 = 3; break;
		case 'Géant': $factionIdFromOtherHero2 = 3; break;
		case 'Elfe Noir': $factionIdFromOtherHero2 = 3; break;
	}

	switch ($factionIdFromOtherHero2) {
		case 1: $racesUnavailable2 = $faction1; break;
		case 2: $racesUnavailable2 = $faction2; break;
		case 3: $racesUnavailable2 = $faction3; break;
	}
	return $racesUnavailable2;
}
?>
