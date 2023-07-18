
<div class="plank_background col-md-6">

<?php

// prochaines ventes sur le marché central
	echo '<div class="scroll_background">';
	echo '<b><a href="foire.php">Prochaines ventes</a>:</b>';
	$whereclause = "'1' = '1'";
	$req = mysql_query("SELECT * FROM foire_vente WHERE ".$whereclause." AND temps > '".$temps."' AND type = 'objet' ORDER BY temps ASC LIMIT 3") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$id = $data[0];
		$vendeur = $data[1];
		$item = $data[2];
		$qtee = number_format($data[3], 0, ",", " ");
		$offre = $data[4];
		$temp_ = $data[5] - $temps;
		$image = $data[6];
		$acheteur = $data[7];
		if (is_numeric($item))
		{
			$req1 = mysql_query("SELECT objets_stats.nom, objets_items.bonus FROM objets_items INNER JOIN objets_stats ON objets_stats.id = objets_items.base WHERE objets_items.id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());
			if ($dat1 = mysql_fetch_row($req1)) {
				$item = $dat1[0];
				$item_affiche = $dat1[1] > 0 ? '<font color="purple">'.$dat1[0].'</font>' : $dat1[0];
			}
		}
		else	$item = ucfirst($item);

		$h = floor(($temp_ /60));
		$m = floor( $temp_ %60 );
		if ($h > 0)	$a = $h.'h';
		else		$a = $m.'m';
		if ($temp_ < 2)
		{
			$a = time()-($data[5]*60);
			$a = (60-$a)-60;
			$a = "$a sec";
		}
		$offre = number_format($offre, 0, ",", ",");

		echo '<div style="'.$paddingItem.'"><a class="discreb" href="info_foire.php?item='.$id.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">
			<img src="'.$image.'" alt="'.$item.'" width="20" height="20" border=0>
			<b>'.$item_affiche.'</b> ('.$a.') <span style="white-space: nowrap;">'.$offre.' pièces d\'or</span></a></div>';
		$nbrmsg++;
	}
	if (mysql_num_rows($req) == 0)
	{
		echo '<br>Aucune vente n\'est en cours en ce moment.';
		$nbrmsg++;
	}

	if ((isset($transactionError))&&($transactionError!=''))
		echo '<div style="'.$paddingItem.' font-weight: bold;">'.$transactionError.'</div>';

	echo '</div>';

 ?>
</div>
