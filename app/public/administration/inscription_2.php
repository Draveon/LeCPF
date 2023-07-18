<?php
// Page recod�e le 9/11.
// On va utiliser la nouvelle classe de profil que j'ai bricol�e !

session_start();
$debut_affichage = microtime();

// On attrappe le serveur et on s�curise
$serveur = (int)$_GET['serveur'];
include '../connect.php';

// On inclut la classe de profil et les identifiants de base de donn�es
include '../fonctions/profil.class.php';
include '../inclus/conf.php';
include '../inclus/races_classes.php';
include '../inclus/classes_dieux.php';
include 'include_fonctions.php';
echo '<div style="text-align:center;">';

// V�rifions le jeton pour �viter les failles CSRF
//if(!isset($_GET['token'])  || empty($_GET['token']) || $_SESSION['token'] != $_GET['token'] || !preg_match('#http://((www|serveurtest)\.)?destinee-online\.com/administration/inscription\.php(.+)?#i', getenv('HTTP_REFERER')))
if(!isset($_GET['token'])  || empty($_GET['token']) || $_SESSION['token'] != $_GET['token'] )
{
	$_SESSION['token'] = '';
	exit("D�tection de <span style=\"text-decoration:underline;\">piratage CSRF</span>. Arr�t d'execution du script.<br />Cela peut-�tre du � un raffraichissement de la page pouvant �tre � l'origine d'erreurs de base de donn�es.<br /><a href=\"administration.php\">Retour � l'administration.</a>");
}

// On ouvre notre connexion � PDO sur le serveur 1 qui servira dans la classe profil.
try {
	$connexion = new PDO('mysql:host='.SQL_HOST.';dbname='.SQL_DB1, SQL_USER, SQL_PASS);
} catch (Exception $e) {
	echo 'Erreur : '.$e->getMessage().'<br />';
    echo 'N� : '.$e->getCode();
}


// On lance notre bouboucle.
if($_POST['total'] == 0)
	exit("Il semble qu'aucun joueur ne demande validation.\n<a href=\"administration.php\">Retour � l'administration.</a>");
$i = 0;

while($i < $_POST['total'])
{
	$inscription = new Profil(Profil::ACT_INSCRIPTION, $connexion, true);
	if(isset($_POST['reponse_'.$i]) && $_POST['reponse_'.$i] == 'valider')
	{
		$serveurrp = ($serveur == 3) ? true : false;
		if(($retour = $inscription->modifierDemandeInscription($_POST[$i], $_POST['nom_'.$i], $_POST['royaume_'.$i], $_POST['desc_'.$i], $serveurrp)) != Profil::INSCRIPTION_REUSSIE)
			exit ('Il y a eu un probl�me avec la modification de l\'inscription, code d\'erreur '.$retour.' : '.$inscription->getError());
		if(debuteCreationCompte($_POST['nom_'.$i]) == false) exit("Les inscriptions sont bloqu�es via le flag 'InscriptionEnCour'.<br />Si cela persiste, contactez un codeur.");
		if(($retour = $inscription->validerInscription($_POST[$i])) == Profil::INSCRIPTION_REUSSIE)
		{
			echo '<span style="color:darkgreen;">'.$_POST['nom_'.$i].' '.$_POST['royaume_'.$i].'('.$_POST[$i].') accept�.</span><br />';
			
			$sujet="Inscription :: Destin�e-Online.com";
			$message="F�licitation !\n\n";
			$message.="Vous voil� accept� sur Destin�e-Online.com !\n\n";
			$message.="Veuillez prendre note de votre mot de passe et votre nom de h�ros qui ont �ventuellement pu �tre modifi�s.\n\n";
			$message.="Votre nom : ".$_POST['nom_'.$i]."\n\n";
			$message.="Votre mot de passe : ".$inscription->getPassword()."\n\n";
			if ($_POST['motif_'.$i] != '')
				$message.="Le responsable des inscriptions vous adresse un message: ".$_POST['motif_'.$i]."\n\n";
			$message.="Au plaisir de vous voir parmi nous bient�t !\n\n\n";
			$message.="Notre site : http://www.destinee-online.com\n";
			$message.="Notre forum : http://www.destinee-online.com/forum\n\n\n";
			$message.="Vous pouvez changer votre mot de passe sur le site en cas d'oubli.\n";
			$message.="L'�quipe d`Administration de Destin�e-Online.com";
			$headers="From: inscription@destinee-online.com\n";
			
			mail($_POST['email_'.$i],$sujet,$message,$headers);
			
			mysql_query("UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+'1' WHERE `param` = 'inscr_accep'");

		}
		elseif($retour == Profil::INSCRIPTION_REFUSEE)
		{
			echo '<ul style="color:darkred;">'.$_POST['nom_'.$i].' '.$_POST['royaume_'.$i].' a �chou� son inscription.</ul><li>'.$inscription->getError().'</li><br />';
		}
		if($inscription->getFatal() != 1) termineCreationCompte($_POST['nom_'.$i]);
	}
	elseif(isset($_POST['reponse_'.$i]) && $_POST['reponse_'.$i] == 'refuser')
	{
		if(($retour = $inscription->refuserInscription($_POST[$i])) == Profil::INSCRIPTION_REFUSEE)
		{
			echo '<span style="color:darkgreen;">'.$_POST['nom_'.$i].' '.$_POST['royaume_'.$i].'('.$_POST[$i].') supprim�.</span><br />';
			
			$sujet="Inscription :: ".$_POST['nom_'.$i]." (serveur ".$serveur.")";
			$message="Malheureusement,\n\n";
			$message.=" votre h�ros ".$_POST['nom_'.$i]." ".$_POST['royaume_'.$i]." n'a pu �tre accept� sur Destin�e-Online.com. Quatre raisons sont susceptibles d'avoir entra�n� ce refus :\n\n";
			$message.="- Votre nom de personnage/royaume �tait de consonnance anglaise ou asiatique.\n";
			$message.="- Votre nom de personnage/royaume est connu (Legolas, Link, Raistlin, Gimli,...).\n";
			$message.="- Vous avez utilis� des symboles, tels que, par exemple, /$%_!&#.\n";
			$message.="- Vous poss�dez d�j� un compte chez nous.\n\n";
			if ($_POST['motif_'.$i] != '')
				$message.="Le responsable des inscriptions vous a refus� pour le motif : ".$_POST['motif_'.$i]."\n\n";
			$message.="Dans tous les cas, vous �tes invit�s � relire nos r�glements ainsi qu'� refaire une inscription en suivant la r�glementation officielle de Destin�e-Online.com. Pour des avis/conseils, n'h�sitez pas � venir faire un tour sur nos forums !\n\n";
			$message.="Notre site : http://www.destinee-online.com\n";
			$message.="Notre forum : http://www.destinee-online.com/forum\n\n\n";
			$message.="L'�quipe d`Administration de Destin�e-Online.com";
			$headers="From: inscription@destinee-online.com\n";
			
			mail($_POST['email_'.$i],$sujet,$message,$headers);
			
	  		mysql_query("UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+'1' WHERE `param` = 'inscr_refus'");

		}
		else
		{
			exit($inscription->getError());
		}
	}
	$i++;
}
echo '<br /><br/><a href="administration.php">Retour � l\'administration.</a><br/><a href="inscription.php?serveur='.$serveur.'">Retour � l\'inscription.</a>';


$fin_affichage = microtime();
echo '<br /><div style="font-size:x-small;text-align:right;">Temps d\'execution : '.($fin_affichage - $debut_affichage).' s</div>';
?>