<?php

function getTables ()
{
	return array('joueurs_inventaire', 'joueurs_infos', 'joueurs_heros', 'joueurs_batiments_id', 'joueurs_créatures', 'joueurs_créatures_id', 'joueurs_aptitudes_base', 'joueurs_stats', 'joueurs_terre', 'joueurs_aptitudes', 'joueurs_connexions', 'joueurs_terre_utile', 'joueurs_magies', 'joueurs_sorts', 'joueurs_modificateurs', 'joueurs_objets', 'joueurs_bonus', 'joueurs_combat', 'joueurs_defaites', 'joueurs_batspe');
}

function check_id_autoincrement ($serveur, $modify=false)
{
	$serveur = (in_array(intval($serveur), array(1,2,3,4,5))) ? $serveur : 1;
	if (file_exists("choix_serveurs.php"))
		include ("choix_serveurs.php");
	else if (file_exists("administration/choix_serveurs.php"))
		include ("administration/choix_serveurs.php");
	else
		return "On peut pas tout avoir... Désolé :)";
	echo '<b>Serveur '.$serveur.'</b><br><br>';
	
	$errorbdd1 = false;	// creationCptProbs 1
	$errorbdd3 = false;	// creationCptProbs existe pas
	$errorbdd2 = false;	// creationCptEnCours 1
	$errorbdd4 = false;	// creationCptEnCours existe pas
	
	$tables = getTables();
	
	// controle du statut de la base de données
	$req = mysql_query("SELECT `valeur_entier` FROM destinee_statistiques WHERE param = 'creationCptProbs'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		if ($data[0] != 0)
			$errorbdd1 = true;
	}
	else
		$errorbdd3 = true;
	
	
	// controle des inscriptions en cours
	$nbr_essais = 3;
	do
	{
		$req = mysql_query("SELECT `valeur_entier` FROM destinee_statistiques WHERE param = 'creationCptEnCours'") or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_row($req))
		{
			if ($data[0] != 0)
				$errorbdd2 = true;
		}
		else
			$errorbdd4 = true;
		
		$nbr_essais--;
		// si ya erreur, on fait une pause de 100ms dans l'exécution, pour laisser l'inscription précédente se terminer
		if ($errorbdd2)
			usleep (100);
	}
	while ((!$errorbdd2)&&($nbr_essais>0));
	
	
	// controle des id existants
	echo "Controle des id</b><br>\n";
	$errorid = false;
	$problems = array();
	unset ($idsref);
	foreach ($tables AS $table)
	{
		$ids = array();
		$req = mysql_query("SELECT id, nom FROM `".$table."`") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
			$ids[$data[1]] = $data[0];

		if (!isset($idsref))
			$idsref = $ids;
		else
		{
			foreach ($idsref AS $nom => $id)
			{
				if ($ids[$nom] != $id)
				{
					$problems[$nom] .= ', '.$table.' : '.$id.' -> '.$ids[$nom];
					$errorid = true;
					
					$sql1 = "SELECT nom FROM `".$table."` WHERE id = '".$id."'";
					$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
					if ($data1 = mysql_fetch_row($req1))
						$problems[$nom] .= ' <b>problem ('.$data1[0].')</b>';
					else if ($modify)
					{
						$sql1 = "UPDATE `".$table."` SET `id` = '".$id."' WHERE nom = '".$nom."'";
						echo '|'.$sql1.'|<br>';
						//$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
					}
				}
			}
		}
	}
	if (!$errorid)
		echo "Aucune erreur détectée (".sizeof($idsref)." joueurs vérifiés)<br><br>\n\n";
	else
	{
		echo "<b>".sizeof($problems)." errors</b><br><br>\n";
		foreach ($problems AS $nom => $problem)
			echo '<b>'.$nom.'</b><br>'.$problem.'<br>';
	}
	
	
	// controle des autoincréments
	echo '<br>Controle des autoincréments<br>';
	$errorauto = false;
	$autoincremref = -1;
	$autoincremmax = -1;
	foreach ($tables AS $table)
	{
		$sql = "SHOW TABLE STATUS LIKE '".$table."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		if ($autoincremmax == -1)
		{
			$autoincremref = $data['Auto_increment'];
			$autoincremmax = $data['Auto_increment'];
		}
		else
		{
			if ($autoincremref != $data['Auto_increment'])
			{
				$errorauto = true;
				echo $table .' : '.$autoincremref.' - '.$data['Auto_increment'].'<br>';
			}
			$autoincremmax = max($autoincremmax, $data['Auto_increment']);
		}
	}
	// correction de l'autoincrement, si nécessaire et désiré
	if (($errorauto)&&($modify))
	{
		foreach ($tables AS $table)
		{
			$sql = "ALTER TABLE `".$table."` AUTO_INCREMENT = ".$autoincremmax;
			echo '|'.$sql.'|<br>';
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
	}
	if (!$errorauto)
		echo "Aucune erreur détectée<br><br>\n\n";

	if ($errorid)
		return "Erreur dans les id. Aucune inscription ou reset n'est possible pour l'instant. Veuillez contacter l'administration pour signaler le problème. Merci de votre compréhension!";
	if ($errorauto)
		return "Erreur dans la base de données. Aucune inscription ou reset n'est possible pour l'instant. Veuillez contacter l'administration pour signaler ce problème. Merci de votre compréhension!";
	if ($errorbdd1)
		return "La base de données signale une erreur. Aucune inscription ou reset n'est possible pour l'instant. Veuillez contacter l'administration pour signaler ce problème. Merci de votre compréhension!";
	if ($errorbdd2)
		return "La création d'un autre compte est en cours. Veuillez réessayer plus tard...";
	if ($errorbdd3)
		return "La base de données signale un enregistrement manquant - creationCptProbs. Veuillez contacter l'administration pour signaler ce problème. Merci de votre compréhension!";
	if ($errorbdd4)
		return "La base de données signale un enregistrement manquant - creationCptEnCours. Veuillez contacter l'administration pour signaler ce problème. Merci de votre compréhension!";
	
	if ($modify)
	{
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = '0', remarques = '' WHERE param = 'creationCptProbs'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
	mysql_close();
	
	return true;
}



function check_id_autoincrement_reduced ()
{
	$tables = getTables();
	
	// controle du statut de la base de données
	$sql = "SELECT `valeur_entier` FROM destinee_statistiques WHERE param = 'creationCptProbs'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	if ($data[0])
		return false;
	
	// controle des id existants
	$problems = array();
	foreach ($tables AS $table)
	{
		$ids = array();
		$sql = "SELECT id, nom FROM `".$table."`";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
			$ids[$data[1]] = $data[0];
		if (!isset($idsref))
			$idsref = $ids;
		else
		{
			foreach ($idsref AS $nom => $id)
			{
				if ($ids[$nom] != $id)
				{
					$sql = "UPDATE destinee_statistiques SET `valeur_entier` = '1', remarques = 'id ".$nom." ".$table."' WHERE param = 'creationCptProbs'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					return false;
				}
			}
		}
	}	
	
	// controle des autoincréments
	$autoincremref = -1;
	foreach ($tables AS $table)
	{
		$sql = "SHOW TABLE STATUS LIKE '".$table."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		if ($autoincremref == -1)
			$autoincremref = $data['Auto_increment'];
		else
		{
			if ($autoincremref != $data['Auto_increment'])
			{
				$sql = "UPDATE destinee_statistiques SET `valeur_entier` = '1', remarques = 'autoincrement ".$table."' WHERE param = 'creationCptProbs'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				return false;
			}
		}
	}
	return true;
}



// met le flag de début de création de compte à 1 s'il est à 0
function debuteCreationCompte ($joueur)
{
		
	// tentative de mettage de flag de création de compte
	$nbr_essais = 3;
	do
	{
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = 1, `remarques` = '".addslashes($joueur)."' WHERE param = 'creationCptEnCours' AND `valeur_entier` = 0";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		if (mysql_affected_rows() == 1)
			return true;
		// si raté, c'est qu'un autre script est utilisé
		usleep (100);
		$nbr_essais--;
	}
	while ($nbr_essais > 0);
	return false;
}

// remet le flag de création de compte à 0
function termineCreationCompte ($joueur)
{
	// libération du statut de la base de données si la bdd était bien occupée par le joueur créé. Sinon le flag est laissé tel quel.
	$sql = "UPDATE destinee_statistiques SET `valeur_entier` = 0, `remarques` = '' WHERE param = 'creationCptEnCours' AND `valeur_entier` = 1 AND `remarques` = '".addslashes($joueur)."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if (mysql_affected_rows() == 1)
		return true;
	mail('destinee.online@gmail.com', 'ERREUR INSCRIPTION', 'Y\'a une truite avec cette requête :'."\n\n".$sql);
	return false;
}



?>
