<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

include ("debut.php");
include ("menu.php");
entete("Construction");
include("connect.php");
	
$type = ((isset($_GET['type']))&&(in_array($_GET['type'], array(2,3)))) ? $_GET['type'] : 1;

$nom = $_SESSION['nom'];
$req = mysql_query("SELECT race, classe FROM joueurs_heros WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$race = $data[0];
$classe = $data[1];


$error = '';

function affiche_batiment($nom_batiment, $terrain, $espace, $cout, $image, &$x, &$z, $type, $upgrade, $id_bat)
{
	$espace = number_format($espace, 0, ",", " ");
	$cout = number_format($cout, 0, ",", " ");
	
	$style = ($upgrade < 2) ? '' : '';
	switch ($type)
	{
		case '0' : $width='530';	$height='320'; break;
		case '1' : $width='530';	$height='320'; break;
		case '2' : $width='650';	$height='450'; break;
		case '3' : $width='650';	$height='400'; break;
		case '4' : $width='650';	$height='450'; break;
	}
	$upgrad_ = ($upgrade==1) ? 'jamais construit' : 'construit '.($upgrade-1).' fois';
	
	$linkReturn = '';
	if ($type==3)
	{
		global $batspe, $tableBatSpe;
		foreach ($batspe AS $id => $data)
		{
			if ($data['nom'] == $nom_batiment)
			{
				$sql1 = "SELECT `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2` FROM `$tableBatSpe` WHERE `id` = '$id'";
				$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.mysql_error());
				$dat1 = mysql_fetch_assoc($req1);
				foreach ($dat1 AS $key => $value)
					$batspe[$id][$key] = $value;
				$bonus = getTxt ($id, $upgrade);
				$bonusact = getTxt ($id, $upgrade-1);
				if ($bonus == $bonusact)
					return false;
			break;
			}
		}
	}
	
	if ($x == 0)
		echo '<tr>';
	$x++;
	$z++;
	echo '	<td class="creatbatiliste">
		<a style="'.$style.'" class="discreb" href="construire.php?type='.$type.'&batiment='.$id_bat.'&terrain='.$terrain.'" onclick="NewWindow(this.href,\'name\',\''.$width.'\',\''.$height.'\',\'yes\');return false">
		<b>'.$nom_batiment.'</b><br>';
	if ($espace != 0) echo '
		('.$espace.' acres)<br>';
	echo '
		<img src="'.$image.'" width="100" height="100" alt="'.$nom_batiment.'" border=1><br>';
	if ($cout != 0) echo '
		'.$cout.' pièces d\'or';
	if ($upgrade != 0) echo '
		('.$upgrad_.')<br>';
	echo '</a></td>'."\n";
	
	if ($x == 3)
	{
		echo '</tr>';
		$x=0;
	}
	return true;
}

$req = mysql_query("SELECT province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$province = mysql_fetch_assoc($req);
$province = $province['province'];
if ($province == 'Aucune') {
	echo '<table class="localtable630"><tbody>
	<tr>	<td><h2>Vous devez rejoindre une province avant de démarrer la moindre construction! <br><a href="menu_palatin.php">Cliquez-ici pour rejoindre une province.</a></h2><br><br></td></tr>';
	echo '</tbody></table>';
} else {
	// page par défaut
	if(!isset($_GET['c']))
	{
		$_SESSION['construction'] = 0;
		
		$req = mysql_query("SELECT * FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$j_terre = mysql_fetch_assoc($req);
		$req = mysql_query("SELECT * FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$j_terre_utile = mysql_fetch_assoc($req);
		
		$l_terrain = array('riverain', 'colline', 'désert', 'forêt', 'arctique', 'marais', 'montagne', 'plaine', 'caverne');
		$images = $l_terrain;
		$images[0] = 'aquatique';
		
		$req = mysql_query("SELECT pvstotal, population, riverain, colline, `désert`, `forêt`, arctique, marais, montagne, plaine, caverne FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$jmodific = mysql_fetch_assoc($req);
		$pvstotal = $jmodific['pvstotal'];
		$population = $jmodific['population'];
		
		// on en profite pour vérifier que le total des terres correspond
		$terre_total = 0;
		$display = array();
		foreach ($l_terrain AS $terrain)
		{
			$terre_total += $j_terre[$terrain];
			$display[$terrain] = number_format( ($j_terre[$terrain] - $j_terre_utile[$terrain]), 0, ",", " ");
		}
		
		if ($j_terre['total'] != $terre_total)
		{
			$sql = "UPDATE joueurs_terre SET `total` = '".$terre_total."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			
			$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$niveau = $data[0];
		}
		
		echo '<table class="localtable630"><tbody>
		<tr>	<td colspan="3"><h2>Choisir un type de terrain...</h2></td></tr>';
		$id = 0;
		foreach ($l_terrain AS $i => $terrain)
		{
			if ($id == 0)
				echo '<tr>';
			echo '	<td class="constrterrain">
				<a href="construction.php?type='.$type.'&amp;c=1&amp;terrain='.$terrain.'" class="discreb"><b>'.ucfirst($terrain).'</b></a>
				<a href="construction.php?type='.$type.'&amp;c=1&amp;terrain='.$terrain.'" class="info" onmouseover="afficheinfobulle(\'info'.$i.'\');">('.number_format($jmodific[$terrain],1).'<span id="info'.$i.'" class="tooltip">Le modificateur à ce terrain<br>dû à votre race</span>)</a><br>
				<a href="construction.php?type='.$type.'&amp;c=1&amp;terrain='.$terrain.'" class="discreb"><img src="images/terrain/'.str_replace(array('é','ê'),array('e','e'),$images[$i]).'.gif" border=0><br>
				Acres libres : '.$display[$terrain].'</a></td>';
			$id++;
			if ($id > 2)
			{
				$id = 0;
				echo '</tr>';
			}
		}
		echo '</tbody></table>';
	}
	else
	{
		if ($_GET['c'] == 1 or !isset($_GET['batiment']))
		{
			$tmp = get_html_translation_table(HTML_ENTITIES);
			$tmp = array_flip ($tmp);
			if ((isset($_GET['terrain']))&&((in_array($_GET['terrain'], array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne')))||(in_array(strstr($_GET['terrain'],$tmp), array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne')))))
				$terrain = $_GET['terrain'];
			else	die ('Deux femmes qui discutent :<br>- Et votre bébé, comment va-t-il ?<br>- Très bien! Il marche depuis deux mois.<br>- Ho ! hé bien, il doit être loin à l\'heure qu\'il est...');
			
			$req = mysql_query("SELECT `".$terrain."` FROM joueurs_modificateurs WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req); // on en profite pour voir si ya eu un hack
			$mod_terrain = $data[0];
			
			$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$jbonus = mysql_fetch_assoc($req);
			if ($jbonus['province'] == 'Aucune')	$sql = "SELECT politiques_effets.batiments AS prov_batiment FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
			else					$sql = "SELECT politiques_effets.batiments + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '".$jbonus['politique']."' AND batiment_province.province = '".$jbonus['province']."' AND batiment_province.nom = 'Etude d''architecte'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$mod_province = $data[0];
			
			$req = mysql_query("SELECT `".$terrain."` FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			$terre = mysql_fetch_row($req);
			$req = mysql_query("SELECT `".$terrain."` FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			$terre_utile = mysql_fetch_row($req);
			$terre_libre = ($terre[0] - $terre_utile[0]) * $mod_terrain * $mod_province;
		
			$req = mysql_query("SELECT niveau, cha, argent FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$niveau_joueur = $data[0];
			$mod_charisme = 2 / pow(($data[1] + 20), 1/5);
			// les prix des batiments sont gardés les mêmes et les ressources de la personne sont adaptés inversément aux modificateurs (pour que l'écriture de la requète sql soit plus simple?)
			$argent = round($data[2] * $mod_terrain * $mod_province / $mod_charisme);
			
			if ($type != 3)
			{
				$req_batiment = mysql_query("SELECT * FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
				$data_batiment = mysql_fetch_assoc($req_batiment);
			}
			if ($type == 1)
				$type = 0;	// on veut aussi afficher certains batiments non constructibles
			
			
			echo '<table class="localtable630"><tbody>
				<tr>	<td colspan="3" style="text-align: left;"><h2>Choisir un bâtiment...</h2>
				<center>
				~ <a href="construction.php?c=1&terrain='.$terrain.'&type=1#ici">Constructions générales</a> <a name="ici">|</a>
				  <a href="construction.php?c=1&terrain='.$terrain.'&type=2#ici">Magie & Bâtiments spéciaux</a> ~
				<br>&nbsp;</center>
				</td></tr>
				</tbody></table>';
			
			while ($type != -1) // on se prépare un oucle pour pouvoir afficher plusieurs types de batiments les uns après les autres
			{
				if ($type == 0)
				{
					$z = 0;
					echo '<div id="lien" style="display:block;">
						<a href="javascript:swapbonus(\'lien\',\'contenu\')">Afficher les batiments presque contructibles</a><br>&nbsp;
					</div>
					<div id="contenu" style="display:none;">
						<a href="javascript:swapbonus(\'contenu\',\'lien\')">Cacher les batiments presque contructibles</a><br>&nbsp;
					<table class="localtable630"><tbody>';
					$sql = "SELECT id, batiment, cout_batiment, espace, image, type, raciale FROM creatures WHERE  `id` > '5' AND (terrain01 = '$terrain' OR terrain02 = '$terrain' OR terrain03 = '$terrain' OR terrain01 = 'Tous') AND
						(	(espace < '".$terre_libre."' AND cout_batiment > '".$argent."')
						  OR	(espace > '".$terre_libre."' AND espace < '".round(100*$terre_libre)."' AND cout_batiment < '".$argent."') )
						AND `constructible` = '1'
						ORDER BY espace ASC
						LIMIT 6";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					if (mysql_num_rows($req) > 0)
					{
						$dat = array();
						echo '<tr><td colspan="3" style="text-align: left;"><h2>Bâtiments presque constructibles</h2></td></tr>';
						while ($data = mysql_fetch_row($req))
							$dat[] = $data;
						$dat = array_reverse($dat);
						$x = 0;
						foreach ($dat AS $data)
						{
							$id = $data[0];
							$nom_batiment = $data[1];
							$cout = ceil($data[2] / $mod_terrain / $mod_province * $mod_charisme);
							$espace = ceil($data[3] / $mod_terrain / $mod_province);
							$image = $data[4];
							$typ_ = $data[5];
							$raciale = $data[6];
							
							$batiment = $data_batiment[$id];
							
							// normalement on affiche rien, mais on regarde les critères d'affichage un à un.
							$affiche = false;
							
							if ($raciale) {
								$race_bat = substr($nom_batiment, strpos($nom_batiment, " – ") + 3);
								$raciale_allowed = $race_bat == $race;
							} 
							
							// bâtiments normaux et raciale possible
							if (($batiment == '0') && (!$raciale || $raciale_allowed))
								$affiche = true;
							
							
							// si un des critères d'affichage est rempli, on y va!
							if ($affiche)
							{
								if ($x == 0)
									echo '<tr>';
								$x++;
								$z++;
								
								echo '<td class="creatbatiliste" style="color:#666666;"><a style="color:#666666;" class="discreb" href="construire.php?type='.$typ_.'&batiment='.$id.'&terrain='.$terrain.'" onclick="NewWindow(this.href,\'name\',\'530\',\'320\',\'yes\');return false"><b style="color:#666666;">'.$nom_batiment.'</b><br>('.$espace.' acres)<br><img src="'.$image.'" width="100" height="100" alt="'.$nom_batiment.'" border=1><br>'.$cout.' pièces d\'or</a></td>'."\n";
								if ($x == 3)
								{
									echo '</tr>';
									$x=0;
								}
							}
						}
					}
					for (;(($z<3)&&($z!=0)); $z++)
						echo '<td>&nbsp;</td>';
					
					if ($z == 0)
						echo '<tr><td colspan=3><div style="margin:0px auto; font-size:12pt; width:400px;">Aucun bâtiment n\'est constructible sur ce terrain.<br>&nbsp;</div></td></tr>';
					
					echo '</tbody></table>
					</div>';
					
					$type = 1;
				}
				else if ($type == 1)
				{
					$z = 0;

					$mag = (isset($_GET['mag'])) ? mysql_real_escape_string($_GET['mag']) : '2';
					// Tri attaque magique ou non
					$magique = array('Physique', 'Magique', 'Tous');
					$prems = true;
					foreach ($magique as $key => $which) {
						if (!$prems)	echo  '-';
						$prems = false;
						echo "<a href='construction.php?mag=$key&type=$type&c=1&terrain=$terrain'";
						if ($key=="$mag")	echo 'EncCreatLien';
						else			echo 'EncCreatAffiche';
						echo '">';
						if (!$prems)	echo '&nbsp; ';
						echo $which.'&nbsp; </a>';
					}
					$att_mag = ($mag==="2")?"":"att_mag = $mag AND";
					echo '<table class="localtable630"><tbody>';
					$order = 'DESC';
					$sql = "SELECT id, batiment, cout_batiment, espace, image, type, raciale FROM creatures WHERE $att_mag `id` > '5' AND (terrain01 = '$terrain' OR terrain02 = '$terrain' OR terrain03 = '$terrain' OR terrain01 = 'Tous') AND espace < '".$terre_libre."' AND cout_batiment < $argent AND `constructible` = '1' ORDER BY cout_batiment ".$order;
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					if (mysql_num_rows($req) > 0)
					{
						echo '<tr><td colspan="3" style="text-align: left;"><h2>Bâtiments constructibles</h2></td></tr>';
						$x = 0;
						while ($data = mysql_fetch_row($req))
						{
							$id = $data[0];
							$nom_batiment = $data[1];
							$cout = ceil($data[2] / $mod_terrain / $mod_province * $mod_charisme);
							$espace = ceil($data[3] / $mod_terrain / $mod_province);
							$image = $data[4];
							$typ_ = $data[5];
							$raciale = $data[6];
							
							$batiment = $data_batiment[$id];
							
							// normalement on affiche rien, mais on regarde les critères d'affichage un à un.
							$affiche = false;
							
							if ($raciale) {
								$race_bat = substr($nom_batiment, strpos($nom_batiment, " – ") + 3);
								$raciale_allowed = $race_bat == $race;
							}
							
							// bâtiments normaux et raciale possible
							if (($batiment == '0') && (!$raciale || $raciale_allowed))
								$affiche = true;
							
							// si un des critères d'affichage est rempli, on y va!
							if ($affiche)
								affiche_batiment($nom_batiment, $terrain, $espace, $cout, $image, $x, $z, $type, 0, $id);
						}
					}
					for (;(($z<3)&&($z!=0)); $z++)
						echo '<td>&nbsp;</td>';
					if ($z == 0)
						echo '<tr><td colspan=3><div style="margin:0px auto; font-size:12pt; width:400px;">Malheureusement, dans l\'état actuel de vos finances et de vos possessions territoriales, vous n\'êtes pas en mesure d\'entamer la construction d\'un quelconque bâtiment...<br>&nbsp;</div></td></tr>';
					echo '</tbody></table>';
					
					$type = -1;
				}
				else if ($type == 2)
				{
					// On peut toujours construire au moins la tour 3 (même pour une classe qui n'a pas de sorts lvl 3)
					$max_lvl_magie = 3;
					$sql = "SELECT `4`, `5` FROM `classes` WHERE `classe` = '$classe'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					$data = mysql_fetch_row($req);
					if ($data[1] > 0) {
						$max_lvl_magie = 5;
					} else if ($data[0] > 0) {
						$max_lvl_magie = 4;
					}
					
					$z = 0;
					echo '<table class="localtable630"><tbody>';
					
					$order =  'ASC';	// tours de magie (sinon le script ne tient plus le compte des tours déjà construites)
					$sql = "SELECT id, batiment, cout_batiment, espace, image, type FROM creatures WHERE espace < '".$terre_libre."' AND cout_batiment < $argent AND `constructible` = '1' AND id < 6 ORDER BY cout_batiment ".$order;
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					if (mysql_num_rows($req) > 0)
					{
						echo '<tr><td colspan="3" style="text-align: left;"><h2>Tour de magie</h2></td></tr>';
						
						$x = 0;
						$magie = true;  // on veut afficher une seule tour de magie, la plus petite à pas être construite. Dès que $magie devient false, on affiche plus rien
						while ($data = mysql_fetch_row($req))
						{
							$id = $data[0];
							$nom_batiment = $data[1];
							$cout = ceil($data[2] / $mod_terrain / $mod_province * $mod_charisme);
							$espace = ceil($data[3] / $mod_terrain / $mod_province);
							$image = $data[4];
							$typ_ = $data[5];
							
							$batiment = $data_batiment[$id];
							
							// normalement on affiche rien, mais on regarde les critères d'affichage un à un.
							$affiche = false;
							
							if($id == 2 AND $niveau_joueur < 3)
								$magie = false;
							if($id == 3 AND $niveau_joueur < 6)
								$magie = false;
							if($id == 4 AND ($niveau_joueur < 10 || $max_lvl_magie < 4))
								$magie = false;
							if($id == 5 AND ($niveau_joueur < 15 || $max_lvl_magie < 5))
								$magie = false;
							// tours de magie
							if (($batiment == '0') && ($id <= 5) && ($magie) && ($type == 2))
							{
								$magie = false;
								$affiche = true;
							}
										
							// si un des critères d'affichage est rempli, on y va!
							if ($affiche)
								affiche_batiment($nom_batiment, $terrain, $espace, $cout, $image, $x, $z, $type, 0, $id);
						}
					}
					for (;(($z<3)&&($z!=0)); $z++)
						echo '<td>&nbsp;</td>';
					if ($z == 0)
						echo '<tr><td colspan=3><div style="margin:0px auto; font-size:12pt; width:400px;">Malheureusement, dans l\'état actuel de vos finances et de vos possessions territoriales, vous n\'êtes pas en mesure d\'entamer la construction d\'un quelconque bâtiment...<br>&nbsp;</div></td></tr>';
					echo '</tbody></table>';

					$type = 3;
				}
				else if ($type == 3)	// bâtiment spéciaux
				{
					include ('batimentspec_include.php');
					echo '<table class="localtable630"><tbody><tr>';
					// pêche aux bâtiments construits
					$sqlconstr = '';
					$j = 1;
					while (isset($batSpeConstr[$j]))
					{
						if ($data[$j] != 0)
						{
							$sqlconstr .= ' `requis` LIKE \''.$j.'\' OR';
							$sqlconstr .= ' `requis` LIKE \''.$j.',%\' OR';
							$sqlconstr .= ' `requis` LIKE \'%,'.$j.'\' OR';
							$sqlconstr .= ' `requis` LIKE \'%,'.$j.',%\' OR';
						}
						$j++;
					}
					$sqlconstr .= ' `requis` = \'\' ';
					
					// contrôle du nombre de bâtiments constructibles
					if ($nbrBatSpe >= $nbrBatAuth)
					{
						$sqlconstr = " '1' = '2' ";
						$error = 'Vous ne pouvez pas construire de bâtiment spécial pour le moment. Vous pouvez en construire un tous les 3 niveaux (soit aux niveaux 1, 4, 7, 10, etc.).<br>';
					}
					else if ($niveau + ($nbrBatAuth-$nbrBatSpe) <= $nivRestriction)
					{
						$sqlconstr = " '1' = '2' ";
						$error = 'Suite à une destruction de bâtiment, vous devez attendre de passer de niveau avant de pouvoir construire à nouveau votre bâtiment spécial.';
					}
					
					for ($branch=0; $branch<3; $branch++)
					{
						$sql = "SELECT `id`, `nom`, `image`, `cout_or`, `niveau` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `cout_or` <= '$argent' AND `branche` = '".$branch."' AND ( $sqlconstr ) ORDER BY `niveau` ASC, `type` DESC, `id` ASC";
						$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
						$qtee = mysql_num_rows($req);
						if ($qtee>0)
							echo '</tr><tr><td colspan="3" style="text-align: left;"><h2>Branche '.$branche[$branch].'</h2></td></tr><tr>';

						$x = 0;
						$z = 0;
						$lvl = -1;
						while ($data = mysql_fetch_row($req))
						{
							$id = $data[0];
							$nom_batiment = $data[1];
							$image = 'images/special/'.$data[2];
							$cout = $data[3];
							$espace = 0;
							if ($data[4] != $lvl)
							{
								$lvl = $data[4];
								if ($x>0)
								{
									for (;$x<=3;$x++)
										echo '<td class="creatbatiliste">&nbsp;</td>';
									echo '</tr><tr>';
								}
								$x=0;
							}
							affiche_batiment ($nom_batiment, $terrain, $espace, $cout, $image, $x, $z, $type, $batSpeConstr[$id]+1, $nom_batiment);
						}
						for (;($x<3)&&($x>0);$x++)
							echo '<td class="creatbatiliste">&nbsp;</td>';
					}
					if ($error != '')
						echo '</tr><tr><td colspan="3" class="tdlef"><h2>Bâtiment spéciaux</h2></td>
							</tr><tr><td colspan=3><div style="margin:0px auto; font-size:12pt; width:400px;">'.$error.'</div></td>';
					
					$type = -1;
				} 
				else
				{
					$type = -1;
				}
	//			echo '</tr></tbody></table>';
			}
			
			
			echo '<table class="localtable630"><tbody><tr><td colspan="3" style="text-align: center;">&nbsp;<br>
				~ <a href="construction.php?c=1&terrain='.$terrain.'&type=1#ici">Constructions générales</a> <a name="fond">|</a>
				  <a href="construction.php?c=1&terrain='.$terrain.'&type=2#ici">Magie & Bâtiments spéciaux</a> ~ </td></tr>';
			
			echo "</tbody></table>";		
			
		}
	}
}
mysql_close();
	
include ("fin.php");
