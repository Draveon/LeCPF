<?php

class AntiBruteForce
{
	private $dossier;
	private $idUtilisateur;
	private $acte;
	private $resultat;
	
	private $contenuFichier;
	private $donnees;
	
	const MAX_TENTATIVES = 5;
	const TIMER = 180;
	
	const JOUEUR_BLOQUE = 3;
	const JOUEUR_CLEAN = 4;
	
	const ACT_VERIFS = 5;
	const ACT_MODIFS = 6;
	
	public function __Construct($acte, $dossier, $user_id)
	{
		$this->acte = $acte;
		$this->dossier = $dossier;
		$this->idUtilisateur = $user_id;
		
		if($acte == self::ACT_VERIFS)
		{
			if(file_exists($this->dossier.'/'.$this->idUtilisateur.'.temps.bf') == false)
			{
				$this->resultat = self::JOUEUR_CLEAN;
			}
			elseif(filesize($this->dossier.'/'.$this->idUtilisateur.'.temps.bf') == 0)
			{
				$this->resultat = self::JOUEUR_CLEAN;
			}
			else
			{
				$this->getFile();
				$this->nettoyerContenu();
				$this->putFile();
				$this->effectuerVerifs();
			}
		}
		elseif($acte == self::ACT_MODIFS)
		{
			$this->ajouterTentative();
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
		$valeurs = explode("\n", $this->contenuFichier);
		for($i=1; $i<sizeof($valeurs); $i++)
		{
			if($valeurs[$i] > (time() - self::TIMER))
				$newValeurs[] = $valeurs[$i];
		}
		$this->contenuFichier = implode("\n", $newValeurs);
		$this->donnees = $newValeurs;
	}
	
	private function effectuerVerifs()
	{
		if(sizeof($this->donnees) > 3)
			$this->resultat = self::JOUEUR_BLOQUE;
		else
			$this->resultat = self::JOUEUR_CLEAN;
	}
	
	private function ajouterTentative()
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