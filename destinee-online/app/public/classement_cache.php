<?php
include('connect.php');


	// joueurs a masquer du classement et de l'espionnage si pas d'armée
	$sql = mysql_query('SELECT * FROM joueurs_modificateurs WHERE pvstotal = 0');
	//nombre de lignes renvoyées par la requête $sql
	$data_num = mysql_num_rows($sql);

			// joueurs a masquer du classement et de l'espionnage
			$joueursmasques = array(
				"Balthazar"
				);

	while ($data = mysql_fetch_array($sql)) {
		$data_add = $data["nom"];
		array_push($joueursmasques, $data_add);
	}

			$jmasques = "";
			for ($i=0; $i<sizeof($joueursmasques); $i++)
			{
				if ($i>0)
					$jmasques.=" AND ";
				$jmasques.= "joueurs_stats.nom NOT LIKE '".$joueursmasques[$i]."'";
			}	

	


?>