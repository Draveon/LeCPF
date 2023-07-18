<?php
session_start ();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---


if (! isset ( $_SESSION ['connexion'] ) or $_SESSION ['connexion'] == 0) {
	if (! isset ( $_POST ['nom'] )) {
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit ();
	}
}

$meta_supp = '<script language="javascript">
<!--
function checkterrain (terrain)
{
	document.getElementById(terrain).checked = true;
	document.getElementById(\'lnk\'+terrain).blur();
	document.getElementById(\'nombre\').focus();
}
//-->
</script>
';

include ("debut.php");
include ("menu.php");
entete ( "Exploration" );

$nom = $_SESSION ['nom'];
$race = $_SESSION ['race'];
$classe = $_SESSION ['classe'];

if (! isset ( $_POST ['etape'] ) or ! isset ( $_POST ['terrain'] ) or ! isset ( $_POST ['investissement'] ) or ! isset ( $_SESSION ['combat_creature'] ) or $_SESSION ['combat_creature'] == 1) {
	include ("connect.php");
	
	if( $_SESSION ['combat_creature'] != 3 )
	{
		$_SESSION ['combat_creature'] = 0;
	}
	$req = mysql_query ( "SELECT riverain, colline, `désert`, `forêt`, arctique, marais, montagne, plaine, caverne FROM joueurs_terre WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
	$data2 = mysql_fetch_row ( $req );
	$req = mysql_query ( "SELECT riverain, colline, `désert`, `forêt`, arctique, marais, montagne, plaine, caverne FROM joueurs_terre_utile WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
	$data4 = mysql_fetch_row ( $req );
	$req = mysql_query ( "SELECT riverain, colline, `désert`, `forêt`, arctique, marais, montagne, plaine, caverne FROM joueurs_modificateurs WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
	$jmodific = mysql_fetch_row ( $req );
	
	$sql = "SELECT niveau, xp, but, att, def, ini, cha, end, pui, argent FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query ( $sql ) or die ( 'Erreur SQL !<br>' . $sql . '<br>' . mysql_error () );
	$data = mysql_fetch_row ( $req );
	$niveau = $data [0];
	$xp = $data [1];
	$but = $data [2];
	$argent = number_format ( $data [3], 0, ",", " " );
	
	if ($xp > $but) {
		include_once ("maj_or_mana.php");
		passedeniveau ( $nom );
	}
	
	mysql_close ();
	
	echo '<form method="post" action="exploration.php" id="form1">
        <table class="localtable630"><tbody>';


	$aide =	"<h2>L'exploration</h2>
        <ul>
        <li>augmente le nombre d'acres disponibles,ce qui permet de :<ul>
        <li>construire des bâtiments</li>
        <li>augmente la population</li>
        <li>permet de subir l'attaque d'un ennemi sans qu'il vous détruise un bâtiment</li>
        </ul></li>
        <li>le nombre d'âcres trouvées :
        <ul>
        <li>est supérieur à celui de la pacification</li>
        <li>augmente avec les pièces d'or investies</li>
        <li>diminue avec le nombre d'âcres déjà présentes sur le type de terrain</li>
        <li>augmente avec le coefficient du terrain</li>
        <li>augmente avec le pourcentage en exploration et découverte qui dépend :<ul>
        <li>de la province</li>
        <li>des objets équipés depuis 24h</li>
        </ul></li>
        <li>varie en fonction du hasard</li>
        </ul></li>
        </ul></li>
        </ul></li>
        </ul>
        ";
        
        echo '<tr><td colspan="3"><br><br><div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher l\'aide</a></div>';
	echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher l\'aide</a><br><br><div style="font-family:default;text-align: left;">'.$aide.'</div></div></td></tr>';

	echo	'<tr>	<td colspan="3"><h2>Choisir un type de terrain...</h2></td></tr>
		<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'riverain\');"	id="lnkriverain">	<input type="radio" name="terrain" value="riverain"	id="riverain">	<b>Riverain</b>	(' . number_format ( $jmodific [0], 1 ) . ')<br><img src="images/terrain/aquatique.gif" 	border=0><br>Acres libres : ' . number_format ( $data2 [0] - $data4 [0], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [0], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'colline\');"	id="lnkcolline">	<input type="radio" name="terrain" value="colline"	id="colline">	<b>Colline</b>	(' . number_format ( $jmodific [1], 1 ) . ')<br><img src="images/terrain/colline.gif"	border=0><br>Acres libres : ' . number_format ( $data2 [1] - $data4 [1], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [1], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'désert\');"	id="lnkdésert">		<input type="radio" name="terrain" value="désert"	id="désert">	<b>Désert</b>	(' . number_format ( $jmodific [2], 1 ) . ')<br><img src="images/terrain/desert.gif"	border=0><br>Acres libres : ' . number_format ( $data2 [2] - $data4 [2], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [2], 0, ",", " " ) . '<br></a></td>	</tr>
		<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'forêt\');"	id="lnkforêt">		<input type="radio" name="terrain" value="forêt"	id="forêt">	<b>Forêt</b>	(' . number_format ( $jmodific [3], 1 ) . ')<br><img src="images/terrain/foret.gif"	border=0><br>Acres libres : ' . number_format ( $data2 [3] - $data4 [3], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [3], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'arctique\');"	id="lnkarctique">	<input type="radio" name="terrain" value="arctique"	id="arctique">	<b>Arctique</b>	(' . number_format ( $jmodific [4], 1 ) . ')<br><img src="images/terrain/arctique.gif"	border=0><br>Acres libres : ' . number_format ( $data2 [4] - $data4 [4], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [4], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'marais\');"	id="lnkmarais">		<input type="radio" name="terrain" value="marais"	id="marais">	<b>Marais</b>	(' . number_format ( $jmodific [5], 1 ) . ')<br><img src="images/terrain/marais.gif" 	border=0><br>Acres libres : ' . number_format ( $data2 [5] - $data4 [5], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [5], 0, ",", " " ) . '<br></a></td>	</tr>
		<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'montagne\');"	id="lnkmontagne">	<input type="radio" name="terrain" value="montagne"	id="montagne">	<b>Montagne</b>	(' . number_format ( $jmodific [6], 1 ) . ')<br><img src="images/terrain/montagne.gif" 	border=0><br>Acres libres : ' . number_format ( $data2 [6] - $data4 [6], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [6], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'plaine\');"	id="lnkplaine">		<input type="radio" name="terrain" value="plaine"	id="plaine">	<b>Plaine</b>	(' . number_format ( $jmodific [7], 1 ) . ')<br><img src="images/terrain/plaine.gif" 	border=0><br>Acres libres : ' . number_format ( $data2 [7] - $data4 [7], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [7], 0, ",", " " ) . '<br></a></td>
			<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'caverne\');"	id="lnkcaverne">	<input type="radio" name="terrain" value="caverne"	id="caverne">	<b>Caverne</b>	(' . number_format ( $jmodific [8], 1 ) . ')<br><img src="images/terrain/caverne.gif" 	border=0><br>Acres libres : ' . number_format ( $data2 [8] - $data4 [8], 0, ",", " " ) . '<br>Acres totaux : ' . number_format ( $data2 [8], 0, ",", " " ) . '<br></a></td>	</tr>
		</tbody></table><br>
		Définir l\'investissement souhaité : <input type="text" name="investissement" size="5" id="nombre"> pièces d\'or.
		<br><br>
		<input type="hidden" name="etape" value="1">
		<input type="submit" value="Explorer >>"><br><br>
		~ <a href="abandonner.php" title="Abandonner des terres">Abandonner des terres</a> ~';
} else {
	
	if (((isset ( $_POST ['etape'] )) && ($_POST ['etape'] == 1)) or $_SESSION ['combat_creature'] == 2) {
		include ("connect.php");
		$temps = floor ( time () / 60 );
		$_SESSION ['combat_creature'] = 3;
		
		$investissement = round ( $_POST ['investissement'] );
		$investissement_frais = max ( 0, $investissement - 50 );
		
		$terrain = $_POST ['terrain'];
		$type_terrain = ucfirst ( $terrain );
		if (! in_array ( $terrain, array ('riverain', 'colline', 'désert', 'forêt', 'arctique', 'marais', 'montagne', 'plaine', 'caverne' ) )) {
			mysql_close ();
			include ("fin.php");
			die ( "Quelles est la différence entre un corbeau?" );
		}
		
		echo "Frais d'expédition : <strong>50 pièces d'or</strong><br>
			Investissement : <strong>$investissement_frais pièces d'or</strong><br>
			Type de terrain : <strong>$type_terrain</strong><br><br>";
		
		// mise à jour de la page des joueurs connectés
		$req = mysql_query ( "UPDATE `joueurs_connexions` SET `connexion_dernière` = '" . $temps . "' WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		
		$req = mysql_query ( "SELECT niveau, argent FROM joueurs_stats WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$data = mysql_fetch_row ( $req );
		$argent = $data [1];
		$niveau = $data [0];
		$req = mysql_query ( "SELECT `" . $terrain . "`, total FROM joueurs_terre WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$data = mysql_fetch_row ( $req );
		$terre = $data [0];
		$total_t = $data [1];
		$terre_combat = $terre;
		$req = mysql_query ( "SELECT `" . $terrain . "` FROM joueurs_terre_utile WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$data = mysql_fetch_row ( $req );
		$terre_utile = $data [0];
		$req = mysql_query ( "SELECT `" . $terrain . "`, pvstotal, population, `terres` FROM joueurs_modificateurs WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$data = mysql_fetch_array ( $req );
		$modificateur_race = $data [0];
		$pvstotal = $data [1];
		$population = $data [2];
		$mod_obj_terres = $data [3];
		$req = mysql_query ( "SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$jbonus = mysql_fetch_assoc ( $req );
		$province = $jbonus ['province'];
		$politique = $jbonus ['politique'];
		if ($jbonus ['province'] == 'Aucune')
			$sql = "SELECT politiques_effets.exploration AS prov_batiment FROM politiques_effets WHERE politiques_effets.politique = '" . $jbonus ['politique'] . "'";
		else
			$sql = "SELECT politiques_effets.exploration + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '" . $jbonus ['politique'] . "' AND batiment_province.province = '" . $jbonus ['province'] . "' AND batiment_province.nom = 'Maître cartographe'";
		$req = mysql_query ( $sql ) or die ( 'Erreur SQL !<br>' . $sql . '<br>' . mysql_error () );
		$data = mysql_fetch_row ( $req );
		$mod_explo_province = $data [0];
		
		$sql = "SELECT `9`, `20`, `25` FROM joueurs_aptitudes WHERE nom = '$nom'";
		$req = mysql_query ( $sql ) or die ( 'Erreur SQL !<br>' . $sql . '<br>' . mysql_error () );
		$data = mysql_fetch_assoc ( $req );
		$manipulation = $data ["20"];
		
		// test pour savoir si ya vraiment explo
		$mod_random = mt_rand ( 650, 1000 );
		$mod_terraindeja = max ( 3, $terre / 3 );
		$couts = max ( 1, round ( $mod_terraindeja / $mod_random / $modificateur_race / $mod_explo_province / $mod_obj_terres ) );
		$erreur = 0;
		if ($argent < $investissement) {
			$erreur = 1;
			echo "<br>Vous ne disposez pas d'une somme suffisante pour effectuer l'exploration des terres désirées. <br><br>";
		} elseif ($investissement < $couts) {
			$erreur = 1;
			echo "<br>Malheureusement, la recherche de nouvelles terres nécessite un investissement plus important. <br><br>";
		} elseif ($investissement < 51) {
			$erreur = 1;
			echo "<br>En raison des frais de départ de 50 pièces d'or, vous devrez investir un montant supérieur<br>afin d'espérer participer à une exploration profitable. <br><br>";
		}
		if ($erreur == 1) {
			mysql_close ();
			include ("fin.php");
			exit ();
		} 

		else {
			$text = "";
			$bop = 0;
			$argent -= $investissement;
			$investissement = $investissement - 50;
			// Manipulation
			if ($manipulation > 0) {
				$investissement = round($investissement * (1 + ($manipulation / 100)));
				echo '<div align="center"><img src="/images/aptitudes/manipulation.gif" width="20" height="30" border=1 align="center"><small><strong> Manipulation :</strong> Votre investissement est augmenté à '.$investissement.' pièces d\'or !</small></div>';
			}
			// cette boucle sert a savoir combien on explore effectivement de terrains
			while ( $investissement >= $couts ) {
					$investissement -= $couts;
					$terre ++;
					$bop ++;
					$mod_terraindeja = max ( 3, $terre / 3 );
					$couts = max ( 1, round ( $mod_terraindeja / $mod_random / $modificateur_race / $mod_explo_province / $mod_obj_terres ) );
			}
		}
		$nbrAcreExplo = $bop;
	
		include ("connect.php");
		$req = mysql_query ( "SELECT total FROM joueurs_terre WHERE nom = '" . $nom . "'" ) or die ( 'Erreur SQL !<br>' . mysql_error () );
		$data = mysql_fetch_row ( $req );
		$total = $data [0];
		
		$total = $total + $bop;
		$terre_total = $total;
		
		$sql = "UPDATE `joueurs_stats` SET `argent` = '$argent' WHERE nom ='$nom'";
		$req = mysql_query ( $sql ) or die ( 'Erreur SQL !<br>' . $sql . '<br>' . mysql_error () );
		$sql = "UPDATE `joueurs_terre` SET `$terrain` = '$terre', `total` = '$total' WHERE nom ='$nom'";
		$req = mysql_query ( $sql ) or die ( 'Erreur SQL !<br>' . $sql . '<br>' . mysql_error () );
		
		include_once("puissance.php");
		maj_puissance($nom);
		
		mysql_close ();
		
		$terre = $terre - $terre_utile;
		$terre = number_format ( $terre, 0, ",", " " );
		$bop = number_format ( $bop, 0, ",", " " );
		
		switch ($terrain) {
			case 'riverain' :
				$terrain = "d'eau calme et prolifique";
				$image = "<img src='images/terrain/aquatique.gif' border=0>";
				break;
			case 'colline' :
				$terrain = "de collines verdoyantes";
				$image = "<img src='images/terrain/colline.gif' border=0>";
				break;
			case 'désert' :
				$terrain = "de terres désertiques";
				$image = "<img src='images/terrain/desert.gif' border=0>";
				break;
			case 'forêt' :
				$terrain = "de forêt luxuriante";
				$image = "<img src='images/terrain/foret.gif' border=0>";
				break;
			case 'arctique' :
				$terrain = "de terres arctiques";
				$image = "<img src='images/terrain/arctique.gif' border=0>";
				break;
			case 'marais' :
				$terrain = "de marais";
				$image = "<img src='images/terrain/marais.gif' border=0>";
				break;
			case 'montagne' :
				$terrain = "de terres montagneuses";
				$image = "<img src='images/terrain/montagne.gif' border=0>";
				break;
			case 'plaine' :
				$terrain = "de plaines";
				$image = "<img src='images/terrain/plaine.gif' border=0>";
				break;
			case 'caverne' :
				$terrain = "de cavernes, de grottes et de sous-terrains";
				$image = "<img src='images/terrain/caverne.gif' border=0>";
				break;
		}
		
		echo "$image";
		if ($text != "")
			echo "&nbsp;&nbsp;&nbsp;&nbsp;$image2<br><br>$text";
		else
			echo "<br><br>";
		echo "Vous êtes heureux d'apprendre que vos explorations furent effectuées<br>
			avec succès et sans encombres majeures, vos hommes ayant découvert près<br>
			de <strong>$bop acres de terres libres.</strong> Votre royaume compte maintenant près de<br>
			<strong>$terre acres $terrain.</strong><br>&nbsp;";
		
		echo '<br><form method="post" action="exploration.php" id="form1">
			<input type="hidden" name="terrain" value="' . $_POST ['terrain'] . '">
			<input type="hidden" name="investissement" value="' . $_POST ['investissement'] . '">
			<input type="hidden" name="etape" value="1">
			<input type="submit" value="Explorer à nouveau >>">
			</form>';
	
	}
}

$ifpubgoogle = false;
include ("fin.php");
