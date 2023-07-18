<?php

//*********************************
//  Classes de gestion des Partenariats
//  Créé le 07 mars 2010
//  Modifié le 09 mars 2010
//*********************************

class Partenaire
{
	const LIEN_PARTENAIRE = 1;
	const LIEN_IMPORTANT = 2;
	const LIEN_ACCESSOIRE = 3;
	const ALL = 4;
	
	const PARTENAIRE_NOUVEAU = 5;
	const PARTENAIRE_EXISTANT = 6;
	

	// Attributs
	protected $id;
	protected $act;
	public $nom;
	public $lien;
	public $image;
	public $description;
	public $importance;
	protected $erreur;
	
	// Méthodes
	public function __Construct($act, $id=0)
	{
		$this->id = $id;
		$this->act = $act;
		
		if($act == self::PARTENAIRE_EXISTANT)
		{
			if($this->chargerPartenaire($id) !== true)
				return false;
		}
	}
	protected function __toString()
	{
		echo "<a href=\"".$this->lien."\"><img src=\"".$this->image."\" alt=\"".$this->nom."\" /></a><span class=\"nomPartenaire\">".$this->nom."</span><span class=\"textePartenaire\">".$this->description."</div>"."\n";
	}
	public function show() {
		$this->__toString();
	}
	public function showMini() {
		echo "<a href=\"".$this->lien."\"><img src=\"".$this->image."\" alt=\"".$this->nom."\" /></a>"."\n";
	}
	public function setNom($nom) {
		$this->nom = $nom;
	}
	public function setLien($lien) {
		$this->lien = $lien;
	}
	public function setImage($image) {
		$this->image = $image;
	}
	public function setDesc($description) {
		$this->description = $description;
	}
	public function setStatut($statut) {
		$this->importance = $statut;
	}
	public function getError() {
		return $this->erreur;
	}
		
	protected function chargerPartenaire()
	{
		$monfichier = fopen('/home/www/Destinee-online/fonctions/partenaires.enum', 'r');	
		if(!$monfichier)
		{
			$this->erreur .= 'Impossible de lire le fichier des partenaires.<br />';
			return false;
		}
		while(!feof($monfichier))
		{
			$ligne = fgets($monfichier);
			$arguments = explode("[SEP]", $ligne);
			if(trim($arguments[0]) == trim($this->id))
			{
				$this->nom = $arguments[1];
				$this->lien = $arguments[2];
				$this->image = $arguments[3];
				$this->description = $arguments[4];
				$this->importance = $arguments[5];
				return true;
			}
		}
		$this->erreur .= 'Identifiant introuvable.<br />';
		return false;
	}
	
	public function supprimerPartenaire()
	{
		$monfichier = fopen('/home/www/Destinee-online/fonctions/partenaires.enum', 'r+');	
		if(!$monfichier)
		{
			$this->erreur .= 'Impossible de lire le fichier des partenaires.<br />';
			return false;
		}
		while(!feof($monfichier))
		{
			$ligne = fgets($monfichier);
			$arguments = explode("[SEP]", $ligne);
			if(trim($arguments[0]) != trim($this->id))
			{
				$nouvellesLignes[] = $ligne;
			}
		}
		fclose($monfichier);
		file_put_contents('/home/www/Destinee-online/fonctions/partenaires.enum', trim(implode("",$nouvellesLignes)));
	}
	
	public function ecrirePartenaire()
	{
		if($this->act == self::PARTENAIRE_EXISTANT)
		{
			$monfichier = fopen('/home/www/Destinee-online/fonctions/partenaires.enum', 'r+');	
			if(!$monfichier)
			{
				$this->erreur .= 'Impossible de lire le fichier des partenaires.<br />';
				return false;
			}
			while(!feof($monfichier))
			{
				$ligne = fgets($monfichier);
				$arguments = explode("[SEP]", $ligne);
				if(trim($arguments[0]) == trim($this->id))
				{
					$arguments[0] = $this->id;
					$arguments[1] = $this->nom ;
					$arguments[2] = $this->lien;
					$arguments[3] = $this->image;
					$arguments[4] = $this->description;
					$arguments[5] = $this->importance;
					$ligne = implode("[SEP]", $arguments);
				}
				$nouvellesLignes[] = stripslashes(trim($ligne)."\n");
			}
			fclose($monfichier);
			file_put_contents('/home/www/Destinee-online/fonctions/partenaires.enum', trim(implode("",$nouvellesLignes)));
		}
		else
		{
			$monfichier = fopen('/home/www/Destinee-online/fonctions/partenaires.enum', 'a');
				$arguments[0] = uniqid();
				$arguments[1] = $this->nom ;
				$arguments[2] = $this->lien;
				$arguments[3] = $this->image;
				$arguments[4] = $this->description;
				$arguments[5] = $this->importance;
				$ligne = implode("[SEP]", $arguments);
			if(filesize('/home/www/Destinee-online/fonctions/partenaires.enum') == 0)
				fwrite($monfichier, stripslashes($ligne));
			else
				fwrite($monfichier, "\n".$ligne);
		}
	}
}


class ListePartenaires
{
	// Attributs
	protected $act;
	protected $liste = array();
	
	// Méthodes
	public function __Construct($act)
	{
		$this->act = $act;
		if($this->chargerPartenaires() == false)
			return false;
	}
	public function chargerPartenaires()
	{
		$monfichier = fopen('/home/www/Destinee-online/fonctions/partenaires.enum', 'r');	
		if(!$monfichier)
		{
			$this->erreur .= 'Impossible de lire le fichier des partenaires.<br />';
			return false;
		}
		while(!feof($monfichier))
		{
			$ligne = fgets($monfichier);
			$arguments = explode("[SEP]", $ligne);
			switch($this->act)
			{
				case Partenaire::ALL :
					$this->liste[] = array('id' => $arguments[0], 'nom' => $arguments[1], 'lien' => $arguments[2], 'image' => $arguments[3], 'description' => $arguments[4], 'importance' => $arguments[5]);
				break;
				case Partenaire::LIEN_PARTENAIRE :
					if($arguments[5] != Partenaire::LIEN_PARTENAIRE)
						continue;
					else
						$this->liste[] = array('id' => $arguments[0], 'nom' => $arguments[1], 'lien' => $arguments[2], 'image' => $arguments[3], 'description' => $arguments[4], 'importance' => $arguments[5]);
				break;
				case Partenaire::LIEN_IMPORTANT :
					if($arguments[5] != Partenaire::LIEN_IMPORTANT)
						continue;
					else
						$this->liste[] = array('id' => $arguments[0], 'nom' => $arguments[1], 'lien' => $arguments[2], 'image' => $arguments[3], 'description' => $arguments[4], 'importance' => $arguments[5]);
				break;
				case Partenaire::LIEN_ACCESSOIRE :
					if($arguments[5] != Partenaire::LIEN_ACCESSOIRE)
						continue;
					else
						$this->liste[] = array('id' => $arguments[0], 'nom' => $arguments[1], 'lien' => $arguments[2], 'image' => $arguments[3], 'description' => $arguments[4], 'importance' => $arguments[5]);
				break;
			}
		}
	}
	
	public function getListe($donnees)
	{
		$tableau_retour = array();
		if(array_search('id', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['id'] = $this->liste[$i]['id'];
		}
		if(array_search('nom', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['nom'] = $this->liste[$i]['nom'];
		}
		if(array_search('lien', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['lien'] = $this->liste[$i]['lien'];
		}
		if(array_search('image', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['image'] = $this->liste[$i]['image'];
		}
		if(array_search('description', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['description'] = $this->liste[$i]['description'];
		}
		if(array_search('importance', $donnees) !== false)
		{
			for($i=0; $i<(sizeof($this->liste)); $i++)
				$tableau_retour[$i]['importance'] = $this->liste[$i]['importance'];
		}
		return $tableau_retour;
	}
}
?>