<?php

// END_USER FUNCTION: renvoie le nombre d'objets possédés dans l'inventaire. Simili booléen.
function possedeobjetcoffre($joueur_id)
{
	$req = mysql_query('SELECT COUNT(id) FROM joueurs_coffre WHERE objet != 0 AND joueur_id = '.$joueur_id);
	$dat = mysql_fetch_row($req);
	
	return $dat[0];
}

function trouverobjet($joueur_id, $item)
{
	$retour = mysql_query('SELECT id FROM joueurs_coffre WHERE objet = '.$item.' AND joueur_id = '.$joueur_id);
	if(!mysql_num_rows($retour))
		return false;
	else
	{
		$dat = mysql_fetch_row($retour);
		return $dat[0];
	}
}

// END_USER FUNCTION: retire un objet du coffre d'un joueur; détruit PAS l'objet
function coffre2detroy($joueur_id, $item)
{
	$retour = mysql_query('UPDATE joueurs_coffre SET objet = 0 WHERE joueur_id = '.$joueur_id.' AND objet = '.$item);
	return $retour;
}

// END_USER FUNCTION: A-t-on des places libres dans l'inventaire ?
function checkplaceinventaire($joueur_id)
{
	$req = mysql_query('SELECT * FROM joueurs_objets WHERE id = '.$joueur_id) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	for ($i=1; isset($data[$i]); $i++)
		if($data[$i] == 0)
			return $i; // Retourne la position de la place si on en trouve une
	return false; // Renvoie false sinon
}

// END_USER FUNCTION: on place un objet de l'inventaire dans le coffre
function inventaire2coffre($joueur_id, $ou)
{
    $req = 'SELECT `'.$ou.'` FROM joueurs_objets WHERE id = '.$joueur_id;
	$sql = mysql_query($req) or die('1<br />'.mysql_error());
	$dat = mysql_fetch_row($sql); $item = $dat[0];
    $req = 'UPDATE joueurs_coffre SET objet = '.$item.' WHERE joueur_id = '.$joueur_id.' AND objet = 0 ORDER BY id ASC LIMIT 1';
	mysql_query($req) or die(mysql_error());
	if(mysql_affected_rows() == 0)//la premiere fois 
	{
    $req = 'INSERT INTO joueurs_coffre (objet, joueur_id) VALUES ( '.$item.', '.$joueur_id.')';
	mysql_query($req) or die(mysql_error());
	}
	//if(mysql_affected_rows() > 0) 
	//{
		mysql_query('UPDATE joueurs_objets SET `'.$ou.'` = 0 WHERE id = '.$joueur_id);
		return true;
	//}
	//return false;
}

// END_USER FUNCTION: On place un objet du coffre dans l'inventaire
function coffre2inventaire($joueur_id, $item)
{
	$place = checkplaceinventaire($joueur_id);
	if($place)
	{
		mysql_query('UPDATE joueurs_objets SET `'.$place.'` = '.$item.' WHERE id = '.$joueur_id);
		//mysql_query('UPDATE joueurs_coffre SET objet = 0 WHERE joueur_id = '.$joueur_id.' AND objet = '.$item) or die(mysql_error());
		mysql_query('DELETE FROM joueurs_coffre WHERE joueur_id = '.$joueur_id.' AND objet = '.$item) or die(mysql_error());
		return true;
	}
	return false;
}

?>
