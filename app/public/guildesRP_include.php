<?

include ('info_objets_include.php');


// on choppe les données concernant les corporations
/*
 * on veut se fabriquer des tableaux de donnée avec la structure:
	$table = array(
		array('',			0, 0,   0,   0,   0,   0  ),
		array('de l\'Ombre',		0, 301, 301, 301, 301, 305),
		array('du Mana',		0, 311, 311, 311, 311, 315),
		array('des Cultes',		0, 321, 321, 321, 321, 325),
		array('des Combattants',	0, 331, 331, 331, 331, 335),
		array('des Itinérants',		0, 341, 341, 341, 341, 345)
	);
	// laisser le premier vide, pour la valeur par défaut = 0
	$rangs = array('', 'Aspirant', 'Combattant', 'Lieutenant', 'Aumônier', 'Instructeur', 'Commandant');
*/
//ALTER TABLE `guildesrp` ADD `Enchanteur` TINYINT( 2 ) NOT NULL DEFAULT '0' AFTER `Druide` 
//UPDATE `guildesrp` SET `Enchanteur` = '1' WHERE `id` =2 LIMIT 1 ;
$serveur_RP = 3;

$table = array();
$rangs = array();
$req = mysql_query("SELECT * FROM guildesrp ORDER BY id;") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))
{
	$id = $data['id'];
	
	foreach ($data as $key => $value)
		$table[$id][$key] = $value;
	
	if (($currentguilde == $id)||(!isset($rangs[1])))
		for ($i=1; $i<7; $i++)
			$rangs[$i] = $data['t'.$i];
}


// localise un objet à partir de l'id de sa base; retourne false si possède pas l'objet. Les variables par référence sont utilisées pour le retour d'informations (est-c plus propre que de retourner un array ? je pense que oui)
// retourne true/false; modifie les variables passées par référence
function localise_objet_base ($joueid, $objet_base_id, &$db_table, &$db_field, &$db_item)
{
	if ($objet_base_id == '0')
		return false;
	// check dans inventaire utilisé
	$req = mysql_query("SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE id = '".$joueid."'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		foreach ($data AS $ou => $item)
		{
			if ($item != 0)
			{
				$obj_data = retourne_carac_display_objet ($item);
				if ($obj_data['base'] == $objet_base_id)
				{
					$db_table = 'joueurs_inventaire';
					$db_field = $ou;
					$db_item = $item;
					return true;
				}
			}
		}
	}
	// check dans objets inutilisés
	$req = mysql_query("SELECT * FROM joueurs_objets WHERE id = '$joueid'") or die('Erreur SQL !<br>'.mysql_error());
	if ($slots = mysql_fetch_row($req))
	{
		for ($i=1; isset($slots[$i]); $i++)
		{
			$obj_data = retourne_carac_display_objet ($slots[$i]);
			if ($obj_data['base'] == $objet_base_id)
			{
				$db_table = 'joueurs_objets';
				$db_field = $i;
				$db_item = $slots[$i];
				return true;
			}
		}
	}
	// si pas trouvé, c'est que ya pas
	return false;
}


// fonction diverses
function joueurpossedeobjet($joueid, $objet_base_id)
{
	// fonction spécifique aux objets de quète: si l'objet qu'on doit checker est "pas d'objet", bah... c'est toujours le cas! on retourn donc oui.
	if ($objet_base_id == '0')
		return true;
	// par contre, si il faudrait effectivement un objet, faut checker s'il est possédé.
	$dbtable = '';
	$db_field = '';
	$db_item = '';
	return localise_objet_base ($joueid, $objet_base_id, $db_table, $db_field, $db_item);
}

// dit quel objet doit porter le joueur suivant son grade
function quelobjet ($guilde, $rang)
{
	global $table;
	if ((isset($table[$guilde]['o'.$rang])) && ($rang > 0))
		return $table[$guilde]['o'.$rang];
	return '0';
}


/*
// enlève un objet équipé et le détruit
function enleveetdetruitobjet ($joueur, $id)
{
	// si pas d'objet, réussite automatique
	if ($id == 0)
		return true;
	
	// on récupère les bonus donnés par l'objet
	$sql = "SELECT * FROM objets_stats WHERE id = '$id'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$obj_data = mysql_fetch_assoc($req);
	
	// on fouille l'inventaire pour le trouver
	$sq1 = "SELECT tête, cou, corps, doigt01, doigt02, pieds, arme, bouclier, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '$joueur'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
	if ($dat1 = mysql_fetch_assoc($re1))
	{
		foreach ($dat1 as $ou => $quoi)
		{
			if ($quoi == $id)
			{
				// on l'a trouvé --> on le vire et on modifie les bonus du joueur
								
				// on vire l'objet
				$sql = "UPDATE `joueurs_inventaire` SET `$ou` = '0' WHERE nom ='$joueur'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

				// on vire les modificateurs
				objetchangemodificateurs ($obj_data, $joueur, '-');

				return true;
			}
		}
	}
	return false;
}
*/

/*
// détruit un objet de l'inventaire
function retireetdetruitobjet ($joueur, $id)
{
	// si pas d'objet, réussite automatique
	if ($id == 0)
		return true;
	
	$continue = true;
	$sq1 = "SELECT * FROM joueurs_objets WHERE nom = '$joueur'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
	if ($dat1 = mysql_fetch_assoc($re1))
	{
		for ($i=1; $i<17; $i++)
		{
			if (($continue)&&($dat1[$i] == $id))
			{
				// retrait de l'objet
				$sql = "UPDATE joueurs_objets set `$i` = '0' WHERE nom = '$joueur'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				return true;
			}
		}
	}
	return false;
}
*/

/*
// ajoute un objet dans l'inventaire
function ajouteobjetinventaire ($joueur, $id)
{
	// si pas d'objet, réussite automatique
	if ($id == 0)
		return true;
	
	$continue = true;
	$sq1 = "SELECT * FROM joueurs_objets WHERE nom = '$joueur'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
	if ($dat1 = mysql_fetch_assoc($re1))
	{
		for ($i=1; $i<17; $i++)
		{
			if (($continue)&&($dat1[$i] == '0'))
			{
				// retrait de l'objet
				$sql = "UPDATE joueurs_objets set `$i` = '$id' WHERE nom = '$joueur'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				return true;
			}
		}
	}
	return false;

}
*/

/*
// enlève un objet équipé et le détruit
function ajouteobjetequipe ($joueur, $id)
{
	// si pas d'objet, réussite automatique
	if ($id == 0)
		return true;
	
	// on récupère les bonus donnés par l'objet
	$sql = "SELECT * FROM objets_stats WHERE id = '$id'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$obj_data = mysql_fetch_assoc($req);
	$type = $obj_data['type'];
	
	// on récupère les infos sur ce que le joueur a déjà équipé
	$sq1 = "SELECT tête, cou, corps, doigt01, doigt02, pieds, arme, bouclier, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '$joueur'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
	$equipement = mysql_fetch_assoc($re1);
	if (!isset($equipement['cou']))
		return false;
	
	// on fouille l'inventaire pour trouver une place libre qui va bien avec sa nature
	$lequel = '';
	switch($type)
	{
	   	case 'Amulette'		: if ($equipement['cou']   == '0') $lequel = 'cou';	break;
		case 'Anneau'		: if ($equipement['doigt01']== '0')$lequel = 'doigt01'; else if ($equipement['doigt02']== '0') $lequel = 'doigt02';	break;
		case 'Bottes'		: if ($equipement['pieds'] == '0') $lequel = 'pieds';	break;
		case 'Bâton'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Dague'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Épée'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Hache'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Arc'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Masse'		: if ($equipement['arme']  == '0') $lequel = 'arme';	break;
		case 'Bouclier'		: if ($equipement['bouclier']=='0')$lequel = 'bouclier';break;
		case 'Armure'		: if ($equipement['corps'] == '0') $lequel = 'corps';	break;
		case 'Heaume'		: if ($equipement['tête']  == '0') $lequel = 'tête';	break;
		case 'Accessoire'	: if ($equipement['accessoire01'] == '0') $lequel = 'accessoire01';	else if ($equipement['accessoire02'] == '0') $lequel = 'accessoire02';	else if ($equipement['accessoire03']  == '0') $lequel = 'accessoire03';	break;
	}
	// si on trouve pas de place pour l'objet...
	if ($lequel == '')
		return false;
	
	// on a trouvé ou mettre l'objet, lets'gal!
	$sql = "UPDATE `joueurs_inventaire` SET `$lequel` = '$id' WHERE nom ='$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

	// on vire les modificateurs
	objetchangemodificateurs ($obj_data, $joueur, '+');

	return true;
}
*/


// exclut un joueur de sa corporation actuelle
function corpo_excluredeguilde ($joueid)
{
	global $table;
	// trouver quel objet
	$req = mysql_query("SELECT rangguildeRP, guildeRP, nom FROM joueurs_bonus WHERE id = '$joueid' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		$rang = $data[0];
		$currentguilde = $data[1];
		$joueur = $data[2];
		$objet_base_id = quelobjet($currentguilde, $rang);
		
		// faut virer l'objet
		if ($objet_base_id != 0)
		{
			$dbtable = '';
			$db_field = '';
			$db_item = '';
			if (localise_objet_base ($joueid, $objet_base_id, $db_table, $db_field, $db_item))
			{
				$obj_data = retourne_carac_objet ($db_item);
				if ($db_table == 'joueurs_inventaire')
				{
					equiper2destroy ($db_field, $joueur);
					objetchangemodificateurs ($obj_data, $joueur, '-');
				}
				else if ($db_table == 'joueurs_objets')
				{
					inventaire2detroy($joueur, $db_item);
					detruire_objet ($db_item);
				}
			}
		}
		
		// enlevage de la corporation
		$sql = "UPDATE joueurs_bonus SET rangguildeRP = '0', guildeRP = '0' WHERE id = '$joueid' LIMIT 1";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

		return 'Le joueur <b>'.$joueur.'</b> a été exclu de la corporation : <b>'.$table[$currentguilde]['nom'].'</b>.<br>';
	}
	return '';
}

// modifie le rang d'un joueur dans sa corporation
function modifierang($joueid, $newrang)
{
	global $rangs;
	if (isset($rangs[$newrang]))
	{		
		// modifier objet
		$req = mysql_query("SELECT rangguildeRP, guildeRP, nom FROM joueurs_bonus WHERE id = '$joueid' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_row($req))
		{
			$ancienrang = $data[0];
			$currentguilde = $data[1];
			$joueur = $data[2];
			
			$objetactuel_base = quelobjet($currentguilde, $ancienrang);
			$nouvelobjet_base = quelobjet($currentguilde, $newrang);
			
			$flag = false;
			if ($objetactuel_base != $nouvelobjet_base)
			{
				$doitcreer = false;
				// faut changer objet
				if ($objetactuel_base == 0)
					$doitcreer = true;
				else
				{
					// enlève l'ancien objet et équipe le nouveau
					$dbtable = '';
					$db_field = '';
					$db_item = '';
					if (localise_objet_base ($joueid, $objetactuel_base, $db_table, $db_field, $db_item))
					{
						$obj_data = retourne_carac_objet ($db_item);
						if ($db_table == 'joueurs_inventaire')
						{
							// destruction
							equiper2destroy ($db_field, $joueur);
							objetchangemodificateurs ($obj_data, $joueur, '-');
							// création
							$item = creer_objet ($nouvelobjet_base, -1);
	// A MODIFIER: L'OBJET DOIT ARRIVER DANS PARTIE INVENTAIRE UTILISE
							if (($item != false)&&(ajouteDansInventaire ($joueur, $item)))
								$flag = true;
						}
						else if ($db_table == 'joueurs_objets')
						{
							// destruction
							inventaire2detroy($joueur, $db_item);
							detruire_objet ($db_item);
							$doitcreer = true;
						}
					}
					else	// si l'objet a pas été trouvé, on créé juste un nouveau
					{
						$doitcreer = true;
					}
				}
				if ($doitcreer)
				{
					// création
					if ($nouvelobjet_base == 0)
						$flag = true;
					else
					{
						$item = creer_objet ($nouvelobjet_base, -1);
						if (($item != false)&&(ajouteDansInventaire ($joueur, $item)))
							$flag = true;
					}
				}
			}
			else
				$flag = true;
			
			if ($flag)
			{
				// derniers détails: rang, message de confirmation
				$sql = "UPDATE joueurs_bonus SET rangguildeRP = '$newrang' WHERE id = '$joueid' LIMIT 1";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				
				return 'Le rang du joueur <b>'.$joueur.'</b> a été modifié et fixé à : <b>'.$rangs[$newrang].'</b>.<br>';
			}
			else
				echo 'Un problème est survenu, peut-être en rapport avec la place dans l\'inventaire.<br>';
		}
	}
	return 'Erreur';
}

?>
