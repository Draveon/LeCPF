<?php 
// Gestion de la session
  include("inclus/session.inc");


echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>Vente aux enchères</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>';

include ('info_objets_include.php');


// Connexion à la base
include("connect.php");
include("temps_ecoulement.php");


if (!isset($_POST['vente']))// on propose la liste des objets à vendre
{
	echo '<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
	<br><form method="post" action="info_vente.php">
	<div align="center"><table style="width: 92%; text-align: center; background-color: antiquewhite;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
	</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
	</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">	
	<div align="center"><strong>Vendre un objet aux enchères</strong>
	<br><br>
	<img src="/images/foire.gif" alt="Marché central">
	<br><br>
	<table border="0" cellspacing="0" cellpadding="0" style="width: 90%; text-align: left; vertical-align: top;"><tbody>
	<tr>	<td style="text-align: right; width: 50%;">Item à vendre :</td>
		<td style="text-align: left;">&nbsp;&nbsp;
		<select  name="vente" size=1>
			<option selected value="0">Choisir...</option>';
	
	$req = mysql_query('SELECT * FROM joueurs_objets WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	
	$slot = mysql_fetch_assoc($req);
	var_dump($slot);
	for ($i=1; isset($slot[$i]); $i++)
	{
		if ($slot[$i] != 0)
		{
			$obj_data = retourne_carac_objet ($slot[$i]);
			if ($obj_data['vendable'] != 0)
				echo '<option value="'.$slot[$i].'">'.$obj_data['nom'].'</option>';
		}
	}
	echo '</select></td></tr>
	<tr>	<td class="tdrig">Prix de départ :</td>
		<td class="tdlef">&nbsp;&nbsp;<input type="text" name="prix" size="9"></td></tr>
	<tr>	<td class="tdrig">Durée de l\'enchère :</td>
		<td class="tdlef">&nbsp;&nbsp;
		<Select  name="temps" size=1>
			<option selected value="0">Choisir...</option>
			<option value="'.($duree_jour*2)  .'">'.round(48/$temps_ecoulement).'h</option>
		</select></td></tr>
	</tbody></table><br>
	<input type="submit" value=" Vendre >> "><br><br></td></tr>
	<tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table></div>
	<br>
	</tbody>
	</table>
	</body>
	</html>';
}
else    //  isset($_POST['vente'], on traite la vente
{	
	$texte = "";
	$prix = max(1, round($_POST['prix']));
	
	$vente = $_POST['vente'];	
	
	if (!isset($_POST['vente']) OR $_POST['vente'] == "" OR $_POST['vente'] == "0")
		$texte = "Vous devez spécifier un item à mettre en vente."; 
	if ( (!isset($_POST['prix']) OR $_POST['prix'] == "" OR $_POST['prix'] == "0") AND $texte == "")
		$texte = "Vous devez spécifier un prix de base pour votre objet."; 
	$duree = (!isset($_POST['temps']) OR $_POST['temps'] < $duree_jour) ? $duree_jour : min($_POST['temps'], $duree_jour*2);
	
	if ($texte == "")
	{
		$temps = floor(time()/60) + $duree;
		
		// aptitude commerce
		$req = mysql_query('SELECT `21` FROM joueurs_aptitudes WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$commerce = $data[0];
		$maxventessimult = round(2 + 8*$commerce/100);
		// nombre de ventes en cours pour ce joueur
		$req = mysql_query('SELECT id FROM foire_vente WHERE vendeur = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$nbr_ventes = mysql_num_rows($req);
		
		// si ya pas trop de ventes par le joueur
		if ($nbr_ventes >= $maxventessimult) {
			$texte = "Vous n\'êtes pas assez bon commerçant pour assurer la vente d\'autant d\'items simultanément.";
		}
		else {
			$req = mysql_query('SELECT * FROM joueurs_objets WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
			$slot = mysql_fetch_assoc($req);
			for ($i=1; isset($slot[$i]); $i++)   // on parcourt les emplacements de l'inventaire, vérifier que l'objet existe effectivement
			{
				if ($vente == $slot[$i])
				{
					$obj_data = retourne_carac_objet ($slot[$i]);
					$sql = 'UPDATE `joueurs_objets` SET `'.$i.'` = "0" WHERE nom = "'.$nom.'"';
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					$sql = 'INSERT INTO `foire_vente`	(`id`, `vendeur`, 	`item`, 	`qtee`, `offre`, 	`temps`, 	`image`, 	`type`, `type2`)
						VALUES 				("", 	"'.$nom.'", 	"'.$vente.'",	"1", 	"'.$prix.'", 	"'.$temps.'", 	"'.$obj_data['image'].'", 	"objet", "'.$obj_data['type'].'");';
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					break;
				}
			}
		}
	}
	
	if ($texte == "")
	{
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onLoad="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
	}
	else
	{
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onload="javascript:alert(\''.$texte.'\'); setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
	}
}

mysql_close();

?>