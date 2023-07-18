<? session_start();?>
<script language="javascript" src="selection.js"></script>
<?
// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}


function controle_avatar($url_avatar)
{
  if ( substr ($url_avatar, 0, 7) != 'http://' ) {return 'ko';}

  $pos = strrpos($url_avatar, '<');
  if ($pos>0) {return 'ko';}

  $pos = strrpos($url_avatar, '>');
  if ($pos>0) {return 'ko';}

  $pos = strrpos($url_avatar, '"');
  if ($pos>0) {return 'ko';}

  $pos = strrpos($url_avatar, "'");
  if ($pos>0) {return 'ko';}

  $last4 = substr ($url_avatar, strlen($url_avatar)-4, 4);
  $last5 = substr ($url_avatar, strlen($url_avatar)-5, 5);
  if ( ($last4 != '.gif') and ($last4 != '.jpg') and ($last4 != '.png') and ($last5 != '.jpeg') )
  {
    return 'ko';
  }

  return 'ok';
}


function controle_description($description)
{
  $pos = strrpos($description, '<');
  if ($pos>0) {return 'ko';}

  $pos = strrpos($description, '>');
  if ($pos>0) {return 'ko';}

  $pos = strrpos($description, '"');
  if ($pos>0) {return 'ko';}

  return 'ok';
}



$nom = $_SESSION['nom'];
$a = $_POST['ancien_pwd'];
$b = $_POST['new_pwd_1'];
$c = $_POST['new_pwd_2'];
$d = $_POST['avatar'];
$e = $_POST['effacer'];
$f = $_POST['texte'];
$g = $_POST['vacance'];
$h = $_POST['temps'];
$i = $_POST['critique'];
$j = $_POST['remise'];
$k = $_POST['confirm'];

if ($i != "oui"){
    include ("debut.php");
    include ("menu.php");
    entete("Profil");
}

include("connect.php");
$sql = "SELECT description, email FROM joueurs_infos WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$description = $data[0];
$email = $data[1];
mysql_close();

?><table border="0" style="width: 630px; vertical-align: top; text-align: left;"><tbody><tr><td>

<strong><span style='font-family: papyrus;'><a name="compte">Gestion de votre compte</a></span></strong><br><br><br><center>

<form method="post" action="profil.php#compte">
<table border="0" style="width: 100%;"><tbody>

<?if ($a == "" OR $b == ""  OR $c == ""){?>
   <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Ancien mot de passe : </b></td>
   <td><input type="password" name="ancien_pwd" size="20"></td></tr>
   <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Nouveau mot de passe : </b></td>
   <td><input type="password" name="new_pwd_1" size="20"></td></tr>
   <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Retapez votre nouveau mot de passe : </b></td>
   <td><input type="password" name="new_pwd_2" size="20"></td></tr>
<?}
else{
   include("connect.php");
   $sql = "SELECT password FROM joueurs_infos WHERE nom = '$nom'";
   $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
   $data = mysql_fetch_row($req);
   $pass = $data[0];
   if ($a == $pass){
       if($b == $c){
           $nouveau = $b;
           $sql = mysql_query("UPDATE `joueurs_infos` SET `password` = '$nouveau' WHERE `nom` = '$nom'");
           mysql_query($sql,$db);
           ?>
           <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Votre nouveau mot de passe : </b></td>
           <td><? echo $nouveau; ?></td></tr>
           <?
       }
       else{
           ?>
           <tr><td colspan="2" style="text-align: center; vertical-align: top;"><b>Votre nouveau mot de passe n'est pas valide</b></td></tr>
           <?
       }
   }
   else{
       ?>
       <tr><td colspan="2" style="text-align: center; vertical-align: top;"><b>Votre nouveau mot de passe n'est pas valide</b></td></tr>
       <?
   }
   mysql_close();
}

echo "<tr><td><br></td></tr>";

// Changer l'avatar
if ($d == "http://" OR $d == ""){
   include("connect.php");
   $sql = "SELECT avatar FROM joueurs_infos WHERE nom = '$nom'";
   $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
   $data = mysql_fetch_row($req);
   $image = $data[0];
   mysql_close();
   ?>
   <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Votre nouvel avatar (URL) : </b></td>
   <td><input type="text" name="avatar" value="http://" size="20"></td></tr>
   <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Actuellement : </b></td>
   <td style="text-align: left;"><img src="<?echo $image; ?>" width="20px" height="20px" alt="<?echo $nom; ?>" border=1></td></tr>
<?}
else{
   $avatar = "$d";
//   $tchek = "";
//   for($i = 0; $i < 7; $i++){
//       $tchek.= $avatar[$i];
//   }
//   if ($tchek != "http://"){
//       
//       <tr><td colspan="2" style="text-align: center; vertical-align: top;"><b>L'adresse de votre avatar doit débuter par : // http://www...</b></td></tr>
//       
//   }
   if ( controle_avatar($avatar) != 'ok' )
   {
         ?>
         <tr><td colspan="2" style="text-align: center; vertical-align: top;"><b>L'adresse de votre avatar n'est pas valide...</b></td></tr>
         <?
   }
   else{
       include("connect.php");
       $sql = mysql_query("UPDATE `joueurs_infos` SET `avatar` = '$d' WHERE `nom` = '$nom'");
       mysql_query($sql,$db);
       mysql_close();
       ?>
       <tr><td style="text-align: right; vertical-align: top; width: 55%;"> <b>Votre nouvel avatar : </b></td>
       <td style="text-align: left;"><img src="<?echo $d; ?>" width="20px" height="20px" alt="<?echo $nom; ?>" border=1></td></tr>
       <?
   }
}

// LA DESCRIPTION
if ($f == "" OR $f == $description){
    ?><tr><td colspan="4" style="text-align: center; vertical-align: top;"><center><?
    echo "<br><b>Votre description :</b><br><center><textarea rows='5' name='texte' cols='40'>$description</textarea></center><br></td></tr>";
}
else{
     if ( controle_description($f) != 'ok' )
     {
         ?>
         <tr><td colspan="2" style="text-align: center; vertical-align: top;"><b>Votre description n'est pas valide...</b></td></tr>
         <?
     }
     else
     {
    ?><tr><td colspan="4" style="text-align: center; vertical-align: top;"><?
    echo "<br><b>Votre description a été enregistrée avec succès !</b><br><br></td></tr>";
    include("connect.php");
    $sql = mysql_query("UPDATE `joueurs_infos` SET `description` = '$f' WHERE `nom` = '$nom'");
    mysql_query($sql,$db);
    mysql_close();
    }
}


// AFFICHAGE DE L'EMAIL
echo '<tr><td colspan="2" style="text-align: center;"><b>Vous vous êtes inscrit avec l\'adresse mail suivante:</b><br>'.$email.'<br>Si elle ne correspond pas à celle que vous désirez, veuillez contacter un membre de l\'équipe de Destinée par message privé sur le forum. Merci!<br>&nbsp;</td></tr>';


// VACANCES

if ($g == "" OR $h == 0){
    ?><tr><td colspan="4" style="text-align: center; vertical-align: top;"><center><?
    ?><input type="CHECKBOX" name="vacance" value="oui"> <b>Cochez ici pour partir en vacance durant :</b>
    <Select  name="temps" size=1>
    <option selected value="0">Choisir...</option>
    <option value="1">1 minute</option>
    <option value="4320">3 jours</option>
    <option value="7200">5 jours</option>
    <option value="10080">7 jours</option>
    <option value="14400">10 jours</option>
    <option value="21600">15 jours</option>
    <option value="28800">20 jours</option>
    <option value="43200">30 jours</option>
    </select><br><br>
    Attention ! En cochant la case ci-dessus, vous perdrez l'accès à votre compte pour la durée de temps déterminée. Vous ne gagnerez ni or, ni créatures ni ressources, mais en revanche, vous ne pourrez être ni attaqué, ni espionné.
    <br><br></td></tr><?
}
else
{
	$temps = (floor(time()/60)) +  $h;
	include("connect.php");
	
	$sql = 'SELECT connexion_créature FROM joueurs_connexions WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$con_crea = $dat[0] + $h;
	
	$sql = mysql_query("UPDATE `joueurs_connexions` SET `connexion_dernière` = '$temps', `connexion_créature` = '$con_crea', `connexion_or` = '$temps', `connexion_taxe` ='$temps', `connexion_mana` = '$temps', `connexion_pop` = '$temps' WHERE `nom` = '$nom'");
	mysql_query($sql,$db);
	// Antyl, le 24/01/2007 : mise à jour de l'indice d'activité militaire en cas de mise du compte en vacances
	$sql = 'SELECT indice_militaire FROM joueurs_stats WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$indice = $dat[0] + $h;
	$sql = 'UPDATE joueurs_stats SET indice_militaire = "'.$indice.'" WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	// Antyl, le 24/01/2007 : fin de modif
	mysql_close();
	
	$_SESSION = array();
	session_destroy();
	
	?>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	<head>
	<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
	<meta http-equiv="refresh" content="0; url=..">
	<title>Acceuil</title>
	<style>body{scrollbar-base-color: #E8C782}</style>
	<script language="javascript" src="fonctions/menu_deroulant.js"></script>
	</head>
	<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
	style="color: rgb(0, 0, 0); background-image: url(/images/arriereplan.gif);">
	
	</body>
	</html>
	<?
}

//REMISE A ZERO D'UN COMPTE
if ($j == ""){?>
   <tr><td colspan="2" style="text-align: center; vertical-align: top; width: 55%;"><input type="CHECKBOX" name="remise" value="oui"> <b>Cochez ici pour remettre votre compte a zéro</b><br><br>
   Attention ! En cochant la case ci-dessus, vous accepter le fait que toutes vos données vont être remises a zéro. Cet acte est irréversible.</td></tr>
<?}
if ($j == "oui" AND $k ==""){

?>
	<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Race : </b></td>
	<td><select name="make" style="width: 180px;"></select></td></tr>
	<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Classe : </b></td>
	<td><select name="type" style="width: 180px;"></select></td></tr>
	<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Dieu : </b></td>
	<td><select name="model" style="width: 180px;"></select></td></tr>
	<td><input type="radio" value="mâle" name="sexe"> Mâle / <input type="radio" value="femelle" name="sexe"> Femelle<br></td></tr>
   	<tr><td colspan="2" style="text-align: center; vertical-align: top; width: 55%;"><br><font color="red">Remise a zéro de compte</font>
   	<input type="CHECKBOX" name="confirm" value="oui"> Confirmation de la remise a zéro de votre compte</td></tr>
<?
}

// EFFACEMENT D'UN COMPTE
if ($e == ""){?>
   <tr><td colspan="2" style="text-align: center; vertical-align: top; width: 55%;"><input type="CHECKBOX" name="effacer" value="oui"> <b>Cochez ici pour vous défaire de votre compte </b><br><br>
   Attention ! En cochant la case ci-dessus, vous accepter d'effacer votre compte ainsi que toutes les données s'y rattachant. Cet acte est irréversible.</td></tr>
<?}
if ($e == "oui" AND $i ==""){

?>
   <tr><td colspan="2" style="text-align: center; vertical-align: top; width: 55%;"><input type="hidden" name="critique" value="oui"> <br><font color="red">Suppression de compte</font><br><b>Aidez-nous à améliorer notre jeu, faites-nous part de vos remarques!<br>Merci d'avance!</b><br><br>
   <textarea cols="30" rows="10" name="critique_texte"></textarea></td></tr>
<?
}
if ($i == "oui")
{

	$critique = $_POST['critique_texte'];
	$suppression = 'manuelle';

	$joueur = $nom;
	include("connect.php");
	include("effacer.php");
	mysql_close();
	$_SESSION = array();
	session_destroy();
}
if($k == "oui")
{ 
$race = $_POST['make'];
$classe = $_POST['type'];
$dieu = $_POST['model'];
$sexe = $_POST['sexe'];
$erreur = 0;
if ($race == ""){
	$erreur = 1;
	$texte = "Vous devez choisir une race !<br>";}
if ($classe == ""){
	$erreur = 1;
	$texte = "Vous devez choisir une classe !<br>";}
if ($dieu == ""){
	$erreur = 1;
	$texte = "Vous devez choisir un dieu !<br>";}
if ($sexe ==""){
	$erreur = 1;
	$texte = "Vous devez choisir un sexe !<br>";}
if($erreur == 0)
{
$joueur = $nom;

switch ($race){
case 'Ancien': switch ($sexe){
			        case 'mâle' : $titre = "Vénérable"; break;
			        case 'femelle' : $titre = "Vénérable"; break;
			    } break;
			    case 'Célestial': switch ($sexe){
			        case 'mâle' : $titre = "Maître"; break;
			        case 'femelle' : $titre = "Maîtresse"; break;
			    } break;
			    case 'Homme': switch ($sexe){
			        case 'mâle' : $titre = "Seigneur"; break;
			        case 'femelle' : $titre = "Seigneure"; break;
			    } break;
			    case 'Elfe': switch ($sexe){
			        case 'mâle' : $titre = "Conseiller"; break;
			        case 'femelle' : $titre = "Conseillère"; break;
			    } break;
			    case 'Nain': switch ($sexe){
			        case 'mâle' : $titre = "Roi"; break;
			        case 'femelle' : $titre = "Reine"; break;
			    } break;
			    case 'Elfe Noir': switch ($sexe){
			        case 'mâle' : $titre = "Patriarche"; break;
			        case 'femelle' : $titre = "Matriarche"; break;
			    } break;
			    case 'Gnome': switch ($sexe){
			        case 'mâle' : $titre = "Gouverneur"; break;
			        case 'femelle' : $titre = "Gouvernante"; break;
			    } break;
			    case 'Infernal': switch ($sexe){
			        case 'mâle' : $titre = "Despote"; break;
			        case 'femelle' : $titre = "Despote"; break;
			    } break;
			    case 'Vampire': switch ($sexe){
			        case 'mâle' : $titre = "Comte"; break;
			        case 'femelle' : $titre = "Comtesse"; break;
			    } break;
			    case 'Orque': switch ($sexe){
			        case 'mâle' : $titre = "Chef"; break;
			        case 'femelle' : $titre = "Cheftaine"; break;
			    } break;
			    case 'Géant': switch ($sexe){
			        case 'mâle' : $titre = "Chef"; break;
			        case 'femelle' : $titre = "Cheftaine"; break;
			    } break;
			    case 'Minotaure': switch ($sexe){
			        case 'mâle' : $titre = "Chef"; break;
			        case 'femelle' : $titre = "Cheftaine"; break;
			    } break;
			    case 'Fée': switch ($sexe){
			        case 'mâle' : $titre = "Intendant"; break;
			        case 'femelle' : $titre = "Intendante"; break;
			    } break;
			}


$sql = mysql_query("SELECT * FROM `joueurs_heros` WHERE `nom` = '$joueur'");
$data = mysql_fetch_array($sql);

$id = $data[0];
$royaume = $data[6];

$delete = mysql_query("DELETE FROM `foire_vente` WHERE `vendeur` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `guildes_inscription` WHERE `joueur` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `guildes_creation` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_aptitudes` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_aptitudes_base` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_heros` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_inventaire` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_objets` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_stats` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_batiments_id` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_créatures` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_créatures_id` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_connexions` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_terre` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_terre_utile` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_modificateurs` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_magies` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_sorts` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_bonus` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_combat` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_defaites` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_batiments` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `joueurs_quetes` WHERE `nom` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `candidat_palatinat` WHERE `NOM` = '$joueur'");
mysql_query($delete,$db);
$delete = mysql_query("DELETE FROM `votant_palatinat` WHERE `VOTANT` = '$joueur'");
mysql_query($delete,$db);

$arme = 0;
			$bouclier = 0;
			
			switch($classe)
			{
				case 'Archer':		$arme = 6;	break;
				case 'Assassin':	$arme = 4;	break;
				case 'Barde' :		$arme = 6;	break;
				case 'Chevalier' :	$arme = 1; $bouclier = 2; break;
				case 'Guerrier' :	$arme = 1; $bouclier = 2; break;
				case 'Paladin' :	$arme = 1; $bouclier = 2; break;
				case 'Barbare' :	$arme = 1; $bouclier = 2; break;
				case 'Shaman' :		$arme = 5; 	break;
				case 'Voleur' :		$arme = 4; 	break;
				case 'Rôdeur' :		$arme = 4; 	break;
				case 'Magicien' :	$arme = 5; 	break;
				case 'Sorcier' :	$arme = 5; 	break;
				case 'Démonologiste' :	$arme = 5; 	break;
				case 'Illusioniste' :	$arme = 5; 	break;
				case 'Psioniste' :	$arme = 5; 	break;
				case 'Nécromancien' :	$arme = 5; 	break;
				case 'Prêtre' :		$arme = 7; 	break;
				case 'Inquisiteur' :	$arme = 7; 	break;
				case 'Druide' :		$arme = 5; 	break;
				case 'Marchand' :	$arme = 1; 	break;
			}
			
			include("../administration/choix_serveurs.php");
			
			$req = "INSERT INTO `joueurs_heros` ( `id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`)
			VALUES ('$id', '$joueur', '$race', '$classe', '$dieu', '$titre', '$royaume');";
			mysql_query($req,$db);
			$req = "INSERT INTO `joueurs_inventaire` ( `id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			$req = "INSERT INTO `joueurs_batiments_id` ( `id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			$req = "INSERT INTO `joueurs_créatures` ( `id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			$req = "INSERT INTO `joueurs_créatures_id` ( `id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			//Partie pour la quête RP
			$req = "INSERT INTO `joueurs_quetes` ( `id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db) or die('Erreur SQL !<br>'.$req.'<br>'.mysql_error());
			
			if ($race != "Homme"){
			$sql = "SELECT aptitude FROM races WHERE race = '$race'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$aptitude_race = $data[0];}
			else{$aptitude_race = '';}
			
			$sql = "SELECT aptitude FROM classes WHERE classe = '$classe'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$aptitude_classe = $data[0];
			
			$req = "INSERT INTO `joueurs_aptitudes_base` (`id`, `nom`, `aptitude01`, `aptitude02`, `aptitude03`, `points`)
			VALUES ('$id', '$joueur', '$aptitude_race', '$aptitude_classe', '', '15');";
			mysql_query($req,$db);
			
			$sql = "SELECT * FROM races WHERE race = '$race'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$att_race = $data[2];
			$def_race = $data[3];
			$ini_race = $data[4];
			$cha_race = $data[5];
			$end_race = $data[6];
			$pui_race = $data[7];
			
			$sql = "SELECT * FROM stats_dieux WHERE dieu = '$dieu'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$att_dieu = $data[3];
			$def_dieu = $data[4];
			$ini_dieu = $data[5];
			$cha_dieu = $data[6];
			$end_dieu = $data[7];
			$pui_dieu = $data[8];
			
			$sql = "SELECT * FROM classes WHERE classe = '$classe'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$att_classe = $data[2];
			$def_classe = $data[3];
			$ini_classe = $data[4];
			$cha_classe = $data[5];
			$end_classe = $data[6];
			$pui_classe = $data[7];
			
			$att_total = $att_race + $att_dieu + $att_classe;
			$def_total = $def_race + $def_dieu + $def_classe;
			$ini_total = $ini_race + $ini_dieu + $ini_classe;
			$cha_total = $cha_race + $cha_dieu + $cha_classe;
			$end_total = $end_race + $end_dieu + $end_classe;
			$pui_total = $pui_race + $pui_dieu + $pui_classe;
			
			$req = "INSERT INTO `joueurs_stats` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `end`, `pui`, `cha`, `mana`, `victoire`, `defaite`, `argent`, `indice_militaire`)
				VALUES ('$id', '$joueur', '1', '', '0', '1000', '$att_total', '$def_total', '$ini_total', '$end_total', '$pui_total', '$cha_total', '0', '0', '0', '5000', '$temps');";
			mysql_query($req,$db);
			
			$sql = "SELECT * FROM races WHERE race = '$race'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_array($req);
			$terrain_base = $data['t_favoris'];
			
			$sql = "SELECT * FROM races WHERE race = '$race'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$riverain = $data[9];
			$colline = $data[10];
			$desert = $data[11];
			$foret = $data[12];
			$arctique = $data[13];
			$marais = $data[14];
			$montagne = $data[15];
			$plaine = $data[16];
			$caverne = $data[17];
			
			$req = "INSERT INTO `joueurs_terre` (`id`, `nom`, `$terrain_base`, `total`)
			VALUES ('$id', '$joueur', '200', '200');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_aptitudes` (`id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_connexions` (`id`, `nom`, `connexion_dernière`, `connexion_créature`, `connexion_or`, `connexion_pop`, `connexion_pop2`, `connexion_taxe`)
			VALUES ('$id', '$joueur', '$temps', '$temps', '$temps', '$temps', '$temps', '$temps');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_terre_utile` (`id`, `nom` )
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_magies` (`id`, `nom` )
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_sorts` (`id`, `nom` )
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_modificateurs`	(`id`, `nom`, `riverain`, `colline`, `désert`, `forêt`, `arctique`, `marais`, `montagne`, `plaine`, `caverne`,		`Air`, `Terre`, `Eau`, `Feu`, `Électricité`,	`population2`,	`res_phys`, `res_mag`, `res_feu`, `res_eau`,	`res_terre`, `res_air`,	`res_elec`, `res_elem`, `xp`, `terres`, `or`, `mana_consommation`, `HC_or`, `HC_mines`,	`HC_recrut`, `prison`, `degat_phys`, `degat_mag`, `degat_range`, `res_range`, `degat_vs_range`, `res_vs_range`, `degat_cac`, `res_cac`, `degat_vs_cac`, `res_vs_cac`, `degat_vol`, `res_vol`, `degat_vs_vol`, `res_vs_vol`, `res_vs_mag`, `res_vs_phys`)
			VALUES 					('', '$joueur', '$riverain', '$colline', '$desert', '$foret', '$arctique', '$marais', '$montagne', '$plaine', '$caverne',	'1', '1', '1', '1', '1',			'0',		'1.00',		'1.00', '1.00',	'1.00',		'1.00',		'1.00', '1.00',		'1.00', '1.00', '1.00', '1.00', '1.00',			'1.00', '1.00', '1.00',		'1.00', '1.00',		'1.00',		'1.00',		'1.00',		'1.00',		'1.00',		'1.00',	'1.00',		'1.00',		'1.00',	'1.00',		'1.00',		'1.00',	'1.00', 	'1.00',		'1.00');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_objets` (`id`, `nom`, `1`, `2`)
			VALUES ('$id', '$joueur', '$arme', '$bouclier');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_bonus` (`id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_combat` (`id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_defaites` (`id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
			
			$req = "INSERT INTO `joueurs_batiments` (`id`, `nom`)
			VALUES ('$id', '$joueur');";
			mysql_query($req,$db);
}
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <meta http-equiv="refresh" content="0; url=..">
  <title>Acceuil</title>
    <style>body{scrollbar-base-color: #E8C782</style>
    <script language="javascript" src="fonctions/menu_deroulant.js"></script>
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
style="color: rgb(0, 0, 0); background-image: url(/images/arriereplan.gif);">

</body>
</html>

</tbody></table>
<br><input type="submit" value="Suivant >>">

</td></tr></tbody></table><?
include ("fin.php");