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

	if (($password != '') && ((md5($password) == $data['password']))) {
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
	include ("debut3.php");
	// include("menu_compte.php");
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
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso3 = $row['id'];
			$nom_perso3 = $row['nom'];
			$avatar3 = $row['avatar'];
			$_SESSION['nom_perso3'] = $row['nom'];
		}
		if ($row = mysql_fetch_assoc($result)) {
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
		}

		echo cadre_debut();
		echo '<h1>'.$_SESSION['login'].'</h1><br><br>
		<form method="post" action="selection_perso.php">
			<table>
				<tbody>
					<tr>';
		if ($nb_persos == 2) {
			echo '
						<td>
							<button name="action" value="'.$id_perso1.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar1.'" width="300" height="300" /></button>
						</td>
						<td width="200px"> </td>
						<td>
							<button name="action" value="'.$id_perso2.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar2.'" width="300" height="300" /></button>
						</td>';
		} else if ($nb_persos == 1) {
			echo '
						<td>
							<button name="action" value="'.$id_perso1.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar1.'" width="300" height="300" /></button>
						</td>';
		} else if ($nb_persos > 2) {
			echo '

							<td>
								<button name="action" value="'.$id_perso1.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar1.'" width="100" height="100" /></button>
							</td>
							<td width="100px"></td>
							<td>
								<button name="action" value="'.$id_perso2.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar2.'" width="100" height="100" /></button>
							</td>
						</tr>
						<tr>
							<td>'.$nom_perso1.'</td><td width="100px"></td><td>'.$nom_perso2.'</td>
						</tr>
						<tr>

							<td>
							<button name="action" value="'.$id_perso3.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar3.'" width="100" height="100" /></button>
							</td>
							<td width="100px"> </td>
							<td>
								<button name="action" value="'.$id_perso4.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar4.'" width="100" height="100" /></button>
							</td>
						</tr>
						<tr>
							<td>'.$nom_perso3.'</td><td width="100px"></td><td>'.$nom_perso4.'</td>
						</tr>
						<tr>
							<td>
								<button name="action" value="'.$id_perso5.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar5.'" width="100" height="100" /></button>
							</td>
							<td width="100px"> </td>
							<td>
								<button name="action" value="'.$id_perso6.'" style="border: 1px solid black; background:none; padding:0"><img src="'.$avatar6.'" width="100" height="100" /></button>
							</td>
												</tr>
						<tr>
							<td>'.$nom_perso5.'</td><td width="100px"></td><td>'.$nom_perso6.'</td>
						';
		}
		echo '
					</tr>
					<tr>';
		if ($nb_persos == 2) {
			echo '
						<td>'.$nom_perso1.'</td>
						<td></td>
						<td>'.$nom_perso2.'</td>';
		} else if ($nb_persos == 1) {
			echo '
						<td>'.$nom_perso1.'</td>';
		}
		echo '
					</tr>';
		if ($nb_persos < 2) {
			echo '	<tr><td><br><br></td></tr>
					<tr>
						<td>
							<button name="action" type="submit" value="creer1">Créer un personnage></button>
						</td>
					</tr>';
		} else if ($id_compte == 451) {
			echo '	<tr><td><br><br></td></tr>
					<tr>
						<td>
							<button name="action" type="submit" value="creer1">Créer un serviteur de Nucter></button>
						</td>
					</tr>';
		}
		echo '
				</tbody>
			</table>
		</form>';
		echo cadre_fin();

	} else {
		if ($_POST['action'] == "creer1") {
			echo cadre_debut();
			// Création d'un nouveau personnage
			include('newhero.php');
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
							<tr">
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


									<a href="/encyclopedie_races.php" target="_blank" class=btn btn-do" style="margin-top: 20px;">Voir les races</a>
									<a href="/encyclopedie_classes.php" target="_blank" class=btn btn-do" style="margin-top: 20px;">Voir les classes</a>
									<a href="/encyclopedie_dieux.php" target="_blank" class=btn btn-do" style="margin-top: 20px;">Voir les dieux</a>
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
							</tr>
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
					<div style="text-align:center;">
						<button name="action" type="submit" value="creer2">Créer</button>
					</div>
				</form>';
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


?>
<script>
console.log(<?php echo json_encode($tabRaces); ?>);
console.log(<?php echo json_encode($tabClasses); ?>);
console.log(<?php echo json_encode($tabDieux); ?>);
////////////////////////////////////////
///CHOIX DE RACE : TABLEAU d'INFOS ////
let race = document.getElementById('race');
// Nom
let oldRaceNom = "";
let newRaceNom = "";
// Attaque
let oldRaceAtt = "";
let newRaceAtt = "";
// Defense
let oldRaceDef = "";
let newRaceDef = "";
// Initiative
let oldRaceIni = "";
let newRaceIni = "";
// Charisme
let oldRaceCha = "";
let newRaceCha = "";
// Endurance
let oldRaceEnd = "";
let newRaceEnd = "";
// Puissance
let oldRacePui = "";
let newRacePui = "";
// Aptitude
let oldRaceApt = "";
let newRaceApt = "";
// Terrain fav
let oldRaceTerr = "";
let newRaceTerr = "";
// Image
let oldRaceImg = "";
let newRaceImg = "";
// race.addEventListener('change', showRace)
showRace();
function showRace() {

	let divApercu = document.getElementById('raceApercu');

		// if (
		// 	oldRaceNom.nodeType == 3 &&
		// 	oldRaceAtt.nodeType == 3 &&
		// 	oldRaceDef.nodeType == 3 &&
		// 	oldRaceIni.nodeType == 3 &&
		// 	oldRaceCha.nodeType == 3 &&
		// 	oldRaceEnd.nodeType == 3 &&
		// 	oldRacePui.nodeType == 3 &&
		// 	oldRaceApt.nodeType == 3 &&
		// 	oldRaceTerr.nodeType == 3 &&
		// 	oldRaceImg.nodeType == 3
		// ) {
		// divApercu.removeChild(oldRaceNom);
		// divApercu.removeChild(oldRaceAtt);
		// divApercu.removeChild(oldRaceDef);
		// divApercu.removeChild(oldRaceIni);
		// divApercu.removeChild(oldRaceCha);
		// divApercu.removeChild(oldRaceEnd);
		// divApercu.removeChild(oldRacePui);
		// divApercu.removeChild(oldRaceApt);
		// divApercu.removeChild(oldRaceTerr);
		// divApercu.removeChild(oldRaceImg);
		// console.log("suppression ok");
		// }
		let tabRaces = <?php echo json_encode($tabRaces); ?>;

		if (tabRaces.indexOf(race.value) != -1) {
			let i = tabRaces.indexOf(race.value);
			oldRaceNom = document.createTextNode(tabRaces[i][0].toString());
			oldRaceAtt = document.createTextNode(tabRaces[i][1].toString());
			oldRaceDef = document.createTextNode(tabRaces[i][2].toString());
			oldRaceIni = document.createTextNode(tabRaces[i][3].toString());
			oldRaceCha = document.createTextNode(tabRaces[i][4].toString());
			oldRaceEnd = document.createTextNode(tabRaces[i][5].toString());
			oldRacePui = document.createTextNode(tabRaces[i][6].toString());
			oldRaceApt = document.createTextNode(tabRaces[i][7].toString());
			oldRaceTerr = document.createTextNode(tabRaces[i][8].toString());
			oldRaceImg = document.createTextNode(tabRaces[i][9].toString());
			console.log(oldRaceAtt);
		}
			let ulApercuLeft = document.createElement('ul');
			let ulApercuRight = document.createElement('ul');
			oldRaceNom = document.createTextNode(oldRaceNom);
			oldRaceAtt = document.createTextNode(oldRaceAtt);
			oldRaceDef = document.createTextNode(oldRaceDef);
			oldRaceIni = document.createTextNode(oldRaceIni);
			oldRaceCha = document.createTextNode(oldRaceCha);
			oldRaceEnd = document.createTextNode(oldRaceEnd);
			oldRacePui = document.createTextNode(oldRacePui);
			oldRaceApt = document.createTextNode(oldRaceApt);
			oldRaceTerr = document.createTextNode(oldRaceTerr);
			oldRaceImg = document.createTextNode(oldRaceImg);
			ulApercuLeft.appendChild(oldRaceNom);
			ulApercuLeft.appendChild(oldRaceAtt);
			ulApercuLeft.appendChild(oldRaceDef);
			ulApercuLeft.appendChild(oldRaceIni);
			ulApercuLeft.appendChild(oldRaceCha);
			ulApercuLeft.appendChild(oldRaceEnd);
			ulApercuLeft.appendChild(oldRacePui);
			ulApercuLeft.appendChild(oldRaceApt);
			ulApercuLeft.appendChild(oldRaceTerr);
			ulApercuLeft.appendChild(oldRaceImg);

			divApercu.appendChild(ulApercuLeft);
			// divApercu.appendChild(ulApercuRight);


	}
</script>
