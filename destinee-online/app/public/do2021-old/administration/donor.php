<? session_start();

function isPair($nombre)
{
   return (($nombre-1)%2);
}
function getFrenchMonth($month)
{
	$mois["January"] = "Janvier";
	$mois["February"] = "Février";
	$mois["March"] = "Mars";
	$mois["April"] = "Avril";
	$mois["May"] = "Mai";
	$mois["June"] = "Juin";
	$mois["July"] = "Juillet";
	$mois["August"] = "Août";
	$mois["September"] = "Septembre";
	$mois["October"] = "Octobre";
	$mois["November"] = "Novembre";
	$mois["December"] = "Décembre";
	
	return $mois[$month];
}
?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>Gestion des Dons D'or</title>
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
	<style type="text/css">
		td { 
			border: 1px solid white;
			padding: 1px;
		}
		th { 
			border: 1px solid black;
			padding: 0px 5px 0px 5px;
		}
	</style>
</head>
<body>
<?
include "gestionauthentifications.php";

// N'existe que serveur RP now
$serveur = 3;
include("../administration/choix_serveurs.php");
// Faudra une fois m'expliquer pourquoi les petits bateaux qui vont sur l'eau auraient des jambes...

if(isset($_POST['DonOr']))
{
	echo '<div style="text-align:center;">';
	$req = mysql_query("SELECT id, offrant, beneficiaire, somme FROM dons_or WHERE valide=0 AND refuse=0");
	while($dat = mysql_fetch_row($req))
	{
		if($_POST[$dat[0]] == '1') {
			mysql_query("UPDATE dons_or SET valide = 1 WHERE id = ".$dat[0]);
			mysql_query("UPDATE joueurs_stats SET argent = argent + ".$dat[3]." WHERE nom = '".$dat[2]."'");
			mysql_query("INSERT INTO messagerie (auteur, destinataire, titre, message, date, temps) VALUES ('Intendance', '".$dat[2]."', 'Reception d\'un don', 'Le seigneur ".$dat[1]." nous a fait parvenir un don de ".$dat[3]." pièces d\'or.\nPuisse-t-il en être remercié !', '".Date('d')." ".getFrenchMonth(Date('F'))."', ".floor(time()/60).")");
			echo '<span style="color:green;">Don de '.$dat[1].' à '.$dat[2].' effectué ('.$dat[3].')</span> <br/>';
		}
		elseif($_POST[$dat[0]] == '0') {
			mysql_query("UPDATE dons_or SET refuse = 1 WHERE id = ".$dat[0]);
			mysql_query("UPDATE joueurs_stats SET argent = argent + ".$dat[3]." WHERE nom = '".$dat[1]."'");
			mysql_query("INSERT INTO messagerie (auteur, destinataire, titre, message, date, temps) VALUES ('Intendance', '".$dat[1]."', 'Don impossible', 'Votre don d\'or au seigneur ".$dat[1]." est jugé impossible sire.\nNous ne pouvons effectuer la transactin de ".$dat[3]." pièces d\'or pour une raison telle que celle-ci...', '".Date('d')." ".getFrenchMonth(Date('F'))."', ".floor(time()/60).")");
			echo '<span style="color:red;">Don de '.$dat[1].' à '.$dat[2].' refusé ('.$dat[3].')</span> <br/>';
		}
	}
	echo '</div>';
	echo '<br />';
}

echo '<form method="post"><table align="center" cellspacing="0">';
echo '<tr><th>Accepter</th><th>Refuser</th><th style="width:10em;">Offrant</th><th style="width:10em;">Bénéficiaire</th><th>Somme</th><th style="width:15em;">Raison</th></tr>';
$i = 1;
$req = mysql_query("SELECT id, offrant, beneficiaire, somme, raison FROM dons_or WHERE valide=0 AND refuse=0");
while($dat = mysql_fetch_row($req))
{
	$color = (isPair($i)) ? '#ffffff' : '#e0e0e0' ;
	?>
	<tr>
		<td style="background-color:<?php echo $color; ?>;text-align:center;"><input type="radio" name="<?php echo $dat[0]; ?>" value="1" /></td>
		<td style="background-color:<?php echo $color; ?>;text-align:center;"><input type="radio" name="<?php echo $dat[0]; ?>" value="0" /></td>
		<td style="background-color:<?php echo $color; ?>;text-align:center;"><?php echo $dat[1]; ?></td>
		<td style="background-color:<?php echo $color; ?>;text-align:center;"><?php echo $dat[2]; ?></td>
		<td style="background-color:<?php echo $color; ?>;text-align:center;"><?php echo $dat[3]; ?></td>
		<td style="background-color:<?php echo $color; ?>;max-height:3em;overflow:scroll;"><?php echo $dat[4]; ?></td>
	</tr>
	<?php
	$i++;
}
echo '<input type="hidden" name="DonOr" />';
echo '<td colspan=6 style="text-align:center;"><input type="submit" value="Envoyer >>" /></td></table></form>';
echo '<br /><div style="text-align:center;"><a href="./donor.php">Actualiser</a><br /><a href="./administration.php">Index administration</a> - <a href="../index.php">Index du site</a></div>';

mysql_close();
?>