<html>
<head>
	<title>Gestion des joueurs</title>
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
</head>
<body>
<?
include ('gestionauthentifications.php');

echo '<center><br><br><b>CHANGEMENT NOM JOUEUR ROYAUME</b><br><br><br>';

// si rien du tout -> formulaire pour joueur
if (!isset($_POST['id_perso']) && !isset($_POST['joueur']))
{
	echo '<form method="post" action="joueur.php">';
	echo 'Veuillez saisir le nom d\'un personnage :<br>';
	echo '<input type="text" size="20" name="joueur">';
	echo '<select name="srv">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  </select>';
		  
	echo '<br><br><input type="submit" value="Chercher >>">';
}
// affichage simple du joueur
else {
	switch($_POST['srv'])
	{
		case '1' : include("connect_p.php"); break;
		case '2' : include("connect_b.php"); break;
	}
	
	if (isset($_POST['joueur']))
	{
		echo '<form method="post" action="joueur.php">';
		
		$nom_perso = $_POST['joueur'];
		$sql = "SELECT id, nom, royaume FROM joueurs_heros WHERE nom LIKE '$nom_perso%'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		if (mysql_num_rows($req) > 1) {
			echo "Il y a plusieurs résultats, affiner votre recherche";
			echo '<br><br><a href="joueur.php">Rechercher</a>';
		} else if ($dat = mysql_fetch_assoc($req))
		{
			echo '<center><br><br><table style="width: 60%; text-align: center;" border="1"><tbody>
				<tr>
				<td><b>Nom</td>
				<td><b>Royaume</td>
				</tr>';			
			//echo '<input type="hidden" name="id'.$i.'" value="'.$dat['id'].'">';
			echo '<tr>
				  <td><input type="text" name="nom" value="'.$dat['nom'].'" style="width: 100%;"</td>
				  <td><input type="text" name="royaume" value="'.$dat['royaume'].'" style="width: 100%;"></td>
				  </tr>';		
			echo '</tbody></table>';
		
			echo '<input type="hidden" name="id_perso"  value="'.$dat['id'].'">';
			echo '<input type="hidden" name="srv"    value="'.$_POST['srv'].'">';
			echo '<br><br><input type="submit" value="Modifier >>">';
		} else {
			echo "Aucun joueur ne correspond à votre recherche $nom_perso";
			echo '<br><br><a href="joueur.php">Rechercher</a>';
		}
	}
	else if (isset($_POST['id_perso']))
	{
		include "../fonctions/profil.class.php";
		$profil = new Profil(Profil::ACT_AUTRE, true, true);
		$profil->flushError();
		$id_perso = $_POST['id_perso'];
		$sql = "SELECT id, nom, royaume FROM joueurs_heros WHERE id = $id_perso";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$dat = mysql_fetch_assoc($req);
		if(($dat['nom'] == $_POST['nom'] || ($retour = $profil->setNomPerso($_POST['id_perso'], $_POST['nom'])) == Profil::EXIT_SUCCESS) && ($retour = $profil->setRoyaumePerso($_POST['id_perso'], $_POST['royaume'])) == Profil::EXIT_SUCCESS)
		{
			echo '<span style="color:darkgreen;">Nom et royaume modifiés.</span><br />';
		}
		else
		{
			$note = '<span style="color:darkred;">'.$profil->getError().'</span>';
			echo $note;
		}
	}
}

echo '<br><br><a href="administration.php">Retour Admin</a>';

?>
</body>
</html>
