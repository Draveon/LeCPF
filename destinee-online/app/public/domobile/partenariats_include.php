<?php

function writeBannersAll()
{
	include_once "fonctions/Partenariat.class.php";
	// ANCIEN CODE DU PARTENARIAT
	// <a href="http://www.simulworld.com" target="_blank">SimulWorld.com</a>
	/*$style = 'style="vertical-align:middle;"';
	$partenaires = array(
		'<a target="_blank" href="http://www.jeux-en-ligne-gratuits.net"><img src="http://www.jeux-en-ligne-gratuits.net/images/button_88_31.gif" width="88" height="31" border="0" '.$style.' alt="jeu en ligne gratuit"></a>',
		'<a target="_blank" href="http://www.sitacados.com"><img src="http://www.sitacados.com/images/sitacados-8831.gif" width="88" height="31" border="0" '.$style.' alt=""></a>',
		'<a target="_blank" href="http://www.jeuxvirtuels.com"><img src="http://www.jeuxvirtuels.com/bouton.gif" width="88" height="31" border="0" '.$style.' alt="Annuaire de jeux virtuels!"></a>',
		'<a target="_blank" href="http://www.jeu-gratuit.net"><img src="http://www.jeu-gratuit.net/images/bouton88x31.gif" border="0" alt="Jeux gratuits"></a>',
		'<a target="_blank" href="http://www.rpg-paradize.com/index.php?page=vote&vote=93"><img src="http://www.rpg-paradize.com/vote.gif" border="0" '.$style.' alt="Annuaire de jeux virtuels!"></a>',
		'<a target="_blank" href="http://www.phenixu.fr/"><img src="http://www.phenixu.fr/image/banniere.gif" border="0" '.$style.' alt="Phenixu"></a>',
		'<a target="_blank" href="http://www.fallengalaxy.com/"><img src="http://fallengalaxy.com/img/banners/banner1.png" alt="banner"/></a>'		
	);
	$nbr = min ($nbr, sizeof($partenaires));
	
	if ($nbr < sizeof($partenaires))
		shuffle ($partenaires);
	
	$out = '';
	$i = 0;
	while ($i < $nbr)
	{
		if ($i > 0)
			$out .= $spacer;
		$out .= $partenaires[$i];
		$i++;
	}*/
	$out;
	$partenaires = new ListePartenaires(Partenaire::LIEN_PARTENAIRE); // La liste de tous les "Partenaires"
	$annuaires_utiles = new ListePartenaires(Partenaire::LIEN_IMPORTANT); // La liste de tous les annuaires où on gagne quelque chose quand les utilisateurs cliquent
	$annuaires_accessoires = new ListePartenaires(Partenaire::LIEN_ACCESSOIRE); // Les autres
	
	$tableau[0] = $partenaires->getListe(array('nom', 'image', 'lien', 'description'));
	$tableau[1] = $annuaires_utiles->getListe(array('nom', 'image', 'lien', 'description'));
	$tableau[2] = $annuaires_accessoires->getListe(array('nom', 'image', 'lien', 'description'));
	
	if(sizeof($tableau[0]) > 0)
	{
		$out .= '<center><h2>Les partenaires <strike>particuliers</strike> de Destinée-Online :</h2></center>'."\n";
		for($j=0; $j<(sizeof($tableau[0])); $j++)
		{
			$out .= '<dt style="font-family:papyrus;margin:0px;">'.stripslashes($tableau[0][$j]['nom']).'</dt><div style="padding: 8px; text-align: left; width: 100%; font-size: 10pt;"> : '.stripslashes($tableau[0][$j]['description'])."</div>".'<dd><a href="'.$tableau[0][$j]['lien'].'" target="_blank" ><img src="'.$tableau[0][$j]['image'].'" border="0" alt="'.$tableau[0][$j]['nom'].'"  style="margin-top:-10px;" /></a></dd>'."\n";
			if(sizeof($tableau[0][$j+1]) > 0)
				$out.= '<br /><br /><br />';
		}
		$out .= '<br />'."\n";
	}
	if(sizeof($tableau[0]) > 0 && sizeof($tableau[1]) > 0)
		$out .= "<br /><br />";
	if(sizeof($tableau[1]) > 0)
	{
		$out .= '<center><h2>Votez pour Destinée-Online sur ces annuaires :</h2></center>'."\n";
		for($j=0; $j<(sizeof($tableau[1])); $j++)
		{
			$out .= '<dt style="font-family:papyrus;margin:0px;">'.stripslashes($tableau[1][$j]['nom']).'</dt><div style="padding: 8px; text-align: left; width: 100%; font-size: 10pt;"> : '.stripslashes($tableau[1][$j]['description'])."</div>".'<dd><a href="'.$tableau[1][$j]['lien'].'" target="_blank" ><img src="'.$tableau[1][$j]['image'].'" border="0" alt="'.$tableau[1][$j]['nom'].'"  style="margin-top:-10px;" /></a></dd>'."\n";	
			if(sizeof($tableau[1][$j+1]) > 0)
				$out.= '<br /><br /><br />';
		}
		$out .= '<br />'."\n";
	}
	if(sizeof($tableau[1]) > 0 && sizeof($tableau[2]) > 0)
		$out .= "<br /><br />";
	if(sizeof($tableau[2]) > 0)
	{
		$out .= '<center><h2>Destinée-Online est également inscrit sur ces annuaires :</h2></center>'."\n";
		for($j=0; $j<(sizeof($tableau[2])); $j++)
		{
			$out .= '<dt style="font-family:papyrus;margin:0px;">'.stripslashes($tableau[2][$j]['nom']).'</dt><div style="padding: 8px; text-align: left; width: 100%; font-size: 10pt;"> : '.stripslashes($tableau[2][$j]['description'])."</div>".'<dd><a href="'.$tableau[2][$j]['lien'].'" target="_blank" ><img src="'.$tableau[2][$j]['image'].'" border="0" alt="'.$tableau[2][$j]['nom'].'"  style="margin-top:-10px;" /></a></dd>'."\n";
			if(sizeof($tableau[2][$j+1]) > 0)
				$out.= '<br /><br /><br />';
		}
		$out .= '<br />'."\n";
	}
	
	return $out;
}

function writeBanners($nbr, $spacer=' &nbsp; ')
{
	include_once "fonctions/Partenariat.class.php";
	$partenaires = new ListePartenaires(Partenaire::LIEN_PARTENAIRE);
	$annuaires_utiles = new ListePartenaires(Partenaire::LIEN_IMPORTANT);
	
	$liens = $partenaires->getListe(array('nom', 'image', 'lien'));
	$liens = array_merge($liens, $annuaires_utiles->getListe(array('nom', 'image', 'lien')));
	
	shuffle($liens);
	
	$out;
	$i=0;
	while($i < $nbr)
	{
		$out .= '<a href="'.$liens[$i]['lien'].'" target="_blank" ><img src="'.$liens[$i]['image'].'" border="0" alt="'.$liens[$i]['nom'].'" /></a>'.$spacer."\n";
		$i++;
	}
	return $out;
}
		
function writeLinksBottom($nbr)
{
	$width=0;
	$out = '
	<div align="center" style="font-size:10pt;width: 100%;padding-top:10px;padding-bottom:10px;">
		<div class="footer">
			<p>Copyright 2019 © Destinee-Online.com. Tous droits réservés à l\'exception des images.</p>
		</div>
	';
	$out .= '	</div>
	';
	
	return $out;
}

?>
