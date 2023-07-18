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


// cette fonction sert à écrire une des lignes de comparaison des scores entre les 2 armadas (avec la petite image de walkyrie)
function line($titre, $n1, $n2, $linestyle, $ifIcon=true)
{
	$sgn = (abs($n1-$n2)<0.05) ? 0 : ($n1-$n2)/abs($n1-$n2);
	$n1 = number_format($n1, 1, ',', ' ');
	if (substr($n1, -2) == ',0')
		$n1 = substr($n1,0,-2);
	$n2 = number_format($n2, 1, ',', ' ');
	if (substr($n2, -2) == ',0')
		$n2 = substr($n2,0,-2);
	$out = '<tr'.$linestyle.'>	<td style="text-align: right;" >'.$n1.'</td>	<td width="20">';
	if (($ifIcon)&&($sgn>0))
		$out.= '<img src="http://www.destinee-online.com/images/creatures/walkyrie.gif" width="20" height="20">';
	$out.= '</td>	<td style="text-align: center;">'.$titre.'</td>	<td width="20">';
	if (($ifIcon)&&($sgn<0))
		$out.= '<img src="http://www.destinee-online.com/images/creatures/walkyrie.gif" width="20" height="20">';
	$out.= '</td>	<td style="text-align: left;">'.$n2.'</td>	</tr>'."\n";
	return $out;
}
// dans la bdd je stocke la logique des conditions en AND ou OR, on veut afficher ET ou OU
function ANDOR2ETOU($value)
{
	if ($value=="AND")
		return "ET";
	return "OU";
}



// Déclaration des variables
$serveur_off = ((isset($_GET['affichage']))&&(in_array($_GET['affichage'],array(1,2,3,4)))) ? $_GET['affichage'] : 0;
$guerreid =    ((isset($_GET['guerre']))&&(is_numeric($_GET['guerre']))) ? $_GET['guerre'] : 0;


if ($serveur_off != 0)
{
	include ('administration/choix_serveurs_off.php');
	include ("guerres_checktermine.php");

	// petites variables utiles
	$ncols = 5;		// nbr total de colonnes dans le tableau
	$cols2 = 2;		// nombre de colonnes pour une guilde... enfin bon ces 2 varialbes sont pas très utiles XD
	$spacer = '<tr>	<td colspan="'.$ncols.'">&nbsp;</td>	</tr>'."\n";
	$retour = '<tr>	<td colspan="'.$cols2.'"></td>	<td style="text-align: center;"><a href="guerres.php?affichage='.$serveur_off.'">Retour</a></td>	<td colspan="'.$cols2.'"></td></tr>'."\n";


	$req = mysql_query("SELECT * FROM guerres WHERE id = '".$guerreid."'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		// contrôle si la guerre ne serait pas par hasard termiée?
		if (checkguerreterminee($data['id'], true))
		{
			$sql = "SELECT * FROM guerres WHERE id = '$guerreid'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_assoc($req)) {}
		}
 	
		// type
		if ($data['type'] == $TYPE_GUERRE)
		{
			$type	= 'Guerre';
			$vs	= 'contre';
			$declar = 'Déclaration de guerre';
		}
		if ($data['type'] == $TYPE_PNA)
		{
			$type	= 'Pacte de Non-Agression';
			$vs	= 'et';
			$declar = 'Pacte';
		}

		// validité
		$valide = '';
		if ($data['valide'] == $VALIDE_EN_COURS)	$valide = "En cours";
		if ($data['valide'] == $VALIDE_EN_ATTENTE)	$valide = "Pourparlers en cours";
		if ($data['valide'] == $VALIDE_EN_NEGOCIA)	$valide = "Pourparlers en cours";
		if ($data['valide'] == $VALIDE_BLOQUE)		$valide = "Bloqué";
		if (($data['valide'] == $VALIDE_TERMINE)&&($data['type']==$TYPE_GUERRE))	$valide = "Terminé<br>Vainqueur: ".$data['vainqueur'];
		if (($data['valide'] == $VALIDE_TERMINE)&&($data['type']==$TYPE_PNA))		$valide = "Terminé";
		
		// vainqueur
		$vainqueur = '';
		if ($data['valide'] == $VALIDE_TERMINE)
			$vainqueur = '<tr>	<td colspan="'.$ncols.'"></td>	</tr>'."\n";
				
		// avatars
		$req1 = mysql_query("SELECT img, id, puissance FROM guildes WHERE nom = '".$data['guilde1']."'") or die('Erreur SQL !<br>'.mysql_error());
		$req2 = mysql_query("SELECT img, id, puissance FROM guildes WHERE nom = '".$data['guilde2']."'") or die('Erreur SQL !<br>'.mysql_error());
		$avatar1 = mysql_fetch_row($req1);
		$avatar2 = mysql_fetch_row($req2);
		// on garde l'ancienne formule pour les guerres passées
		if ($data['valide'] == $VALIDE_TERMINE)
		{
			$rappPuiss1 = max(1, 2/3 + ($data['puissFin2']/$data['puissFin1'])/3 );
			$rappPuiss2 = max(1, 2/3 + ($data['puissFin1']/$data['puissFin2'])/3 );
		}
		/*
		else if (($avatar1[2] != 0)&&($avatar2[2] != 0))
		{
			$rappPuiss1 = max(1, 2/3 + ($avatar2[2] / $avatar1[2])/3 );
			$rappPuiss2 = max(1, 2/3 + ($avatar1[2] / $avatar2[2])/3 );
		}*/
			// mais pour les nouvelles les conditions de victoires sont identiques.
		else
		{
			$rappPuiss1 = 1;
			$rappPuiss2 = 1;
		}
		if (strlen($avatar1[0])>0)	$avatar1 = '<a href="armadas.php?armada='.$avatar1[1].'&serveur='.$serveur_off.'"><img src="'.$avatar1[0].'" width="100" height="100" alt="'.$data['guilde1'].'" border="1"></a>';	else $avatar1 = '';
		if (strlen($avatar2[0])>0)	$avatar2 = '<a href="armadas.php?armada='.$avatar2[1].'&serveur='.$serveur_off.'"><img src="'.$avatar2[0].'" width="100" height="100" alt="'.$data['guilde2'].'" border="1"></a>';	else $avatar2 = '';
		
		// indépendants avec alliance
		$indep = '';
		if ((strlen($data['indep1'])>0) || (strlen($data['indep2'])>0))
		{
			$indep1 = str_replace('|', ', ', substr($data['indep1'],1));
			$indep2 = str_replace('|', ', ', substr($data['indep2'],1));
			$indep = '<tr style="vertical-align: top;">	<td style="text-align: right;">'.substr($indep1,0,strlen($indep1)-2).'</td>	<td></td>	<td style="text-align: center;">Courageux alliés</td>	<td></td>	<td>'.substr($indep2,0,strlen($indep2)-2).'</td>	</tr>'."\n";
		}
		
		// conditions de fin de guerre
		// le strlen c'est pour vérifier que la condition existe effectivement
		$cond = array();
		$cond[1] = false;
		$cond[2] = false;
		$cond[3] = false;
		if ((strlen($data['cond1'])>0) && ($data['val1']>0))	$cond[1] = true;
		if ((strlen($data['cond2'])>0) && ($data['val2']>0))	$cond[2] = true;
		if ((strlen($data['cond3'])>0) && ($data['val3']>0))	$cond[3] = true;
		
		
		echo '<table border="0" class="localtable630">
			<td colspan="'.$ncols.'"><h2>'.$type.' - voir les détails</h2></td></tr>'."\n";
	
		echo '<tr>	<td style="text-align: right;">'.$avatar1.'</td>		<td></td>	<td style="text-align: center;" width="200"><b>'.$type.'<br><br>';
			if ($valide==$VALIDE_EN_ATTENTE)	echo 'Négociations en cours';
			else				echo $valide;
			echo '.</b></td><td></td>	<td style="text-align: left;">'.$avatar2.'</td>	</tr>'."\n";
		echo '<tr>	<td style="text-align: right;"><a href="classement.php?affichage='.$serveur_off.'&debut=0&nb=50&type=1&ordre=Puissance&armada='.urlencode($data['guilde1']).'">'.$data['guilde1'].'</a></td>	<td></td>	<td style="text-align: center;">'.$vs.'</td>					<td></td>	<td style="text-align: left;"><a href="classement.php?affichage='.$serveur_off.'&debut=0&nb=50&type=1&ordre=Puissance&armada='.urlencode($data['guilde2']).'">'.$data['guilde2'].'</a></td>	</tr>'."\n";
		echo $indep;
		echo $spacer;
		echo '<tr>	<td style="text-align: right;" colspan="'.$cols2.'"></td>			<td style="text-align: center;">'.$declar.':</td>		<td></td>	<td></td>	</tr>'."\n";
		echo '<tr>	<td colspan="'.$ncols.'"><i>'.str_replace("\n","<br>",$data['declaration']).'</i></td>	</tr>'."\n";
		echo $spacer;
		echo '<tr>	<td style="text-align: right;">Date de début</td>		<td></td>	<td style="text-align: center;">'.returndate($data['dateDebut']*60).'</td>		<td></td>	<td></td>	</tr>'."\n";
		echo line ("Puissance au début", 		$data['puissDebut1'], 	$data['puissDebut2'], '');
		if ($data['valide'] == $VALIDE_TERMINE)
		{
			echo $spacer;
			echo '<tr>	<td style="text-align: right;">Date de fin</td>		<td></td>	<td style="text-align: center;">'.returndate($data['dateFin']*60).'</td>		<td></td>	<td></td>	</tr>'."\n";
			echo line ("Puissance à la fin", 		$data['puissFin1'], 	$data['puissFin2'], '');
		}
		echo $spacer;
		
		// on affiche les détails des score que si c'est une guerre, pas un pna
		if ($data['type']==$TYPE_GUERRE)
		{
			// on veut mettre en gras les statistiques correspondant aux conditions de guerre
			$iscond = array();
			foreach ($type_condition as $key => $value)
				$type_condition[$key][4] = '';
			$type_condition['nbrattareel'][4] = ' style="font-style: italic;"';
			$type_condition['nbrvictreel'][4] = ' style="font-style: italic;"';

			
			// code des conditions
			if (($cond[1])||($cond[2])||($cond[3]))
			{
				$nombrecond = 0;
				echo '<tr>	<td colspan="'.$cols2.'"></td>						<td style="text-align: center;">Conditions de fin de guerre</td>	<td coslpan="'.$cols2.'"></td>	</tr>'."\n";
				// le petit chenis c'est pour afficher le temps de façon lisible
				for ($i=1; $i<=3; $i++)
				{
					if ($cond[$i])
					{
						$nombrecond++;
						$condition	= $data['cond'.$i];
						$val		= $data['val'.$i];
						$type_condition[$condition][4] = ' style="font-weight: bold;"';
						
						$valmod1 = 1;
						$valmod2 = 1;
						if (($condition != 'temps')&&($condition != 'nbrcomb'))
						{
							$valmod1 = $rappPuiss1;
							$valmod2 = $rappPuiss2;
						}
						
						if ($data['cond'.$i] == "temps")
						{
							$val1 = round(($val - $data['dateDebut']) / 60/24,2) . ' ('.returndate ($val*60).')';
							$val2 = round(($val - $data['dateDebut']) / 60/24,2) . ' ('.returndate ($val*60).')';
						}
						else
						{
							$val1 = round($val*$valmod1);
							$val2 = round($val*$valmod2);
						}
//						echo '<td style="text-align: right;">'.$type_condition[$condition][2].'</td>		<td></td>	<td style="text-align: center;">'.$val.'</td>			<td coslpan="'.$cols2.'"></td>	</tr>'."\n";
						if ($nombrecond>1)
							echo '<td style="text-align: right;"></td>		<td></td>	<td style="text-align: center;">'.ANDOR2ETOU($data['andor']).'</td>			<td coslpan="'.$cols2.'"></td>	</tr>'."\n";
						echo line($type_condition[$condition][2], $val1, $val2, $type_condition[$condition][4]);
					}
				}
				//SI JAMAIS LA BOUCLE MARCHE PAS (back-up) if ($cond1)	{	$nombrecond++; 	if ($data['cond1']=="temps")	{ $val = round(($data['val1']-$data['dateDebut']) / 60/24,2) . ' ('.returndate ($data['val1']*60).')'; } else {	$val = number_format($data['val1'], 0, ',', ',');	}	echo '<td style="text-align: right;">'.$type_condition[$data['cond1']][2].'</td>		<td></td>	<td style="text-align: center;">'.$val.'</td>			<td coslpan="'.$cols2.'"></td>	</tr>'."\n";	}
				/*if ($nombrecond > 1)
					echo '<td style="text-align: right;">Logique: </td>		<td></td>	<td style="text-align: center;">'.ANDOR2ETOU($data['andor']).'</td>			<td coslpan="'.$cols2.'"></td>	</tr>'."\n";
				*/
				echo $spacer;
			}
			
			echo '<tr>	<td colspan="'.$cols2.'"></td>						<td style="text-align: center;">Statistiques</td>	<td coslpan="'.$cols2.'"></td>	</tr>'."\n";
			echo '<tr'.$type_condition['nbrcomb'][4].'>	<td style="text-align: right;">'.$type_condition['nbrcomb'][2].'</td>		<td></td>	<td style="text-align: center;">'. ($data['nbrAttaVict']+$data['nbrAttaDefa']+$data['nbrDefeVict']+$data['nbrDefeDefa']) .'</td>		<td></td>	<td></td>	</tr>'."\n";
			
			echo line($type_condition['nbrattareel'][2], 	$data['nbrAttaVict']+$data['nbrAttaDefa'], 	$data['nbrDefeVict']+$data['nbrDefeDefa'],	$type_condition['nbrattareel'][4], false);
			echo line($type_condition['nbrvictreel'][2],	$data['nbrAttaVict']+$data['nbrDefeVict'],	$data['nbrDefeDefa']+$data['nbrAttaDefa'],	$type_condition['nbrvictreel'][4], false);
			
			echo line($type_condition['nbratta'][2], 	$data['nbratta1'], 	$data['nbratta2'],	$type_condition['nbratta'][4]);
			echo line($type_condition['nbrvict'][2],	$data['nbrvict1'],	$data['nbrvict2'],	$type_condition['nbrvict'][4]);
			
			echo line($type_condition['xp'][2], 		$data['xp1'],		$data['xp2'],		$type_condition['xp'][4]);
			echo line($type_condition['pertePuiss'][2], 	$data['pertePuiss2'],	$data['pertePuiss1'],	$type_condition['pertePuiss'][4]);
			echo line($type_condition['or'][2],		$data['or1'],		$data['or2'],		$type_condition['or'][4]);
			echo line($type_condition['acres'][2],		$data['acres1'],	$data['acres2'],	$type_condition['acres'][4]);
			echo line($type_condition['prison'][2],		$data['prison1'], 	$data['prison2'],	$type_condition['prison'][4]);
			echo line($type_condition['tues'][2],		$data['tues1'],		$data['tues2'],		$type_condition['tues'][4]);
			echo line($type_condition['detruits'][2],	$data['detruits1'],	$data['detruits2'],	$type_condition['detruits'][4]);
			echo line($type_condition['ressources'][2],	$data['ressources1'],	$data['ressources2'],	$type_condition['ressources'][4]);
			echo $spacer;
		
			echo '<tr>	<td style="text-align: right;" colspan="'.$cols2.'"></td>			<td style="text-align: center;">Le plus groOOos combat!</td>		<td></td>	<td></td>	</tr>'."\n";
			if ($data['PGCj1']!='')
			{
				echo '<tr>	<td style="text-align: right;">'.$data['PGCj1'].'</td>		<td></td>	<td style="text-align: center;"> vs </td>					<td></td>	<td style="text-align: left;">'.$data['PGCj2'].'</td>	</tr>'."\n";
				echo '<tr>	<td style="text-align: right;">Assaillant</td>			<td></td>	<td style="text-align: center;">'.$data['PGCatta'].'</td>			<td></td>	<td></td>	</tr>'."\n";
				echo '<tr>	<td style="text-align: right;">Vainqueur</td>			<td></td>	<td style="text-align: center;">'.$data['PGCvainqueur'].'</td>		<td></td>	<td></td>	</tr>'."\n";
				echo line("Xp",					$data['PGCxp1'],	$data['PGCxp2'], '');
			}
			else
				echo '<tr>	<td style="text-align: right;" colspan="'.$cols2.'"></td>			<td style="text-align: center;">Aucun combat pour l\'instant.</td>		<td></td>	<td></td>	</tr>'."\n";
		}
		
		// ligne de formattage
		echo '<tr>	<td width="180"></td>	<td width="20"></td>	<td></td>	<td width="20"></td>	<td width="180"></td>	</tr>'."\n";
		echo $spacer;
	
	}
	else
	{
		echo '<table border="0" style="width: 630px; vertical-align: center; text-align: left;"><tr><td>'."\n";
		echo '<span style="font-family: papyrus; font-weight: bold;">Guerre / PNA - voir les détails</span><br><br>'."\n";
		echo '<table border="0" style="width: 630px; vertical-align: center; text-align: left;">'."\n";
	}
	
	echo '<tr><td colspan="5"><div class="longtexte">Deux modificateurs interviennent les données affichées sur cette page. Le modificateur aux gains lié à la puissance relative des héros (cf. <i>victoire honteusement facile</i> à la fin du rapport de combat) est prise en compte dans les statistiques de guerre, pour l\'attaquant uniquement. De plus, les puissances relatives des deux armadas sont prises en compte, entraînant un modificateur mentionné au fond du rapport de combat. C\'est pour cela que le nombre de combats par exemple, peut être un nombre à virgule.</div>';
	echo $retour;
	echo '</table>'."\n\n";
	

//	echo '</td></tr></table>'."\n\n";
	mysql_close();
}

include ("fin.php");
?>
