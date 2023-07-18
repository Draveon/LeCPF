<?php session_start();

$head_title = 'Les batiments spéciaux';
$head_keywords = 'batiment, boost, caracteristique, bonus';


$meta_supp = '<style type="text/css">
div.BS { width:100%; text-align:left; min-height:28px; }
div.BSnom { float:left;}
div.BSpm { float:left; text-align:center; width:20px; padding-top:3px; margin-right:8px; }
div.BSpmB { width:20px; border:1px solid black;}
img.BSimg { width:20px; height:20px; border:1px solid #000000; position:relative; top:3px; }
div.BSdesc { padding-top:7px; min-height:28px; }
</style>
';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	$connexion = 0;
	include ("menu_index.php");
}
else{
	$connexion = 1;
	include ("menu.php");
}
entete_index("Bâtiments spéciaux");


echo '<table class="localtable963"><tbody>
<tr><td><h2>Les bâtiments spéciaux</h2>';

echo '<br><div id="lien"><a href="javascript:swapbonus(\'lien\',\'aide\')">Afficher l\'aide</a></div>
<div id="aide" style="display:none;"><a href="javascript:swapbonus(\'aide\',\'lien\')">Cacher l\'aide</a><br>&nbsp;
<div class="longtexte">Les bâtiments spéciaux vous permettent de mieux personnaliser votre héros, en lui conférant des bonus de différents types (bonus aux caractéristiques, aux aptitudes, ou différents bonus en combat). Ces bâtiments ne nécessitent pas d\'acres pour être construits; on peut dire qu\'ils sont inclus dans les points liés au niveau dans le calcul de la puissance. Ils ne nécessitent pas non plus de ressources ni d\'or pour être construits.</div>
<div class="longtexte">Les bâtiments spéciaux peuvent être construits tous les trois niveaux du héros (soit aux niveaux 1, 4, 7, 10, 13, etc.).</div>
<div class="longtexte">Les bâtiments se répartissent de manière pyramidale en trois branches: celle du Combat, celle de la Magie et celle du Héros. La première se focalise sur des bonus ayant trait directement aux aspects attaque/défense des combats entre joueurs. La seconde branche s\'oriente quand à elle vers des améliorations de l\'utilisation et de l\'efficacité des sorts. Enfin, la branche du Héros regroupe tout un ensemble de bonus allant de l\'augmentation des caractéristiques, un minage plus efficace ou un bonus à l\'aptitude de Sabotage.</div>
<div class="longtexte">Chaque branche est organisée en trois niveaux. Le premier niveau est consitué d\'un seul bâtiment, lequel doit être construit pour pouvoir bâtir tout autre bâtiment de la branche. Posséder ce premier bâtiment autorise la construction de plusieurs autres qui seront dévoilés au fur et à mesure de leur disponibilité. A nouveau, la construction de l\'un de ces bâtiments peut parfois libérer un nouveau bâtiment spécial que vous pourrez construire par la suite.</div>
<div class="longtexte">Il est possible de construire plusieurs fois le même bâtiment spécial. Toutefois, le bonus apporté par une reconstruction du même bâtiment sera moindre (seuls deux tiers du plein bonus seront apportés par un deuxième bâtiment identique, et seulement un tiers au troisième). Il n\'est pas possible de construire un bâtiment plus de trois fois.</div>
<div class="longtexte">Par ailleurs, il vous est possible de détruire vos bâtiments spéciaux, puis de les reconstruire. Cependant, tout comme il faut du temps pour aquérir la pleine maîtrise d\'une technique, il vous faudra du temps pour pouvoir bâtir à nouveau les bâtiments auxquels vous avez droit. Chaque bâtiment détruit ne peut être reconstruit qu\'après le passage d\'un niveau, de manière cumulable. Ainsi, si vous êtes de niveau 16 et détruisez 2 bâtiments spéciaux, il vous faudra attendre d\'atteindre le niveau 17 avant de pouvoir reconstruire le premier bâtiment détruit, et le niveau 18 pour le second.</div>
<div class="longtexte">Le charisme conféré par le "Lycée de la Rhétorique" offre un bonus de recrutement de 2 points par niveau du héros. (avec un gain  maximum de 30 si construit une seule fois, 50 si construit 2 fois, et 60 si construit 3 fois)</div>
</div></br>';
// LISTE DES BATIMENTS
echo '<div class="longtexte">Cliquez sur les petites croix pour découvrir quels bâtiments peuvent être construits!</div>';
$filename = 'cache/encyclopedie_batspe.txt';
if (file_exists($filename))
	include ($filename);
else
{
	$out = '';

	include ('connect.php');
	$tableBatSpe = 'batimentspeciaux';
	$branche = array('du Combat', 'de la Magie', 'du Héros');
	$ecrits = array();
	
	
	// retourne la somme des bonus donné par le bâtiment, selon son niveau
	function getBonusLevel ($bonus, $level)
	{
		if ($level == 0)	return 0;
		if ($level == 1)	return $bonus;
		if ($level == 2)	return $bonus *5/3;
		if ($level == 3)	return $bonus * 2;
		return $bonus * 2;
		
		// erroné return max(0, $bonus*(4-$level)/3);
	//	return round($bonus * (1- pow(2/3, $level))*3 *1000)/1000;
	}

	// retourne le descriptif du bâtiment
	function getDescriptif ($string, $num, $float)
	{
		return str_replace (array('NUM', 'FLOAT'), array($num, $float*100), $string);
	}

	// retourne le descrptif complet du bâtiment
	function getTxt ($id, $level)
	{
		global $tableBatSpe;
		$req = mysql_query("SELECT `nom`, `type`, `multiple`, `affiche`,  `requis`, `bnum1`, `bnum2`, `bfloat1`, `bfloat2`, `btxt1`, `btxt2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_assoc($req))
		{
			$txt1 = getDescriptif($data['btxt1'], getBonusLevel($data['bnum1'], $level), round(getBonusLevel($data['bfloat1'], $level),2));
			$txt2 = getDescriptif($data['btxt2'], getBonusLevel($data['bnum2'], $level), round(getBonusLevel($data['bfloat2'], $level),2));
			if ($txt2 != '')
				$txt1 .= ',<br>'.$txt2[0].substr($txt2,1);
			return $txt1;
		}
		return '';
	}

	// affiche une ligne correspondant à un bâtiment
	function afficheBatSpe ($id, $branch, &$out, $left)
	{
		global $tableBatSpe, $branche, $ecrits;

		if (!in_array($id, $ecrits))
			$ref = $id;
		else	$ref = $id.'_';
		
		$ecrits[] = $ref;
	
		$sql = "SELECT `id`, `nom`, `branche`, `type`, `image`, `niveau` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_assoc($req))
		{
			$url = 'info_batiments.php?type=3&batiment='.urlencode($data['nom']);
			
			$inside = array();
			$sql = "SELECT `id`, `nom`, `branche`  FROM `$tableBatSpe` WHERE `affiche` = '1' AND ( `requis` = '$id' OR `requis` LIKE '%,$id' OR `requis` LIKE '$id,%' OR `requis` LIKE '%,$id,%')";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			while ($dat = mysql_fetch_assoc($req))
				$inside[] = $dat['id'];
			
			$plus = (mysql_num_rows($req) > 0) ? array('&nbsp;+&nbsp;','&nbsp;-&nbsp;') : false;
			$msgBranche = ($branch != $data['branche']) ? ' <b>(Branche '.$branche[$data['branche']].')</b><br>' : '';

			$desc = 400-$left;
			$decal = 28;
			$out .= '
<div class="BS"><div class="BSnom"><div class="BSpm">';
			if ($plus != false)
				$out .= '<div class="BSpmB"><div id="show'.$ref.'"><a href="javascript:swapMultiple(new Array(\'show'.$ref.'\'), new Array(\'inner'.$ref.'\', \'hide'.$ref.'\'))">'.$plus[0].'</a></div><div id="hide'.$ref.'" style="display:none;" ><a href="javascript:swapMultiple(new Array(\'inner'.$ref.'\', \'hide'.$ref.'\'), new Array(\'show'.$ref.'\'))">'.$plus[1].'</a></div></div>';
			$out .= '</div><img src="images/special/'.$data['image'].'" alt="" class="BSimg"> '.$data['nom'].'</div><div class="BSdesc" style="padding-left: '.$desc.'px;">'.$msgBranche.getTxt ($data['id'], 1).'</div>
';
			if (mysql_num_rows($req) > 0)
			{
				$out .= '<div id="inner'.$ref.'" style="display:none; padding-left:'.$decal.'px;">';
				foreach ($inside AS $key => $idIn)
					afficheBatSpe($idIn, $data['branche'], $out, $left+$decal);
				$out .= '</div>'."\n";
			}
			
			$out .= '</div>'."\n";
		}
	}

		

	// *** *** *** affiche les batiments constructibles
	$out .= '<div style="width:963px;">';
	$branch = -1;
	$sql = "SELECT `id`, `nom`, `branche`, `type`, `image`, `niveau` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `requis` = '' ORDER BY `branche` ASC, `niveau` ASC, `type` DESC, `id` ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_assoc($req))
	{
		if ($branch != $data['branche'])
		{
			$out .= '<div style="text-align:left; width:100%;"><b>Branche '.$branche[$data['branche']].'</b></div>'."\n";
			$branch = $data['branche'];
		}
		
		afficheBatSpe($data['id'], $data['branche'], $out, 0);
	}
	$out .= '</div>';
	echo $out;

	// écriture dans le fichier cache
	$fp = fopen($filename,"w+");
	fwrite ($fp,$out);
	fclose ($fp);
	
	
	mysql_close();
}

echo '
</td></tr></table>
';

include ("fin.php");
?>
