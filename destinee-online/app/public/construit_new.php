<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}
include "connect.php";


function close_popup ($message='')
{
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
	<body onload="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">';
	if ($message != '')
	{
		echo '
		<SCRIPT LANGUAGE="JavaScript">
		<!--
		alert(\''.$message.'\');
		// -->
		</SCRIPT>
		';
	}
}

// *** *** *** Construction d'un bâtiment
function construitBatSpe ($id, &$erreur)
{
	global $nom, $tableBatSpe, $tableBatJoueurs, $batSpeConstr, $nbrBatSpe, $nbrBatAuth, $nivRestriction;
	
	$sql = "SELECT `niveau` FROM `joueurs_stats` WHERE `nom` = '$nom'";
	$res = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($res);
	$niveau = $data[0];
	
	// nombre de bâtiments déjà construits
	if (($nbrBatSpe >= $nbrBatAuth) || ($niveau + ($nbrBatAuth-$nbrBatSpe) <= $nivRestriction))
	{
		$erreur .= 'Vous ne pouvez bâtir de bâtiment spécial en ce moment, vous n\'avez pas le niveau requis.';
		return false;
	}
	
	$req = mysql_query("SELECT `nom`, `type`, `multiple`, `affiche`,  `requis`, `bnum1`, `bnum2`, `bfloat1`, `bfloat2`, `btxt1`, `btxt2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		$level = $batSpeConstr[$id];
		if (($data['affiche'] == 1) && (($data['multiple']!=0) || (($data['multiple']==0)&&($level != 0))))
		{
			// check si les prérequis du bâtiment sélectionné sont bien là
			$authorised = false;
			$sqlconstr = '';
			$j = 1;
			while (isset($batSpeConstr[$j]))
			{
				if ($batSpeConstr[$j] != 0)
				{
					$sqlconstr .= ' `requis` LIKE \''.$j.'\' OR';
					$sqlconstr .= ' `requis` LIKE \''.$j.',%\' OR';
					$sqlconstr .= ' `requis` LIKE \'%,'.$j.'\' OR';
					$sqlconstr .= ' `requis` LIKE \'%,'.$j.',%\' OR';
				}
				$j++;
			}
			$sqlconstr .= ' `requis` = \'\' ';
			
			$sql2 = "SELECT `id` FROM `$tableBatSpe` WHERE `affiche` = '1' AND ( $sqlconstr ) ORDER BY `branche` ASC, `niveau` ASC, `type` DESC, `id` ASC";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			while ($dat2 = mysql_fetch_assoc($req2))
				if ($dat2['id'] == $id)
					$authorised = true;
			
			if ($authorised)
			{
				// ajout des bonus
				for ($i=1; $i<=2; $i++)
				{
					$dbtable = $data['tablename'.$i];
					$dbfield = $data['bfield'.$i];
					$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
					$bonus = getBonusLevel ($bonus, $level+1) - getBonusLevel ($bonus, $level);
					if ((strlen($dbtable) > 0)&&(strlen($dbfield) > 0)&&($bonus != 0))
					{
						$sql = "UPDATE `$dbtable` SET `$dbfield` = `$dbfield` + '$bonus' WHERE `nom` = '$nom'";
						mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
//							echo $sql.'<br>';
						// cas des caractéristiques: il faut augmenter le bonus mais aussi la stat!!!
						if (($dbtable == 'joueurs_bonus')&&(in_array($dbfield, array('att','def','ini','end','pui','cha'))))
						{
							$sql = "UPDATE `joueurs_stats` SET `$dbfield` = `$dbfield` + '$bonus' WHERE `nom` = '$nom'";
							mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						}
						// cas des aptitudes: le nombre de points disponibles reste inchangé: rien à faire
					}
				}
				
				// hausse du niveau du batiment
				$sql = "UPDATE `$tableBatJoueurs` SET `$id` = `$id` + '1' WHERE `nom` = '$nom'";
				mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				
				return true;
			}
		}
	}
	else
	{
		$erreur .= 'Le bâtiment sélectionné n\'existe pas. ';
	}
	
	$erreur .= ' Le problème peut être causé par l\'une des raisons suivantes: le bâtiment demandé n\'est pas disponible, les mises à niveau ne sont pas permises pour ce bâtiment, le joueur n\'existe pas, le bâtiment désiré requiert la présence d\'un autre batiment qui n\'est pas en votre possession.';
	return false;
}

// cette fonction remplace un sort d'un joueur à la position $slot et incrémente le nombre de sorts total
function remplace_sort ($slot, $sortId)
{
	global $nom;
	
	// id de l'ancien sort
	$sql = "SELECT `$slot`, `nombre` FROM `joueurs_sorts` WHERE `nom` = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$idOld = $data[0];
	$nombre_sorts = $data[1];
	if ($idOld != 0) {
		// désincantation de l'ancien sort
		$sql = "UPDATE `joueurs_magies` SET `$idOld` = '0' WHERE `nom` = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	} else {
		// il s'agit d'un nouveau sort
		$nombre_sorts++;
	}
	
	$sql = "UPDATE `joueurs_sorts` SET `nombre` = $nombre_sorts, `$slot` = '$sortId' WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	return true;
}


$terrain = (isset($_GET['terrain'])) ? $_GET['terrain'] : '';
$type = ((isset($_GET['type']))&&(in_array($_GET['type'], array(1,2,3)))) ? $_GET['type'] : 1;
$id = ((isset($_GET['id']))&&(is_numeric($_GET['id']))) ? $_GET['id'] : '';
if ((($type==1)||($type==2)) && (!in_array($_GET['terrain'], array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne'))))
	die ('Deux femmes qui discutent :<br>- Et votre bébé, comment va-t-il ?<br>- Très bien! Il marche depuis deux mois.<br>- Ho ! hé bien, il doit être loin à l\'heure qu\'il est...');

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];
$erreur = 0;
$manquant = ($id!='') ? 0 : 1;
$new = true;
	

// check pour les tours de magie
if (($type==2)&&($id == 1 || $id == 2 || $id == 3 || $id == 4 || $id == 5))
{
	$sql = "SELECT * FROM joueurs_batiments_id WHERE nom='".$nom."'";
	$result = mysql_query($sql);
	$data = mysql_fetch_assoc($result);
	$Tour1 = $data['1'];
	$Tour2 = $data['2'];
	$Tour3 = $data['3'];
	$Tour4 = $data['4'];
	$Tour5 = $data['5'];

	if ($Tour5 == "0")
	{
		if (($id == 5) && (($Tour4 == "0")||($Tour3 == "0")||($Tour2 == "0")||($Tour1 == "0")))
			$manquant = 1;
		else if ($Tour4 == "0")
		{
			if (($id == 4) && (($Tour3 == "0")||($Tour2 == "0")||($Tour1 == "0")))
				$manquant = 1;
			else if ($Tour3 == "0")
			{
				if (($id == 3) && (($Tour2 == "0")||($Tour1 == "0")))
					$manquant = 1;
				else if ($Tour2 == "0")
				{
					if (($id == 2) && ($Tour1 == "0"))
						$manquant = 1;
				}
			}
		}
	}
}

if ($manquant == 0)
{
	$req = mysql_query("SELECT cha, argent FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$argent = $data[1];
	$mod_charisme = 2 / pow(($data[0] + 20), 1/5);

	$req = mysql_query("SELECT `".$terrain."` FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mod_terrain = $data[0];

	$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$jbonus = mysql_fetch_assoc($req);
	if ($jbonus['province'] == 'Aucune')	$sql = "SELECT politiques_effets.batiments AS prov_batiment FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
	else					$sql = "SELECT politiques_effets.batiments + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '".$jbonus['politique']."' AND batiment_province.province = '".$jbonus['province']."' AND batiment_province.nom = 'Etude d''architecte'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mod_province = $data[0];
	
	if ($type==1 || $type==2)
	{
		$sql = "SELECT id, cout_batiment, nombre, espace FROM creatures WHERE id = '$id' AND constructible = '1'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$cout = ceil($data[1] / $mod_terrain / $mod_province * $mod_charisme);
		$cr = ceil($data[2] / 2);
		$espace = ceil($data[3] / $mod_terrain / $mod_province);
	}
	if ($type==3)
	{
		include ('batimentspec_include.php');
		$cout = ceil($batspe[$id]['cout_or'] * $mod_charisme);
		$cr = 0;
		$espace = 0;
	}
	

	$req = mysql_query("SELECT `".$terrain."` FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$terre_ = mysql_fetch_row($req);
	$req = mysql_query("SELECT `".$terrain."` FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$terre_utile = mysql_fetch_row($req);
	$terre = $terre_[0] - $terre_utile[0];
	
	$req = mysql_query("SELECT * FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$batiments = mysql_fetch_assoc($req);

	
	if ($type==2)
	{
		$req = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		if ($data[$id] != '0')
			$new = false;
		
		if (!$new) {
			$espace = 0;
			include("construire_magie_include.php");
			$nb_modif = $nb_new = 0;
			$sorts_new = array();
			for ($i=0; $i<$nombre; $i++)
			{
				if ((isset($_GET['sort'.$i])) && ($_GET['sort'.$i]!='-1'))
				{	// pour chaque boite select, si le sort a été choisi et pas en doublon, on continue
					// On regarde si il s'agit d'une modification ou d'un nouveau sort					
					if ($connus[$i] != 0) {
						$nb_modif++;
					} else {
						$nb_new++;
					}
					// On vérifie que les choix sont corrects
					$trouve = false;
					foreach ($choix as $key => $sort) {
						if ($_GET['sort'.$i] == $sort['id']) {
							$sorts_new[$sortJusque + 1 + $i] = $sort['id'];
							unset($choix[$key]);
							$trouve = true;
							break;
						}
					}
					if (!$trouve) {
						// Si les choix sont incohérents ont affiche un message et on quitte la pop-up
						echo '<script language="javascript">alert("Vous avez sélectionné 2 fois le même sort!")</script>';
						exit();
					}
				}
			}
			$cout = coutSorts($nb_connus, $nb_modif, $nb_new);
			echo "<script language='javascript'>alert('Vous déboursez $cout pièces d'or pour vos nouveaux sorts.')</script>";
		}
	}
	
	// bâtiment normal ou tour de magie
	if ($type==1 || $type==2)
	{
		if (( (($new)&($batiments[$id]=='0')) || ((!$new)&&($batiments[$id]!='0')) ) AND ($cout <= $argent) AND ($espace <= $terre) AND ($erreur == 0))
		{
			$sql = "UPDATE `joueurs_stats` SET `argent` = `argent` - '".$cout."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			if ($new)
			{
				$sql = "UPDATE `joueurs_terre_utile` SET `".$terrain."` = `".$terrain."` + '".$espace."', `total` = `total` + '".$espace."' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				$sql = "UPDATE `joueurs_batiments_id` SET `".$id."` = '".$terrain."' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			}
			if ($cr >= 1)    // si le batiment donne des créatures
			{
				$sql = "UPDATE `joueurs_créatures_id` SET `".$id."` = `".$id."` + '".$cr."' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			}
			if($id <= 5 && !$new)	// tour de magie
			{
				foreach ($sorts_new AS $slot => $sortId)
				{
					remplace_sort ($slot, $sortId);
				}
			}
			
			mysql_close();
			
			close_popup();
		}
		else
		{
			$y = $batiments[$id];
			$x = 'Erreur lors de la construction ! #'.$y.'&'.$cout.'&'.$argent.'&'.$erreur.'&'.$id.'&'.$batiments[$id];
			if ($cout > $argent)
				$x = 'Vous n\\\'avez pas suffisemment de pièces d\\\'or pour vous permettre cet investissement!\nVous disposez de '.number_format($argent, 0, ",", ",").' pièces d\\\'or et la construction en requiert '.number_format($cout, 0, ",", ",").'!';
			if ($espace > $terre)
				$x = 'Vous n\\\'avez pas suffisament de terrains libre pour vous permettre cette construction!\nVous disposez de '.number_format($terre, 0, ",", ",").' acres et la construction en requiert '.number_format($espace, 0, ",", ",").'!';
			close_popup ($x);
		}
	}
	// batiment spéciaux
	else if ($type == 3)
	{
		if ($cout <= $argent AND $espace <= $terre)
		{
			$erreur = '';
			construitBatSpe ($id, $erreur);
			close_popup ($erreur);
		}
		else
		{
			close_popup ('Erreur lors de la construction! #'.$id.'&'.$cout.'&'.$argent);
		}		
	}	
}
if ($manquant == 1)
{
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
	<body onload="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
	<SCRIPT LANGUAGE="JavaScript">
	<!--
	alert(\'Erreur:  Il vous manque une tour de magie\');
	// -->
	</SCRIPT>
	</body></html>
	';
}

?>