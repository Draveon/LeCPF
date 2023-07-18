<?php session_start();

$head_title = 'Les guerres';
$head_keywords = 'guerre, armada, guilde, joueur, combat, pillage, pna';

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;
include ('debut.php');
if ($_SESSION['connexion'] != 1)
	include ('menu_index.php');
if ($_SESSION['connexion'] == 1)
	include ('menu.php');
entete_index('Guerres');


function lien_armada($armada)
{
	global $serveur_off;
	$req = mysql_query("SELECT id, img, nom FROM guildes WHERE nom = '$armada' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		return '<a href="armadas.php?armada='.$data[0].'&serveur='.$serveur_off.'"><img src="'.$data[1].'" width="20" height="20" alt="'.$data[2].'" border="1"></a> 
		<a href="classement.php?affichage='.$serveur_off.'&debut=0&nb=50&type=1&ordre=Puissance&armada='.urlencode($armada).'">'.$armada.'</a>';
	return	$armada;
}
function affiche_guerre($data)
{
	global $serveur_off, $TYPE_GUERRE;
	
	// chtit code pour mettre en gras si éla personne est concernée
	$bold = '';
	$nom = isset($_SESSION['nom']) ? $_SESSION['nom'] : '';
	$req = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$nom' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
	if ($dat_ = mysql_fetch_row($req))
	{
		$guilde = $dat_[0];
		if (	($guilde == $data[1]) ||
			($guilde == $data[2]) ||
			(!strpos($data[4], '|'.$nom.'|') === false) ||
			(!strpos($data[5], '|'.$nom.'|') === false) )
		{
			$bold = ' style="font-weight: bold;"';
		}
	}

	$vs = ($data[3] == $TYPE_GUERRE) ? 'contre' : 'et';
	echo '<tr'.$bold.'>	<td width="235" class="tdlef">'.lien_armada($data[1]).'</td>	<td width="60"> &nbsp; '.$vs.' &nbsp; </td>	<td width="235" class="tdlef">'.lien_armada($data[2]).'</td>	<td><a href="guerres_details.php?affichage='.$serveur_off.'&guerre='.$data[0].'">(détails)</a></td>	</tr>'."\n";
}




// Déclaration des variables
$serveur_off = (!isset($_GET['affichage'])) ? 0 : $_GET['affichage'];
if ( (isset($_SESSION['serveur'])) && ($serveur_off == 0) )
	$serveur_off = $_SESSION['serveur'];

if ($serveur_off == 0)
{
	echo '
		<table class="localtable630">	<tr>
				<td><h2>Guerres en cours</h2><center>
				~
				<a href="guerres.php?affichage=1">Serveur 1</a> |
				<a href="guerres.php?affichage=2">Serveur 2</a> |
				<a href="guerres.php?affichage=3">Serveur RP</a>
				~
				</td>
		</tr>	</table>
	';
}
else
{
	include ('administration/choix_serveurs_off.php');
	include ("guerres_checktermine.php");

	
	
	$ncols = 4;
	function tableBegin ($ancre) { return '<tr><td style="text-align: left;"><table border="0" id="'.$ancre.'">'."\n"; }
	$tableEnd   = '<tr><td>&nbsp;</td></tr></table>'."\n\n";
	

	// preparation des menus serveurs 1/2/3
	function menuserv ($ancre)
	{
		global $serveur_off;
		$colspan = 1;
		$page = 'guerres.php?&affichage=';
		$bold = array( array('', ''), array('<b>', '</b>'));
		$menuserv = '<tr><td style="text-align: center;" colspan="'.$colspan.'"> ~ ';
		$b = ($serveur_off == 1) ? $bold[1] : $bold[0];
		$menuserv .= $b[0].'<a href="'.$page.'1#'.$ancre.'">Serveur 1</a>'.$b[1].' | ';
		$b = ($serveur_off == 2) ? $bold[1] : $bold[0];
		$menuserv .= $b[0].'<a href="'.$page.'2#'.$ancre.'">Serveur 2</a>'.$b[1].' | ';
		$b = ($serveur_off == 3) ? $bold[1] : $bold[0];
		$menuserv .= $b[0].'<a href="'.$page.'3#'.$ancre.'">Serveur RP</a>'.$b[1].' ~ <br>&nbsp;</td></tr>'."\n";
		return $menuserv;
	}

	
	// affichage des guerres
	echo '<table class="localtable630">';
	echo '<tr><td>'."\n".'<h2>Guerres en cours</h2></td></tr>'."\n";
	echo menuserv(1);
	echo tableBegin(1);
	$flag = true;
	$sql = "SELECT id, guilde1, guilde2, type FROM guerres WHERE TYPE = '$TYPE_GUERRE' AND ( valide = '$VALIDE_EN_COURS' OR valide = '$VALIDE_EN_ATTENTE' OR valide = '$VALIDE_EN_NEGOCIA') AND cache = '0' ORDER BY dateDebut DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$flag = false;
		affiche_guerre($data);
	}
	if ($flag)
		echo '<tr>	<td colspan="'.$ncols.'">Aucune guerre n\'agite actuellement Kalamaï.</td></tr>'."\n";
	echo $tableEnd;
	
	
	// affichage des PNA
	echo changement("PNA en cours");
	echo menuserv(2);
	echo tableBegin(2);
	$flag = true;
	$sql = "SELECT id, guilde1, guilde2, type FROM guerres WHERE TYPE = '$TYPE_PNA' AND valide = '$VALIDE_EN_COURS' AND cache = '0' ORDER BY dateDebut DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$flag = false;
		affiche_guerre($data);
	}
	if ($flag)
		echo '<tr>	<td colspan="'.$ncols.'">Aucun PNA n\' a actuellement cours en Kalamaï.</td></tr>'."\n";
	echo $tableEnd;
	
	
	// affichage des anciennes guerres
	echo changement("Guerres passées");
	echo menuserv(3);
	echo tableBegin(3);
	$flag = true;
	$sql = "SELECT id, guilde1, guilde2, type, indep1, indep2 FROM guerres WHERE TYPE = '$TYPE_GUERRE' AND valide = '$VALIDE_TERMINE' AND cache = '0' ORDER BY dateDebut DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$flag = false;
		affiche_guerre($data);
	}
	if ($flag)
		echo '<tr>	<td colspan="'.$ncols.'">Aucune guerre n\'a été déclarée comme terminée officiellement.</td></tr>'."\n";
	echo $tableEnd;
	
	
	// affichage des anciens PNA
	echo changement("PNA rompus");
	echo menuserv(4);
	echo tableBegin(4);
	$flag = true;
	$sql = "SELECT id, guilde1, guilde2, type, indep1, indep2 FROM guerres WHERE TYPE = '$TYPE_PNA' AND valide = '$VALIDE_TERMINE' and puissFin1 != '0' AND puissFin2 != '0' AND cache = '0' ORDER BY dateDebut DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$flag = false;
		affiche_guerre($data);
	}
	if ($flag)
		echo '<tr>	<td colspan="'.$ncols.'">Aucun PNA n\'a été rompu de toute l\'histoire de Kalamaï.</td></tr>'."\n";
	echo $tableEnd;
	
	
	echo '</td></tr></table>';
	mysql_close();
}

include ("fin.php");
?>
