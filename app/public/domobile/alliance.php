<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

// Action 0 = Rien
// Action 1 = Choisir une Armada
// Action 2 = Se défaire d'une demande d'adhésion
// Action 3 = Annuler une création de guilde
// Action 4 = Joindre une guilde

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];

if(!isset($_POST['action'])){$action = 0;}
else{$action = $_POST['action'];}

if(!isset($_GET['action'])){}
else{$action = $_GET['action'];}

if(!isset($_POST['armada'])){$armada = "0";}
else{$armada = $_POST['armada'];}

include("connect.php");


$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];

if(!isset($_POST['creation_armada'])){$creation = "0";}
else{
    $nom_armada = $_POST['creation_armada'];
    $objectif = $_POST['objectif'];
    $regle = $_POST['regle'];
    $description = $_POST['description'];
    $image_armada = $_POST['image_armada'];

    // On remplace les ' par des `
    $accent = array("'");
    $objectif = str_replace($accent, "`", "$objectif");
    $regle = str_replace($accent, "`", "$regle");
    $description = str_replace($accent, "`", "$description");
    $nom_armada = str_replace($accent, "`", "$nom_armada");
    
    if ($nom_armada != "" AND $objectif != "" AND $regle != "" AND $description != ""){
        $req = "INSERT INTO `guildes_creation` ( `id`, `nom`, `armada`, `objectifs`, `description`, `regle`, `image`, `province`) VALUES ('', '$nom', '$nom_armada', '$objectif', '$description', '$regle', '$image_armada', '$province');";
        mysql_query($req,$db);
    }
}

if ($action == 2){
    $action = 0;
    $delete = mysql_query("DELETE FROM guildes_inscription WHERE joueur = '$nom'") or die(mysql_error());;
    mysql_query($delete,$db);
}

if ($action == 3){
    $action = 0;
    $delete = mysql_query("DELETE FROM guildes_creation WHERE nom = '$nom'") or die(mysql_error());;
    mysql_query($delete,$db);
}

if ($armada != "0"){
    $sql = "SELECT royaume FROM joueurs_heros WHERE nom = '$nom'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $data = mysql_fetch_row($req);
    $royaume = $data[0];

    $req = "INSERT INTO `guildes_inscription` ( `id`, `joueur`, `royaume`, `guilde`) VALUES ('', '$nom', '$royaume', '$armada');";
    mysql_query($req,$db) or die(mysql_error());
}

if ($guilde == "Aucune"){
    $img_guilde = "<img src='/images/alliance/alliance.gif' width='100px' height='100px' alt='Aucune alliance' border=1>";
}

else{
    $sql = "SELECT * FROM guildes WHERE nom = '$guilde'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $data = mysql_fetch_row($req);
    $nbm = $data[3];
    $img = $data[5];
}

mysql_close();
?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Gestion de vos alliances</title>
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
<form method="POST" action="alliance.php">
<br>
<div align="center"><table style="width: 92%; text-align: center; background-image: URL(/images/arriereplan.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
<br><FONT SIZE=+2><b><span style='font-family: papyrus;'>Gestion d'Alliances</b></font></span><br><br>

<?
if ($guilde == "Aucune" AND $action == 0)
{
	include("connect.php");
	$sql = "SELECT * FROM guildes_creation WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nb2 = mysql_num_rows($req);

	$sql = "SELECT province FROM joueurs_bonus WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$province = $data[0];

	$sql = "SELECT * FROM guildes_inscription WHERE joueur = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nb1 = mysql_num_rows($req);
	$data = mysql_fetch_row($req);
	$armada = $data[3];
	mysql_close();

	if ($nb1 == 0 AND $nb2 == 0)
	{
		echo 'Votre royaume ne possède aucune alliance.<br><br>'.$img_guilde.'<br><br>';

		if ($province == "Aucune")
		{
			echo '
			Afin de vous joindre à l\'une ou l\'autre des Armadas<br>
		        existantes, ou encore de créer votre propre Armada, vous<br>
		        devez d\'abord et avant tout vouer allégeance à l\'une<br>
		        ou l\'autre des provinces qui vous est proposées.<br><br>
			Vous pouvez accéder au menu des provinces en <a href="province.php">cliquant ici</a>.
			<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
			';
		}
		else
		{
			echo '
			Vous pouvez choisir l\'une ou l\'autre des actions suivantes.<br>
			Si vous désirez rejoindre une Armada, l\'approbation du chef de cette<br>
			dernière sera requise. Si vous désirez plutôt créer votre propre Armada,<br>
			l\'acceptation par l\'équipe d\'Administration sera requise.<br><br>
			<input type="radio" name="action" value="1"> Je désire rejoindre une Armada<br>
			<input type="radio" name="action" value="4"> Je désire créer ma propre Armada<br><br>
			<input type="submit" value="Approuver >>">
			<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
			';
		}
	}
	if ($nb1 > 0)
	{
		echo 'Votre royaume ne possède aucune alliance.<br><br>'.$img_guilde.'<br><br>
		Votre royaume est actuellement en attente d\'une réponse de la part<br>
		du chef de la guilde :<b>'.$armada.'</b><br><br>
		Vous pouvez décider d\'annuler cette demande d\'adhésion<br>
		ou encore de patienter quelques temps.<br><br>
		Pour annuler votre demande, <a href="alliance.php?action=2">cliquez ici</a>
		<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
		';
	}
	if ($nb2 > 0)
	{
		echo 'Votre royaume ne possède aucune alliance.<br><br>'.$img_guilde.'<br><br>
		Votre royaume est actuellement en attente d\'une réponse de la part<br>
		de l\'équipe d\'Administration concernant la création de votre Armada.<br><br>
		Vous pouvez décider d\'annuler cette demande d\'inscription<br>
		ou encore de patienter quelques temps.<br><br>
		Pour annuler votre demande, <a href="alliance.php?action=3">cliquez ici</a>
		<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
		';
	}
}
else
{
	if ($guilde == "Aucune" AND $action == 1)
	{
		echo '	Votre royaume ne possède aucune alliance.<br><small>( <a href="alliance.php?action=0">Cliquez ici pour retourner au menu principal</a> )</small><br><br>'.$img_guilde.'<br><br>';
		echo '	Vous pouvez choisir de vous joindre à l\'une ou l\'autre<br>
			des Armadas suivantes. Votre souscription se doit d\'être<br>
			approuvée par le chef de ladite Armada.<br><br>
			<center><table border="0" cellspacing="2" cellpadding="0" style="width: 480px; vertical-align: center; text-align: center;"><tbody><tr>
			<td style="text-align: center;"></td>
			<td style="text-align: center;"></td>
			<td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Nom</big></td>
			<td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Membres</big></td>
			<td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Jours</big></td>
			<td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Puissance</big></td>
			</tr><tr><td></td><td colspan="5" style="text-align: center; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr><tr>
		';
		
		include("connect.php");
		include("temps_ecoulement.php");
		
		$sql = "SELECT * FROM guildes WHERE nb_membres > '0' AND province = '$province' ORDER BY puissance DESC";
		// SERVEUR 3: toutes les guildes sont accessibles dès que le joueur a intégré une province
		if ($serveur == 3)
			$sql = "SELECT * FROM guildes WHERE nb_membres > '0' ORDER BY puissance DESC";
		// FIN DE SERVEUR 3
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$total = mysql_num_rows($req);
		
		for ($i=0;$i<$total;$i++)
		{
			$data = mysql_fetch_row($req);
			$nom_pro = $data[1];
			$membres = $data[3];
			$data_cr = $data[4];
			$img_gui = $data[5];
			$pui_gui = number_format($data[10], 0, ",", ",");
			$temps = ceil(time()/60);
			$vieux = floor(($temps - $data_cr)/1440);
			
			echo '		<td><input type="radio" name="armada" value="'.$nom_pro.'"'.$disabled.'></td>
					<td style="text-align: center;"><img src="'.$img_gui.'" width="40px" height="40px" alt="'.$nom_pro.'" border="1"></td>
					<td style="text-align: left;">'  .$nom_pro	.'</td>';
			if ($suppleme == '')
				echo	'<td style="text-align: center;">'.$membres	.'</td>
					<td style="text-align: center;">'.$vieux	.'</td>
					<td style="text-align: right;">' .$pui_gui	.'</td>';
			else
				echo	'<td colspan="3">'.$suppleme.'</td>';
			echo '</tr><tr><td></td><td colspan="5" style="text-align: center; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr><tr>
			';
		}
		
		if ($total == 0)
		{
			?>
			<td colspan="5" style='text-align: center;'>Aucune Armada n'est disponible...</td>
			</tr><tr><td></td><td colspan="5" style="text-align: center; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr>
			</tbody></table><br>
			<?
		}
		else
		{
			echo '</tbody></table><br><input type="submit" value="Approuver >>">';
		}
		
		echo '<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>';
		
		mysql_close();
	}
	
	if ($action == 4)
	{
		
		$serveur = $_SESSION['serveur'];
		switch($serveur)
		{
			case 1:	echo'<a style="text-decoration: none" href="http://www.destinee-online.com/forum/viewtopic.php?t=5197" target="_blank"><font color="red"><center>Cliquez ici pour lire les conditions d\'acceptation d\'une armada (A lire obligatoirement!)</center></font></a>';									break;
			case 2:	echo'<a style="text-decoration: none" href="http://www.destinee-online.com/forum/viewtopic.php?t=5198" target="_blank"><font color="red"><center>Cliquez ici pour lire les conditions d\'acceptation d\'une armada (A lire obligatoirement!)</center></font></a>';									break;
			case 3:	echo'<a style="text-decoration: none" href="http://do-roleplay.bbfr.net/Passage-oblige-c17/Reglements-et-Annonces-f1/Conditions-d-acceptation-pour-les-Armadas-t31.htm" target="_blank"><font color="red"><center>Cliquez ici pour lire les conditions d\'acceptation d\'une armada (A lire obligatoirement!)</center></font></a>';	break;
		}
		echo $img_guilde;
		
		?>
			<br><center><small>( <a href="alliance.php?action=0">Cliquez ici pour retourner au menu principal</a> )</small><br><br>
			<table border="0" style="width: 90%;"><tbody>
			<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Nom de l'Armada : </b></td>
			<td style="text-align: left;"><input type="text" name="creation_armada" size="30"></td></tr>
			
			<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Symbole (URL) : </b></td>
			<td style="text-align: left;"><input type="text" name="image_armada" value="http://" size="30"></td></tr>
			
			<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Objectif(s) : </b></td>
			<td style="text-align: left;"><textarea rows="5" name="objectif" cols="30"></textarea></td></tr>
			
			<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Description : </b></td>
			<td style="text-align: left;"><textarea rows="5" name="description" cols="30"></textarea></td></tr>
			
			<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Règles de l'Armada : </b></td>
			<td style="text-align: left;"><textarea rows="5" name="regle" cols="30"></textarea></td></tr>
			
			</tbody></table>
			
			<br><input type="submit" value="Suivant >>">
			
			<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
			background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
		<?
	
	}
}