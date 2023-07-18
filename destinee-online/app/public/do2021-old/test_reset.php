<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

$meta_supp = '<script language="javascript" src="motiongallery.js"></script>
	<link rel="stylesheet" type="text/css" href="gallerystyle.css">';

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
{
	if (!isset($_POST['nom']))
	{
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];

include ("debut.php");
include ("menu.php");
entete("Inventaire");
include("connect.php");

$elements = array('terrsup_feu','terrsup_air','terrsup_terre','terrsup_eau','terrsup_elec');
$elementstitle = array('du Feu','de l\'Air','de la Terre','de l\'Eau','de l\'Electricité');
$elem_sortoff = array('Feu', 'Air', 'Terre', 'Eau', 'Électricité');


$txt[1] = array(
	'Votre blessure vous semble chaude et vous brûle',
	'Votre membre semble se dissoudre dans l\'environnement',
	'Votre membre vous semble subitement très lourd',
	'Vous vous semblez sans force après ce coup',
	'Vous sentez des picotements dans votre membre'
);
$txt[2] = array(
	'Votre blessure vous semble chaude et vous brûle',
	'Vous ne sentez plus votre membre',
	'Vous peinez à vous déplacer',
	'Le sang ruisselle le long de votre cuisse',
	'La blessure vous semble comme des petits dards'
);
$txt[3] = array(
	'Vous vous sentez brûler de l\'intérieur',
	'Vous sentez votre vitalité s\'enfuir par cette blessure',
	'Bouger devient très pénible',
	'Vous saignez abondament',
	'Vous sentez comme mille aiguilles s\'enfoncer dans votre chair'
);



$etape = ((isset($_REQUEST['etape']))&&(is_numeric($_REQUEST['etape']))) ? round($_REQUEST['etape']) : 0;
$choix = ((isset($_REQUEST['choix']))&&(isset($elements[$_REQUEST['choix']]))) ? round($_REQUEST['choix']) : -1;
$continue = (isset($_REQUEST['continue'])) ? true : false;

//echo '<xmp>'; print_r($_POST); echo '</xmp>';


if (!$continue)
	$etape = 0;

echo '<form method="post" action="test_reset.php">
<input type="hidden" name="etape" value="'.($etape+1).'">
';
switch ($etape)
{
	case '0' :
		echo '<input type="hidden" name="continue" value="1">';
		echo 'Vous entrez dans le temple. Après un moment de recueillement plutôt bref, vous vous approchez de l\'autel qu\'habille un prêtre. Sur un signe de votre tête, il s\'approche de vous et vous déclare sans préambule:<br>
			<i>Votre temps est venu, en effet. Suivez-moi, si vous le voulez bien.</i><br>
			Interloqué, vous le suivez dans une suite de couloirs. Le prêtre vous mène dans un long couloir bordé de plusieurs portes. Sur chacune d\'elle est gravé un symbole.<br>
			<i>Vous devez passer par l\'une de ces portes. Ce que vous chercher vous attend au-delà de cette porte. Une épreuve vous attend cependant, il faudra vous montrer suffisament courageux pour la surmonter. Si vous échouez, ma fois... Peut-être serez-vous autorisé à recommencer plus tard?</i><br>
			Sans attendre votre réaction, il se retire, vous laissant seul dans le couloir.<br>
			Quelle porte choississez-vous?<br>
			<div nowrap>';
		foreach ($elements AS $i => $element)
			echo '<input type="image" src="images/terrain/'.$element.'.gif" name="choix" value="'.$i.'" height="100" width="100" border="0" alt="Choisir cette porte" style="padding:5px;">';
		echo '</div>';
		break;
	case '1' :
		echo '<input type="hidden" name="choix" value="'.$choix.'">';
		echo '<div><img src="images/terrain/'.$elements[$choix].'.gif" height="100" width="100" border="0" alt=""></div>';
		echo 'Vous entrez dans la salle qui semble emplie d\'un épais brouillard étouffant sons et cachant la vue. Vous entendez à peine la porte qui se referme derrière vous, à quelques pas seulement de distance. Même le sol vous est invisible, alors qu\e vous le sentez souple et presque inconsistant. Tous vos sens semblent émoussés.<br>
			Sur vos gardes, vous vous avancez dans la pièce dont vous ne pouvez estimer les dimensions. De temps à autre un courant d\'air vous chatouille les chevilles, mais il s\'agit bien là de votre seule perception de ce qui vous entoure.<br>
			Soudain apparait devant vous voyez une arme un bâton probablement et une douleur fulgurante vous lance dans votre bras gauche.'.$txt[1][$choix].', mais vous en avez vu d\'autres et vous vous mettez en garde.';
		echo 'Vous remémorant les paroles du prêtre, vous vous considérez la possibilité de revenir en arrière. Que désirez-vous faire?<br>';
		echo '<input type="submit" name="continue" value="Combattre"> ou <input type="submit" name="fuir" value="Fuir"> ?';
		break;
	case '2' : // optimiste
		echo '<input type="hidden" name="choix" value="'.$choix.'">';
		echo '<div><img src="images/terrain/'.$elements[$choix].'.gif" height="100" width="100" border="0" alt=""></div>';
		echo 'Votre adversaire est agile, tantôt devant, tantôt de côté, parfois même derrière vous. Mais vous pensez l\'avoir atteint une fois, ce qui vous donne du courage. Vous sentez que s\'il commet une erreur, il pourrait se retrouver à votre merci.<br>
			Alors que vous ne vous y attendiez pas, une douleur atroce jaillit de votre jambe. '.$txt[2][$choix].'. Cela vous en coûte, mais vous vous redressez.<br>';
		echo 'Que désirez-vous faire?<br>';
		echo '<input type="submit" name="continue" value="Combattre"> ou <input type="submit" name="fuir" value="Fuir"> ?';
		break;
	case '3' : // pessimiste
		echo '<input type="hidden" name="choix" value="'.$choix.'">';
		echo '<div><img src="images/terrain/'.$elements[$choix].'.gif" height="100" width="100" border="0" alt=""></div>';
		echo 'Le combat tourne mal, c\'est à peine si vous parvenez à localiser l\'arme qui vous a déjà atteint par deux fois. Vous n\'avez jamais affronté d\'ennemi aussi redoutable. De temps à autre vous voyez l\'arme de votre adversaire sortir de la brume: vous parez puis contre-attaquez, mais ne fendez que le brouillard. Des artefacts magiques plus puissants pourraient-ils vous être utiles?<br>
			Alors que vous ne vous y attendiez pas, une douleur atroce jaillit de votre dos. '.$txt[3][$choix].'. Cela vous en coûte, mais vous vous redressez.<br>';
		echo 'Que désirez-vous faire?<br>';
		echo '<input type="submit" name="continue" value="Continuer le combat"> ou <input type="submit" name="fuir" value="Fuir"> ?';
		break;
	case '4' :	// almost the end
		echo '<input type="hidden" name="choix" value="'.$choix.'">';
		echo '<div><img src="images/terrain/'.$elements[$choix].'.gif" height="100" width="100" border="0" alt=""></div>';
		echo 'Vous vous sentez mal, votre tête tourne, où sont le haut et le bas? Vous ne vous sentez pas de taille pour cette épreuve! La douleur irradie de vos blessures et vous paralyse. Jamais ne vous êtes-vous senti aussi en danger!<br>
			Comme en écho à vos pensées, le bâton vous touche à la main et vous lâchez votre arme. Vous savez qu\'encore une blessure ce sera la fin. Sans doute faudra-t-il revenir plus tard mieux équipé pour cette épreuve...<br>';
		echo 'Que désirez-vous faire?<br>';
		echo '<input type="submit" name="continue" value="Continuer le combat"> ou <input type="submit" name="fuir" value="Fuir"> ?';
		break;
	case '5' :	// MORT
		echo '<input type="hidden" name="choix" value="'.$choix.'">';
		echo '<div><img src="images/terrain/'.$elements[$choix].'.gif" height="100" width="100" border="0" alt=""></div>';
		echo 'Alors que vous vous jeter sur votre adversaire dans une insignifiante tentative, il vous transperce le torse d\'un unique coup d\'une violence extrême.<br>
			Au sol, vous regardez médusé cette arme noir plantée dans votre coeur, alors que vous vous sentez mourir... L\'image du symbole gravé sur la porte revient dans vos yeux, de plus en plus nettement jusqu\'à cacher tout le reste.<br>
			Maintenant comme débarassé de votre poids et de vos douleurs, vous n\'existez plus que pour ce symbole. Et alors une voix vous parle:<br>';
		echo '<i>Et bien, jeune héros, vous semblez avoir réussi cette épreuve. Du courage vous était demandé, et vous êtes allé jusqu\'au bout. Vous pourrez donc renaitre, utiliser un nouveau corps, et profiter de nouveaux pouvoirs.<br>
			Libre à vous de choisir en quelle race et quelle classe vous vous réincarnerez, cela importe peu, tant que vous faites couler le sang.<br>
			Quand à vos pouvoirs, ils seront de deux sortes. Pour entrer ici vous avez choisi la porte '.$elementstitle[$choix].'. Vous aurez donc un accès restreint à ce plan élémentaire, qui vous permettra de recruter des troupes parmi ses habtitants. Ce plan élémentaire vous sera présenté comme un nouveau type de terrain, sauf qu\'évidement vos gens, serf, serviteurs et autres vassaux ne pourront s\'y établir.<br>
			De plus, vous aurez une certain affinité avec la magie liés à cet élément.<br>
			Ces nouveaux avantages seront plutôt limités, mais il vous sera possible de revenir plus tard, une fois que vous aurez aquis une certain maitrise de ces pouvoirs...</i><br>';
		
		// calcul des bonus pour le reset
		$req = mysql_query('SELECT niveau, '.implode(', ', $elements).' FROM joueurs_stats INNER JOIN joueurs_modificateurs ON joueurs_modificateurs.id = joueurs_stats.id WHERE joueurs_stats.nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$jreset = mysql_fetch_assoc($req);
		// bonus terrain
		if ($jreset['niveau'] > 1)
			$jreset[$elements[$choix]] = max(0.5, $jreset[$elements[$choix]]) + $jreset['niveau']/100;	// reset au lvl 2: coefquasi 0.5; reset au lvl 50 -> coef 1.0
			
		// bonus éléments
		foreach ($elements AS $i => $element)
		{
			$elem = substr($element,8);
			$jreset[$elem_sortoff[$i]]	= max(0, $jreset[$element]-0.5) / 10;	// reset lvl 50: resist 5% 
			$jreset['res_'.$elem]		= max(0, $jreset[$element]-0.5) / 10;	// reset lvl 50: resist 5% 
			$jreset[$elem.'_def']		= max(0, $jreset[$element]-0.5) / 10;	// reset lvl 50: effic sort defs 5% 
			$jreset['res_'.$elem.'_def']	= max(0, $jreset[$element]-0.5) / 10;	// reset lvl 50: resist 5% 
		}
		// affichage bonus
		
		echo '<b>Nouveau terrain</b><br>';
		foreach ($elements AS $i => $element)
			echo '<b>'.substr($element,8).'</b> : coef '.$jreset[$element].'<br>';
		//echo '<xmp>'; print_r($jreset); echo '</xmp>';
		include "info_objets_include.php";
		echo liste_bonus ($jreset, '', 0);
		break;

}
echo '</form>';



mysql_close();

include ("fin.php");
?>
