<?php


$temps = floor(time()/60);

echo '	';


$id = $_SESSION['id'];
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION["classe"];
$titre = $_SESSION["titre"];
$royaume = $_SESSION["royaume"];
$dieu = $_SESSION["dieu"];


// données reliées au perso lui-même
	$req  = mysql_query("SELECT population, population2 FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$pop	  = $data[0];	// après mise à jour
	$pop2     = $data[1];	// après mise à jour
	$population = $pop;
	// données reliées au perso terminées

	$req = mysql_query("SELECT `but`, `niveau`, `att`, `def`, `ini`, `end`, `pui`, `cha`, `puissance`, `score` FROM `joueurs_stats` WHERE nom ='$nom'") or die('Erreur SQL  300 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$but	= $data[0];
	$niveau	= $data[1];
	$att	= $data[2];
	$def	= $data[3];
	$ini	= $data[4];
	$end	= $data[5];
	$pui	= $data[6];
	$cha	= $data[7];
	$puissance = $data[8];
	$score = $data[9];
	// FIN PASSAGE DE NIVEAU

$req = mysql_query("SELECT avatar FROM joueurs_heros WHERE nom = '".$_SESSION['nom']."'") or die('Erreur SQL 358 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$avatar = $data[0];

$reqFactionID = mysql_query('SELECT faction_id FROM factions_membres WHERE id_membre = '.$id. '');
$data = mysql_fetch_row($reqFactionID);
$idFaction = $data[0];

$req = mysql_query('SELECT nom FROM factions INNER JOIN factions_membres ON factions_membres.faction_id = factions.id WHERE factions_membres.faction_id = '.$idFaction.' ');
$data = mysql_fetch_row($req);
$faction = $data[0];

// On floor les stats
$att = floor($att);
$def = floor($def);
$ini = floor($ini);
$end = floor($end);
$pui = floor($pui);
$cha = floor($cha);

$pop	= number_format($pop, 0, ",", " ");
$pop_affiche = '<span>'.$pop.'</span>';

$pop1 = $pop + $pop2;



		$connexion = 1;
		$nom = $_SESSION['nom'];
		$titre = $_SESSION['titre'];
		$royaume = $_SESSION['royaume'];

		include("connect.php");
		$sql = "SELECT * FROM joueurs_stats WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		mysql_close();

		$niveau = $data[2];
		$puissance = number_format($data[3], 0, ",", " ");
		$exp = number_format($data[4], 0, ",", " ");
		$but = number_format($data[5], 0, ",", " ");
		$mana = number_format($data[12], 0, ",", " ");
		$argent = number_format($data[15], 0, ",", " ");

		include ('classement_cache.php');
	if ((strlen($jmasques) > 0) && (substr($jmasques,0,4) != "AND "))
		$jmasques = "AND ".$jmasques;
	$req = mysql_query("SELECT COUNT(id) FROM joueurs_infos WHERE score > '$score'") or die('Erreur SQL 372 !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$rang = $dat[0]+1;


// AFFICHAGE DE LA PAGE


	echo '
	<div class="container-fluid col-12" style="
	/*margin-right: -15px;
    margin-left: -15px;*/
    ">
    <div class="row scroll_background">
		<div class="col-md-12">
			<div class="row shadow player_stats"><p style="margin: 0 auto;">Niveau : '.$niveau.' | Puissance : '.$puissance.' | Xp : '.$exp.'/ '.$but.' | Pièces d\'or : '.$argent.' | Mana : '.$mana.' | Rang : '.$rang.'</p></div>
			<h2 class="shadow p-3 mb-2 rounded">'.$nom.', '.$titre.' '.$royaume.'</h2>
		</div>
		<div class="panel_perso">

		</div>
		<div class=" col-sm-6 col-md-6 pl-5 pt-2 pb-5 personnage">

			<div class="row">
				<div avatar class="col-md-6 text-center"><img class="imgprincipale rounded-circle" src="'.$avatar.'" /></div>
				<div class="col-md-6 infos_perso">
					<ul>
						<li class="attr_race pb-3">Race: <span>'.$race.'</span></li>
						<li class="attr_classe pb-3">Classe: <span>'.$classe.'</span></li>
						<li class="attr_dieu pb-3">Dieu: <span>'.$dieu.'</span> </li>
						<li class="attr_dieu pb-3">Faction: <br/>
							<a href="faction.php"><span>'.$faction.'</span>
			    			</a>
						</li>
					</ul>
				</div>
			</div>

		</div>

		<div class="col-sm-6 col-md-6 pl-5 pt-2 pb-5 pr-5 text-center caracteristiques">


			<div class="col-md-12">
					<div class="row pb-3">
							<div class="col-md-6">Attaque: <span>'.$att.'</span></div>
							<div class="col-md-6">Puissance: <span>'.$pui.'</span></div>
					</div>
					<div class="row pb-3">
							<div class="col-md-6">Défense: <span>'.$def.'</span></div>
							<div class="col-md-6">Endurance: <span>'.$end.'</span></div>
					</div>
					<div class="row pb-3">
							<div class="col-md-6">Initiative: <span>'.$ini.'</span></div>
							<div class="col-md-6">Charisme: <span>'.$cha.'</span></div>
					</div>
			</div>
			<div class="row pt-4 border-top">
					<p class="col-md-6">Population: '.$pop_affiche.'</p>
					<p class="col-md-6">Prisonniers: '.$pop2.'</p>
			</div>
		</div>
		</div>
	</div>

';
