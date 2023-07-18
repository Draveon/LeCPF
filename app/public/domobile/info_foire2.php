<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];

$id = (isset($_REQUEST['item'])) ? $_REQUEST['item'] : 0;
if ($id == 0)
	$id = isset ( $_POST ['id'] ) ? $_POST ['id'] : 0;

include("connect.php");
include ("info_objets_include.php");

$sql = "SELECT vendeur, acheteur, type, item, image, qtee, offre, commerce_min, `privé` FROM foire_vente WHERE id = '$id'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$vendeur = $data[0];
$acheteur = $data[1];
$type = $data[2];
$item = $data[3];
$image = $data[4];
$qtee = $data[5];
$prix = $data[6];
$commerce_min = $data[7];
$prive_nom = $data[8];

if ($vendeur == $nom AND $acheteur == "")
{
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
		<head>
			<title>Gérer votre offre</title>
			<link rel="stylesheet" type="text/css" href="style_divers.css">
		</head>
		<body class="bodypopup" marginheight=0 marginwidth=0>
		<br>
			<form method="post" action="info_annuler.php">
				<div align="center">
					<table class="cadretablepopup">
						<tbody>
							<tr>
								<td colspan="3" class="cadretopleft"></td>
								<td rowspan="2" class="cadretopright"></td>
							</tr>
							<tr>
								<td class="cadremiddleleft"></td>
								<td colspan="2" class="cadrecontenupopupc">
									<div align="center">
										<strong>Annuler votre offre</strong>
										<br><br>
										<img src="/images/foire.gif" alt="Marché central">
										<br><br>
										<table border="0" cellspacing="0" cellpadding="0" style="width: 90%; text-align: left; vertical-align: top;">
											<tbody>
												<tr>
													<td colspan="2" style="text-align: center;">Cliquer ici si vous désirez annuler votre offre. À noter qu\'une vente ne peut être annuler que si aucune offre n\'a été faite.<br><br></td>
												</tr>
											</tbody>
										</table>
										<br>
										<input type="hidden" name="id" value="'.$id.'">
										<input type="submit" value=" Annuler >> ">
										<br><br>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="cadrebottom"></td>
							</tr>
							<br>
						</tbody>
					</table>
				</div>
			</form>
		</body>
	</html>
	';
} else if (($vendeur != $nom) && ($vendeur == $_SESSION['nom_perso1'] || $vendeur == $_SESSION['nom_perso2'])) {
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
		<head>
			<title>Action impossible!</title>
		</head>
		<body class="bodypopup" marginheight=0 marginwidth=0>
			Action impossible!
		</body>
	</html>';
}
else
{
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head>
		<title>Faire une offre</title>
		<script type="text/javascript" src="fonctions/affichecache.js"></script>
		<link rel="stylesheet" type="text/css" href="style_divers.css">
	</head>';
	
	if (!isset($_POST['offre']))
	{
		if ($type == 'créature') {
			$req = mysql_query("SELECT nom, niveau FROM `creatures` WHERE id = ".$item) or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$obj_data = array('nom' => $data[0], 'image' => $image, 'type' => 'créature', 'niv' => $data[1]);
			$size = 100;
		} else if ($type == 'objet') {
			$obj_data = retourne_carac_objet($item);
			$size = 100;
		}
		else {
			$obj_data = array('nom' => ucfirst($item), 'image' => $image, 'type' => ucfirst($item));
			$size = 60;
		}
		
		echo '	<body class="bodypopup" marginheight=0 marginwidth=0>
			<form method="post" action="info_foire.php">
			<br>
			<div align="center">
			<table class="cadretablepopup">
			<tr>	<td colspan="3" class="cadretopleft"></td>
				<td rowspan="2" class="cadretopright"></td></tr>
			<tr>	<td class="cadremiddleleft"></td>
				<td colspan="2" class="cadrecontenupopupc">
			<b>'.$obj_data['nom'].'</b></b><br>&nbsp;
			<table class="discr100"><tbody>
			<tr>	<td class="discr100img">';
		echo affiche_image_objet ($obj_data['nom'], $obj_data['image'], '', $size, 0);
		echo 	'</td><td>Type : '.$obj_data['type'];
		
		if ($type == 'créature')
			echo '<br>Niveau '.$obj_data['niv'].'<br>Quantité: '.$qtee.'</td></tr>';
		else if ($type == 'objet')
			echo '<br>Niveau '.$obj_data['niv'].'<br>' . liste_bonus ($obj_data, '') . '</td></tr>';
		else
			echo '<br><br>Achat désiré: <b>'.$qtee.' '.$item.'</b></td></tr>';
		
		echo '</table><table>';
		
		// message d'alerte si objet pas portable
		if ($type == 'objet')
		{
			$req = mysql_query("SELECT `cha` FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_assoc($req);
			if (!estEquipable($obj_data, $classe, $data['cha']))
				echo '<tr><td colspan="2" class="tdcen"><FONT color="RED"><b>Votre classe ne peut porter cet objet !</b></FONT><br>&nbsp;</td></tr>';
		}	
	
		if ($commerce_min > 0)
			echo '<tr><td colspan="2" class="tdcen"><FONT color="PURPLE">Points investis dans l\'aptitude Commerce nécessaires pour participer à l\'enchère: '.$commerce_min.'</FONT><br>&nbsp;</td></tr>';
		
		if ($prive_nom == '' || $prive_nom == $nom) {
			echo '<tr>	<td colspan="2" class="tdlef" style="padding-bottom:10px;">Enchère actuelle : <b>'.$prix.'</b> pièces d\'or.</td></tr>
				<tr>	<td class="tdlef">Offre :&nbsp;&nbsp;&nbsp;<input type="text" name="offre" size="6"> pièces d\'or.</td>
					<td class="tdlef" width="120"><input type="submit" value=" Offrir >> "><input type="hidden" name="id" value="'.$id.'"></td></tr>';
		}
		if ($prive_nom != '') {
			echo '<tr><td colspan="2" class="tdcen"><FONT color="PURPLE">Enchère réservée à '.$prive_nom.'</FONT><br>&nbsp;</td></tr>';
		}
			
		// message de rappel
		echo '<tr><td colspan="2"><small><br>Veuillez noter que l\'offre faite se doit d\'excéder de 10% la dernière offre ayant été faite sur l\'item ou le lot d\'items convoité.<br>&nbsp;</small></td></tr>';
		
		echo '</tbody></table>
			</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></div>
			<br>
			</tbody>
			</table>
			</form>
			</body>
			</html>';
	}
	else
	{		
		$texte = "";
		$vente	= ((isset($_POST['offre']))&&(is_numeric($_POST['offre']))) ? round($_POST['offre']) : '';
		$time = time()/60;

		if ($id==0 OR $vente=='')
			$texte = "Vous n\'avez fait aucune offre.";
		else
		{
			$sql = "SELECT argent FROM joueurs_stats WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$cash = $data[0];
			
			// On récupère les points de commerce pour le marché noir
			$commerce = 0;
			$sql = "SELECT `21` FROM joueurs_aptitudes WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$commerce = $data[0];

			$sql = "SELECT * FROM foire_vente WHERE id = '$id'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$vendeur = $data[1];
			$item = $data[2];
			$qtee = $data[3];
			$offre = $data[4];
			$temps = $data[5];
			$acheteur = $data[7];
			$type = $data[8];

			if ($temps < $time)
				$texte = "L\'enchère est malheureusement déjà terminée.";
			else
			{
				if ($vente > $cash)
					$texte = "Vous ne pouvez promettre un montant que vous ne possédez pas.";
				else
				{
					if ($acheteur == "") {
						$taxe = $offre;
						$texte_enchere_trop_basse = "Votre offre doit être au minimum égale à la mise à prix.";
					} else {
						$taxe = $offre + ceil($offre*0.1);
						$texte_enchere_trop_basse = "Votre offre se doit d\'être au minimum 10% plus haute que la dernière ayant été faite.";
					}
					if ($vente < $taxe)
						$texte = $texte_enchere_trop_basse;
					else
					{
						if ($commerce < $commerce_min)
							$texte = "Vous n\'avez pas suffisamment de points dans l\'aptitude Commerce pour participer à cette vente.";
						else
						{
							if ($vendeur == $nom)
								$texte = "Vous ne pouvez renchérir sur vos propres ventes.";
							else
							{
								if ($prive_nom != '' && $prive_nom != $nom)
									$texte = "Cette enchère est réservée à $prive_nom.";
								else
								{
									$cash = $cash - $vente;
									$sql = "UPDATE `joueurs_stats` SET `argent` = '$cash' WHERE nom ='$nom'";
									$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
									
									$sql = "SELECT argent FROM joueurs_stats WHERE nom = '$acheteur'";
									$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
									$data = mysql_fetch_row($req);
									$cash = $data[0];
									$cash = $cash + $offre;
									$sql = "UPDATE `joueurs_stats` SET `argent` = '$cash' WHERE nom ='$acheteur'";
									$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
									
									if ($prive_nom != '' && $prive_nom == $nom) {
										$temps_restant_new = $time - 1;
									} else {
										$temps_restant_new = max($time + 360, $temps);
									}
									$sql = "UPDATE `foire_vente` SET `offre` = '$vente', `acheteur` = '$nom', `temps` = $temps_restant_new WHERE `id` = $id LIMIT 1";
									mysql_query($sql);
								}
							}
						}
					}
				}
			}
		}
		
		if ($texte == "")
		{
			?>
			<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onLoad="setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
			style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>
			<?php
		}
		else
		{
			?>
			<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onload="alert('<?php echo $texte; ?>'); setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
			style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>
			<?php
		}
	}
}

mysql_close();

?>
