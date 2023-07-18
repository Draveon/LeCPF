<?php

class AntiBruteForce
{
	private $dossier;
	private $idUtilisateur;
	private $acte;
	private $resultat;
	
	private $contenuFichier;
	private $donnees;
	
	
	const JOUEUR_BLOQUE = 3;
	const JOUEUR_CLEAN = 4;
	
	const ACT_VERIFS = 5;
	const ACT_MODIFS = 6;
	
	public function __Construct($acte, $dossier, $user_id)
	{
		$this->acte = $acte;
		$this->dossier = $dossier;
		$this->idUtilisateur = $user_id;
	}
	
	public function verifier()
	{
		if(file_exists($this->dossier.'/'.$this->idUtilisateur.'.temps.bf'))
		{
			$this->getFile();
			$this->nettoyerContenu();
			$this->putFile();
			return $this->effectuerVerifs();
		}
		else
		{
			return self::JOUEUR_CLEAN;
		}
	}
	
	private function getFile()
	{
		$fichier = fopen($this->dossier.'/'.$this->idUtilisateur.'.temps.bf', 'r+');
		$this->contenuFichier = fgets($fichier,1024);
		fclose($fichier);
	}
	
	private function putFile()
	{
		$fichier = fopen($this->dossier.'/'.$this->idUtilisateur.'.temps.bf', 'w+');
		fwrite($fichier, $this->contenuFichier);
		fclose($fichier);
	}
	
	private function nettoyerContenu()
	{
		$newValeurs = array();
		$valeurs = explode("\n", $this->contenuFichier);
		for($i=0; $i<(count($valeurs)); $i++)
		{
			if((int)$valeurs[$i] > (time() - 180))
			{
				$newValeurs[] = $valeurs[$i];
				echo (string)$valeurs[$i].' valide à '.(time() - 180).'<br />';
			}
		}
		$this->contenuFichier = implode("\n", $newValeurs);
		$this->donnees = $newValeurs;
	}
	
	private function effectuerVerifs()
	{
		if(sizeof($this->donnees) > 5)
			return self::JOUEUR_BLOQUE;
		else
			return self::JOUEUR_CLEAN;
	}
	
	public function ajouterTentative()
	{
		if(filesize($this->dossier.'/'.$this->idUtilisateur.'.temps.bf') == 0 || file_exists($this->dossier.'/'.$this->idUtilisateur.'.temps.bf') == false)
			$str = (string)time();
		else
			$str = "\n".(string)time();
			
		$fichier = fopen($this->dossier.'/'.$this->idUtilisateur.'.temps.bf', 'a+');
		fwrite($fichier, $str);
		fclose($fichier);
	}
	
	public function getResult()
	{
		return $this->resultat;
	}
}