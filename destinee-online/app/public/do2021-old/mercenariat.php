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
entete("Mercenariat");

include("connect.php");

$temps = floor(time()/60);
$temps_ecoulement = 1;//anciennement 1
$duree_jour = 1440 / 1;	// durée du jour-unité en ce qui concerne l'IAM, les archives, etc.


$nom = $_SESSION['nom'];

$limit = ((isset($_GET['limit']))&&(is_numeric($_GET['limit']))) ? max(0, round($_GET['limit'])) : 0;
$tri = ((isset($_GET['tri']))&&($_GET['tri']!='date')) ? 'prime' : 'date';

$mise_minimale = 40000;			// prime minimale
$delai_termine = 2*7*$duree_jour;	// délai d'immunité après avoir subi un contrat
$nbrsimult = 3;				// nombre de contrats posés au cours des derniers $nbrjours jours autorisé
$nbrjours = 7;				// nombre de jours relatifs à $nbrsimult
$nivmin = 5;				// niveau minimal de la cible
$styleinactif = 'font-style: italic;';	// contrat pas encore "public"
$styleimposs = 'color:#666666;';	// contrat pas remplissable par la cible

// détermine le cout d'une mise à prix anonyme
function calcCoutPrime ($prime, $anonyme='off')
{
	if ($anonyme == 'on')
		return $prime*1.5;
	return $prime;
}

// détermine si la cible peut recevoir un contrat sur sa tronche
function isValidTarget ($cible)
{
	global $error, $joueurs_proteges, $nivmin, $duree_jour, $nom;
	$return = true;

	// vérification que la cible existe
	$req = mysql_query("SELECT id FROM joueurs_stats WHERE nom='$cible' AND `niveau` >= '$nivmin'") or die('Erreur SQL !<br>'.mysql_error());
	$nbrcible = mysql_num_rows($req);
	if ($nbrcible != 1)
	{
		$error .= 'Une cible de niveau supérieur ou égal '.$nivmin.' doit être sélectionnée pour pouvoir offrir une prime sur elle!<br>';
		$return = false;
	}

	// Verification que la cible n'est pas dans la liste des joueurs protégés
	if (in_array($cible, $joueurs_proteges))
	{
		global $delai_termine;
		$error .= 'Votre cible est pour l\'instant protégée contre tout nouveau contrat posée sur elle. Il est possible que sa tête soit déjà mise à prix, ou ait été mise à prix durant les '.($delai_termine/$duree_jour).' derniers jours. Vous ne pouvez par ailleurs pas cibler un membre de votre propre armada.';
		$return = false;
	}

	// interdiction si cible meme joueur
	$sql = "SELECT id_compte FROM joueurs_heros WHERE nom = '$cible' OR nom = '$nom';";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$id_compte = $data[0];
	if ($data = mysql_fetch_row($req))
	{
		if ($data[0] == $id_compte)
		{
			$error .= 'Il ne vous est pas possible de mettre ce joueur à prix.<br>';
			$return = false;
		}
	}

	return $return;
}

// détermine si le commanditaire est en mesure de lancer un contrat
function isValidContract ($argent, $prime, $anonyme)
{
	global $nom, $error, $mise_minimale, $nbrsimult, $temps, $duree_jour, $nbrjours;
	$return = true;

	// limitation à 5 contrats par semaine
	$res = mysql_query("SELECT COUNT(id) AS `nbr` FROM `mise_a_prix` WHERE `commanditaire_reel` = '$nom' AND `tempsmise` > '".($temps-$nbrjours*$duree_jour)."'") or die('Erreur SQL !<br>'.mysql_error());
	$num = mysql_fetch_row($res);
	if ($num[0] > $nbrsimult)
	{
		$error .= 'Vous ne pouvez pas poser plus de '.$nbrsimult.' contrats au cours des '.$nbrjours.' derniers jours.<br>';
		$return = false;
	}

	if ($argent < calcCoutPrime($prime, $anonyme))
	{
		$error .= 'Vous ne possédez pas assez d\'or pour proposer cette prime.<br>';
		$return = false;
	}
	else if ($prime < 0)
	{
		$error .= 'Une prime ne peut être négative.<br>';
		$return = false;
	}
	else if ($prime < $mise_minimale)
	{
		$error .= 'Une prime doit être au minimum de '.$mise_minimale.' pièces d\'or.<br>';
		$return = false;
	}

	return $return;
}


// id	cible	commanditaire	mercenaire	prime	date	termine	commanditaire_reel	tempsmise	tempsactif	tempsfin

// établissement de la liste des joueurs sur lesquels on ne peut pas lancer de contrat
// le but est de minimiser le nombre de requètes sql, donc éviter de faire 1000 requètes pour tester le niveau de chaque joueur, pour tester s'il n'a pas de contrat sur sa pomme, etc.
$joueurs_proteges = array();
$joueurs_armada = array();
// niveau < 5
	// fait dans le code
// contrat déjà en cours ; contrat terminé sur la cible il y a moins de deux semaines
$res = mysql_query("SELECT cible FROM mise_a_prix WHERE termine='0' OR (termine='1' AND tempsfin > '".($temps-$delai_termine)."')") or die('Erreur SQL !<br>'.mysql_error());
while ($data= mysql_fetch_row($res))
	$joueurs_proteges[] = $data[0];

// joueurs de la même armada que le poseur de contrat
$armada = '';
$res = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$nom' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_row($res))
{
	$armada = $data[0];
	if ($armada != 'Aucune')
	{
		$res = mysql_query("SELECT nom FROM joueurs_bonus WHERE `guilde` = '$armada'") or die('Erreur SQL !<br>'.mysql_error());
		while ($data= mysql_fetch_row($res))
		{
			$joueurs_armada[] = $data[0];
			$joueurs_proteges[] = $data[0];
		}
	}
}



echo '<table class="localtable630"><tbody>
<tr><td><h2>Mercenariat - primes offertes</h2>';

//Vérification si ajout mise a prix
if (isset($_POST['nom_commanditaire']))
{
	$nom_commanditaire = mysql_real_escape_string($_POST['nom_commanditaire']);

	// Si le nom dans la case est différent du nom de la session, on punit le vilain petit tricheur.
	if(htmlentities($nom_commanditaire) != $_SESSION['nom'])
	{
		exit('Oula... ce n\'est pas très très bien ce que tu tentes de faire là tu sais. :o)');
	}

	$prime = (is_numeric(trim(str_replace(',','',str_replace(' ','',$_POST['prime']))))) ? trim(str_replace(',','',str_replace(' ','',$_POST['prime']))) : 0;
	$cible 	 = mysql_real_escape_string(htmlentities($_POST['cible']));
	$anonyme = (isset($_POST['anonyme'])) ? mysql_real_escape_string($_POST['anonyme']) : 'off';

	// argent du joueur
	$sql = "SELECT argent FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$argent = $data[0];

	$error = '';
	if ((isValidTarget ($cible))&&(isValidContract ($argent, $prime, $anonyme))&&($cible!=$nom))
	{
		// CACUL DE LA DATE POUR LE CONTRAT
		$mois["January"] = "Janvier";
		$mois["February"] = "Février";
		$mois["March"] = "Mars";
		$mois["April"] = "Avril";
		$mois["May"] = "Mai";
		$mois["June"] = "Juin";
		$mois["July"] = "Juillet";
		$mois["August"] = "Août";
		$mois["September"] = "Septembre";
		$mois["October"] = "Octobre";
		$mois["November"] = "Novembre";
		$mois["December"] = "Décembre";

		function getMois($month)
		{
			return $mois[$month];
		}

		$jour = Date('d');
		$month = Date('F');
		$mois = $mois[$month];
		$day = Date('l');

		$date = "$jour $mois";
		// FIN DU CALCUL DE LA DATE

		if ($anonyme == 'on')
		{
			$affiche_commanditaire = 'Anonyme';
			$mail_comm = 'Le commanditaire de cette mise à prix n\'a pas jugé bon de laisser connaître son nom.';
		}
		else
		{
			$affiche_commanditaire = $nom_commanditaire;
			$mail_comm = 'Le commanditaire est '.$nom_commanditaire.'.';
		}

		$tempssupp = $temps + rand(0,$duree_jour);	// l'affichage et la mise en activité du contrat se fait avec un retard aléatoire allant jusqu'à 24 heure.

		$sql_ajoutprime = "INSERT INTO mise_a_prix (date,commanditaire,cible,prime,commanditaire_reel, tempsmise, tempsactif) VALUES ('$date','$affiche_commanditaire','$cible','$prime','$nom_commanditaire', '$temps', '$tempssupp')";
		mysql_query($sql_ajoutprime) or die('Erreur lors de l\'ajout d\'une prime (anonyme)'.mysql_error);

		$sql_updateargent = "UPDATE joueurs_stats SET `argent` = `argent` - '". calcCoutPrime($prime, $anonyme) ."' WHERE nom = '$nom'";
		mysql_query($sql_updateargent) or die(mysql_error());

		if (mt_rand(1,1) == 1)
		{
			$sql = "INSERT INTO `evenement` ( `id` , `titre` , `texte` , `tempsdelete`, `tempspost` )
				VALUES ('', 'Mise à prix', 'La tête de <b>$cible</b> a été mise à prix pour <b>$prime</b> pièces d`or!', '".($temps+1440)."', '$temps')";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}

		echo "Nouvelle mise à prix ajoutée.<br>";
	}

	else
	{
		echo 'Nouvelle mise à prix incorrecte. '.$error.'<br>';
	}
}
echo '&nbsp;';


// Recuperation des mises a prix en cours
$sql_mercenariat = "SELECT cible, commanditaire, commanditaire_reel, prime, date, tempsactif FROM mise_a_prix WHERE termine = '0' AND (`tempsactif` < '$temps' OR `commanditaire_reel` = '$nom' OR `cible` = '$nom') ORDER BY tempsmise DESC";
$res_mercenariat = mysql_query($sql_mercenariat) or die(mysql_error().'Erreur récupération mise a prix');
$num_mercenariat = mysql_num_rows($res_mercenariat);
if ($num_mercenariat != 0)
{
	$ifinactif = false;
	$ifimposs = false;
	echo '<table class="localtable630"><tbody><tr>
	<td width="25"></td>
	<td class="cl_entete">Cible</td>
	<td class="cl_entete" width="85">Prime</td>
	<td class="cl_entete" width="90">Date</td>
	<td class="cl_entete">Commanditaire</td>
	</tr>
	<tr><td></td><td colspan="4" class="hline"></td></tr>';
	while ($data_mercenariat = mysql_fetch_array($res_mercenariat))
	{
		// récupération des données
		$style = '';
		$date = $data_mercenariat['date'];
		$cible = $data_mercenariat['cible'];
		$prime = $data_mercenariat['prime'];
		$commanditaire = $data_mercenariat['commanditaire'];
		$commanditairereel = $data_mercenariat['commanditaire_reel'];
		$tempsactif = $data_mercenariat['tempsactif'];

		// mise en forme pour l'affichage
		$prime = number_format($prime, 0, ",", ",");
		if ($commanditaire == 'Anonyme')
			$commanditaire = '<i>'.$commanditaire.'</i>';
		if ($tempsactif>$temps)
		{
			$style = $styleinactif;
			$ifinactif = true;
		}
		if ((in_array($cible, $joueurs_armada))||(in_array($commanditairereel, $joueurs_armada))||($cible==$nom))
		{
			$style .= $styleimposs;
			$ifimposs = true;
		}

		// avatar
		$re3 = mysql_query('SELECT avatar FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da3 = mysql_fetch_row($re3);

		// infos sur cible
		$re2 = mysql_query('SELECT race, classe, royaume, dieu, titre FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da2 = mysql_fetch_row($re2);
		$re4 = mysql_query('SELECT victoire, défaite 			FROM joueurs_bonus WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da4 = mysql_fetch_row($re4);

		// affichage
		echo '		<tr style="'.$style.'">
			<td><img src="'.$da3[0].'" width="20" height="20" alt="'.$cible.'" title="'.$cible.'" ALIGN=middle border=1></td>
			<td class="tdlef"><a href="#" class="info" style="'.$style.'" onmouseover="afficheinfobulle(\''.$cible.'\');">'.$cible.', '.$da2[4].' '.$da2[2].'<span id="'.$cible.'" style="text-align:center;font-style:normal;"><b>'.$cible.'</b><br><img src="'.$da3[0].'" width="70px" height="70px" border=1><br>Titre : '.$da2[4].'<br>Combats: '.($da4[0]+$da4[1]).'</span></td>
			<td class="tdrig" style="padding-right:10px;">'.$prime.'</td>
			<td class="tdlef">'.$date.'</td>
			<td class="tdlef">'.$commanditaire.'</td></tr>
		<tr>	<td></td>
			<td colspan="4" class="hline"></td></tr>'."\n";
	}
	echo '</tbody></table>
	<div class="stratexplic">&nbsp;<br>';
	if ($ifimposs)
		echo 'Vous ne pouvez pas <span style="'.$styleimposs.'">pourchasser des membres de votre propre armada</span>. De même, vous ne pouvez pas remporter une <span style="'.$styleimposs.'">mise à prix offerte par un membre de votre armada</span>.<br>';
	if ($ifinactif)
		echo '<span style="'.$styleinactif.'">Certaines mises à prix sont si récentes</span> qu\'il faut attendre jusqu\'à une journée pour pouvoir commmencer la traque des cibles.';
	echo '</div>';
}
else
{
	echo "Aucune prime n'est offerte en ce moment.<br>";
}



//Rajouter une nouvelle mise a prix
echo changement ('Offrir une prime');

echo '<div class="stratexplic">(Il n\'est pas possible de d\'offrir une prime pour un joueur de niveau inférieur à '.$nivmin.')</div>';

include ('classement_cache.php');
if (strlen($jmasques) > 0)
	$jmasques = "AND ".$jmasques;

$sql_joueurs = "SELECT nom FROM joueurs_stats WHERE nom != '".$nom."' AND niveau >= '$nivmin' $jmasques ORDER BY nom ASC";
$res_joueurs = mysql_query($sql_joueurs) or die(mysql_error().'Erreur recuperation nom mise a prix impossible');
$num_joueurs = mysql_num_rows($res_joueurs);
if($num_joueurs != 0)
{
	$cpt_niv = 0;
	echo "<form name='ajout_prime' action='mercenariat.php' method='POST'><br>";
	echo "Nom de la cible à abattre : <select name='cible'><option value=''>Choisir une cible...</option>";
	while ($data_joueurs = mysql_fetch_row($res_joueurs))
	{
		// éviter si possible de faire un grand nombre de requètes sql au serveur (grand comme le nombre de joueurs :-/ )
		$nom_prime = $data_joueurs[0];
		// contrôle que le joueur n'a pas déjà une mise à prix
		if (!in_array($nom_prime, $joueurs_proteges))
		{
			echo "<option value='".$nom_prime."'>".$nom_prime."</option>";
			$cpt_niv++;
		}
	}
	if($cpt_niv == 0)
	{
		echo "<option value=''>Aucun joueur ne dépasse le niveau 5</option>";
	}
	echo '</select><br><br>
	Prime : <input type="text" name="prime" size=7> pièces d\'or (min. '.number_format($mise_minimale, 0, ",", ",").')<br><br>
	Anonymat : <input type="checkbox" name="anonyme">
		<div class="stratexplic">(A cocher pour que les autres seigneurs ignorent l\'identité du commanditaire. Vous devrez débourser moitié plus que cette somme pour vous assurer du silence des intermédiaires...)</div><br>
	<input type="hidden" name="nom_commanditaire" value="'.$nom.'">
	<input type="submit" value="Mettre la tête à prix!">
	</form>';


}
else
{
	echo "Aucun joueur ne peut être mis à prix.<br>";
}


//Recuperation des anciennes mises a prix
echo changement ('Mises à prix passées<a name="passe">');
$width = 10;
$sort = ($tri=='date') ? 'tempsfin' : 'prime';

$sql = "SELECT COUNT(id) AS `nbr` FROM mise_a_prix WHERE termine = '1'";
$res = mysql_query($sql) or die(mysql_error().'Erreur récupération mise a prix');
$num = mysql_fetch_row($res);
$num_mercenariat = $num[0];

$sql = "SELECT cible, prime, date, commanditaire, mercenaire FROM mise_a_prix WHERE termine = '1' ORDER BY `$sort` DESC LIMIT $limit, $width";
$res_mercenariat = mysql_query($sql) or die(mysql_error().'Erreur récupération mise a prix');
//echo $sql;
if ($num_mercenariat != 0)
{
	$url = 'mercenariat.php';
	if (($num_mercenariat>$width)||($limit!=0))
	{
		$bout = 'style="'.$styleimposs.';" onclick="return false;"';

		$firs = 1;
		$last =(ceil($num_mercenariat/$width));

		$current = ceil($limit/$width)+1;
		$pre3 = max($firs, ceil($limit/$width-2));
		$pre2 = max($firs, ceil($limit/$width-1));
		$pre1 = max($firs, ceil($limit/$width));
		$nex1 = min($last, ceil($limit/$width)+2);
		$nex2 = min($last, ceil($limit/$width)+3);
		$nex3 = min($last, ceil($limit/$width)+4);

		$bout1 = ($limit <= 0) ? $bout : '';
		$bout2 = ($limit >= (ceil($num_mercenariat/$width)-1)*$width) ? $bout : '';

		echo '<div>';

					echo '<a '.$bout1.' href="'.$url.'?limit='.($firs*$width-$width).'&tri='.$tri.'#passe">&lt;&lt;</a>&nbsp; ';
					echo '<a '.$bout1.' href="'.$url.'?limit='.($pre1*$width-$width).'&tri='.$tri.'#passe">&lt;</a>&nbsp; ';
		echo ' &nbsp; ';
		if ($firs!=$current)	echo '<a '.$bout1.' href="'.$url.'?limit='.($firs*$width-$width).'&tri='.$tri.'#passe">'.$firs.'</a>&nbsp; ';
		if ($pre3> $firs+1)	echo '...&nbsp; ';
		if ($pre3!=$firs)	echo '<a '.$bout1.' href="'.$url.'?limit='.($pre3*$width-$width).'&tri='.$tri.'#passe">'.$pre3.'</a>&nbsp; ';
		if ($pre2!=$firs)	echo '<a '.$bout1.' href="'.$url.'?limit='.($pre2*$width-$width).'&tri='.$tri.'#passe">'.$pre2.'</a>&nbsp; ';
		if ($pre1!=$firs)	echo '<a '.$bout1.' href="'.$url.'?limit='.($pre1*$width-$width).'&tri='.$tri.'#passe">'.$pre1.'</a>&nbsp; ';
		echo '<b>'.$current.'</b>&nbsp; ';
		if ($nex1!=$last)	echo '<a '.$bout2.' href="'.$url.'?limit='.($nex1*$width-$width).'&tri='.$tri.'#passe">'.$nex1.'</a>&nbsp; ';
		if ($nex2!=$last)	echo '<a '.$bout2.' href="'.$url.'?limit='.($nex2*$width-$width).'&tri='.$tri.'#passe">'.$nex2.'</a>&nbsp; ';
		if ($nex3!=$last)	echo '<a '.$bout2.' href="'.$url.'?limit='.($nex3*$width-$width).'&tri='.$tri.'#passe">'.$nex3.'</a>&nbsp; ';
		if ($nex3< $last-1)	echo '...&nbsp; ';
		if ($last!=$current)	echo '<a '.$bout2.' href="'.$url.'?limit='.($last*$width-$width).'&tri='.$tri.'#passe">'.$last.'</a> ';
		echo ' &nbsp; ';
					echo '<a '.$bout2.' href="'.$url.'?limit='.($nex1*$width-$width).'&tri='.$tri.'#passe">&gt;</a> ';
					echo '<a '.$bout2.' href="'.$url.'?limit='.($last*$width-$width).'&tri='.$tri.'#passe">&gt;&gt;</a> ';
		echo '<br>&nbsp;</div>';
	}
	echo '<table class="localtable630"><tbody>
	<tr>	<td></td>
		<td class="cl_entete">Cible</td>
		<td class="cl_entete" width="75"><a class="cl_entete" href="'.$url.'?limit='.$limit.'&tri=prime#passe">Prime	<img height="10" width="10" border="0" title="Tri par Prime"	alt="Tri par Prime"	src="images/classementTri'; if ($tri!='date') echo 'Select'; else echo 'Lien'; echo '.gif"/></a></td>
		<td class="cl_entete" width="90"><a class="cl_entete" href="'.$url.'?limit='.$limit.'&tri=date#passe">Date	<img height="10" width="10" border="0" title="Tri par Date"	alt="Tri par Date"	src="images/classementTri'; if ($tri=='date') echo 'Select'; else echo 'Lien'; echo '.gif"/></a></td>
		<td class="cl_entete">Commanditaire</td>
		<td class="cl_entete">Mercenaire</td>	</tr>
	<tr>	<td></td>
		<td colspan="5" class="hline"></td></tr>';
	while ($data_mercenariat = mysql_fetch_array($res_mercenariat))
	{
		$date = $data_mercenariat['date'];
		$cible = $data_mercenariat['cible'];
		$prime = $data_mercenariat['prime'];
		$commanditaire = $data_mercenariat['commanditaire'];
		$mercenaire= $data_mercenariat['mercenaire'];

		// mise en forme de variables
		$prime = number_format($prime, 0, ",", ",");
		if ($commanditaire == 'Anonyme')
			$commanditaire = '<i>'.$commanditaire.'</i>';

		// avatar
		$re3 = mysql_query('SELECT avatar FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da3 = mysql_fetch_row($re3);

		// infos sur cible
		$re2 = mysql_query('SELECT race, classe, royaume, dieu, titre FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da2 = mysql_fetch_row($re2);
		$re4 = mysql_query('SELECT victoire, défaite 			FROM joueurs_bonus WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da4 = mysql_fetch_row($re4);

		// affichage
		echo '<tr>
			<td><img src="'.$da3[0].'" width="20" height="20" alt="'.$cible.'" title="'.$cible.'" ALIGN=middle border=1></td>
			<td class="tdlef"><a href="#" class="info" onmouseover="afficheinfobulle(\''.$cible.'\');">'.$cible.', '.$da2[4].' '.$da2[2].'<span id="'.$cible.'" style="text-align:center;"><b>'.$cible.'</b><br><img src="'.$da3[0].'" width="70px" height="70px" border=1><br>Titre : '.$da2[4].'<br>Combats: '.($da4[0]+$da4[1]).'</span></td>
			<td class="tdrig" style="padding-right:10px;">'.$prime.'</td>
			<td class="tdlef">'.$date.'</td>
			<td class="tdlef">'.$commanditaire.'</td>
			<td class="tdlef">'.$mercenaire.'</td></tr>
		<tr>	<td></td>
			<td colspan="5" class="hline"></td></tr>'."\n";

	}
	echo "</tbody></table>";
}
else
{
	echo "Aucune prime n'a été versée jusqu'à présent.<br>";
}

echo '</td></tr></tbdy></table>';



mysql_close();
include("fin.php");
