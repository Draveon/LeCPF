<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}


function cadre_debut($largeur="98%")
{
	echo '
	<table style="width: '.$largeur.'; text-align: center; background-image: URL(/images/arriereplan.gif);" border="0" cellspacing="0" cellpadding="0"><tbody>
	<tr>	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td>
		<td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>	</tr>
	<tr>	<td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);"></td>
		<td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;"><br>
';
}
function cadre_fin()
{
	echo '		<br></td></tr>
	<tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr>
	</tbody></table>
';
}


include("connect.php");

$nom = $_SESSION['nom'];
$req = mysql_query("SELECT race, classe, id FROM joueurs_heros WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$race = $data[0];
$classe = $data[1];
$joueur_id = $data[2];
$temps = floor(time()/60);
$mode = (isset($_GET['mode'])) ? $_GET['mode'] : '';


// variables réservées: $table, $rangs
$currentguilde = -1;
$rang = -1;
$req = mysql_query("SELECT guildeRP, rangguildeRP FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_row($req))
{
	$currentguilde = $data[0];
	$rang = $data[1];
}

include('guildesRP_include.php');
//echo '<xmp>'; print_r($table); echo '</xmp>';
if ($serveur != $serveur_RP)
{
	exit();
}


// le joueur veut quitter la corporation
if ($mode == 'quitterguilde')
{
	corpo_excluredeguilde($nom);
	$currentguilde = -1;
}

// le joueur veut intégrer une corporation
if ($mode == 'postuler')
{
	$currentguilde = (isset($_GET['guilde'])) ? $_GET['guilde'] : '0';
	if ((isset($table[$currentguilde][$classe]))&&($table[$currentguilde][$classe]==1))
	{
		$rang = 0;
		$sql = "UPDATE joueurs_bonus SET guildeRP = '$currentguilde', rangguildeRP = '0' WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	}
	else
		$currentguilde = -1;
}


// *** *** Membre d'aucune corporation...
if ((!isset($table[$currentguilde]['nom']))||($currentguilde==-1)||($rang=='0'))
{
	echo '	<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
	<html>
	<head>
	       <title>Gestion des corporations</title>
	</head>
	<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
	<div align=center><br>';
	
	cadre_debut("95%");

	echo 'Vous ne faites actuellement partie d\'aucune corporation.<br><br>';
	if (($rang == '0')&&($currentguilde != 0))
	{
		echo 'Votre inscription à la corporation '.$table[$currentguilde]['nom'].' a bien été enregistrée et elle est maintenant soumise à l\'attention de son '.$table[$currentguilde]['t6'].'.<br>';
	}
	else
		foreach ($table as $key => $value)
		{
			if ($value[$classe] == 1)
			{
				// echo '<xmp>'; print_r($value); echo '</xmp>';
				echo 'Vous pouvez cependant déposer candidature auprès de l\'une d\'elle:<br><br>';
				echo '<a href="gestionallianceRP.php?mode=postuler&guilde='.$key.'">Entrer à la corporation '.$value['nom'].'</a><br>';
			}
		}
	
	cadre_fin();
	echo '</div>';
	exit();
}
// récupération des infos de la corporation courante
$guildeRP = $table[$currentguilde]['nom'];
$texte1   = $table[$currentguilde]['texte1'];
$texte2   = $table[$currentguilde]['texte2'];
$annonces = $table[$currentguilde]['annonces'];
$image    = $table[$currentguilde]['image'];


// recherche du(des) chef(s)
$chef = array();
$req = mysql_query("SELECT nom FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP = '6'") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
	$chef[] = $data[0];
$ischef = (in_array($nom, $chef)) ? true : false;


// traitement des acceptions/refus
if (($mode == 'accepternouveau')&&($ischef))
{
	$joueur = ((isset($_GET['joueur']))&&(is_numeric($_GET['joueur']))) ? $_GET['joueur'] : '';
	$req = mysql_query("SELECT id FROM joueurs_bonus WHERE id = '$joueur' AND guildeRP = '$currentguilde' and rangguildeRP = '0'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))	// le joueur est bien candidat dans la corporation dont le $nom est le chef
	{
		$sql = "UPDATE joueurs_bonus SET rangguildeRP = '1' WHERE id = '$joueur'";
		$req = mysql_query($sql) or die('Erreur SQL !'.mysql_error());
	}
}
if (($mode == 'refusernouveau')&&($ischef))
{
	$joueur = ((isset($_GET['joueur']))&&(is_numeric($_GET['joueur']))) ? $_GET['joueur'] : '';
	$req = mysql_query("SELECT id FROM joueurs_bonus WHERE id = '$joueur' AND guildeRP = '$currentguilde' and rangguildeRP = '0'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))	// le joueur est bien candidat dans la corporation dont le $nom est le chef
	{
		$sql = "UPDATE joueurs_bonus SET guildeRP = '0', rangguildeRP = '0' WHERE id = '$joueur'";
		$req = mysql_query($sql) or die('Erreur SQL !'.mysql_error());
	}
}

// nombre de membre
$req = mysql_query("SELECT COUNT(id) FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP != '0' GROUP BY guildeRP") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$nombre = $data[0];



// MANQUE:	$image
//		si en attente



?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>Gestion des corporations</title>
	<script language="javascript">
	<!--
	function changerangmembre(form, nrang)
	{
		if (nrang == 6)
		{
			if (confirm('Etes-vous sûr de vouloir laisser le commandement à un autre joueur?'))
				document.getElementById(form).submit();
			else
				return false;
		}
		else if (nrang == 0)
		{
			if (confirm('Etes-vous sûr de vouloir exclure le joueur?'))
				document.getElementById(form).submit();
			else
				return false;
		}
		else
		{
			document.getElementById(form).submit();
		}
	}
	-->
	</script>
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
<form method="GET" action="gestionallianceRP.php"><br>
<div align="center">
<?



// *** *** cadre du haut
cadre_debut("92%");

echo '<FONT SIZE=+2><b><span style="font-family: papyrus;">Corporation '.$guildeRP.'</b></font></span><br><br>';
echo '	<img src="images/gauche.gif" alt="" border="0">
	<img src="'.$image.'" width="100px" height="100px" alt="" border="1">
	<img src="images/droite.gif" alt="" border="0"><br><br>';


//
if ($ischef)
{
	echo '<b>Cette corporation est sous votre contrôle.</b><br>';
	echo '<small>( <a href="gestionallianceRP.php">Actualiser</a> )</small><br>';
}
else
	if (sizeof($chef)>0)
		echo '<b>Le chef de cette corporation est : '.implode(', ', $chef).'.<br>';
	echo '<br></td></tr>
	<tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr>
	</tbody></table>
	<br>';
// *** *** fin du cadre du haut


// *** *** en bas
if ($mode == 'membresdetails')
{
	cadre_debut("92%");
	echo '<b>Liste des Membres</b><br>';
	echo '<small>( <a href="gestionallianceRP.php">Fenêtre principale</a> )</small><br>';
	if ($ischef)
	{
		$req = mysql_query("SELECT nom, rangguildeRP, id FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP != '0' ORDER BY rangguildeRP DESC, nom ASC") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			$joueur = $data[0];
			$rang2 = $data[1];
			$joueid = $data[2];
			if (isset($_GET['nrang'.$joueid]))		// changement de rang du joueur
			{
				$nrang = $_GET['nrang'.$joueid];
				if ($nrang == '0')			// exclusion
					corpo_excluredeguilde($joueid);
				if ((isset($rangs[$nrang]))&&($nrang!=$rang2))	// gestion de modification du status d'un membre
				{
					modifierang($joueid, $nrang);
					if ($nrang == 6)			// rétrograde le chef s'il promeut un autre à sa place
					{
						for ($i=5; $i>0; $i--)
						{
							if (isset($rangs[$i]))
							{
								modifierang($joueur_id, $i);
								$ischef = false;
								$i = -1;
							}
						}
					}
				}
			}
		}
	}
	echo '<br><table border=0 align=center>';
	$req = mysql_query("SELECT nom, rangguildeRP, id FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP != '0' ORDER BY rangguildeRP DESC, nom ASC") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$joueur = $data[0];
		$rang2 = $data[1];
		$joueid = $data[2];
		$req2 = mysql_query("SELECT race, classe, dieu, titre, royaume, puissance FROM joueurs_heros WHERE nom = '$joueur'") or die('Erreur SQL !<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$race2 = $data2[0];
		$classe2 = $data2[1];
		$titre2 = $data2[3];
		$royaume2 = $data2[4];
		$puis2 = $data2[5];
		$complement = ($ischef) ? '' : ', '.$titre2.' '.$royaume2;
		$req3 = mysql_query("SELECT connexion_dernière FROM joueurs_connexions WHERE nom = '$joueur'") or die('Erreur SQL !<br>'.mysql_error());
		$data3 = mysql_fetch_row($req3);
		$vacances = ($data3[0]>$temps) ? '*' :  '';
		echo '<tr valign=top>	<td style="text-align: left;">'.$joueur.$complement.' '.$vacances.'</td>	
				<td nowrap="nowrap" style="text-align: left;">'.$race2.'</td>
				<td style="text-align: left;">'.$classe2.'</td>
				<td style="text-align: left;" width=65>'.number_format($puis2, 0, ",", ",").'</td>
				<td style="text-align: left;">'.$rangs[$rang2].'</td>';
		if ($ischef)
		{
			echo '<td><form name="form'.$joueur.'" id="form'.$joueur.'" action="gestionallianceRP.php" method="GET"><select name="nrang'.$joueid.'" id ="nrang'.$joueur.'" onchange="changerangmembre(\'form'.$joueur.'\', this.value)"><option value="">Changer grade...</option>';
			foreach ($rangs as $key => $value)
			{
				$selected = ($rang2 == $key) ? ' selected' : '';
				echo '<option value="'.$key.'"'.$selected.'>'.$value.'</option>';
			}
			echo '<option value="'.$rang.'"> - - - - - - - - - - - -</option><option value="0">Exclure joueur</option>';
			echo '</select><input type="hidden" name="mode" value="membresdetails"><input type="submit" value=" >> " onclick="return changerangmembre(\'form'.$joueur.'\', document.getElementById(\'nrang'.$joueur.'\').value)"></form></td>';
		}

		echo '</tr>';
	}
	echo '</table>';
	echo '<br>* : comptes en mode Vacances.';
	echo '			<br>';
	cadre_fin();
}

 
else	// *** *** affichage par défaut
{
	// *** *** colonne de gauche
	echo '<table style="width: 92%;" border="0"><tbody>
		<tr>	<td style="text-align: left; width: 50%; vertical-align: top;">';
	
	
	// affichage du rang dans la guilde
	if (!$ischef)	// pas pour le chef sinon la page est surchargée
	{
		cadre_debut("95%");
		$flag = true;
		echo '<b>Votre titre dans la corporation</b><br>';
		$image = $table[$currentguilde]['i'.$rang];
		$titre = $table[$currentguilde]['t'.$rang];
		echo '<br><img src="'.$image.'" width="50" height="33" alt="'.$titre.'"><br><br><b>'.$titre.'</b><br>';
		cadre_fin();
		echo '<br>';
	}
	
	
	// liste des demandes d'adhésion
	if ($ischef)
	{
		cadre_debut("95%");
		$flag = true;
		echo '<b>Demandes d\'Adhésion</b><br>';
		echo '<br><table border=0 align=center>';
		$req = mysql_query("SELECT nom, id FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP = '0' ORDER BY nom ASC") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			$flag = false;
			$joueur = $data[0];
			$joueurid = $data[1];
			$req2 = mysql_query("SELECT titre, royaume FROM joueurs_heros WHERE id = '$joueurid'") or die('Erreur SQL !<br>'.mysql_error());
			$data2 = mysql_fetch_row($req2);
			$titre2 = $data2[0];
			$royaume2 = $data2[1];
			echo '<tr><td>'.$joueur.', '.$titre2.' '.$royaume2.'</a></td><td><a href="gestionallianceRP.php?mode=accepternouveau&joueur='.$joueurid.'">Oui</a></td><td><a href="gestionallianceRP.php?mode=refusernouveau&joueur='.$joueurid.'">Non</a></td></tr>';
		}
		if ($flag)
			echo '<tr><td>Aucune demande n\'a été déposée.</td></tr>';
		echo '</table>';
		cadre_fin();
		echo '<br>';
	}
	
	// liste des membres de la corporation
	// on en profite pour calculer la puissance moyenne
	cadre_debut("95%");
	echo '<b>Liste des Membres</b><br>';
	if ($ischef)
		echo '<small>( <a href="gestionallianceRP.php?mode=membresdetails">Gestion des membres</a> )</small><br><br>';
	else
		echo '<small>( <a href="gestionallianceRP.php?mode=membresdetails">Voir les détails</a> )</small><br><br>';
	$req = mysql_query("SELECT nom, rangguildeRP FROM joueurs_bonus WHERE guildeRP = '$currentguilde' AND rangguildeRP != '0' ORDER BY rangguildeRP DESC, nom ASC") or die('Erreur SQL !<br>'.mysql_error());
	$pui_moy = 0;
	while ($data = mysql_fetch_row($req))
	{
		$joueur = $data[0];
		$rang2 = $data[1];
		$req2 = mysql_query("SELECT titre, royaume FROM joueurs_heros WHERE nom = '$joueur'") or die('Erreur SQL !<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$titre2 = $data2[0];
		$royaume2 = $data2[1];	
		$req3 = mysql_query("SELECT connexion_dernière FROM joueurs_connexions WHERE nom = '$joueur'") or die('Erreur SQL !<br>'.mysql_error());
		$data3 = mysql_fetch_row($req3);
		$vacances = ($data3[0]>$temps) ? '*' :  '';
		$req4 = mysql_query("SELECT puissance FROM joueurs_heros WHERE nom = '$joueur'") or die('Erreur SQL !<br>'.mysql_error());
		$data4 = mysql_fetch_row($req4);
		$pui_moy += $data4[0];
		echo "$joueur, $titre2 $royaume2 $vacances<br>";
	}
	$pui_moy /= $nombre;
	echo '<br>* : comptes en mode Vacances.';
	echo '			<br>';
	cadre_fin();
	// *** *** fin de la colonne de gauche

	
	// *** *** partie droite de la page
	echo '	</td><td style="text-align: right; width: 50%; vertical-align: top;"><div align=right>';
	
	// détails de la corporation
	cadre_debut("95%");
	echo '<b>Détails de la corporation</b><br>';
	// on a déjà $nombre et $pui_moy	
	if (!$ischef)
		echo '<small>( <a href="gestionallianceRP.php?mode=quitterguilde" onclick="return confirm(\'Voulez-vous vraiment quitter la corporation?\')">Quitter la corporation</a> )</small><br>';
	$pui_moy = number_format($pui_moy, 0, ",", ",");
	echo '<br>Nombre de membres : <b>'.$nombre.'</b><br><br>Puissance moyenne : <b>'.$pui_moy.'</b><br>';
	cadre_fin();
	
	// Texte2
	echo '<br>';
	cadre_debut("95%");
	echo '<b>Texte d\'introduction</b><br>';
	if ($ischef)
	{
		if (isset($_GET['texte2']))
		{
			$texte2 = str_replace("\n","<br>\n",str_replace('<','&lt;',str_replace("'","`",$_GET['texte2'])));
			//echo '|<xmp>'.$texte22.'</xmp>|';
			$sql = "UPDATE guildesrp SET texte2 = '$texte2' WHERE id = '$currentguilde'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		echo '<form method="GET" action="gestionallianceRP.php"><textarea rows=12 cols=27 name="texte2">'.str_replace('<br>','',$texte2).'</textarea><br><input type="submit" value="Modifier"></form><br>';
	}
	else
		echo '<br><table width="230" border="0" align=center><tr><td align="left">'.$texte2.'</td></tr></table>';
	cadre_fin();
}


echo '&nbsp;';

mysql_close();

?>
