<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$type = ((isset($_GET['type']))&&(in_array($_GET['type'],array(2,3)))) ? $_GET['type'] : 1;
$titre = ($type==1) ? 'Créatures' : 'Magie';

include ("debut.php");
include ("menu.php");
entete($titre);
include("connect.php");
$temps = floor(time()/60);
include("temps_ecoulement.php");

$styleh2 = 'padding-top: 30px;';

$x = 0;
$y = 0;

if ($type != 1)
{
	echo '<table class="localtable963">
	<tr>	<td><h2>Tours de magie et bâtiments spéciaux</h2></td>
		<td class="tdrig" style="line-height:150%;"><a href="construction.php?type=2">Construire une tour de magie</a><br>
			ou <a href="construction.php?type=3&amp;c=1&amp;terrain=colline">construire des bâtiments spéciaux</a></td></tr></table>
	<table class="localtable963"><tr>';
	
	// Tours de magie
	$title = '<td colspan="4" style="'.$styleh2.'"><h2>Tours de magie</h2></td></tr><tr>';
	$sql = 'SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_batiments_id WHERE nom = "'.$nom.'" ORDER BY `id` ASC';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	for ($id=1; $id<=5; $id++)
	{
		if ($data[$id] != '0')
		{
			if ($x == 4)
			{
				$x = 0;
				echo "</tr>\n<tr>";
			}
			$x++;
			$y++;
			echo $title;
			$title = '';
			
			$sql = 'SELECT batiment, image, id FROM creatures WHERE id = "'.$id.'"';
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$dat = mysql_fetch_row($req);
			// ?info_batiment.php?batiment='.$dat[0]
			echo '	<td class="creatbatiliste" style="width:210px;"><a class="discreb" href="construire.php?type=2&amp;batiment='.$dat[2].'&amp;terrain='.$data[$id].'" onclick="NewWindow(this.href,\'name\',\'650\',\'450\',\'yes\');return false" class="discret">
				<b>'.$dat[0].'</b><br>
				('.$data[$id].')<br>
				<img src="'.$dat[1].'" width="100" height="100" alt="'.$dat[1].'" title="'.$dat[1].'" border=1><br>
				(Tour de niveau '.$id.')</a></td>'."\n";
		}
	}
	for (;(($x<4)&&($x>0)); $x++)
		echo "	<td>&nbsp;</td>\n";
	
	// *** bâtiments spéciaux
	include ('batimentspec_include.php');
	$j = 1;
	$title = '<td colspan="4" style="'.$styleh2.'"><h2>Bâtiments spéciaux</h2></td></tr><tr>';
	while (isset($batSpeConstr[$j]))
	{
		if ($batSpeConstr[$j]>0)
		{
			if ($x == 4)
			{
				$x = 0;
				echo "</tr>\n<tr>";
			}
			$x++;
			$y++;
			echo $title;
			$title = '';
		
			$data = $batspe[$j];
			echo '
		<td class="creatbatiliste"><a class="discreb" href="info_batiment.php?type=3&amp;batiment='.$data['id'].'" onclick="NewWindow(this.href,\'name\',\'650\',\'400\',\'yes\');return false" class="discret">
			<b>&nbsp;'.$data['nom'].'&nbsp;</b><br>
			(construit '.$batSpeConstr[$j].' fois)<br>
			<img src="images/special/'.$data['image'].'" width="100" height="100" alt="'.$data['nom'].'" title="'.$data['nom'].'" border=1></a></td>'."\n";
	
		}
		$j++;
	}
	for (;$x>0 && $x<4; $x++)
		echo '	<td class="creatbatiliste">&nbsp;</td>'."\n";
	$x=0;
	$j++;
	echo '</tr>
	</tbody>
	</table>';
}

else if ($type == 1)
{
    echo '<table class="localtable963">';

	$aide =	"<div class='longtexte' style='padding-bottom:0px; position:relative; top:0px;'>
<h3>Équilibre de l'armée</h3>
<p>Le nombre de créatures dont le niveau est supérieur à 1 doit être équilibré par rapport au reste de votre armée, sous peine de subir des malus en combat. Ainsi, les créatures de niveau 6 ne doivent pas représenter plus de 15% des points de vie de votre armée. Les créatures de niveau 5 ou plus ne doivent pas représenter plus de 30% des points de vie de votre armée, ce qui signifie que si vous ne possédez aucune créature de niveau 6, vous pouvez avoir 30% de créatures de niveau 5. Et ainsi de suite jusqu'au niveau 2. Vous trouverez en bas de cette page un récapitulatif qui vous aidera à équilibrer votre armée.</p>
<p>Le malus est d'autant plus fort que le dépassement des quotas est élevé, et un dépassement sur les niveaux 6 fournit un malus plus important qu'un même dépassement sur les niveaux 5, et ainsi de suite.</p>
<h3>Recrutement journalier</h3>
<p>Le nombre de créatures produites chaque jour par vos bâtiments est sujet à des bonus / malus en fonction de votre charisme, du bonus de votre province au recrutement, du bâtiment spécial officine de recrutement, et de certains objets. Les bonus fournis par les objets ne sont effectifs que si l'objet est équipé depuis plus de 24h.</p>
<p>Les bâtiments ne peuvent stocker plus de l'équivalent de 5 jours de recrutement journalier.</p>
<h3>Coût des créatures</h3>
<p>Le coût en or des créatures est sujet à un bonus / malus lié au ratio de votre charisme et de votre niveau. Avec un ratio de 3 charisme par niveau, le coût est celui indiqué dans l'encyclopédie. En-dessous, le prix sera plus élevé, et au-dessus, il sera moins élevé. Le charisme utilisé pour ce calcul ne prend en compte le bonus des objets que s'ils sont équipés depuis au moins 24h, et le bonus du bâtiment spécial Lycée de la rhétorique est limité à 2 fois votre niveau.</p>
<p>Le coût en mana des créatures est sujet à un bonus / malus lié à votre modificateur de consommation de mana. Les objets fournissant un bonus à la consommation de mana ne sont pris en compte dans le calcul que si ils sont équipés depuis au moins 24h.</p>
</div>";
        
        echo '<tr><td colspan="3"><br><br><div id="aide"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'aide\', \'nonaide\');">Afficher l\'aide</a></div>';
	echo '<div id="nonaide" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'nonaide\', \'aide\');" >Cacher l\'aide</a><br><br><div style="font-family:default;">'.$aide.'</div></div></td></tr>';
	echo '<tr>	<td colspan="1"><br><h2>Vos créatures et bâtiments</h2></td>
		<td style="text-align: right;"><a href="construction.php?type=1">Construire un ou des nouveaux bâtiments</a></td></tr>';
	
	// On affiche l'heure du prochain recrutement !
	$req = mysql_query('SELECT connexion_créature FROM joueurs_connexions WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$restant = $duree_jour - ($temps - $data[0]);
	$reste = '';
	$j = floor( $restant /60  /24);
	$h = floor(($restant /60) %24);
	$m = floor( $restant %60 );
	if ($j != 0)
	$reste = $j.' jour, ';
	if ($h != 0)
	$reste.= $h.' heures, ';
	$reste.= $m.' minutes';
	// Création de la table d'affichage des créatures
	echo '<tr><td colspan="3" style="padding-bottom:5px;">Prochain recrutement (approx.) : <b>'.$reste."</b></td><tr>\n";
	
	echo '</tbody></table>
	<table class="localtable963"><tr>';
	
	// Allons chercher la politique du joueur...
	$req = mysql_query('SELECT politique, province FROM joueurs_bonus WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$politique = $dat[0];
	$province = $dat[1];
	// Allons chercher les effets de cette politique...
	$req = mysql_query('SELECT creatures FROM politiques_effets WHERE politique = "'.$politique.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$mod_prov_recrut   = $dat[0];
	// Allons cherche l'effet des bâtiments de province
	$req = mysql_query("SELECT niveau, gain FROM batiment_province WHERE province = '".$province."' AND nom='Casernes fortifiées'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau = $data[0];
	$gain = $data[1];
	$gain = $niveau * $gain /100;
	$mod_prov_recrut = $mod_prov_recrut + $gain;
	
	include_once("calcul_bonus_recrutement.php");
	$crea_obj = calcul_bonus_recr($nom);
	$crea_cha  = calcul_bonus_recr_charisme($nom);
	
	// écoulement du temps
	include("temps_ecoulement.php");
	$parjour = '/jour';
	if ($temps_ecoulement != 1)
		$parjour = ' / '.round(1/$temps_ecoulement,2).' jours';
	
	
	
	// *** Bâtiments "normaux" et tours de magie
	$ifdetruit = false;
	
	$req = mysql_query('SELECT * FROM joueurs_créatures WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$creatExist = mysql_fetch_assoc($req);
	$req = mysql_query('SELECT * FROM joueurs_créatures_id WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$creatRecr = mysql_fetch_assoc($req);
	$re1 = mysql_query('SELECT * FROM joueurs_batiments_id WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$constr = mysql_fetch_assoc($re1);
	
	// on fait un tableau avec les données de toutes les créatures
	$creatures = array();
	$pvs_par_niv = array();
	$pvs_total_armee = 0;
	$sql = "SELECT id, batiment, nombre, nom, image, niveau, pvs FROM creatures WHERE id > 5 ORDER BY niveau ASC, nombre DESC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($dat = mysql_fetch_row($req))
		$creatures[] = $dat;
	
	$title = '<td colspan="4" style="'.$styleh2.'"><h2>Créatures recrutées</h2></td></tr><tr>';
	for ($i=0; $i<=1; $i++)	// $i vaut 0 pour les créatures recrutées, 1 pour celles en réserve
	{
		foreach ($creatures AS $dat)
		{
			$id = $dat[0];
			if (
				(($i==0) && ($creatExist[$id]!='0'))	OR				// premier tour: créatures recrutées
				(($i==1) && ($creatExist[$id]=='0') && (($constr[$id] != "0") || ($creatRecr[$id]!='0')))	// deuxième passage: batiment sans créatures recrutées
			)
			{
				$batiment = $dat[1];
				$nbr = $dat[2];
				$creature = $dat[3];
				$img = $dat[4];
				$niv_crea = $dat[5];
				$pvs = $dat[6];
				
				if ($i==0) {
					$pvs_par_niv[$niv_crea] += $pvs * $creatExist[$id];
					$pvs_total_armee += $pvs * $creatExist[$id];
				}
				
				$link0 = '';
				$link1 = '';
				$creatPJ = '';
				$style = '';
				$existantes = ($i==0) ? '<span style="font-weight: bold;">'.$creatExist[$id].' '.$creature.'</span>' : $creatExist[$id].' '.$creature.'';
				if ($constr[$id] == '0')
				{
					$terrain = '<i>Bâtiment détruit</i>';
					$style = 'color:#666666;';
					$recrutables = ($creatRecr[$id]!=0) ? '<br><b>'.$creatRecr[$id].'</b> en réserve' : '<br>&nbsp;';
					$nbrmax = 1e-10;
					$stackrest = '';
					$link0 = '<a class="discreb" href="recruter_detruit.php?creature='.$id.'" onclick="NewWindow(this.href,\'name\',\'530\',\'470\',\'yes\');return false" class="discret" style="'.$style.'">';
					$link1 = '</a>';
				}
				else
				{
					$terrain = ucfirst($constr[$id]);

					// MAJ DRAVEON : Le temps de recrutement est divisé par deux. Donc c'est plus nbrmax = 5 MAIS 10
					// (Jumelé avec la ligne 232 de maj_or_mana.php)
					$nbrmax = round( 10 * ($nbr * $crea_obj * $mod_prov_recrut * $crea_cha));
					$creatPJ = ' ('.round($nbr * $mod_prov_recrut * $crea_obj * $crea_cha).''.$parjour.')';
					$recrutables = ($creatRecr[$id]!=0) ? '<br><b>'.$creatRecr[$id].'</b> en réserve'.$creatPJ : '<br>'.$creatRecr[$id].' en réserve'.$creatPJ;
					$stackrest = 'Plein à '.round($creatRecr[$id]/$nbrmax*100).' %<br>'.ceil(($nbrmax-$creatRecr[$id])/($nbr*$crea_obj*$mod_prov_recrut*$crea_cha)).' jours restants';
					$style = ($creatRecr[$id] >= $nbrmax) ? 'color:#666666;' : '';
					$link0 = '<a class="discreb" href="recruter.php?creature='.$id.'" onclick="NewWindow(this.href,\'name\',\'530\',\'470\',\'yes\');return false" class="discret" style="'.$style.'">';
					$link1 = '</a>';
				}
				
				if ($x == 4)
				{
					$x = 0;
					echo "</tr>\n<tr>";
				}
				$x++;
				$y++;
				echo $title;
				$title = '';
				
				echo '	<td class="creatbatiliste" style="'.$style.'">'.$link0.'
				<span style="font-weight: bold;">'.$batiment.'</span><br>
				('.$terrain.')'.$link1.'<br>
				<div class="recrFrame">
					'.$link0.'<img src="'.$img.'" width="100" height="100" alt="'.$batiment.'" title="'.$batiment.'" border=1>'.$link1;
				if ($constr[$id] != '0') {
					echo '
					<div class="recrFillStat" style="
						height:'.(102-round((1-$creatRecr[$id]/$nbrmax)*102)).'px;
						background-color:rgb('.round(120+ 70*$creatRecr[$id]/$nbrmax).','.round(80-80*$creatRecr[$id]/$nbrmax).','.round(80-80*$creatRecr[$id]/$nbrmax).');
						top:'.round((1-$creatRecr[$id]/$nbrmax)*102).'px;">
					</div>
					<div class="recrFillText">'.$stackrest.'</div>';
				}
				echo '
				</div>'.$link0.'
				'.$existantes.'
				'.$recrutables.'
				'.$link1."</td>\n";
			}
		}
		for (;(($x<4)&&($x>0)); $x++)
			echo "	<td>&nbsp;</td>\n";
		if ($i==0)
			$title = '<td colspan="4" style="'.$styleh2.'"><h2>Créatures en réserve</h2></td></tr><tr>';
	}
	echo '</tr></tbody></table>';
	     
	if ($y == 0) {
		echo 'Vous ne possédez aucun bâtiment...<br>';
	} else {
		echo '<table class="localtable963">';
		// ----- MAJ EQUILIBRE ARMEE -----
		$dixieme = $pvs_total_armee * 0.15;
		$limite = $pvs_total_armee * 0.15;
		$statut_armee = "<small>Les créatures dont le niveau apparait en rouge sont en surnombre dans votre armée... Une armée mal équilibrée est moins efficace en combat, subit des pertes plus élevées en fin de combat et ne donne pas un gain d'expérience optimum! Pour équilibrer votre armée, vous devez baisser le nombre de créatures dont le niveau apparait en rouge ou augmenter le nombre de créatures de niveau plus faible.</small><br><br>";
		for ($i=6; $i > 1; $i--) {
			$color = '<span>';
			if ($i==6) {
				if (!$pvs_par_niv[$i]) {
					$pvs_par_niv[$i] = 0;
				}
			} else {
				$pvs_par_niv[$i] += $pvs_par_niv[$i+1];
				$limite += $dixieme;
			}
			if ($limite < $pvs_par_niv[$i]) {
				$color = '<span style="color:#ff0000;">';
			}
			$statut_armee .= "$color Niveau >= $i: ".$pvs_par_niv[$i]." / ".round($limite)." points de vie.</span><br>";
		}
		
		echo '<tr><td colspan="4"><br><br><div id="lien_armee"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien_armee\', \'bonus_armee\');">Afficher le statut d\'équilibre de l\'armée</a><br><br></div>';
		echo '<div id="bonus_armee" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus_armee\', \'lien_armee\');" >Cacher le statut d\'équilibre de l\'armée</a><br><br><div style="font-family:default;">'.$statut_armee.'<br></div></div></td></tr>';
		// ----- FIN MAJ -------
		echo '</tbody></table>';
	}
	
	echo '<div class="stratexplic">Un bâtiment ne peut contenir plus de 5 jours de recrutement. La barre rouge sur la droite de l\'image indique le degré de "remplissage" du bâtiment. <span style="color:#666666;">Les bâtiments signalés de cette couleur</span> sont pleins et ne peuvent contenir plus de créatures, ou alors ont été détruits.</div>';
}

mysql_close();
include ("fin.php");
?>
