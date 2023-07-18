<?php

// By Tharkis
$sql_joueur = "SELECT `id` FROM `joueurs_infos` WHERE 1";
$req_joueur = mysql_query($sql_joueur) or die (mysql_error());
while ($data_joueur = mysql_fetch_assoc($req_joueur)) {
	$id_joueur = $data_joueur['id'];
	$sql_perso = "SELECT id FROM `joueurs_heros` WHERE id_compte = $id_joueur";
	$req_perso = mysql_query($sql_perso) or die (mysql_error());
	$nb_persos = mysql_num_rows($req_perso);
	if ($nb_persos == 2) {
		// Si y'a 2 persos on augmente le score de la moitié du niveau de chaque perso
		$result_id_perso1 = mysql_fetch_assoc($req_perso);
		$id_perso1 = $result_id_perso1['id'];
		$result_id_perso2 = mysql_fetch_assoc($req_perso);
		$id_perso2 = $result_id_perso2['id'];
		$sql_sum_niveau = "SELECT SUM(niveau) FROM joueurs_stats WHERE id IN ($id_perso1, $id_perso2)";
		$req_sum_niveau = mysql_query($sql_sum_niveau) or die (mysql_error());
		$result_sum_niveau = mysql_fetch_row($req_sum_niveau);
		$ajout_score = $result_sum_niveau[0] / 2;
		$sql_update = "UPDATE `joueurs_stats` SET `score` = `score` + $ajout_score WHERE `id` IN ($id_perso1, $id_perso2)";
		$req_update = mysql_query($sql_update) or die (mysql_error());
		$sql_update_compte = "UPDATE `joueurs_infos` SET `score` = (SELECT js.`score` FROM `joueurs_stats` js WHERE `id` = $id_perso1) WHERE `id` = $id_joueur";
		$req_update_compte = mysql_query($sql_update_compte) or die (mysql_error());
	} else if ($nb_persos == 3) {
		$result_id_perso1 = mysql_fetch_assoc($req_perso);
		$id_perso1 = $result_id_perso1['id'];
		$result_id_perso2 = mysql_fetch_assoc($req_perso);
		$id_perso2 = $result_id_perso2['id'];
		$result_id_perso3 = mysql_fetch_assoc($req_perso);
		$id_perso3 = $result_id_perso3['id'];
		$sql_sum_niveau = "SELECT SUM(niveau) FROM joueurs_stats WHERE id IN ($id_perso1, $id_perso2, $id_perso3)";
		$req_sum_niveau = mysql_query($sql_sum_niveau) or die (mysql_error());
		$result_sum_niveau = mysql_fetch_row($req_sum_niveau);
		$ajout_score = $result_sum_niveau[0] / 3;
		$sql_update = "UPDATE `joueurs_stats` SET `score` = `score` + $ajout_score WHERE `id` IN ($id_perso1, $id_perso2, $id_perso3)";
		$req_update = mysql_query($sql_update) or die (mysql_error());
		$sql_update_compte = "UPDATE `joueurs_infos` SET `score` = (SELECT js.`score` FROM `joueurs_stats` js WHERE `id` = $id_perso1) WHERE `id` = $id_joueur";
		$req_update_compte = mysql_query($sql_update_compte) or die (mysql_error());
	} else if ($nb_persos == 1) {
		$id_perso = mysql_fetch_assoc($req_perso);
		$id_perso = $id_perso['id'];
		$sql_update = "UPDATE `joueurs_stats` SET `score` = `score` + `niveau` WHERE `id` = $id_perso";
		$req_update = mysql_query($sql_update) or die (mysql_error());
		$sql_update_compte = "UPDATE `joueurs_infos` SET `score` = (SELECT js.`score` FROM `joueurs_stats` js WHERE `id` = $id_perso) WHERE `id` = $id_joueur";
		$req_update_compte = mysql_query($sql_update_compte) or die (mysql_error());
	}
}


?>
