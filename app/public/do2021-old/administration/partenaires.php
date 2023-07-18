<?php
$debut_affichage = microtime();
include ('gestionauthentifications.php');
// Page de gestion des partenariats.
$mode = (isset($_GET['act']) && $_GET['act'] != NULL) ? $_GET['act'] : '' ;
include "../fonctions/Partenariat.class.php";
$cout = $erreur = '';

// Les différents formulaires de sortie.
function writeAddForm(&$cout, $id, $nom, $url, $image, $description, $importance)
{
	$selected = array('', '', ''); $selected[($importance-1)] = 'selected';
	$cout .= ($id == NULL) ? '<center><fieldset style="width:75%;margin:auto;margin-top:30px;"><legend>Ajouter un Partenaire</legend>'."\n" : '<center><fieldset style="width:75%;margin:auto;margin-top:30px;"><legend>Modifier un Partenaire</legend>'."\n";
	$cout .= ($id == NULL) ? '<form method="post" action="partenaires.php?act=add"><table>'."\n" : '<form method="post" action="partenaires.php?act=mod&id='.$id.'"><table>'."\n";
	$cout .= '<tr><td><label for="nom">Nom du site :</label></td><td><input type="text" name="nom" id="nom" value="'.$nom.'" /></td></tr>'."\n";
	$cout .= '<tr><td><label for="url">Adresse du site :</label></td><td><input type="text" name="url" id="url" value="'.$url.'" /></td></tr>'."\n";
	$cout .= '<tr><td><label for="image">Image/Bannière :</label></td><td><input type="text" name="image" id="image" value="'.$image.'" /></td></tr>'."\n";
	$cout .= '<tr><td><label for="description">Description :</label></td><td><textarea name="description" id="description" rows="3">'.$description.'</textarea></td></tr>'."\n";
	$cout .= '<tr><td><label for="importance">Classement :</label></td><td><select name="importance" id="importance"><option value="1" '.$selected[0].'>Partenaire</option><option value="2" '.$selected[1].'>Annuaire important</option><option value="3" '.$selected[2].'>Annuaire accessoire</option></select></td></tr>'."\n";
	$cout .= ($id == NULL) ? '<tr><td colspan="2"><input type="submit" value="Ajouter" /></td></tr>'."\n" : '<tr><td colspan="2"><input type="submit" value="Modifier" /></td></tr>'."\n";
	$cout .= '</table></form></fieldset></center>'."\n";
}
function writeDelForm(&$cout, &$liste_partenaires)
{
	$cout .= '<center><fieldset style="width:75%;margin:auto;margin-top:30px;"><legend>Supprimer un Partenaire</legend>'."\n";
	$cout .= '<form name="supprimer" method="post" action="partenaires.php?act=del"><table>'."\n";
	$cout .= '<tr><td><label for="id">Partenaire à supprimer</label></td><td><select name="id" id="id">';
	for($i=0; $i<(sizeof($liste_partenaires)); $i++)
		$cout .= '<option value="'.$liste_partenaires[$i]['id'].'">'.$liste_partenaires[$i]['nom'].'</option>';
	$cout .= '</select></td></tr>'."\n";
	$cout .= '<tr><td colspan="2"><input type="button" value="Supprimer" onclick="validerSuppression();" /></td></tr>'."\n";
	$cout .= '</table></form></fieldset></center>'."\n";
}
function writeModForm(&$cout, &$liste_partenaires)
{
	$cout .= '<center><fieldset style="width:75%;margin:auto;margin-top:30px;"><legend>Modifier un Partenaire</legend>'."\n";
	$cout .= '<form method="post" action="partenaires.php?act=mod&part=1"><table>'."\n";
	$cout .= '<tr><td><label for="id">Partenaire à modifier</label></td><td><select name="id" id="id">';
	for($i=0; $i<(sizeof($liste_partenaires)); $i++)
		$cout .= '<option value="'.$liste_partenaires[$i]['id'].'">'.$liste_partenaires[$i]['nom'].'</option>';
	$cout .= '</select></td></tr>'."\n";
	$cout .= '<tr><td colspan="2"><input type="submit" value="Modifier" /></td></tr>'."\n";
	$cout .= '</table></form></fieldset></center>'."\n";
}

// Corps de l'algorithme
switch($mode)
{
	case "add" :
		
		//Tests préliminaires à l'ajout :
		if(!filter_var($_POST['url'], FILTER_VALIDATE_URL, FILTER_FLAG_SCHEME_REQUIRED))
			$erreur .= 'Le lien ne semble pas être une URL valide...<br />';
		if(!filter_var($_POST['image'], FILTER_VALIDATE_URL, FILTER_FLAG_SCHEME_REQUIRED))
			$erreur .= 'L\'image ne semble pas être une URL valide...<br />';
		if($_POST['importance'] < Partenaire::LIEN_PARTENAIRE || $_POST['importance'] > Partenaire::LIEN_ACCESSOIRE)
			$erreur .= 'Ce type de partenariat n\'est pas reconnu.<br />';
			
		if(empty($erreur))
		{
			$partenaire = new Partenaire(Partenaire::PARTENAIRE_NOUVEAU);
			$partenaire->setNom(addslashes($_POST['nom']));
			$partenaire->setLien($_POST['url']);
			$partenaire->setImage($_POST['image']);
			$partenaire->setDesc(addslashes($_POST['description']));
			$partenaire->setStatut(intval($_POST['importance']));
			$partenaire->ecrirePartenaire();
			$cout .= "Partenaire ajouté avec succès !<br />";
		}
		else
			writeAddForm($cout, NULL, $_POST['nom'], $_POST['url'], $_POST['image'], $_POST['description'], $_POST['importance']);
		
	break;
	case "del" :
		
		$partenaire = new Partenaire(Partenaire::PARTENAIRE_EXISTANT, $_POST['id']);
		if(!$partenaire)
			$erreur = 'Le partenaire spécifié semble ne pas exister.<br />';
		else
		{
			$partenaire->supprimerPartenaire();
			$cout .= 'Partenaire supprimé avec succès.<br />';
		}
			
	break;
	case "mod" :
	
		if(intval($_GET['part']) == 1)
		{
			$partenaire = new Partenaire(Partenaire::PARTENAIRE_EXISTANT, $_POST['id']);
			writeAddForm($cout, $_POST['id'], $partenaire->nom, $partenaire->lien, $partenaire->image, $partenaire->description, $partenaire->importance);
		}
		else
		{
			if(!filter_var($_POST['url'], FILTER_VALIDATE_URL, FILTER_FLAG_SCHEME_REQUIRED))
				$erreur .= 'Le lien ne semble pas être une URL valide...<br />';
			if(!filter_var($_POST['image'], FILTER_VALIDATE_URL, FILTER_FLAG_SCHEME_REQUIRED))
				$erreur .= 'L\'image ne semble pas être une URL valide...<br />';
			if($_POST['importance'] < Partenaire::LIEN_PARTENAIRE || $_POST['importance'] > Partenaire::LIEN_ACCESSOIRE)
				$erreur .= 'Ce type de partenariat n\'est pas reconnu.<br />';
			
			if(empty($erreur))
			{
				$partenaire = new Partenaire(Partenaire::PARTENAIRE_EXISTANT, $_GET['id']);
				$partenaire->setNom(addslashes($_POST['nom']));
				$partenaire->setLien($_POST['url']);
				$partenaire->setImage($_POST['image']);
				$partenaire->setDesc(addslashes($_POST['description']));
				$partenaire->setStatut(intval($_POST['importance']));
				$partenaire->ecrirePartenaire();
				$cout .= "Partenaire modifié avec succès !<br />";
			}
			else
				writeAddForm($cout, $_GET['id'], $_POST['nom'], $_POST['url'], $_POST['image'], $_POST['description'], $_POST['importance']);
		}
		
	break;
	default :
		
		writeAddForm($cout, NULL, '', '', '', '', '');
		
		$liste = new ListePartenaires(Partenaire::ALL);
		$tableau = $liste->getListe(array(1 => 'id',2 => 'nom'));
		
		writeDelForm($cout, $tableau);
		writeModForm($cout, $tableau);
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
	<head>
		<script type="text/javascript">
			function validerSuppression() {
				var id = document.forms["supprimer"].elements["id"].value;
				if(confirm('Voulez-vous réellement supprimer ce partenaire ?'))
					document.forms["supprimer"].submit();
			}
		</script>   
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Administration .:. Partenariats</title>
	</head>
	<body onload="<?php echo $onload; ?>">
		<span style="color:red;font-size:small;"><?php echo $erreur; ?></span>
		<?php echo $cout; ?>
		<br />
		<center><div style="width:100%:text-align:center;"><a href="administration.php">Retour au panneau.</a> .:. <a href="partenaires.php">Retour aux partenariats.</a></div></center>
<?php
$fin_affichage = microtime();
echo '<br /><div style="font-size:x-small;text-align:right;">Temps d\'execution : '.($fin_affichage - $debut_affichage).' s</div>';
?>
</body>
</html>