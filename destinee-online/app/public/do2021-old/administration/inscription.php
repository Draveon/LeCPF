<?php
session_start();

// Page recodée le 8/11.
// Je vais utiliser PDO et préparer la requête de contrôle de chaque joueur, ce qui devrait permettre d'économiser pas mal de ressources.
$debut_affichage = microtime();

// Afin d'éviter les failles CSRF, on va utiliser un jeton.
$_SESSION['token'] = $token = md5(uniqid(rand(), true));
?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
	<head>
		<title>Gérance des inscriptions</title>
		<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
		<style type="text/css">
			td.entete {
				vertical-align: top;
				text-align: center;
				background-color: #002450;
				color: #FFFFFF;
				font-family: Book Antiqua;
			}
		</style>
		<script type="text/Javascript">
		<!--
			function check_decheck(radio, uid) {
				if(document.getElementById("ancien_"+uid).value == radio.value) {
					document.getElementById("ancien_"+uid).value = "";
					radio.checked = false;
				}
				else {
					document.getElementById("ancien_"+uid).value = radio.value;
				}
			}
		-->
		</script>
	</head>
	
	<body>
<?php
// J'ai stocké ici les idents de base de données dans des macros.
// Il est probable que j'ajoute à l'avenir des données dans ce fichier pour soulager le serveur.
include ('../inclus/conf.php');

// J'assigne les variables à partir du serveur choisi.
$serveur = $_SESSION['serveur'] = (int)$_GET['serveur']; // Petite sécurité au cas où une faille CSRF passe.
$dbname = ($serveur == 1) ? SQL_DB1 : (($serveur == 2) ? SQL_DB2 : (($serveur == 3) ? SQL_DB3 :  false ));
include "../connect.php";



// Je lance la connexion à MySQL avec la classe PDO.
// A partir de PHP6, cette classe remplacera MySQL tel qu'on l'utilise actuellement sur DO.
try {
	$connexion = new PDO('mysql:host='.SQL_HOST.';dbname='.$dbname, SQL_USER, SQL_PASS);
} catch (Exception $e) {
	echo 'Erreur : '.$e->getMessage().'<br />';
    echo 'N° : '.$e->getCode();
}

$emailmulti = 'background-color:lightblue; ';
$emaildoubl = 'background-color:#FFDDDD; ';
$ipmulti    = 'color:#0000CC; ';
$ipdoubl    = 'color:#FF0000; ';
$mdpmulti   = 'border-width: 2px; border-style: dashed; border-color:#0000FF;';
$mdpdoubl   = 'border-width: 2px; border-style: dashed; border-color:#FF3333; ';

echo '<div style="text-align:center;font-size:small;"><span style="text-decoration:underline;color:darkred;">/!\</span> La sécurité, autant du joueur que du RdI, a été recodée le 8 Novembre. Signalez tout problème ! <span style="text-decoration:underline;color:darkred;">/!\</span></div><br />';
echo '<table align="center">
	<tr><td style="'.$emailmulti.'">multi email	</td><td style="'.$ipmulti.'">multi ip</td>	</td><td style="'.$mdpmulti.'">multi mdp</td></tr>
	<tr><td style="'.$emaildoubl.'">doublon email	</td><td style="'.$ipdoubl.'">doublon ip</td>	</td><td style="'.$mdpdoubl.'">doublon mdp</td></tr>
	</table><br>
';

$i = 0; 	// Nous serivra à indexer chacun des joueur. $_POST[$i] contiendra l'id du joueur.
?>
		<center>SERVEUR <?php echo $serveur; ?></center>
		<div align="center">
			<table style="text-align: left; width:99%;">
			<form method="post" name="validation" action="inscription_2.php?serveur=<?php echo $serveur ?>&token=<?php echo $token; ?>">
				<tr>
					<td class="entete">Accept</td>
					<td class="entete">Refus</td>
					<td class="entete">Motif de Refus</td>
					<td class="entete">Nom</td>
					<td class="entete">Royaume</td>
					<td class="entete">Password</td>
					<td class="entete">Email</td>
					<td class="entete">IP</td>
					<td class="entete">Race</td>
					<td class="entete">Classe</td>
					<td class="entete">Dieu</td>
					<td class="entete">Desc</td>
				</tr>
<?php

// On récupère les données en base de données pour chacune des entrées.
$resultats = $connexion->query("SELECT * FROM joueurs_inscription ORDER BY id");
$resultats->setFetchMode(PDO::FETCH_ASSOC);
while($ligne = $resultats->fetch()) {
	$verification[0] = 0;
	$verification[1] = 0;
	$verification[2] = 0;
	$verification[3] = 0;
	$verification[4] = 0;
	$verification[5] = 0;
	$verification[6] = 0;
	
	// Email
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_inscription WHERE `email` = '".$ligne['email']."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 1)	$verification[4] = 1;
	
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_infos WHERE `email` = '".$ligne['email']."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 0)	$verification[1] = 1;
	// IP
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_inscription WHERE `ip` = '".$ligne['ip']."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 1)	$verification[5] = 1;
	
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_infos WHERE `ip` = '".$ligne['ip']."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 0)	$verification[2] = 1;
	// Password
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_inscription WHERE `password` = '".$ligne['password']."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 1)	$verification[6] = 1;
	
	$requete_verifier = mysql_query("SELECT COUNT(id) FROM joueurs_infos WHERE `password` = '".md5($ligne['password'])."'");
	$data_verifier = mysql_fetch_row($requete_verifier);
	if($data_verifier[0] != 0)	$verification[3] = 1;
	
	$multiNom 	= ($verification[0] != 0) ? true : false ;	// Si on trouve le nom du joueur dans joueurs_infos
	$multiEmail 	= ($verification[1] != 0) ? true : false ;	// Si on trouve l'email du joueur dans joueurs_infos
	$multiIp 	= ($verification[2] != 0) ? true : false ;	// Si on trouve l'email du joueur dans joueurs_infos
	$multiPass 	= ($verification[3] != 0) ? true : false ;	// Si on trouve le pass du joueur dans joueurs_infos
	$doubleEmail	= ($verification[4]) ? true : false ;		// Si on trouve dans joueurs_inscription
	$doubleIp	= ($verification[5]) ? true : false ;		// Si on trouve dans joueurs_inscription
	$doublePass	= ($verification[6]) ? true : false ;		// Si on trouve dans joueurs_inscription
	$linkEmailD 	= ($verification[1] != 0) ? '<a href="http://www.destinee-online.com/administration/joueur.php?mode=recherche&quoi=email&value='.$ligne['email'].'">' : '' ;
	$linkEmailF 	= ($verification[1] != 0) ? '</a>' : '';
	$linkIpD 	= ($verification[2] != 0) ? '<a href="http://www.destinee-online.com/administration/joueur.php?mode=recherche&quoi=ip&value='.$ligne['ip'].'">' : '' ;
	$linkIpF 	= ($verification[2] != 0) ? '</a>' : '';
	$linkPassD 	= ($verification[3] != 0) ? '<a href="http://www.destinee-online.com/administration/joueur.php?mode=recherche&quoi=passw&value='.$ligne['password'].'">' : '' ;
	$linkPassF 	= ($verification[3] != 0) ? '</a>' : '';
	
	$style = '';
	$style .= ($doubleIp == true) 		? $ipdoubl : '' ;
	$style .= ($multiIp == true) 		? $ipmulti : '' ;
	$style .= ($doubleEmail == true)	? $emaildoubl : '' ;
	$style .= ($multiEmail == true)		? $emailmulti : '';
	$style .= ($doublePass == true) 	? $mdpdoubl : '';
	$style .= ($multiPass == true)		? $mdpmulti : '';
?>
				<tr style="<?php echo $style; ?>">
					<input type="hidden" name="<?php echo $i; ?>" value="<?php echo $ligne['id']; ?>" />
					<td><div align="center"><input type="radio" onClick="check_decheck(this, '<?php echo $i; ?>');" name="reponse_<?php echo $i; ?>" value="valider" /></div></td>
					<td><div align="center"><input type="radio" onClick="check_decheck(this, '<?php echo $i; ?>');" name="reponse_<?php echo $i; ?>" value="refuser" /></div></td>
					<input type="hidden" id="ancien_<?php echo $i; ?>" size="20">
					<td><input type="text" name="motif_<?php echo $i; ?>" size="20"></td>
					<td><input type="text" name="nom_<?php echo $i; ?>" value="<?php echo stripslashes($ligne['nom']); ?>" size="20"></td>
					<td><input type="text" name="royaume_<?php echo $i; ?>" value="<?php echo stripslashes($ligne['royaume']); ?>" size="20"></td>
					<td style="<?php echo $style; ?>"><?php echo $linkPassD.substr(md5($ligne['password']),0,9).'...'.$linkPassF; ?></td>
					<td><?php echo $linkEmailD.stripslashes($ligne['email']).$linkEmailF; ?></td>
					<input type="hidden" name="email_<?php echo $i; ?>" value="<?php echo stripslashes($ligne['email']); ?>" />
					<td><?php echo $linkIpD.$ligne['ip'].$linkIpF; ?></td>
					<td><?php echo $ligne['race']; ?></td>
					<td><?php echo $ligne['classe']; ?></td>
					<td><?php echo $ligne['dieu']; ?></td>
					<td><?
					if ($serveur==3)
						echo '<textarea cols=20 rows=10 name="desc_'.$i.'">'.stripslashes($ligne['desc']).'</textarea>';
					else	echo '<input type="hidden" name="desc_'.$i.'" value="">'.stripslashes($ligne['desc']);
					?></td>
				</tr>
<?php
	$i++;
}
$resultats->closeCursor();
echo '<input type="hidden" name="total" value="'.$i.'" />';

$serveurPre = ($serveur == 1) ? 3 : (($serveur == 2) ? 1 : (($serveur == 3) ? 2 : false));
$serveurSui = ($serveur == 1) ? 2 : (($serveur == 2) ? 3 : (($serveur == 3) ? 1 : false));
?>
				<tr>
					<td colspan="12" style="text-align:center;"><input type="submit" style="width:150px;margin-top:20px;" value=" - Valider - " /></td>
				</tr>
			</form>
			</table>
			<br /><br />
			<span style="margin-right:180px;"><a href="inscription.php?serveur=<?php echo $serveurPre; ?>"> Serveur <?php echo $serveurPre; ?></a></span>
			<span style="margin-left:180px;"><a href="inscription.php?serveur=<?php echo $serveurSui; ?>"> Serveur <?php echo $serveurSui; ?></a></span>
			<br /><p><a href="administration.php">Retour à l'administration</a> .:. <a href="../index.php">Retour à l'index du site</a></p>
		</div>
<?php
$fin_affichage = microtime();
echo '<br /><div style="font-size:x-small;text-align:right;">Temps d\'execution : '.($fin_affichage - $debut_affichage).' s</div>';
?>
	</body>
</html>