<html>
<head>
	<title>Gestion des joueurs</title>
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
</head>
<body>
	
<?
include ('gestionauthentifications.php');

echo '<form method="post" action="Joueur2.php">';

echo '<center><br><br><b>GESTION DES JOUEURS</b><br><br><br>';


function check_id_joueur ($joueur)
{
	// contrôle de l'intégrité des tables - si le joueur a partout la meme id
	$id = -1;
	$tables = array('joueurs_aptitudes', 'joueurs_aptitudes_base', 'joueurs_batiments_id', 'joueurs_batspe', 'joueurs_bonus', 'joueurs_combat', 'joueurs_connexions', 'joueurs_créatures', 'joueurs_créatures_id', 'joueurs_heros', 'joueurs_infos', 'joueurs_inventaire', 'joueurs_magies', 'joueurs_modificateurs', 'joueurs_objets', 'joueurs_sorts', 'joueurs_stats', 'joueurs_terre', 'joueurs_terre_utile', 'joueurs_vote');
	foreach ($tables AS $table)
	{
		$req = mysql_query("SELECT id FROM `".$table."` WHERE nom = '".$joueur."' ") or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_row($req))
		{
			if ($id == -1)
				$id = $data[0];
			else if ($data[0] != $id)
			{
				echo 'Erreur dans la base de données! (mauvais id pour '.$table.' id '.$data[0].' - '.$id.')';
				return false;
			}
		}
		else
		{
			echo 'Erreur dans la base de données! (joueur non trouvé dans '.$table.')';
			return false;
		}
	}
	return true;
}


if (!isset($_POST['joueur'])){
	echo 'Veuillez saisir le nom d\'un joueur :<br>';
	echo '<input type="text" size="20" name="joueur">';
	echo '<select name="srv">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  </select>';
		  
	echo '<br><br><input type="submit" value="Chercher >>">';
}
else
{
	switch($_POST['srv'])
	{
		case '1' : include("connect_p.php"); break;
		case '2' : include("connect_b.php"); break;
		case '3' : include("connect_a.php"); break;
	}
	
	if (isset($_POST['total']))
	{
		for ($i=1; $i<($_POST['total'] + 1); $i++)
		{
			if (isset($_POST[$i]))
			{
				$warning = 0;
				
				$nouveau_nom = (isset($_POST['nom'.$i])) ? htmlentities(html_entity_decode($_POST['nom'.$i])) : '';
				$nouveau_roy = (isset($_POST['nom'.$i])) ? htmlentities(html_entity_decode($_POST['roy'.$i])) : '';
				$nouveau_com = stripslashes($_POST['com'.$i]);
				
				$req = mysql_query('SELECT nom, email FROM joueurs_infos WHERE id="'.$_POST['id'.$i].'"') or die('Erreur SQL !<br>'.mysql_error());
				$result = mysql_fetch_assoc($req);
				$Ancien_Nom = $result['nom'];
				$destinataire = $result['email'];
				$req = mysql_query('SELECT royaume FROM joueurs_heros WHERE id ="'.$_POST['id'.$i].'"') or die('Erreur SQL !<br>'.mysql_error());
				$result = mysql_fetch_assoc($req);
				$Ancien_Royaume = $result['royaume'];
				
				$req = mysql_query("SELECT nom FROM joueurs_heros WHERE nom = '".$Ancien_Nom."' AND id != '".$_POST['id'.$i]."'") or die('Erreur SQL !<br>'.mysql_error());
				if (mysql_num_rows($req) > 0)
				{
					echo 'Quelqu\'un d\'autre possède déjà le même nom de personnage.';
					$warning = 1;
				}
				if (($nouveau_nom=='')||($nouveau_roy=='')||($Ancien_Nom==''))
					$warning = 1;
				if (($nouveau_nom==$Ancien_Nom)&&($nouveau_roy==$Ancien_Royaume))
					$warning = 1;
				if (!check_id_joueur ($Ancien_Nom))
					$warning = 1;
				
				if ($warning == 0)
				{
					// royaume
					mysql_query('UPDATE `joueurs_heros`	SET `royaume` = "'.$nouveau_roy.'"	WHERE nom="'.$Ancien_Nom.'"')		or die('Erreur SQL !<br>'.mysql_error());
					if (($Ancien_Nom != $nouveau_nom))
					{
						// guildes
						mysql_query('UPDATE `guildes` 		SET `chef` = "'.$nouveau_nom.'" 	WHERE chef = "'.$Ancien_Nom.'"')	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query("UPDATE `guildes_creation`	SET `nom` = '".$nouveau_nom."'		WHERE nom = '".$Ancien_Nom."'")		or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `guildes_inscription` SET `joueur`="'.$nouveau_nom.'"	WHERE joueur="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						// dons
						mysql_query('UPDATE `dons`		SET `nom`="'.$nouveau_nom.'"		WHERE nom="'.$Ancien_Nom.'"')		or die('Erreur SQL !<br>'.mysql_error());
						// combats
						mysql_query("UPDATE `combat_joueurs` 	SET `attaquant` = '".$nouveau_nom."' 	WHERE `attaquant`='".$Ancien_Nom."'") 	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query("UPDATE `combat_joueurs` 	SET `defendant` = '".$nouveau_nom."' 	WHERE `defendant`='".$Ancien_Nom."'")  	or die('Erreur SQL !<br>'.mysql_error());;
						// marché central
						mysql_query('UPDATE `foire_vente` 	SET `vendeur`="'.$nouveau_nom.'"	WHERE vendeur="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `foire_vente` 	SET `acheteur`="'.$nouveau_nom.'"	WHERE acheteur="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						// messagerie
						mysql_query('UPDATE `messagerie` 	SET `auteur`="'.$nouveau_nom.'" 	WHERE auteur="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `messagerie` 	SET `destinataire`="'.$nouveau_nom.'"	WHERE destinataire="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						// palatinat
						mysql_query('UPDATE `candidat_palatinat`  SET `nom`="'.$nouveau_nom.'"		WHERE nom="'.$Ancien_Nom.'"') 		or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `votant_palatinat` 	  SET `votant`="'.$nouveau_nom.'"		WHERE votant="'.$Ancien_Nom.'"') or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `provinces_politiques` SET `Palatin`="'.$nouveau_nom.'"	WHERE Palatin="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						// mercenariat
						mysql_query('UPDATE `mise_a_prix`	SET `cible`="'.$nouveau_nom.'"		WHERE cible="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `mise_a_prix`	SET `commanditaire`="'.$nouveau_nom.'"	WHERE commanditaire="'.$Ancien_Nom.'"') or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `mise_a_prix`	SET `mercenaire`="'.$nouveau_nom.'"	WHERE mercenaire="'.$Ancien_Nom.'"') 	or die('Erreur SQL !<br>'.mysql_error());
						mysql_query('UPDATE `mise_a_prix`	SET `commanditaire_reel`="'.$nouveau_nom.'" WHERE commanditaire_reel="'.$Ancien_Nom.'"') or die('Erreur SQL !<br>'.mysql_error());
						// inscriptions
						mysql_query('UPDATE `joueurs_inscription` SET `nom`="'.$nouveau_nom.'" 		WHERE nom="'.$Ancien_Nom.'"') 		or die('Erreur SQL !<br>'.mysql_error());
						// table du joueur proprement dites
						$sql = 'UPDATE `joueurs_aptitudes`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_aptitudes_base`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_batiments_id`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_batspe`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_bonus`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_combat`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_connexions`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_créatures`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_créatures_id`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_heros`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_infos`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_inventaire`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_magies`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_modificateurs`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_objets`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_sorts`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_stats`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_terre`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_terre_utile`	SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$sql = 'UPDATE `joueurs_vote`		SET `nom`="'.$nouveau_nom.'" 	WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						// quetes
						//PLUS UTILISE $sql = 'UPDATE `joueurs_quetes`		SET `nom`="'.$nouveau_nom.'"		WHERE nom="'.$Ancien_Nom.'"';		mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					}
					
					
					if (($Ancien_Nom != $nouveau_nom) || ($Ancien_Royaume != $nouveau_roy))
					{
						$from=htmlentities("From: inscription@destinee-online.com" );
						$message = 'Bonjour,

Soit parce que vous l\'avez voulu, soit parce que l\'équipe a jugé que cela n\'était pas en accord avec l\'univers médiéval fantastique de Destinée, votre nom est passé de '.html_entity_decode($Ancien_Nom).' '.html_entity_decode($Ancien_Royaume).' à '.html_entity_decode($nouveau_nom).' '.html_entity_decode($nouveau_roy).'.
Pour des éventuelles questions, n\'hésitez à répondre à ce mail.
Désormais vous devrez vous logger sous le nom '.html_entity_decode($nouveau_nom).' pour accéder au jeu.

Merci de votre compréhension.

L\'Equipe d\'Administration de Destinée-Online.';

						mail($destinataire, "Changement de votre nom de héros", $message, $from);
						echo '<b>Mail envoyé</b><br>'.str_replace('
','<br>',$message);
					}
				}
    			}
		}
	}

	
		
	$sql = 'SELECT joueurs_infos.nom, joueurs_infos.email, joueurs_infos.password, joueurs_infos.ip_dernier, id FROM joueurs_infos WHERE joueurs_infos.nom LIKE "'.trim(htmlentities(html_entity_decode($_POST['joueur']))).'%" ORDER BY nom';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nbr = mysql_num_rows($req);
	if ($nbr > 0){
		echo '<center><br><br><table style="width: 60%; text-align: center;" border="1"><tbody>
			  <tr>
			  	  <td></td>
				  <td><b>Nom</td>
				  <td><b>Royaume</td>
				  <td><b>Email</td>
				  <td><b>Password</td>
				  <td><b>Dernier_IP</td>
				  <td>Erreur bdd?</td>
			  </tr>';
		
		for ($i=1; $i<($nbr+1); $i++){
			$dat = mysql_fetch_row($req);
			$sq2 = 'SELECT royaume FROM joueurs_heros WHERE nom LIKE "'.$dat[0].'"';
			$re2 = mysql_query($sq2);
			$da2 = mysql_fetch_row($re2);
			$erreur = (check_id_joueur ($dat[0])) ? '' : 'ERREUR';
		
			echo '<input type="hidden" name="id'.$i.'" value="'.$dat[4].'">';
			
			echo '<tr>
			      <td><input type="checkbox" name="'.$i.'" value="1"></td>
				  <td><input type="text" name="nom'.$i.'" value="'.$dat[0].'" style="width: 100%;"</td>
				  <td><input type="text" name="roy'.$i.'" value="'.$da2[0].'" style="width: 100%;"></td>
				  <td nowrap="nowrap" style="text-align: left;">'.$dat[1].'</td>
				  <td nowrap="nowrap" style="text-align: left;">'.$dat[2].'</td>
				  <td>'.$dat[3].'</td>
				  <td>'.$erreur.'</td>
				  </tr>'; 
		}
		
		echo '</tbody></table>';
	}
	
	echo '<input type="hidden" name="total"  value="'.$nbr.'">';
	echo '<input type="hidden" name="srv"    value="'.$_POST['srv'].'">';
	echo '<input type="hidden" name="joueur" value="'.($_POST['joueur']).'">';
	echo '<br><br><input type="submit" value="Modifier >>">';
}

if (isset($_POST['joueur'])){
	echo '<br><br><a href="Joueur2.php">Retour</a>';
}
else {
	echo '<br><br><a href="administration.php">Retour</a>';
}
?>
</body>
</html>
