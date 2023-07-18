<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
<title>Gestion des corporations sur serveur RP</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body style="text-align: center;">
<a href="../administration.php">Retour</a><br><br>
<?

$serveur = 3;
include("../administration/choix_serveurs.php");
$page = 'guildesRP.php';

// choppage des paramètres passés en GET (début)
$currentguilde = ((isset($_GET['guilde']))&&($_GET['guilde']>=0)) ? $_GET['guilde'] : -1;


// variables réservées: $table, $rangs
// indexé par l'ID de la table mysql
include('../guildesRP_include.php');


// vérification de la validité du paramètre $_GET['guilde']
if (!isset($table[$currentguilde]))
	$currentguilde = -1;

// choppage des paramètres passés en GET (suite)
$action  = (isset($_GET['action'])) ? $_GET['action']  : '';
$joueur  = (isset($_GET['joueur'])) ? $_GET['joueur']  : '';
$newrang = (isset($_GET['newrang']))? $_GET['newrang'] : '';

//echo '<xmp>'; print_r($table); print_r($rangs); echo '</xmp>';



// gestion de exclusion de membre
if ($action == 'exclure')
{
	echo exclusiondeguilde($joueur);
}

// gestion de modification du status d'un membre
if ($action == 'modifierang')
{
	echo modifierang($joueur, $newrang);
}

// gestion de l'ajout d'un nouveau membre
if ($action == 'ajouterjoueur')
{
	$sql = "SELECT guildeRP FROM joueurs_bonus WHERE nom = '$joueur' LIMIT 1";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if (($data = mysql_fetch_row($req)) && (isset($table[$currentguilde]['t'.$newrang])))
	{
		// don d'un objet
		$continue = true;
		$sql = "SELECT * FROM joueurs_objets WHERE nom = '$joueur'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		if ($data = mysql_fetch_assoc($req))
		{
			for ($i=1; $i<17; $i++)
			{
				if (($continue)&&($data[$i] == 0))
				{
					// ajout de l'objet
					$sql = "UPDATE joueurs_objets set `$i` = '".quelobjet($currentguilde, $newrang)."' WHERE nom = '$joueur'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					
					// insertion dans la corporation
					$sql = "UPDATE joueurs_bonus SET guildeRP = '$currentguilde', rangguildeRP = '$newrang' WHERE nom = '$joueur' LIMIT 1";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					//echo $sql.'<br>';

					echo '<b>'.$joueur.'</b> a été ajouté dans la corporation <b>'.$table[$currentguilde]['nom'].'</b>.<br>';
					$continue = false;
				}
			}
		}
		if ($continue)
			echo 'le joueur <b>'.$joueur.'</b> n\'a <b>PAS</b> pu être ajouté dans la corporation désirée!<br><b>Son inventaire est probablement plein?</b><br>';
	}
}


// affichage du menu
echo '<a href="'.$page.'">Actualiser</a><br><br>';
echo 'Afficher les détails d\'une corporation:<br>';
$count = 0;
//for ($i=1; $i<sizeof($table); $i++)
foreach ($table as $key => $value)
{
	if ($count != 0)
		echo ' | ';
	$style = ($currentguilde == $key) ? ' style="font-weight:bold;"' : '';
	
	$sql = "SELECT COUNT(id) FROM joueurs_bonus WHERE guildeRP = '$key' AND rangguildeRP != '0' GROUP BY guildeRP";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$num = ($data = mysql_fetch_row($req)) ? $data[0] : 0;
	
	echo '<a href="'.$page.'?guilde='.$key.'"'.$style.'>'.$table[$key]['nom'].' ('.$num.')</a>';
	$count ++;
}
echo '<br><a href="'.$page.'?action=detectiontriche">Détection des tricheurs</a><br><br>';


// affichage des membres de la corporation
if ($currentguilde != -1)
{
	// nouveau membre
	$listejoueurs = '<select name="joueur"><option value="">Nouveau membre</option>';
	$sql = "SELECT nom FROM joueurs_bonus WHERE guildeRP = '0' ORDER BY rangguildeRP DESC, nom ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
		$listejoueurs.= '<option value="'.$data[0].'">'.$data[0].'</option>';
	$listejoueurs .= '</select>';
	
	$formmodifierang = '<select name="newrang">';
	foreach ($rangs as $key => $value)
		if ($value != '')
			$formmodifierang .= '<option value="'.$key.'">'.$value.'</option>';
	$formmodifierang .= '</select><input type="submit" value=">>"></form>';

	echo '<form method="get" action="'.$page.'"><input type="hidden" name="action" value="ajouterjoueur"><input type="hidden" name="guilde" value="'.$currentguilde.'">Nouveau membre: '.$listejoueurs.' - '.$formmodifierang.'</form><br>';
	
	// membres actuels
	echo '<table align="center"><tr><td>Membre</td><td>Classe</td><td>Dieu</td><td>Rang</td><td>Changer rang?</td><td>Possède objet</td><td></td></tr>';
	$sql = "SELECT nom, rangguildeRP FROM joueurs_bonus WHERE guildeRP = '$currentguilde' ORDER BY rangguildeRP DESC, nom ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if (mysql_num_rows($req) == 0)
		echo '<tr><td colspan="7">Aucun membre.</td></tr>';
	while ($data = mysql_fetch_row($req))
	{
		$joueur = $data[0];
		$rang = $data[1];
		
		$sq1 = "SELECT classe, dieu, titre, royaume FROM joueurs_heros WHERE nom = '$joueur' LIMIT 1";
		$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
		if ($data = mysql_fetch_row($re1))
		{
			$classe = $data[0];
			$dieu = $data[1];
			$titre = ', '.$data[2].' '.$data[3];
		}
		else
		{
			$classe = '';
			$dieur = '';
			$titre = '';
		}
		
		if (isset($rangs[$rang]))
			$rangjoueur = $rangs[$rang];
		else if ($rang == 0)
			$rangjoueur = '<i>en attente...</i>';
		else
			$rangjoueur = '<b>Non conforme</b>';
	
		$formmodifierang = '<form method="get" action="'.$page.'"><input type="hidden" name="joueur" value="'.$joueur.'"><input type="hidden" name="action" value="modifierang"><input type="hidden" name="guilde" value="'.$currentguilde.'"><select name="newrang"><option value="'.$rang.'">Choisir...</option>';
		foreach ($rangs as $key => $value)
			if ($value != '')
			{
				$selected = ($value == $rangjoueur) ? ' selected' : '';
				$formmodifierang .= '<option value="'.$key.'"'.$selected.'>'.$value.'</option>';
			}
		$formmodifierang .= '</select><input type="submit" value=">>"></form>';
		
		$objetid = quelobjet ($currentguilde, $rang);
		$possedeobjet = joueurpossedeobjet($joueur, $objetid) ? 'ok': '<b>non</b>';

		echo '<tr><td align=left>'.$joueur.$titre.'</td><td>'.$classe.'</td><td>'.$dieu.'</td><td>'.$rangjoueur.'</td><td>'.$formmodifierang.'</td><td>'.$possedeobjet.'</td><td><a href="'.$page.'?guilde='.$currentguilde.'&action=exclure&joueur='.$joueur.'">Exclure</a></td></tr>';
	}
	echo '</table><br><br>';
	
	// texte d'intro de la corporation
	if (isset($_GET['texte2']))
	{
		$table[$currentguilde]['texte2'] = str_replace("\n","<br>\n",str_replace('<','&lt;',str_replace("'","`",$_GET['texte2'])));
		$sql = "UPDATE guildesrp SET texte2 = '".$table[$currentguilde]['texte2']."' WHERE id = '$currentguilde'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	}
	echo '<form method="GET" action="'.$page.'"><textarea rows=12 cols=30 name="texte2">'.str_replace('<br>','',$table[$currentguilde]['texte2']).'</textarea><br><input type="hidden" name="guilde" value="'.$currentguilde.'"><input type="submit" value="Modifier"></form>';
}


// détection de tricheurs
if ($action == 'detectiontriche')
{
	echo 'Détection de tricheurs (possèdent un objet réservé sans en avoir le droit)<br>';
	$exist = false;
	$sql = "SELECT nom, guildeRP, rangguildeRP FROM joueurs_bonus ORDER BY nom ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$joueur = $data[0];
		$guilde = $data[1];
		$rang = $data[2];
		$obj = quelobjet($guilde, $rang);
		
		$triche = false;
		foreach ($table as $ktable => $vtable)
			foreach ($rangs as $krang => $vrang)
			{
				$obj_test = quelobjet($ktable, $krang);
				if (($obj_test != $obj)&&($obj_test != '0')&&(joueurpossedeobjet($joueur, $obj_test)))
				{
					$triche = true;
					//echo 'triche!!'.$ktable.'|'.$krang.'|'.quelobjet($ktable, $krang).'<br>';
				}
			}
		if ($triche)
		{
			echo $joueur.'<br>';
			$exist = true;
		}
	}
	if ($exist == false)
		echo 'Aucun<br>';
}

mysql_close();

?>
</body>
</html>
