<?php

if($nom == $cible)
{
	echo 'Tu connais Zwiit\' le pingouin ?';
	exit();
}

// tests de dernière minute, préliminaires à l'affrontement
//  (utilisé en tête de affrontement.inc)
$req = mysql_query("SELECT id FROM joueurs_heros WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_assoc($req)) {}
else
{
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	<head><meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><meta http-equiv="refresh" content="0; url=/combat.php"><title>Accueil</title></head>
	<body onload="alert(\'Joueur introuvable\');" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-color: antiquewhite;">
	Joueur introuvable</body>
	</html>';
	$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('jouueur introuvable', '".$cible." affrontement ".$_SERVER['HTTP_REFERER']."')";
	$req = mysql_query($sql);
	mysql_close();
	exit();
}


// L'attaque est-elle possible ?
$att_ok = attaque_possible($nom, $cible);
if ($att_ok == 10) {$erreur = 1; $texte = "Votre adversaire et vous avez une différence de niveaux trop importante !";}
if ($att_ok == 5) {$erreur = 1; $texte = "Vous avez déjà fait vos 5 attaques !";}
if ($att_ok == 2) {$erreur = 1; $texte = "Vous avez déjà attaqué cette cible dans les dernières 24h !";}

/*if ($att_ok == 1) {$erreur = 1; $texte = "Cette cible a déjà mené un combat affaiblissant récemment !";}*/


// récupération de la puissance des belligérants
$req = mysql_query('SELECT nom, puissance FROM joueurs_heros WHERE nom in ("'.$nom.'", "'.$cible.'")') or die('Erreur SQL !<br>'.mysql_error());
$puissance = array();
$data = mysql_fetch_row($req);
$puissance[$data[0]] = $data[1];
$data = mysql_fetch_row($req);
$puissance[$data[0]] = $data[1];
// l'attaquant ne peut pas attaquer si la cible a moins de 95% de sa puissance ou 98% au dessus de 90k
$antibottom = ($puissance[$nom] < 60000) ? 0.95 : 0.98;
$limite = $puissance[$nom]*$antibottom;
if (($puissance[$cible] < $limite) || ($puissance[$cible] < 250))
{
	$erreur = 1;
	$texte = "Cette cible n`est plus à portée !";
}
// l'attaquant ne peut pas attaquer si la cible a plus de 150% de sa puissance
$limite_sup = $puissance[$nom]*1.5;
if (($puissance[$cible] > $limite_sup))
{
	$erreur = 1;
	$texte = "Cette cible est trop puissante pour être à portée !";
}

        
// la cible n'est-elle pas trop descendue ou trop montée dans le classement depuis qu'on l'a choisie ?
$req = mysql_query('SELECT `26` FROM joueurs_aptitudes WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$navigation = $data[0];
if ($puissance[$nom] > $puissance[$cible])
{
	$nbrlimit = round( 10 * (1 + $navigation/100) );
	$sql = "SELECT COUNT(`id`) AS nbr FROM joueurs_heros WHERE puissance < '".$puissance[$nom]."' AND puissance > '".$puissance[$cible]."' AND nom NOT LIKE '".$nom."' AND nom NOT LIKE '".$cible."'";
}
else
{
	$nbrlimit = round( 20 * (1 + $navigation/100) );
	$sql = "SELECT COUNT(`id`) AS nbr FROM joueurs_heros WHERE puissance < '".$puissance[$cible]."' AND puissance > '".$puissance[$nom]."' AND nom NOT LIKE '".$nom."' AND nom NOT LIKE '".$cible."'";
}
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
if ($data[0] > $nbrlimit)
{
	$erreur = 1;
	$texte = 'Cette cible est hors de portée ! (code '.$data[0].', '.$nbrlimit.', '.$puissance[$nom].', '.$puissance[$cible].')';
}


// a-t-on bien envoyé des créatures et pas un magnifique 0% partout?
// on en profite pour calculer les points de vie totaux de l'armée attaquante, utile pour les stratégies des sorts
$flag = false;
$pvstotal_att = 0;
$req = mysql_query('SELECT * FROM joueurs_créatures WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$creatures_atta = mysql_fetch_array($req);
$req = mysql_query('SELECT id, pvs FROM creatures WHERE id > "5"') or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$qtee = $creatures_atta[$id];
	// pourcentages
	if (isset($_POST['tout']))	$env = 100;
	else if (isset($_POST[$id]))	$env = max(0, min(100, $_POST[$id]));
	else				$env = 0;
	// quantité numérique
	if (ceil($qtee*$env/100) > 0)
	{
		$flag = true;
		$pvstotal_att += ceil($qtee*$env/100) * $data[1];
	}
}
if (!$flag)
{	$erreur = 2;
	$texte = 'Vous devez envoyer des créatures pour combattre!';
}  

  
// les tests ont-ils été passés avec succès ?
// retour au début
if ($erreur == 1)
{
	$_SESSION['combat'] = 0;
	if (!isset($texte))
		$texte = 'Une erreur inconnue a survenu.';
	mysql_close();
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	<head>
	<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
	<meta http-equiv="refresh" content="0; url=/combat.php">
	<title>Accueil</title>
	<style>body{scrollbar-base-color: #E8C782</style>
	</head>
	<body onload="alert('.str_replace("'","\'",$texte).');" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-color: antiquewhite;">
	'.$texte.'</body>
	</html>';
	exit();
}
// retour au choix des créatures
if ($erreur == 2)
{
	$_SESSION['combat'] = 1;
	mysql_close();
	// retour à la page Choix des créatures
	echo '<form method="post" action="combat.php" align="center" id="form1">
	'.$texte.'<br>
	<input type="radio" name="cible" value="'.$cible.'" checked="true">'.$cible.'<br>
	<input type="hidden" name="combattre" value="1">
	<input type="hidden" name="erreur" value="'.$texte.'">
	<input type="submit" value="Combattre >>" id="valid">
	<script language="javascript">
	<!--
	document.getElementById(\'form1\').submit();
	//-->
	</script>
	</form>';
	include("fin.php");
	exit();
}

?>
