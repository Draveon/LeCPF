<?php

/*
Méthodes publiques :
 - public function __Construct($action, $securite=false);
 - public function supprimerJoueur($perso_id, $perso_nom);
 - public function demanderInscription($perso_nom, $perso_pass, $perso_email, $perso_sexe, $perso_race, $perso_classe, $perso_dieu, $perso_royaume, $description, $servrp=false);
 - public function verifierEntrees($perso_dieu, $perso_race, $perso_classe);
*/

class Profil
{
	// Constantes
	const RACE_INVALIDE = 0;
	const SEXE_INVALIDE = 1;
	const CLASSE_INVALIDE = 2;
	const DIEU_INVALIDE = 3;

	const ACT_SUPPRESSION = 4;
	const ACT_RESET = 5;
	const ACT_INSCRIPTION = 6;
	const ACT_CREATION_PERSO = 7;
	const ACT_AUTRE = 30;

	const PSEUDO_EXISTANT = 8;
	const PSEUDO_EN_ATTENTE = 9;

	const COMPTE_INEXISTANT = 10;
	const COMPTE_OK = 11;

	const PSEUDO_INVALIDE = 12;
	const ROYAUME_INVALIDE = 13;
	const DESCRIPTION_INVALIDE = 14;
	const EMAIL_INVALIDE = 15;
	const PASS_INVALIDE = 16;
	const INSCRIPTION_REFUSEE = 17;

	const INSCRIPTION_REUSSIE = 19;

	const EXIT_SUCCESS = 21;
	const EXIT_FAILURE = 22;


	// Attributs
	protected $error;
	protected $action;
	protected $securite;
	protected $passGenere;
	protected $connexionPDO;	// C'est une connexion à la base de données sur le serveur 1 qui persistera durant toute la classe.
	protected $fatalError;

	protected $id_compte;
	protected $compte_email;
	protected $compte_ip;
	protected $compte_login;
	protected $compte_password;
	protected $compte_score;

	protected $perso_id;
	protected $perso_nom;
	protected $perso_race; 	// Utile pour le reset et l'inscription
	protected $perso_classe; 	// Utile pour le reset et l'inscription
	protected $perso_sexe; 	// Utile pour le reset et l'inscription
	protected $perso_dieu; 	// Utile pour le reset et l'inscription
	protected $perso_titre; 	// Utile pour le reset et l'inscription
	protected $perso_royaume; 	// Utile pour le reset et l'inscription
	protected $perso_description;
	protected $perso_pts_apt;
	protected $perso_proch_apt = 8;
	protected $perso_apts_a_choisir = 0;

	protected $perso_terrain;	// Terrain de prédilection de la race du joueur
	protected $perso_riverain;	// Bonus du terrain donné
	protected $perso_colline;	// Bonus du terrain donné
	protected $perso_desert;	// Bonus du terrain donné
	protected $perso_foret;	// Bonus du terrain donné
	protected $perso_arctique;	// Bonus du terrain donné
	protected $perso_marais;	// Bonus du terrain donné
	protected $perso_montagne;	// Bonus du terrain donné
	protected $perso_plaine;	// Bonus du terrain donné
	protected $perso_caverne;	// Bonus du terrain donné

	protected $perso_email;
	protected $perso_apt_race;		// Utile pour le reset et l'inscription
	protected $perso_apt_classe;	// Utile pour le reset et l'inscription

	protected $perso_att; // Utile pour le reset et l'inscription
	protected $perso_def; // Utile pour le reset et l'inscription
	protected $perso_ini; // Utile pour le reset et l'inscription
	protected $perso_cha; // Utile pour le reset et l'inscription
	protected $perso_end; // Utile pour le reset et l'inscription
	protected $perso_pui; // Utile pour le reset et l'inscription

	// Methodes
	/*
		Description : Constructeur de classe.
		Paramètres : L'action prévue et savoir si on sécurise ou non les entrées.
		Retours : Aucun.
	*/
	public function __Construct($action, $securite=true, $autre=false)
	{
		$this->action = $action;
		$this->securite = $securite;
		$this->error = '';
		$this->fatalError = 0;

		if(preg_match("#^/(.+)/(.*)$#", getenv("SCRIPT_NAME")) || $autre) {
			include "../inclus/races_classes.php";
			include "../inclus/classes_dieux.php";
		}
		else {
			include "inclus/races_classes.php";
			include "inclus/classes_dieux.php";
		}

		$this->rt = $rt; // Les titres selon la race
		$this->ce = $ce; // Les classes
		$this->dd = $dd; // Les dieux

	}

	/*
		Description : Destructeur de classe.
		Paramètres : Aucun.
		Retours : Aucun.
	*/
	public function __Destruct()
	{
		if($this->action == self::ACT_INSCRIPTION)
		{
			// On place le flag sur pas d'inscription en cours.
		}
	}

	/*
		Description : Vérifie que le membre ne soit pas déjà inscrit ou en attente d'inscription et enregistre quelques variables.
		Paramètres : Le pseudo du joueur.
		Retours : PSEUDO_EXISTANT, PSEUDO_EN_ATTENTE.
	*/
	protected function verifierInfosInscription($perso_nom)
	{
		$req = mysql_query('SELECT id FROM joueurs_heros WHERE nom = \''.$perso_nom.'\'');
		if(mysql_num_rows($req) > 0) return self::PSEUDO_EXISTANT;
	}

	protected function verifierInfosReset($perso_id)
	{
		$req = mysql_query('SELECT nom, royaume, email, description
							FROM joueurs_heros
							WHERE id = '.$perso_id);
		$dat = mysql_fetch_row($req);

		$this->perso_nom = $dat[0];
		$this->perso_royaume = $dat[1];
		$this->perso_email = $dat[2];
		$this->perso_description = addslashes(stripslashes($dat[3]));
	}

	/*
		Description : vérifie que la race, la classe et le dieu du joueur soient valides.
		Paramètres : Dieu du joueur, race du joueur, classe du joueur.
		Retours : RACE_INVALIDE, CLASSE_INVALIDE, DIEU_INVALIDE, RACE_CLASSE_INCOMPATIBLES, false.
	*/
	public function verifierEntrees($perso_dieu, $perso_race, $perso_classe)
	{
		if (!is_array($this->rt[$perso_race]))
		{
			$this->error .= 'La race "'.$perso_race.'" est invalide.<br />';
			return self::RACE_INVALIDE;
		}
		if ($this->ce[$perso_classe] != 1)
		{
			$this->error .= 'La classe "'.$perso_classe.'" est invalide.<br />';
			return self::CLASSE_INVALIDE;
		}
		if ( !in_array($perso_dieu, $this->dd) )
		{
			$this->error .= 'Le dieu "'.$perso_dieu.'" est invalide.<br />';
			return self::DIEU_INVALIDE;
		}

		$this->perso_dieu = $perso_dieu;
		$this->perso_race = $perso_race;
		$this->perso_classe = $perso_classe;

		return self::EXIT_SUCCESS;
	}

	protected function mettreMajuscules($string)
	{
		$mins = array('de', 'du', 'le', 'la', 'et', 'des', 'les'); // Les mots auxquels ne pas mettre une majusucle
		$words = explode(' ', $string);
		foreach($words AS &$word)
		{
			if(!in_array($word, $mins))
				$word = ucfirst($word);
		}
		return implode(' ', $words);
	}

	protected function definirTitre($race, $sexe='')
	{
		$titre = (isset($this->rt[$race])) ? (isset($this->rt[$race][$sexe]) ? $this->rt[$race][$sexe] : 'Sexe invalide') : 'Race invalide' ;
		if($titre == 'Race invalide') {
				$this->error .= 'Votre race "'.$race.'" est invalide.<br />';
				return self::RACE_INVALIDE;
		}
		if($titre == 'Sexe invalide') {
			$this->error .= 'Votre sexe "'.$sexe.'" est invalide.<br />';
			return self::SEXE_INVALIDE;
		}

		$this->perso_titre = $titre;
		$this->perso_race = $race;
		$this->perso_sexe = $sexe;
		return self::EXIT_SUCCESS;
	}


	/*
		Description : Retourne le nom du royaume avec de ou d'
		Paramètres : Le royaume.
		Retours : La chaine complète.
	*/
	protected function definirRoyaume($perso_royaume)
	{
		if (($perso_royaume != '') && (substr($perso_royaume,0,2)!='d`') && (substr($perso_royaume,0,3)!='de ') && (substr($perso_royaume,0,4)!='des '))
		{
			if ($perso_royaume[0] == "A" OR $perso_royaume[0] == "E" OR $perso_royaume[0] == "I" OR $perso_royaume[0] == "O" OR $perso_royaume[0] == "U" OR $perso_royaume[0] == "Y" OR $perso_royaume[0] == "H")
				$perso_royaume = "d`".$this->mettreMajuscules($perso_royaume);
			else
				$perso_royaume = "de ".$this->mettreMajuscules($perso_royaume);
		}
		$this->perso_royaume = $perso_royaume;
		return $perso_royaume;
	}

	/*
		Description : L'argent des acheteurs de la foire leur est rendu et leur nom disparait des listes.
		Paramètres : Le nom du joueur dont le compte est supprimé.
		Retours : Aucun.
	*/
	protected function annulerFoire($perso_nom)
	{
		$req = mysql_query('SELECT offre, acheteur FROM foire_vente WHERE vendeur = \''.$perso_nom.'\'');
		while($dat = mysql_fetch_row($req))
			mysql_query('UPDATE joueurs_stats SET argent = argent + '.$dat[0].' WHERE nom = \''.$dat[1].'\'');
		mysql_query('UPDATE foire_vente SET acheteur = \'Compte supprimé\' WHERE acheteur = \''.$perso_nom.'\'');
	}

	/*
		Description : Ajoute la motion "compte supprimé" au destinataire et auteur des message le concernant.
		Paramètres : Le nom du joueur dont le compte est supprimé.
		Retours : Aucun.
	*/
	protected function annulerMessages($perso_nom)
	{
		mysql_query('UPDATE messagerie SET destinataire = \'Compte supprimé ('.substr($perso_nom,0,10).')\' WHERE destinataire = \''.$perso_nom.'\'');
		mysql_query('UPDATE messagerie SET auteur = \'Compte supprimé ('.substr($perso_nom,0,10).')\' WHERE auteur = \''.$perso_nom.'\'');
	}

	/*
		Description : Précise que le joueur a supprimé son compte sur les listes et réinitialise les trois combats par jours en cas de reset.
		Paramètres : Le nom du joueur dont le compte est supprimé.
		Retours : Aucun.
	*/
	protected function annulerCombats($perso_nom)
	{
		mysql_query('UPDATE combat_joueurs SET defendant = \'remplacant\' WHERE defendant = \''.$perso_nom.'\'');
		mysql_query('UPDATE combat_joueurs SET attaquant = \'remplacant\' WHERE attaquant = \''.$perso_nom.'\'');
	}

	/*
		Description : Augmente les stats de l'instance des stats du dieu.
		Paramètres : Le type du dieu.
		Retours : DIEU_INVALIDE si le dieu n'existe pas, false si tout se passe bien.
	*/
	protected function getDieuStats($dieu)
	{
		$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM stats_dieux WHERE nom = \''.$dieu.'\'');
		if(mysql_num_rows($req) == 0)
		{
			$this->error .= 'Votre dieu "'.$dieu.'" est invalide.<br />';
			return self::DIEU_INVALIDE;
		}
		$dat = mysql_fetch_row($req);

		$this->perso_att += $dat[0];
		$this->perso_def += $dat[1];
		$this->perso_ini += $dat[2];
		$this->perso_cha += $dat[3];
		$this->perso_end += $dat[4];
		$this->perso_pui += $dat[5];
		$this->perso_dieu = $dieu;

		return self::EXIT_SUCCESS;
	}

	/*
		Description : Fonction générale de la classe, ajoute les stats de la classe.
		Paramètres : La classe du joueur.
		Retours : CLASSE_INVALIDE si la classe l'est, false si tout se passe bien.
	*/
	protected function getClasseStats($classe)
	{
		$req = mysql_query('SELECT att, def, ini, cha, end, pui, aptitude, points
							FROM classes
							WHERE classe = \''.$classe.'\'');
		$dat = mysql_fetch_row($req);

		$this->perso_att += $dat[0];
		$this->perso_def += $dat[1];
		$this->perso_ini += $dat[2];
		$this->perso_cha += $dat[3];
		$this->perso_end += $dat[4];
		$this->perso_pui += $dat[5];
		$this->perso_classe = $classe;
		$this->perso_apt_classe = $dat[6];
		if ($dat[6] == 0) {
			$this->perso_apts_a_choisir += 1;
		}
		$this->perso_pts_apt = $dat[7];
		return self::EXIT_SUCCESS;
	}

	/*
		Description : Fonction générale de la race, appelle la défintion du titre, ajoute les stats de la race et les terrains.
		Paramètres : La race du joueur.
		Retours : RACE_INVALIDE si la race l'est, false si tout se passe bien.
	*/
	protected function getRaceStats($race)
	{
		// Les stats de la race
		$req = mysql_query('SELECT att, def, ini, cha, end, pui, aptitude FROM races WHERE race = \''.$race.'\'') or die(mysql_error());
		if(mysql_num_rows($req) == 0)
		{
			$this->error .= 'La race "'.$race.'" est invalide.<br />';
			return self::RACE_INVALIDE;
		}
		$dat = mysql_fetch_row($req);
		$this->perso_att += $dat[0];
		$this->perso_def += $dat[1];
		$this->perso_ini += $dat[2];
		$this->perso_cha += $dat[3];
		$this->perso_end += $dat[4];
		$this->perso_pui += $dat[5];

		// Les terrains de la race
		$req_terrain = mysql_query('SELECT races.t_favoris, riverain, colline, `désert`, `forêt`, arctique, marais, montagne, plaine, caverne FROM races WHERE race = \''.$race.'\'') or die(mysql_error());
		$dat_terrain = mysql_fetch_row($req_terrain);
		$this->perso_terrain = $dat_terrain[0];
		$this->perso_riverain = $dat_terrain[1];
		$this->perso_colline = $dat_terrain[2];
		$this->perso_desert = $dat_terrain[3];
		$this->perso_foret = $dat_terrain[4];
		$this->perso_arctique = $dat_terrain[5];
		$this->perso_marais = $dat_terrain[6];
		$this->perso_montagne = $dat_terrain[7];
		$this->perso_plaine = $dat_terrain[8];
		$this->perso_caverne = $dat_terrain[9];

		if ($dat[6] == $this->perso_apt_classe) {
			$this->perso_apt_race = '0';
			$this->perso_proch_apt -= 3;
		} else {
			$this->perso_apt_race = $dat[6];
		}
		$this->perso_race = $race;

		return self::EXIT_SUCCESS;
	}

	/*
		Description : Fonction qui appelle des méthodes servant à faire disparaitre le joueur de sa guilde, foire, messages et combats.
		Paramètres : Le pseudo du joueur.
		Retours : Aucun.
	*/
	protected function disparaitre($perso_id, $perso_nom)
	{
		$this->annulerFoire($perso_nom);
		$this->annulerMessages($perso_nom);
		$this->annulerCombats($perso_nom);
	}

	/*
		Description : Supprimme le joueur de toutes les tables joueurs, ses ventes, ses guildes et demandes de guilde et sa vie politique.
		Paramètres : L'id du joueur, Le pseudo du joueur.
		Retours : Aucun.
	*/
	protected function sortirDesTables($perso_id, $perso_nom)
	{
		mysql_query('DELETE FROM `joueurs_coffre`WHERE `joueur_id`= '.$perso_id);
		mysql_query('DELETE FROM `foire_vente` WHERE `vendeur` = \''.$perso_nom.'\'');
		mysql_query('DELETE FROM `joueurs_aptitudes` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_aptitudes_base` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_heros` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_inventaire` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_objets` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_stats` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_batiments_id` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_créatures` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_créatures_id` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_connexions` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_terre` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_terre_utile` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_modificateurs` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_magies` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_sorts` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_bonus` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_combat` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `joueurs_batspe` WHERE id = '.$perso_id);
		mysql_query('DELETE FROM `candidat_palatinat` WHERE `NOM` = \''.$perso_nom.'\'');
		mysql_query('DELETE FROM `votant_palatinat` WHERE `VOTANT` = \''.$perso_nom.'\'');
	}

	/*
		Description : On entre un joueur dans les tables des joueurs.
		Paramètres : Aucun.
		Retours : INSCRIPTION_REUSSIE, INSCRIPTION_REFUSEE.
	*/
	protected function entrerDansTables()
	{
		mysql_query('INSERT INTO `joueurs_heros` ( `id_compte`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `email`) VALUES (\''.$this->id_compte.'\', \''.$this->perso_nom.'\', \''.$this->perso_race.'\', \''.$this->perso_classe.'\', \''.$this->perso_dieu.'\', \''.$this->perso_titre.'\', \''.$this->perso_royaume.'\', \''.$this->compte_email.'\')') or die("2 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_inventaire` ( `nom`) VALUES (\''.$this->perso_nom.'\')') or die("3 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_batiments_id` ( `nom`) VALUES (\''.$this->perso_nom.'\')') or die("4 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_créatures` ( `nom`) VALUES (\''.$this->perso_nom.'\')') or die("5 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_créatures_id` ( `nom`) VALUES (\''.$this->perso_nom.'\')') or die("6 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_aptitudes_base` (`nom`, `aptitude01`, `aptitude02`, `aptitude03`, `points`, `proch_apt`, `apts_a_choisir`) VALUES (\''.$this->perso_nom.'\', \''.$this->perso_apt_race.'\', \''.$this->perso_apt_classe.'\', \'\', \''.$this->perso_pts_apt.'\', \''.$this->perso_proch_apt.'\', \''.$this->perso_apts_a_choisir.'\')') or die("8 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_stats` (`nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `end`, `pui`, `cha`, `mana`, `victoire`, `defaite`, `argent`, `indice_militaire`, `score`) VALUES (\''.$this->perso_nom.'\', \'1\', \'\', \'0\', \'2000\', \''.$this->perso_att.'\', \''.$this->perso_def.'\', \''.$this->perso_ini.'\', \''.$this->perso_end.'\', \''.$this->perso_pui.'\', \''.$this->perso_cha.'\', \'0\', \'0\', \'0\', \'50000\', \''.floor(time()/60).'\', \''.$this->compte_score.'\')') or die("9 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_terre` (`nom`, `'.$this->perso_terrain.'`, `total`) VALUES (\''.$this->perso_nom.'\', \'1000\', \'1000\')') or die("10 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_aptitudes` (`nom`) VALUES (\''.$this->perso_nom.'\')') or die("11 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_connexions` (`nom`, `connexion_dernière`, `connexion_créature`, `connexion_or`, `connexion_pop`, `connexion_pop2`, `connexion_taxe`) VALUES (\''.$this->perso_nom.'\', \''.floor(time()/60).'\', \''.floor(time()/60).'\', \''.floor(time()/60).'\', \''.floor(time()/60).'\', \''.floor(time()/60).'\', \''.floor(time()/60).'\')') or die("12 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_terre_utile` (`nom` ) VALUES (\''.$this->perso_nom.'\')') or die("13 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_magies` (`nom` ) VALUES (\''.$this->perso_nom.'\')') or die("14 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_sorts` (`nom` ) VALUES (\''.$this->perso_nom.'\')') or die("15 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_modificateurs`	(`nom`, `riverain`, `colline`, `désert`, `forêt`, `arctique`, `marais`, `montagne`, `plaine`, `caverne`,		`Air`, `Terre`, `Eau`, `Feu`, `Électricité`, `population`, `population2`, `res_phys`, `res_mag`, `res_feu`, `res_eau`,	`res_terre`, `res_air`,	`res_elec`, `res_elem`, `xp`, `terres`, `or`, `mana_consommation`, `HC_or`, `HC_mines`,	`HC_recrut`, `prison`, `degat_phys`, `degat_mag`, `degat_range`, `res_range`, `degat_vs_range`, `res_vs_range`, `degat_cac`, `res_cac`, `degat_vs_cac`, `res_vs_cac`, `degat_vol`, `res_vol`, `degat_vs_vol`, `res_vs_vol`, `res_vs_mag`, `res_vs_phys`)
					VALUES (\''.$this->perso_nom.'\', \''.$this->perso_riverain.'\', \''.$this->perso_colline.'\', \''.$this->perso_desert.'\', \''.$this->perso_foret.'\', \''.$this->perso_arctique.'\', \''.$this->perso_marais.'\', \''.$this->perso_montagne.'\', \''.$this->perso_plaine.'\', \''.$this->perso_caverne.'\',	\'1\', \'1\', \'1\', \'1\', \'1\', \'300000\', \'0\', \'1.00\',	\'1.00\', \'1.00\',	\'1.00\',	\'1.00\',	\'1.00\', \'1.00\',	\'1.00\', \'1.00\', \'1.00\', \'1.00\', \'1.00\',	\'1.00\', \'1.00\', \'1.00\',	\'1.00\', \'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\',	\'1.00\', \'1.00\',	\'1.00\')') or die("16 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_objets` (`nom`) VALUES (\''.$this->perso_nom.'\')') or die("17 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_bonus` (`nom`) VALUES (\''.$this->perso_nom.'\')') or die("18 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_combat` (`nom`) VALUES (\''.$this->perso_nom.'\')') or die("21 :".mysql_error());
		$verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_batspe` (`nom`) VALUES (\''.$this->perso_nom.'\')') or die("23 :".mysql_error());
		$verif_ids[] = mysql_insert_id();




		$i = 1; $j = (sizeof($verif_ids)-1);
		while($i < $j)
		{
			if($verif_ids[$i] != $verif_ids[$i-1])
			{
				$this->fatalError = 1;

				$echo .= 'Un erreur semble s\'être glissée lors de cet ajout... Transmettez ceci à un programmeur :<br />';
				$echo .= '================== Vérification des ids ============<br />';
				$echo .= serialize($verif_ids);
				$echo .= '=================== Données du joueur ==============<br />';
				$echo .= serialize($this);
				mail('destinee.online@gmail.com', 'ERREUR INSCRIPTION', $echo);
				ob_end_flush();
			}
			$i++;
		}

		return self::INSCRIPTION_REUSSIE;
	}

	public function supprimerCompte($id_compte) {
		$req = mysql_query("SELECT id, nom FROM joueurs_heros WHERE id_compte = $id_compte") or die(mysql_error());
		while ($dat = mysql_fetch_assoc($req)) {
			$this->supprimerJoueur($dat['id'], $dat['nom']);
		}
		mysql_query("DELETE FROM `compte_couleurs` WHERE `id_compte` = $id_compte");
		mysql_query("DELETE FROM `compte_medailles` WHERE `id_compte` = $id_compte");
		mysql_query("DELETE FROM `joueurs_vote` WHERE `id` = $id_compte");
		mysql_query("DELETE FROM `joueurs_infos` WHERE `id` = $id_compte");
	}

	/*
		Description : Supprime un perso des bases de données
		Paramètres : L'id du perso.
		Retours : Aucun.
	*/
	public function supprimerJoueur($perso_id, $perso_nom)
	{
		$this->disparaitre($perso_id, $perso_nom);	// Supprime le perso de la foire, messages et archives.
		$this->sortirDesTables($perso_id, $perso_nom);
	}

	// Vérifie que le compte existe et récupère son email
	public function verifCompte($id_compte) {
		$req = mysql_query('SELECT * FROM joueurs_infos WHERE id = \''.$id_compte.'\'') or die(mysql_error());
		if(mysql_num_rows($req) == 0)
		{
			$this->error .= 'Le compte joueur indiqué n\'existe pas.<br />';
			return self::COMPTE_INEXISTANT;
		}
		$dat = mysql_fetch_assoc($req);
		$this->id_compte = $id_compte;
		$this->compte_login = $dat['login'];
		$this->compte_email = $dat['email'];
		$this->compte_score = $dat['score'];

		return self::COMPTE_OK;
	}

	/*
		Description : Fait renaître un personnage.
		Paramètres : L'id du perso, la nouvelle race du perso, sa nouvelle classe, son nouveau dieu et son nouveau sexe.
		Retours : RESET_REUSSI, RESET_REFUSE.
	*/
	public function resetCompte($id_compte, $perso_id, $perso_nom, $perso_race, $perso_classe, $perso_dieu, $perso_sexe)
	{
		if ($this->verifCompte($id_compte) != self::COMPTE_OK) {
			return self::EXIT_FAILURE;
		}
		$this->verifierInfosReset($perso_id);
		if(($retour = $this->verifierEntrees($perso_dieu, $perso_race, $perso_classe)) != self::EXIT_SUCCESS) {
			return self::EXIT_FAILURE;
		}
		if( $this->getClasseStats($perso_classe) != self::EXIT_SUCCESS ) {
			return self::EXIT_FAILURE;
		}
		if( $this->getRaceStats($perso_race) != self::EXIT_SUCCESS ) {
			return self::EXIT_FAILURE;
		}
		if( $this->getDieuStats($perso_dieu) == self::DIEU_INVALIDE ) {
			return self::EXIT_FAILURE;
		}
		if(($retour = $this->definirTitre($perso_race, $perso_sexe)) == self::RACE_INVALIDE || $retour == self::SEXE_INVALIDE) {
			return self::EXIT_FAILURE;
		}

		$req = mysql_query('SELECT niveau
							FROM joueurs_stats
							WHERE `id` = '.$perso_id);
		$dat = mysql_fetch_row($req);
		$old_niveau = $dat[0];

		$this->supprimerJoueur($perso_id, $perso_nom);
		$result = $this->entrerDansTables();

		if ($result == self::INSCRIPTION_REUSSIE) {
			$new_xp = 0;
			for ($i=1; $i < ($old_niveau/2); $i++) {
				$new_xp += ($i + 1) * 1000;
			}

			$new_terres = $old_niveau * 1000;
			$new_or = $old_niveau * 50000;
			$sql = "UPDATE `joueurs_stats` SET `xp` = ".$new_xp.", `argent` = ".$new_or." WHERE nom = '".$perso_nom."'";
			$req = mysql_query($sql);
			if ($req) {
				$sql = "UPDATE `joueurs_terre` SET `".$this->perso_terrain."` = ".$new_terres.", `total` = ".$new_terres." WHERE nom = '".$perso_nom."'";
				$req = mysql_query($sql);
			}
			if (!$req) {
				$result = self::EXIT_FAILURE;
			}

		}

		return $result;
	}

	public function creerPersonnage($id_compte, $perso_nom, $perso_sexe, $perso_race, $perso_classe, $perso_dieu, $perso_royaume)
	{
		if($this->securite)
		{
			if ($this->verifCompte($id_compte) != self::COMPTE_OK) {
				return self::COMPTE_INEXISTANT;
			}
			if(empty($perso_nom)) {
				$this->error .= 'Vous devez renseigner le nom.<br />';
				return self::PSEUDO_INVALIDE;
			}
			if(empty($perso_royaume)) {
				$this->error .= 'Vous devez renseigner le royaume.<br />';
				return self::ROYAUME_INVALIDE;
			}

			$perso_nom = htmlentities(preg_replace("#[0-9]#", '', str_replace('\'', '`', $this->mettreMajuscules($perso_nom))));
			$perso_royaume = htmlentities(preg_replace("#[0-9]#", '', str_replace('\'', '`', $this->mettreMajuscules($perso_royaume))));
		}

		// On vérifie que les race/classe/dieu soient corrects.
		if(($retour = $this->verifierEntrees($perso_dieu, $perso_race, $perso_classe)) != self::EXIT_SUCCESS) return $retour;

		// On vérifie si le pseudo existe déjà.
		$retour = $this->verifierInfosInscription($perso_nom);
		if($retour == self::PSEUDO_EXISTANT)
		{
			$this->error .= 'Le pseudonyme choisi est déjà en cours d\'utilisation.<br/>';
			return self::PSEUDO_EXISTANT;
		}

		$perso_royaume = $this->definirRoyaume($perso_royaume);
		$perso_titre = $this->definirTitre($perso_race, $perso_sexe);

		$this->perso_nom = $perso_nom;
		$this->getClasseStats($this->perso_classe);
		$this->getRaceStats($this->perso_race);
		$this->getDieuStats($this->perso_dieu);

		return $this->entrerDansTables();

	}

	/*
		Description : Classe qui valide l'inscription et ajoute le joueur si tout est correct
		Paramètres : nom du joueur, pass du joueur, mail du joueur, sexe du perso, race, classe, dieu, royaume, description du perso et boléen si c'est le serveur RP.
		Retours : PSEUDO_INVALIDE, ROYAUME_INVALIDE, PASS_INVALIDE, DESCRIPTION_INVALIDE, PSEUDO_EXISTANT, INSCRIPTION_REFUSEE, INSCRIPTION_REUSSIE, mot de passe généré.
	*/
	public function demanderInscription($compte_login, $compte_pass, $compte_email)
	{
		if($this->securite)
		{
			if(empty($compte_login)) {
				$this->error .= 'Vous devez renseigner votre nom.<br />';
				return self::PSEUDO_INVALIDE;
			}
			if((empty($compte_email))||(!filter_var($compte_email, FILTER_VALIDATE_EMAIL))) {
				$this->error .= 'Vous devez renseigner votre adresse mail.<br />';
				return self::PASS_INVALIDE;
			}
			if(empty($compte_pass)) {
				$this->error .= 'Vous devez renseigner un mot de passe.<br />';
				return self::PASS_INVALIDE;
			}

			$compte_login = htmlentities(preg_replace("#[0-9]#", '', str_replace('\'', '`', $this->mettreMajuscules($compte_login))));
			$compte_pass = $compte_pass;
			$compte_email = htmlentities($compte_email);
		}

		// On vérifie si le pseudo existe déjà.
		$req = mysql_query('SELECT id
							FROM joueurs_infos
							WHERE `nom` = '.$compte_login);
		if(mysql_num_rows($req) > 0)
		{
			$this->error .= 'Le pseudonyme choisi est déjà en cours d\'utilisation.<br/>';
			return self::PSEUDO_EXISTANT;
		}

		$this->compte_login = $compte_login;
		$this->non_crypted_password = $compte_pass;
		$this->compte_password = md5($compte_pass);
		$this->compte_email = $compte_email;
		$this->compte_ip = $_SERVER['REMOTE_ADDR'];

		$verif_ids = array();
		mysql_query('INSERT INTO `joueurs_infos` ( `login`, `password`, `email`, `ip`, `date_inscription`) VALUES (\''.$this->compte_login.'\', \''.$this->compte_password.'\', \''.$this->compte_email.'\', \''.$this->compte_ip.'\', \''.floor(time()/60).'\')') or die("1 :".mysql_error());
		// mysql_query('INSERT INTO `phpbb_users` ( `user_type`, `group_id`, `username`, `user_password`, `user_email`) VALUES ( 0, 2, \''.$this->compte_login.'\', \''.$this->compte_password.'\', \''.$this->compte_email.'\')') or die("1 :".mysql_error());
		// mysql_query('INSERT INTO phpbb_users (user_type, group_id, username, username_clean, user_regdate, user_password, user_email, user_lang, user_style, user_rank, user_colour, user_posts, user_permissions, user_ip, user_birthday, user_lastpage, user_last_confirm_key, user_post_sortby_type, user_post_sortby_dir, user_topic_sortby_type, user_topic_sortby_dir, user_allow_massemail) VALUES (2, 1, \''.$this->compte_login.'\', \''.strtolower($this->compte_login).'\', 0, \''.$this->compte_password.'\', \''.$this->compte_email.'\', 'fr', 1, 0, '', 0, '', '', '', '', '', 't', 'a', 't', 'd', 0) ') or die("1 :".mysql_error());
    $verif_ids[] = mysql_insert_id();
		mysql_query('INSERT INTO `joueurs_vote` (`nom`) VALUES (\''.$this->compte_login.'\')') or die("23 :".mysql_error());
		$verif_ids[] = mysql_insert_id();

		$i = 1; $j = (sizeof($verif_ids)-1);
		while($i < $j)
		{
			if($verif_ids[$i] != $verif_ids[$i-1])
			{
				$this->fatalError = 1;

				$echo .= 'Un erreur semble s\'être glissée lors de cet ajout... Transmettez ceci à un programmeur :<br />';
				$echo .= '================== Vérification des ids ============<br />';
				$echo .= serialize($verif_ids);
				$echo .= '=================== Données du joueur ==============<br />';
				$echo .= serialize($this);
				mail('destinee.online@gmail.com', 'ERREUR INSCRIPTION', $echo);
				ob_end_flush();
			}
			$i++;
		}

		return self::INSCRIPTION_REUSSIE;
	}

	public function setAvatar($perso_nom, $nouvel_avatar)
	{
		if(!preg_match('#^https://(.+)\.(jpg|jpeg|png|gif)$#i', $nouvel_avatar))
		{
			$this->error .= 'Adresse URL de l\'avatar invalide.<br />';
			return self::EXIT_FAILURE;
		}

		if(mysql_query('UPDATE joueurs_heros SET avatar = \''.htmlentities($nouvel_avatar).'\' WHERE nom = \''.$perso_nom.'\''))
			return self::EXIT_SUCCESS;

		return self::EXIT_FAILURE;
	}

	public function setNomPerso($id_compte, $nouveau_nom)
	{
		$nouveau_nom = htmlentities(preg_replace("#[0-9]#", '', str_replace('\'', '`', $this->mettreMajuscules($nouveau_nom))));
		// On vérifie si le pseudo existe déjà.
		$retour = $this->verifierInfosInscription($nouveau_nom);
		if($retour == self::PSEUDO_EXISTANT)
		{
			$this->error .= 'Le pseudonyme choisi est déjà en cours d\'utilisation.<br/>';
			return self::PSEUDO_EXISTANT;
		}

		mysql_query("UPDATE`joueurs_heros` SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("2 :".mysql_error());
		mysql_query("UPDATE`joueurs_inventaire` SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("3 :".mysql_error());
		mysql_query("UPDATE`joueurs_batiments_id` SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("4 :".mysql_error());
		mysql_query("UPDATE`joueurs_créatures`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("5 :".mysql_error());
		mysql_query("UPDATE`joueurs_créatures_id`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("6 :".mysql_error());
		mysql_query("UPDATE`joueurs_aptitudes_base`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("8 :".mysql_error());
		mysql_query("UPDATE`joueurs_stats`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("9 :".mysql_error());
		mysql_query("UPDATE`joueurs_terre`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("10 :".mysql_error());
		mysql_query("UPDATE`joueurs_aptitudes`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("11 :".mysql_error());
		mysql_query("UPDATE`joueurs_connexions`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("12 :".mysql_error());
		mysql_query("UPDATE`joueurs_terre_utile`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("13 :".mysql_error());
		mysql_query("UPDATE`joueurs_magies`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("14 :".mysql_error());
		mysql_query("UPDATE`joueurs_sorts`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("15 :".mysql_error());
		mysql_query("UPDATE`joueurs_modificateurs`	 SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("16 :".mysql_error());
		mysql_query("UPDATE`joueurs_objets`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("17 :".mysql_error());
		mysql_query("UPDATE`joueurs_bonus`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("18 :".mysql_error());
		mysql_query("UPDATE`joueurs_combat`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("21 :".mysql_error());
		mysql_query("UPDATE`joueurs_batspe`  SET `nom` = '$nouveau_nom' WHERE `id` = $id_compte") or die("23 :".mysql_error());

		return self::EXIT_SUCCESS;
	}

	public function setRoyaumePerso($id_compte, $nouveau_royaume)
	{
		$nouveau_royaume = htmlentities(preg_replace("#[0-9]#", '', str_replace('\'', '`', $nouveau_royaume)));

		mysql_query("UPDATE`joueurs_heros` SET `royaume` = '$nouveau_royaume' WHERE `id` = $id_compte") or die("2 :".mysql_error());

		return self::EXIT_SUCCESS;
	}

	public function setEmailPerso($perso_nom, $nouvel_email)
	{
		if(!preg_match('#^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}\.[a-zA-Z]{2,4}$#i', $nouvel_email)) // Cette regex fait qu'on aura plus besoin de sécuriser l'adresse par la suite.
		{
			$this->error .= 'Format de l\'adresse mail invalide.<br />';
			return self::EXIT_FAILURE;
		}

		if(mysql_query('UPDATE joueurs_heros SET email = \''.$nouvel_email.'\' WHERE nom = \''.$perso_nom.'\''))
			return self::EXIT_SUCCESS;

		return self::EXIT_FAILURE;
	}

	public function setEmailCompte($id_compte, $nouvel_email)
	{
		if(!preg_match('#^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}\.[a-zA-Z]{2,4}$#i', $nouvel_email)) // Cette regex fait qu'on aura plus besoin de sécuriser l'adresse par la suite.
		{
			$this->error .= 'Format de l\'adresse mail invalide.<br />';
			return self::EXIT_FAILURE;
		}

		if(mysql_query('UPDATE joueurs_infos SET email = \''.$nouvel_email.'\' WHERE id = \''.$id_compte.'\''))
			return self::EXIT_SUCCESS;

		return self::EXIT_FAILURE;
	}

	public function setDescription($perso_nom, $nouvelle_description)
	{
		if(mysql_query('UPDATE joueurs_heros SET description = \''.htmlentities(addslashes($nouvelle_description)).'\' WHERE nom = \''.$perso_nom.'\'')or die(mysql_error()))
			return self::EXIT_SUCCESS;

		return self::EXIT_FAILURE;
	}

	public function setPassword($id_compte, $nouveau_pass)
	{
		if(mysql_query('UPDATE joueurs_infos SET password = \''.md5($nouveau_pass).'\' WHERE id = \''.$id_compte.'\''))
			return self::EXIT_SUCCESS;

		return self::EXIT_FAILURE;
	}

	/*
		Desription : retourne les erreurs.
		Paramètres : Aucun.
		Retours : La chaine des erreurs.
	*/
	public function getError()
	{
		return $this->error;
	}

	public function getPassword()
	{
		return $this->non_crypted_password;
	}

	public function getFatal()
	{
		return $this->fatalError;
	}

	public function flushError()
	{
		$this->error = '';
	}

	public function getPass()
	{
		return $this->perso_password;
	}
}
?>
