<?php

function realiseVentesMarche ()
{
	global $nom;
	global $heure, $jour, $mois;
	
	$time = floor(time()/60);
	
	require_once ("inclus/dates.inc");
	$date = $heure.'<br>'.$jour.' '.$mois;

	$transactionError = '';
	$transactionFautif = false;
	
	$req3 = mysql_query("SELECT * FROM foire_vente WHERE (acheteur = '".$nom."' OR vendeur = '".$nom."' OR `privé` = '".$nom."') AND temps < '".$time."' ORDER BY temps ASC") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req3))
	{
		$id = $data[0];
		$vendeur = mysql_real_escape_string($data[1]);
		$item = $data[2];
		$qtee = $data[3];
		$offre = $data[4];
		$temps = $data[5];
		$acheteur = $data[7];
		$type = $data[8];
		$prive_nom = $data[11];
		$nbr = $qtee;
		
		$req = mysql_query("SELECT id FROM joueurs_heros WHERE nom = '".$vendeur."'") or die(mysql_error());
		$vendeur_existe = mysql_num_rows($req);
		
		if ($type == "créature") {
			$req = mysql_query("SELECT nom, pvs FROM `creatures` WHERE id = ".$item) or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$nom_crea = mysql_real_escape_string($data[0]);
			$pvs_crea = $data[1];
		} else if ($type != 'ressource') {
			$req = mysql_query("SELECT nom, niv FROM `objets_stats` WHERE id = (SELECT base FROM objets_items WHERE id = ".$item.")") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$nom_objet = mysql_real_escape_string($data[0]);
			$niv_objet = $data[1];
		}
		
		if ($vendeur_existe) {
			// Calcul des taxes et du bonus Commerce
			if ($offre > 0) {
				$req = mysql_query("SELECT joueurs_aptitudes.`21` , joueurs_stats.cha FROM joueurs_stats INNER JOIN joueurs_aptitudes ON joueurs_stats.id = joueurs_aptitudes.id WHERE joueurs_stats.nom = '".$vendeur."'") or die(mysql_error());
				$data = mysql_fetch_row($req);
				$commerce = $data[0];
				$charisme = $data[1];
				
				$taxetaux = ((0.1*log10($offre))) * (1 - $commerce/150) * (1 - $charisme/750);
				$taxe = max(0, round($offre * $taxetaux));		
				$final = $offre;
				
				// A 100%, une chance sur deux que commerce augmente les gains d"une facteur de 1,4 à 1,8
				$offre = ($commerce >= rand(1, 200)) ? $offre * (rand(14, 18)/10) : $offre;
				$final_commerce = $offre;
				$offre -= $taxe;
			}
			
			$transaction =  false;
			if ($type == "ressource")
			{
				$transaction = true;
				if ($acheteur == "")	// pas d'acheteur -> retour au vendeur
				{
					$req = mysql_query("UPDATE `joueurs_stats` SET `".$item."` = `".$item."` + '".$qtee."' WHERE nom ='".$vendeur."'") or die('Erreur SQL !<br>'.mysql_error());
					$texte = mysql_real_escape_string("Vos ressources ($nbr $item) n'ont pas trouvé preneur et vous ont été restituées.");
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '', '$time', 'Foire', '$date', '$texte', '');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				}
				else // ya un acheteur
				{
					$req = mysql_query("UPDATE `joueurs_stats` SET `argent` = `argent` + '".$offre."' WHERE nom ='".$vendeur."'") or die('Erreur SQL !<br>'.mysql_error());
					$req = mysql_query("UPDATE `joueurs_stats` SET `".$item."` = `".$item."` + '".$qtee."' WHERE nom ='".$acheteur."'") or die('Erreur SQL !<br>'.mysql_error());
					
					$texte = mysql_real_escape_string("Vos ressources ($nbr $item) ont trouvé preneur en la personne de $acheteur au prix de $final_commerce pièces d'or (Taxe : $taxe)");
					$text2 = mysql_real_escape_string("Vous achetez $nbr $item à $vendeur au prix de $final pièces d'or.");
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$acheteur', '$time', 'Foire', '$date', '$texte', '$text2');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				}
			}
			if ($type == "objet")
			{
				require_once ('info_objets_include.php');	// pour la fonction qui ajoute dans l'inventaire
				
				if ($acheteur == "") // pas d'acheteur -> retour au vendeur
				{
					$transaction = ajouteDansInventaire ($vendeur, $item);;					
					$texte = mysql_real_escape_string("Votre $nom_objet n'a pas trouvé preneur et vous a été restitué.");
					// si le joueur n'a pas de place dans l'inventaire, on doit laisser la vente dans la bdd
					if (!$transaction) {
						$texte .= mysql_real_escape_string(" L'objet vous sera délivré lorsque vous aurez fait de la place dans votre inventaire.");
						$req = mysql_query("UPDATE foire_vente SET `acheteur` = '$vendeur', `vendeur` = '' WHERE `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
					}
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '', '$time', 'Foire', '$date', '$texte', '');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				}
				else // ya un acheteur
				{
					$transaction = ajouteDansInventaire ($acheteur, $item);
					// on donne l'argent de toutes façons
					$req = mysql_query("UPDATE `joueurs_stats` SET `argent` = `argent` + '$offre' WHERE nom = '$vendeur'") or die('Erreur SQL !<br>'.mysql_error());
					$texte = mysql_real_escape_string("Votre $nom_objet a été acheté par $acheteur au prix de $final_commerce pièces d'or (Taxe : $taxe).");
					$text2 = mysql_real_escape_string("Vous achetez $nom_objet à $vendeur au prix de $final pièces d'or.");
					// si le joueur n'a pas de place dans l'inventaire, on doit laisser la vente dans la bdd
					if (!$transaction) {
						$text2 .= mysql_real_escape_string(" L'objet vous sera délivré lorsque vous aurez fait de la place dans votre inventaire.");
						$req = mysql_query("UPDATE foire_vente SET `vendeur` = '' WHERE `id` = '".$id."'") or die('Erreur SQL !<br>'.mysql_error());
					}
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$acheteur', '$time', 'Foire', '$date', '$texte', '$text2');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					
					// si l'acheteur a supprimé son compte, ça fait false à ajouteDansInventaire. Faut pourtant supprimer la vente!
					if ($acheteur == 'Compte supprimé')
						$transaction = true;
				}
				
				// Si le joueur qui a appelé cette fonction a des objets qui doivent lui être délivré, on lui affiche un message pour lui demander de libérer son inventaire
				if (!$transaction && $acheteur == $nom) {
					if ($acheteur == $nom) {
						$transactionError .= 'Veuillez faire de la place dans votre inventaire afin de recevoir votre objet.<br>';
					}
				}
			}
		} else { // Pas de vendeur ou vendeur pnj
			$final = $offre;
			$transaction =  false;
			if ($acheteur != "") {
				if ($type == "ressource")
				{
					$transaction = true;
					$req = mysql_query("UPDATE `joueurs_stats` SET `".$item."` = `".$item."` + '".$qtee."' WHERE nom ='".$acheteur."'") or die('Erreur SQL !<br>'.mysql_error());
					$text2 = mysql_real_escape_string("Vous achetez $nbr $item à $vendeur au prix de $offre pièces d'or.");
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$acheteur', '$time', 'Foire', '$date', '', '$text2');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				} else if ($type == "objet") {
					require_once ('info_objets_include.php');	// pour la fonction qui ajoute dans l'inventaire
					$transaction = ajouteDansInventaire ($acheteur, $item);
					if ($offre != 0) {
						$text2 = mysql_real_escape_string("Vous achetez $nom_objet à $vendeur au prix de $offre pièces d'or.");
					}
					if (!$transaction) {
						$text2 .= mysql_real_escape_string(" L'objet vous sera délivré lorsque vous aurez fait de la place dans votre inventaire.");
						if ($acheteur == $nom)
							$transactionError .= 'Veuillez faire de la place dans votre inventaire afin de recevoir votre objet.<br>';
					} else {
						$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$acheteur', '$time', 'Foire', '$date', '', '$text2');";
						$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					}
					// si l'acheteur a supprimé son compte, ça fait false à ajouteDansInventaire. Faut pourtant supprimer la vente!
					if ($acheteur == 'Compte supprimé')
						$transaction = true;
				} else if ($type == "créature") {
					$transaction = true;
					$req = mysql_query("UPDATE `joueurs_créatures_id` SET `".$item."` = `".$item."` + '".$qtee."' WHERE nom ='".$acheteur."'") or die('Erreur SQL !<br>'.mysql_error());
					$text2 = "Vous achetez $nbr $nom_crea à $vendeur au prix de $offre pièces d`or.";
					$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$acheteur', '$time', 'Foire', '$date', '', '$text2');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				}
			} else {
				$transaction = true;
			}
		}
		
		if ($prive_nom != '' && $acheteur == "") {
			// Si c'est une vente privée non utilisée, elle repasse dans le circuit normal
			$req = mysql_query("UPDATE foire_vente SET `privé` = '', `temps` = $time + 1440 WHERE `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		} else if ($transaction) {
			$req = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		} else {
			$req = mysql_query("UPDATE foire_vente SET `offre` = '0' WHERE `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		}
		
		
		// annonces des évènements
		if (($acheteur != "")&&($final != 0))
		{
			if (($type == "objet") && ($final >= 300000))
			{
				$sql = "INSERT INTO `evenement` ( `id` , `titre` , `texte` , `tempsdelete`, `tempspost` )
					VALUES ('', 'Vente sur le Marché', '<b>$acheteur</b> a acheté $nom_objet à <b>$vendeur</b> pour ".number_format($final, 0, ",", ",")." pièces d''or!', '".($temps+1220)."', '$temps')";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			}
			else if (($type == "ressource") && ($final >= 300000))
			{
				$sql = "INSERT INTO `evenement` ( `id` , `titre` , `texte` , `tempsdelete`, `tempspost` )
					VALUES ('', 'Vente sur le Marché', '<b>$acheteur</b> a acheté $qtee $item à <b>$vendeur</b> pour ".number_format($final, 0, ",", ",")." pièces d''or!', '".($temps+1220)."', '$temps')";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			}
		}
	}
	
	return $transactionError;
}

?>