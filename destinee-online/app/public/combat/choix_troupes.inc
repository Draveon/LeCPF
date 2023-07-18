<?php
$_SESSION['combat'] = 3;     // à la sortie de cette page, on passera à l'affrontement
$cible = htmlentities(html_entity_decode($_POST['cible']));
$erreur = (isset($_POST['erreur'])) ? $_POST['erreur'] : '';

// initialisations
$y = 0;          // nombre de créatures différentes possédées par le joueur
$pvstotal = 0;   // points de vie totaux des créatures possédées (pas nécessairement envoyées) 

// $possede est un tableau contenant le nombre de chaque créature possédée par le joueur
// le nom des colonnes correspond à la référence ($id) des créatures
$req = mysql_query('SELECT * FROM `joueurs_créatures` WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$possede = mysql_fetch_assoc($req);

// récupération de quelques données sur la cible
$sql = "SELECT joueurs_heros.titre, joueurs_heros.royaume, joueurs_heros.avatar, joueurs_bonus.province, joueurs_bonus.guilde, joueurs_bonus.victoire, joueurs_bonus.défaite, joueurs_heros.puissance FROM joueurs_heros INNER JOIN joueurs_bonus ON joueurs_bonus.nom = joueurs_heros.nom WHERE joueurs_heros.nom = '".$cible."'";
$req = mysql_query($sql) or die('Erreur SQL !aaa<br>'.$sql.'<br>'.mysql_error());
if ($data = mysql_fetch_assoc($req))
{
	$titre2   = $data['titre'];
	$royaume2 = $data['royaume'];
	$avatar   = $data['avatar'];
	$province2= $data['province'];
	$guilde2  = $data['guilde'];
	$victoire = $data['victoire'];
	$defaite  = $data['défaite'];
	$puissanceold= $data['puissance'];
}
else
{
	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	<head><meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><meta http-equiv="refresh" content="0; url=/combat.php"><title>Accueil</title></head>
	<body onload="alert(\'Joueur introuvable\');" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-color: antiquewhite;">
	Joueur introuvable</body>
	</html>';
	$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('jouueur introuvable', '".$cible." choix_troupes ".$_SERVER['HTTP_REFERER']."')";
	$req = mysql_query($sql);
	mysql_close();
	exit();
}

// mise à jour des données de la cible; si changement de puissance important, questionnement
include ('maj_or_mana.php');
maj_or_mana($cible);

$req = mysql_query("SELECT puissance FROM joueurs_heros WHERE joueurs_heros.nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$puissance = $data['puissance'];

$aide =	"<div class=\"longtexte\">
<h3>Choix des troupes</h3>
<p>Sur cette page, vous pouvez choisir quelles troupes envoyer lors de votre attaque. Il n'y a généralement aucun avantage à ne pas envoyer toutes vos troupes, vous garderez donc généralement ce choix par défaut. Dans de très rares cas cependant, il peut s'avérer utile de ne pas envoyer ses plus grosses créatures sur un adversaire que l'on sait faible, afin de les épargner.</p>
<h3>Choix du type d'attaque</h3>
<p>Vous pouvez ensuite choisir le type d'attaque à réaliser, pour optimiser vos gains:<ul>
<li><strong>Conquête:</strong> la conquête est le seul type d'attaque qui rapporte des terres</li>
<li><strong>Pillage:</strong> le pillage vous rapportera davantage d'or</li>
<li><strong>Exaction:</strong> l'exaction vous rapporte davantage de ressources</li>
<li><strong>Siège:</strong> un siège vous rapporte davantage de prisonniers</li></ul>
</div>";

// initialisation de l'entête de liste ; sera affiché s'il y a au moins une créature
echo '<div align="center">
	<form method="post" action="combat.php">
	<table class="localtable630"><tbody>';
	
	echo '<tr><td colspan="5"><br><div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher l\'aide</a></div>';
	echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher l\'aide</a><br><br><div style="font-family:default;">'.$aide.'</div></div></td></tr>';
	
	echo '<tr><td colspan="5" style="text-align: left;"><h2>Choix des troupes à envoyer</h2></td></tr>';
if ($erreur != '')
	echo '	<tr>	<td colspan="5" style="color: #F60000"><b>'.$erreur.'</b></td></tr>';
echo  '	<tr><td colspan="5" style="text-align: center;">Cible de votre attaque: <a href="#" class="info" onmouseover="afficheinfobulle(\''.$cible.'\');">'.$cible.', '.$titre2.' '.$royaume2.'<span id="'.$cible.'" style="text-align:center;"><b>'.$cible.'</b><br><img src="'.$avatar.'" width="70px" height="70px" border=1><br>Titre : '.$titre2.'<br>Combats: '.($victoire+$defaite).'</span></a><br>
		(<a href="combat.php" class="linkunder">retour</a>)<br>&nbsp;</td></tr>
	<tr>	<td style="width:30px;"></td>
		<td class="cl_entete">Créature</td>
		<td class="cl_entete">Niveau</td>
		<td class="cl_entete">Quantité</td>
		<td class="cl_entete">%</td></tr>
	<tr>	<td></td>
		<td colspan="4" class="hline"></td></tr>';

// on boucle sur l'ensemble des créatures du jeu
// On compte le nombre total de créatures (existantes dans le jeu) : $nb_creat
$req = mysql_query('SELECT id, nom, niveau, image, type, pvs FROM creatures ORDER BY niveau ASC') or die('Erreur SQL !<br>'.mysql_error());
while ($creature = mysql_fetch_assoc($req))
{
	// le joueur possède $possede représentants de cette créature
	$possedecreat = $possede[$creature['id']];

	// si le joueur en possède effectivement...
	if ($possedecreat > 0)
	{
		$y++;      // incrémentation du nombre de créatures différentes possédées par le joueur
		$pvstotal += $creature['pvs'] * $possedecreat;
		$possedecreat = number_format($possedecreat, 0, ",", " ");   // formatage du nombre de représentants de la créature traitée
		
		// affichage pour la créature traitée maintenant
		echo '<tr class="rollovercolor">
		<td style="width: 1%; vertical-align: center;"><a href="info_creature.php?creature='.$creature['nom'].'" onclick="NewWindow(this.href,\'name\',\'360\',\'350\',\'yes\');return false">
			<img src="'.$creature['image'].'" width="30" height="30" border=1></a></td>
		<td class="tdlef" style="width: 40%"><strong>'.$creature['nom'].'</strong> ('.$creature['type'].')</td>
		<td class="tdcen">'.$creature['niveau'].'</td>
		<td class="tdcen">'.$possedecreat.'</td>
		<td class="tdcen"><select name="'.$creature['id'].'" size="1">';
		// affichage liste déroulante avec pourcentage ; par défaut, 0% pour toutes les créatures les autres
		echo '<option selected value="0">0%</option>
		<option value="10">10%</option><option value="20">20%</option><option value="30">30%</option><option value="40">40%</option><option value="50">50%</option><option value="60">60%</option><option value="70">70%</option><option value="80">80%</option><option value="90">90%</option><option value="100">100%</option>
	                </select></td></tr>
		<tr>
		<td></td>
                <td colspan="4" class="hline"></td></tr>';

	} // fin du if($possede > 0)...
} //   fin du while

// affichage du pied de liste, avec les boutons du formulaire
if ($y > 0)
{
	echo '<tr><td colspan="5" style="text-align: center;"></td></tr></tbody></table><br>';
	if (abs($puissance-$puissanceold) > 500)
		echo 'Depuis sa dernière activité, la puissance du compte de '.$cible.' a évolué sensiblement ('.number_format($puissance-$puissanceold, 0, ",", " ").').<br>
			<input type="checkbox" name="confirm" value="yes"> Etes-vous sûr de vouloir l\'attaquer?<br><br>';
	else
		echo '<input type="hidden" name="confirm" value="yes">';
	echo '
	<input type="checkbox" name="tout" value="1" checked="true"> Tout envoyer |
	<input type="radio" name="tactique" value="conquete"><span title="Gains: terres 6% à 10%, or 5% à 7%, ressources 2% à 3%, population 3% à 5%"> Conquête |</span>
	<input type="radio" name="tactique" value="pillage"><span title="Gains: terres 0%, or 10% à 14%, ressources 2% à 3%, population 3% à 5%"> Pillage |</span>
	<input type="radio" name="tactique" value="exaction"><span title="Gains: terres 0%, or 5% à 7%, ressources 4% à 6%, population 3% à 5%"> Exaction</span>
	<input type="radio" name="tactique" value="siege"><span title="Gains: terres 0%, or 5% à 7%, ressources 2% à 3%, population 6% à 10%"> Siège</span>
	<br><br>
	<input type="hidden" name="cible" value="'.$cible.'">
	<input type="hidden" name="combattre" value="2">
	<input type="submit" name="bouton" value="Combattre >>">';
}
// le joueur ne possède aucune créature, le combat est impossible
else
{
	echo '<tr><td colspan="5" style="text-align: center;"></td></tr></tbody></table><br>
	  <br>Vous devez possédez au minimum une créature<br>
		avant de pouvoir espérer combattre...<br><br>';
}


?>
