<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];

include ("guerres_checktermine.php");


function cadre_debut($largeur="98%")
{
	echo '
	<table style="width: '.$largeur.';" class="cadretablepopup"><tbody>
	<tr>	<td colspan="3" class="cadretopleft"></td>
		<td rowspan="2" class="cadretopright"</td>	</tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td colspan="2" style="text-align: center;">
';	
}
function cadre_fin()
{
	echo '		<br></td></tr>
	<tr><td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table>
';
}


$temps = floor(time()/60);

include("connect.php");
$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];

$sql5 = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde'";
$req5 = mysql_query($sql5) or die('Erreur SQL !<br>'.$sql5.'<br>'.mysql_error());
$nombre5 = mysql_num_rows($req5);

$sql5 = "UPDATE `guildes` SET `nb_membres` = '$nombre5' WHERE nom = '$guilde'";
$req5 = mysql_query($sql5) or die('Erreur SQL !<br>'.$sql5.'<br>'.mysql_error());

if ($guilde == "Aucune"){echo "Vous ne faites partie d'aucune Armada."; exit;}

$sql = "SELECT * FROM guildes WHERE nom = '$guilde'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$nombre = $data[3];
$image = $data[5];
$chef = $data[6];

$retirer = (isset($_GET['detruire'])) ? $_GET['detruire'] : '';
if ($retirer == 1)
{
	$nombre--;
	
	$sql = "UPDATE `guildes` SET `nb_membres` = '$nombre' WHERE nom = '$guilde'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$sql = "UPDATE `joueurs_bonus` SET `guilde` = 'Aucune' WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	etablirtraitre ($nom, $guilde);
	
	perdreguerrepoureffectif($guilde);
	
	?>
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head>
		<title>Gestion des affaires provinciales</title>
		<link rel="stylesheet" type="text/css" href="style_divers.css">
	</head>
	<body setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
	style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>
	<?
	exit;
}
?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Gestion de votre alliances</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body topmargin=0 leftmargin=0 class="bodypopup">
<form method="POST" action="gestionalliance.php"><br>
<div align="center">
<?
cadre_debut("92%");
echo '<h5>'.$guilde.'</h5><br>
';

echo "<img src='/images/gauche.gif' alt='' border='0'>
     <img src='$image' width='100px' height='100px' alt='$guilde' border='1'>
     <img src='/images/droite.gif'alt='' border='0'><br><br>";

if ($nom == $chef)
{
	
	echo '<b>Cette Armada est sous votre contrôle.</b><br>
<small>( <a href="gestionguilde.php?modif=3" class="linkunder">Quitter la tête de l\'Armada</a> )</small><br><br></td></tr>
<tr><td colspan="4" class="cadrebottom"></td></tr>
</tbody></table>
	
<br>
	
<table style="width: 92%;" border="0"><tbody>
<tr>	<td style="text-align: left; width: 50%; vertical-align: top;">';

	cadre_debut("92%");
	
	// liste des demandes d'adhésion
	echo '			<b>Demande d\'Adhésion</b><br><small>( <a href="gestionguilde.php?modif=1" class="linkunder">Gestion des demandes</a> )</small><br><br>
';
	$sql = "SELECT joueur FROM guildes_inscription WHERE guilde = '$guilde' ORDER BY joueur";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	for($i=0; $i<$nombre; $i++){
		$data = mysql_fetch_row($req);
		$joueur = $data[0];
		$sql2 = "SELECT titre, royaume FROM joueurs_heros WHERE nom = '$joueur'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$titre2 = $data2[0];
		$royaume2 = $data2[1];
		echo "			$joueur, $titre2 $royaume2</a><br>\n";
	}

	// liste des membres de la guilde
	echo '<b>Liste des Membres</b><br><small>( <a href="gestionguilde.php?modif=2" class="linkunder">Gestion des membres</a> )</small><br><br>
';
	$sql = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde' ORDER BY nom";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);	
	for($i=0; $i<$nombre; $i++){
		$data = mysql_fetch_row($req);
		$joueur = $data[0];	
		$sql2 = "SELECT titre, royaume FROM joueurs_heros WHERE nom = '$joueur'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$titre2 = $data2[0];
		$royaume2 = $data2[1];	
		$sql3 = "SELECT connexion_dernière FROM joueurs_connexions WHERE nom = '$joueur'";
		$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
		$data3 = mysql_fetch_row($req3);
		$vacances = ($data3[0]>$temps) ? '*' :  '';
		echo "			$joueur, $titre2 $royaume2 $vacances<br>\n";
	}
	echo '<br>* : comptes en mode Vacances.';
	
	echo '			<br>';
	cadre_fin();
	
}
else	// $nom != $chef
{
	echo "<b>Le chef de cette Armada est : $chef</b>";
	
	if (isset($_GET['voir']))
	{
		echo '<br>&nbsp;</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
		<br>
		<table style="width: 92%;" border="0" cellpadding="0" cellspacing="0"><tbody>
		<tr>	<td style="text-align: left; vertical-align: top;">
		';
		cadre_debut("100%");
		echo '<b>Liste des Membres</b><br><small>( <a href="gestionalliance.php" class="linkunder">Retour</a> )</small><br><br>
			<table style="width: 90%;"><tbody>';
		$sql = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde' ORDER BY nom";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$nombre = mysql_num_rows($req);
		
		for($i=0; $i<$nombre; $i++)
		{
			$data = mysql_fetch_row($req);
			$joueur = $data[0];
			
			$sql2 = "SELECT race, classe, dieu, titre, royaume, puissance FROM joueurs_heros WHERE nom = '$joueur'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			$data2 = mysql_fetch_row($req2);
			$race2 = $data2[0];
			$classe2 = $data2[1];
			$titre2 = $data2[3];
			$royaume2 = $data2[4];
			$puis2 = $data2[5];
			$sql3 = "SELECT connexion_dernière FROM joueurs_connexions WHERE nom = '$joueur'";
			$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
			$data3 = mysql_fetch_row($req3);
			$vacances = ($data3[0]>$temps) ? '*' :  '';
			
			echo '<tr class="rollovercolor">	<td style="text-align: left;">'.$joueur.', '.$titre2.' '.$royaume2.' '.$vacances.'</td>
				<td nowrap="nowrap">'.$race2.'</td><td>'.$classe2.'</td><td style="text-align: right;">'.number_format($puis2, 0, ",", ",").'</td></tr>
			<tr>	<td colspan="4" class="hline"></td></tr>';
		}
		echo '<tr><td colspan="4" style="text-align: left;"><br>* : comptes en mode Vacances</td></tr>';

		echo '</tbody></table>
			<br></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>';
	}
	else	// !isset($_GET['voir'])
	{
		echo '<br><br></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr>
		</tbody></table>
		<br>
		<table style="width: 92%;" border="0" cellspacing="0" cellpadding="0"><tbody>
		<tr>	<td style="text-align: left; width: 50%; vertical-align: top;">';
		cadre_debut(92);
		echo '<b>Liste des Membres</b><br>
			<small>( <a href="gestionalliance.php?voir=details" class="linkunder">Voir les détails</a> )</small><br><br>';
		
		$sql = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde' ORDER BY nom";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$nombre = mysql_num_rows($req);
		
		for($i=0; $i<$nombre; $i++)
		{
			$data = mysql_fetch_row($req);
			$joueur = $data[0];

			$sql2 = "SELECT titre, royaume FROM joueurs_heros WHERE nom = '$joueur'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			$data2 = mysql_fetch_row($req2);
			$titre2 = $data2[0];
			$royaume2 = $data2[1];
			$sql3 = "SELECT connexion_dernière FROM joueurs_connexions WHERE nom = '$joueur'";
			$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
			$data3 = mysql_fetch_row($req3);
			$vacances = ($data3[0]>$temps) ? '*' :  '';
			echo "$joueur, $titre2 $royaume2 $vacances<br>\n";
		}
		echo '<br>* : comptes en mode Vacances.';
		echo '<br><br></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>';
	}
}

if (!isset($_GET['voir']))	// partie droite de la page
{
	
	$temps = floor(time()/60);

	// détails de l'armada
	echo '	</td><td style="text-align: right; width: 50%; vertical-align: top;"><div align=right>';
	cadre_debut("95%");
	
	$sql = "SELECT * FROM guildes WHERE nom = '$guilde'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$nb_membres = $data[3];
	$date_creat = floor(($temps - $data[4])/1440);
		
	$sql = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	
	$pui_moy = 0;
	for($i=0;$i<$nombre;$i++)
	{
		$data = mysql_fetch_row($req);
		$joueur = $data[0];
		$sql2 = "SELECT puissance FROM joueurs_heros WHERE nom = '$joueur'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		$pui_moy = $pui_moy + $data2[0];
	}
	$pui_moy = round($pui_moy/$nombre);
	$pui_moy = round($pui_moy * ($nombre/5));
	
	$sql6 = "UPDATE `guildes` SET `puissance` = '$pui_moy' WHERE nom = '$guilde'";
	$req6 = mysql_query($sql6) or die('Erreur SQL !<br>'.$sql6.'<br>'.mysql_error());
	
	$pui_moy = number_format($pui_moy, 0, ",", ",");
	
	echo '<b>Détails de l\'Armada</b><br>';
	if ($nom == $chef)
		echo '<small>( <a href="gestionguilde.php?modif=5" class="linkunder">Modifier les détails</a> )</small><br>';
	echo '<br>Âge de l\'Armada : <b>'.$date_creat.' jours</b><br><br>Nombre de membres : <b>'.$nb_membres.'</b><br><br>Puissance moyenne : <b>'.$pui_moy.'</b><br><br>';
	if ($nom != $chef)
	{
		echo '<small>( <a href="gestionalliance.php?detruire=1" class="linkunder">Quitter l\'Alliance</a> )</small><br>';
		if (estenguerre($guilde))
			echo '<small>Si vous quittez votre alliance en période de guerre, vous serez considéré comme traître et ne pourrez plus la rejoindre d\'ici 7 jours après la fin des guerres en cours.</small><br>';
	}

	cadre_fin();

	// relations diplomatiques
	$nbrcols = 2;

	echo '	<br>';
	cadre_debut("95%");
	echo '			<b>Relations Diplomatiques</b><br>';
	if ($nom == $chef)
		echo '			<small>( <a href="gestionguilde.php?modif=6" class="linkunder">Gestion diplomatique</a> )</small><br>';
	
		// demandes en cours
	if ($nom==$chef)
	{
		// demande fin hostilités à traiter
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur != '$guilde' AND valide = '$VALIDE_EN_ATTENTE' AND type = '$TYPE_GUERRE' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%" border="0"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Propositions de redditions reçues</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
		// demande redditions envoyées
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur = '$guilde' AND valide = '$VALIDE_EN_ATTENTE' AND type = '$TYPE_GUERRE' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Demandes de reddition envoyées</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
		// demande cesez-le-feu à traiter
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur != '$guilde' AND valide = '$VALIDE_EN_NEGOCIA' AND type = '$TYPE_GUERRE' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%" border="0"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Propositions de cessez-le-feu reçues</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
		// demande cessez-le-feu envoyées
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur = '$guilde' AND valide = '$VALIDE_EN_NEGOCIA' AND type = '$TYPE_GUERRE' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Demandes de cessez-le-feu envoyées</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
		// proposition PNA à traiter
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur != '$guilde' AND valide = '$VALIDE_EN_ATTENTE' AND type = '$TYPE_PNA' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Propositions de PNA reçues</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
		// proposition PNA envoyées
		$req9 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND initiateur = '$guilde' AND valide = '$VALIDE_EN_ATTENTE' AND type = '$TYPE_PNA' AND cache = '0' ORDER BY type ASC") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '		<br><table width="98%"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Demandes de PNA envoyées</b></td></tr>';
			while ($data = mysql_fetch_row($req9))
				echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
		}
	}
	
		// relations actuelles 
	$req7 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND ( valide = '$VALIDE_EN_COURS' OR valide = '$VALIDE_EN_ATTENTE' OR valide = '$VALIDE_EN_NEGOCIA' ) AND type = '$TYPE_GUERRE' AND cache = '0' ORDER BY type ASC, guilde1 ASC, guilde2 ASC") or die('Erreur SQL !<br>'.mysql_error());
	echo '		<br><table width="98%"><tr>	<td colspan="'.$nbrcols.'" style="text-align: center;"><b>Guerres</b></td></tr>';
	$flag = true;
	while ($data = mysql_fetch_row($req7))
	{
		$flag = false;
		echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
	}
	if ($flag)
		echo "			<td colspan=\"$nbrcols\" style=\"text-align: center;\">Aucune</td></tr>\n";
	$req8 = mysql_query("SELECT type, guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND valide = '$VALIDE_EN_COURS' AND type = '$TYPE_PNA' AND cache = '0' ORDER BY type ASC, guilde1 ASC, guilde2 ASC") or die('Erreur SQL !<br>'.mysql_error());
	echo "		<tr>	<td colspan=\"$nbrcols\" style=\"text-align: center;\"><br><b>Pactes de non-Agression</b></td></tr>\n";
	$flag = true;
	while ($data = mysql_fetch_row($req8))
	{
		$flag = false;
		echo "			<td>$data[1]</td>	<td style=\"text-align: right;\">$data[2]</td></tr>\n";
	}
	if ($flag)
		echo "			<td colspan=\"$nbrcols\" style=\"text-align: center;\">Aucun</td></tr>\n";
	echo "		</table>\n";
	
	cadre_fin();

}
echo '</td></tr></tbody></table>';

mysql_close();
?>
