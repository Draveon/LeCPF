<?php
/*
 * CODEUR DE GÉNIE = ainkurn
 * PRINCIPE = UNE TABLE STATIQUE AVEC TOUS LES JOURS DE L'ANNNEE
 * 2 VARIABLES PAR PROCESS : 1) BOOLEAN QUI DIT SI TEL JOUR ON FAIT 2) ANNEE OU CELA A ÉTÉ FAIT POUR LA DERNIERE FOIS
 */
class MarcheAuto {
protected $rand_qui;
protected $rand_comment;
	/*
	 * pass the field you want to test if have to do today eg : "marche_noir_normal" OU "marche_noir_special" OU "hof"
	 */
	public function __Construct() {
		$qui = array("Un lutin", "Un gnome", "Un commerçant", "Un illuminé", "Un roublard", "Un émissaire", "Un charlatan", "Un arnaqueur", "Un naïf");
		$comment = array("fauché", "véruqueux", "avec un abcès à la machoire", "en robe de chambre", "en pantalon jaune", "unijambiste", "sur un tapis volant", "reconverti", "déguisé en singe",
		"pouilleux", "édenté", "trop bavard", "à l'air louche");
		$this->rand_qui = $qui[array_rand($qui)];
		$this->rand_comment = $comment[array_rand($comment)];
	}

	/*
	 * check if something to do today according to field passed to constructor
	 * return : boolean
	 */ 
	public function envoyerAuMarcheNoirNormal(){
		$qui = mysql_real_escape_string($this->rand_qui);
		$cmt = mysql_real_escape_string($this->rand_comment);
		$sql = "SELECT COUNT(*) FROM joueurs_aptitudes WHERE `21` > 40";
		$req = mysql_query($sql) or die ($sql);
		$data = mysql_fetch_row($req);
		$nb_ventes = 1 + ceil($data[0] / 3);
		while ($nb_ventes > 0) {
			$sql = "SELECT id, niv, image, type 
				FROM objets_stats
				WHERE 
				trouvable is true AND 
				niv BETWEEN 2 AND ((SELECT max(niveau) FROM `joueurs_stats`) + 2)
			ORDER BY RAND()
			LIMIT 1";
			$req = mysql_query($sql) or die ($sql);	
			$dat = mysql_fetch_row($req);
			$id = $dat[0];
			$niv = $dat[1];
			$image = $dat[2];
			$type = $dat[3];


			$sql = "INSERT INTO `objets_items` (`id`, `base`, `bonus`, `fin_amelioration`) VALUES (NULL, $id, 0, 0);";
			$req = mysql_query($sql) or die ($sql);	
			$id_item = mysql_insert_id();		

			$sql = "-- Récupérer l'id créé et remplacer les valeurs
				INSERT INTO `foire_vente` (`id`, `vendeur`, `item`, `qtee`, `offre`, `temps`, `image`, `acheteur`, `type`, `type2`, `commerce_min`) 
				VALUES (NULL, 
				'$qui $cmt', 		/* Nom vendeur */
				'$id_item', 					/* id item */
				'1', 
				'$niv' * 5000, 					/* prix de base */
				UNIX_TIMESTAMP(now())/60 + 1440, 			/* nombre de minutes avant fin de la vente */
				'$image', 	/* image objet */
				'', 
				'objet', 
				'$type', 				/* type objet */
				'$niv'*2)";
			$req = mysql_query($sql) or die ($sql);	
			$nb_ventes--;
		}

	}

	public function envoyerAuMarcheNoirSpecial(){
		$qui = mysql_real_escape_string($this->rand_qui);
		$cmt = mysql_real_escape_string($this->rand_comment);
		$sql = "SELECT COUNT(*) FROM joueurs_aptitudes WHERE `21` > 40";
		$req = mysql_query($sql) or die ($sql);
		$data = mysql_fetch_row($req);
		$nb_ventes = 1 + ceil($data[0] / 3);
		while ($nb_ventes > 0) {
			$sql = "SELECT id, niv, image, type 
				FROM objets_stats
				WHERE 
				trouvable is false AND
				marche_noir_special is true AND
				niv BETWEEN 2 AND ((SELECT max(niveau) FROM `joueurs_stats`) + 3)
			ORDER BY RAND()
			LIMIT 1";
			$req = mysql_query($sql) or die (mysql_error());	
			$dat = mysql_fetch_row($req);
			$id = $dat[0];
			$niv = $dat[1];
			$image = $dat[2];
			$type = $dat[3];


			$sql = "
				INSERT INTO `objets_items` (`id`, `base`, `bonus`, `fin_amelioration`) VALUES (NULL, $id, 0, 0);
			";
			$req = mysql_query($sql) or die ($sql);	
			$id_item = mysql_insert_id();		

			$sql = "-- Récupérer l'id créé et remplacer les valeurs
				INSERT INTO `foire_vente` (`id`, `vendeur`, `item`, `qtee`, `offre`, `temps`, `image`, `acheteur`, `type`, `type2`, `commerce_min`) 
				VALUES (NULL, 
				'$qui $cmt', 		/* Nom vendeur */
				'$id_item', 					/* id item */
				'1', 
				'$niv'*15000, 					/* prix de base */
				UNIX_TIMESTAMP(now())/60 + 2880, 			/* nombre de minutes avant fin de la vente */
				'$image', 	/* image objet */
				'', 
				'objet', 
				'$type', 				/* type objet */
				'$niv'*4)";
			$req = mysql_query($sql) or die (mysql_error());	
			$nb_ventes--;
		}
	}


	public function envoyerAuMarcheNoirCrea(){
		//Voyons voir si quelque chose à faire aujourd'hui
		$qui = mysql_real_escape_string($this->rand_qui);
		$cmt = mysql_real_escape_string($this->rand_comment);
		$sql_nom = "SELECT nom, `21` FROM joueurs_aptitudes WHERE `21` >= 40";
		$req_nom = mysql_query($sql_nom) or die ($sql_nom);
		while ($data = mysql_fetch_row($req_nom)) {
			$nom = $data[0];
			$commerce = $data[1];
			$sql = "
				SELECT number_crea,
				niv_crea,
				commerce_min,
				id_crea,
				image as img_crea,
				cout_argent * 40 / 100 * number_crea as cout_crea
				FROM (
					SELECT number_crea,
					niv_crea,
					commerce_min,
					id_crea
				FROM
				(
					SELECT 
					CASE sub.niv_crea
					WHEN 2 THEN FLOOR(35 + (RAND() * (106-35)))
					WHEN 3 THEN FLOOR(25 + (RAND() * (51-25)))
					WHEN 4 THEN FLOOR(20 + (RAND() * (41-20)))
					WHEN 5 THEN FLOOR(15 + (RAND() * (31-20)))
					WHEN 6 THEN FLOOR(10 + (RAND() * (21-10)))
					END as number_crea,
					CASE sub.niv_crea
					WHEN 2 THEN 20
					WHEN 3 THEN 40
					WHEN 4 THEN 60
					WHEN 5 THEN 80
					WHEN 6 THEN 100
					END as commerce_min,
					(
						SELECT id 
						FROM creatures
						WHERE 
						speciale = 2 AND
						niveau = niv_crea
						ORDER BY RAND()
						LIMIT 1) as id_crea,
				niv_crea
				FROM (
					SELECT FLOOR(2 + (RAND() * 5)) as niv_crea) as sub
				) as subsub
				) as subsubsub
				LEFT JOIN creatures ON subsubsub.id_crea = creatures.id
			";
			$req = mysql_query($sql) or die (mysql_error());	
			$dat = mysql_fetch_row($req);
			$number_crea = $dat[0];
			$niv_crea = $dat[1];
			$commerce_min = $dat[2];
			$id_crea = $dat[3];
			$img_crea = $dat[4];
			$cout_crea = $dat[5];

			$sql = "INSERT INTO `foire_vente` (`id`, `vendeur`, `item`, `qtee`, `offre`, `temps`, `image`, `acheteur`, `type`, `type2`, `commerce_min`, `privé`) 
				VALUES (NULL, 
				'$qui $cmt', 		/* Nom vendeur */
				'$id_crea', 					/* id créa */
				'$number_crea', 						/* quantité */
				'$cout_crea', 					/* prix de base */
				UNIX_TIMESTAMP(now())/60 + 1440, 			/* nombre de minutes avant fin de la vente */
				'$img_crea', 	/* image créa */
				'', 
				'créature', 
				'', 				/* type objet */
				'$commerce_min',			/* commerce mini */
				'$nom');					/* nom joueur pour qui est la vente */;
			";
			$req = mysql_query($sql) or die (mysql_error());
			$nb_ventes--;
		}
	}
}

?>
