<?php

function mentor_noter($joueur_id, $note)
{
	$req = mysql_query("SELECT mentors_liste.mentor_id, mentors_liste.votes
						FROM mentors_liste
						INNER JOIN joueurs_heros ON joueurs_heros.mentor = mentors_liste.mentor_id
						WHERE joueurs_heros.id = ".$joueur_id);
	if(mysql_num_rows($req) == 0)
		return false;
	$dat = mysql_fetch_row($req);
			
	$tableau = unserialise(gzuncompress($dat[1]));
	$total = 0;
	$trouve = 0;
	foreach($tableau AS $id => $an_note)
	{
		if($id == $joueur_id)
		{
			$nouveau_tab[$joueur_id] = $note;
			$total += $note;
			$trouve = 1;
		}
		else
		{
			$nouveau_tab[$id] = $an_note;
			$total += $an_note;
		}
	}
	if($trouve == 0)
		$nouveau_tab[$joueur_id] = $note;
	$moyenne = $total / sizeof($tableau);
	mysql_query("UPDATE mentors_liste SET note = ".$moyenne.", nombre = '".gzcompress(serialize($nouveau_tab))."' WHERE mentor_id = ".$dat[0]);
	return true;
}

function mentor_demander($mentor_id, $joueur_id)
{
	$req = mysql_query("SELECT mentors_liste.mentor_id, mentors_liste.demandes
						FROM mentors_liste
						WHERE mentors_liste.mentor_id = ".$mentor_id);
	$dat = mysql_fetch_row($req);
	$tab = unserialize(gzuncompress($dat[1]));
	
	if(sizeof($tab) >= 3 || mysql_num_rows($req) == 0)
		return false;
	
	$tab[] = $joueur_id;
	mysql_query("UPDATE mentors_liste SET demandes = '".gzcompress(serialize($tab))."' WHERE mentor_id = ".$mentor_id);
	return true;
}
?>