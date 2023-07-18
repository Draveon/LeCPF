





<div class="plank_background col-md-6">

<?php

// prochaines ventes sur le marché central
	echo '<div class="scroll_background">';
	echo '<b><a href="archives.php">Archives du royaume</a>:</b>';
	$req = mysql_query("SELECT * FROM combat_joueurs WHERE `attaquant` = '".$nom."' OR `defendant` = '".$nom."' AND `temps` >= '".($temps - $duree_jour)."' ORDER BY `temps` DESC") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$atta = $data[1];
	$defe = $data[2];
	$victoire = $data[4];
	$date = $data[5];
	if ($atta == $nom)	{$texte = $data[6]; $a = 6;}
	else			{$texte = $data[7]; $a = 7;}

	$link = true;
	$texte = strip_tags(str_replace('<br>',' ',$texte));
	$texte = abrege ($texte, 100);


		echo '<div style="'.$paddingItem.'"><a class="discreb" href="info_foire.php?item='.$id.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">
			<img src="'.$image.'" alt="'.$item.'" width="20" height="20" border=0>
			<b>'.$item_affiche.'</b> ('.$a.') <span style="white-space: nowrap;">'.$offre.' pièces d\'or</span></a></div>';
		$nbrmsg++;
	}
	if (mysql_num_rows($req) == 0)
	{
		echo '<div style="'.$paddingItem.'">Aucun message d\'importance notable ne vous est parvenu au cours des dernières 24 heures.</div>';
	}

	echo '<div style="'.$paddingInner.'">';
	echo '<b><a href="#">Événements de ces dernières 24h</a>:</b><br>';
	$req = mysql_query("SELECT `texte` FROM `evenement` ORDER BY `tempspost` DESC") or die('Erreur SQL !<br>'.mysql_error());
	if (mysql_num_rows($req) == 0) {
		echo '<div style="'.$paddingItem.'">Rien d\'important à signaler ces dernières 24 heures...</div>';
	} else while ($data = mysql_fetch_assoc($req)) {
		echo '<div style="'.$paddingItem.'">'.$data['texte'].'</div>';
	}
	echo '</div>';
 ?>
</div>
