<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$meta_supp = '<script language="javascript">
<!--
function checkterrain (terrain)
{
	document.getElementById(terrain).checked = true;
	document.getElementById(\'lnk\'+terrain).blur();
	document.getElementById(\'nombre\').focus();
}
//-->
</script>
';

include ("debut.php");
include ("menu.php");
entete("Abandon");

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$_SESSION['combat_creature'] = 0;
include("connect.php");

$temps = floor(time()/60);

$confirm = ((isset($_POST['confirm']))&&($_POST['confirm']=='true')) ? true : false;
$cout = 0;


if(isset($_POST['etape']) AND isset($_POST['terrain']) AND isset($_POST['nombre']))
{
	if ($_POST['etape'] == 1)
	{
		echo '
		<table class="localtable630"><tbody>
		<tr>	<td>';
		
		$nombre = $_POST['nombre'];
		$terrain = $_POST['terrain'];
		
		$req = mysql_query("SELECT `".$terrain."`, total FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$terre = $data[0];
		$total_t = $data[1];
		$req = mysql_query("SELECT `".$terrain."` FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$terre_utile = $data[0];
		$req = mysql_query('SELECT niveau, cha, argent FROM joueurs_stats WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$niveau	= $data[0];
		$cha = $data[1];
		$or = $data[2];
		
		$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$jbonus = mysql_fetch_assoc($req);
		
		if ($jbonus['province'] != 'Aucune')	$sql = "SELECT politiques_effets.batiments + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '".$jbonus['politique']."' AND batiment_province.province = '".$jbonus['province']."' AND batiment_province.nom = 'Etude d''architecte'";
		else					$sql = "SELECT politiques_effets.batiments AS prov_batiment FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$mod_batiment = $data[0];
	
		switch ($terrain)
		{
			case 'riverain':$image = "<img src='images/terrain/aquatique.gif' border=0>"; break;
			case 'colline':	$image = "<img src='images/terrain/colline.gif' border=0>"; break;
			case 'désert':	$image = "<img src='images/terrain/desert.gif' border=0>"; break;
			case 'forêt':	$image = "<img src='images/terrain/foret.gif' border=0>"; break;
			case 'arctique':$image = "<img src='images/terrain/arctique.gif' border=0>"; break;
			case 'marais':	$image = "<img src='images/terrain/marais.gif' border=0>"; break;
			case 'montagne':$image = "<img src='images/terrain/montagne.gif' border=0>"; break;
			case 'plaine':	$image = "<img src='images/terrain/plaine.gif' border=0>"; break;
			case 'caverne':	$image = "<img src='images/terrain/caverne.gif' border=0>"; break;
		}
		
		$erreur = 0;
		$msg = '';
		$cout = 0;

		if ($terre_utile > $terre)
		{
			$erreur = 1;
			$msg .= "Vous ne pouvez vous débarrasser de ces acres.<br>";
		}
		if (($terre - $terre_utile) < $nombre)
		{
			$erreur = 1;
			$msg .= "Vous ne possédez pas assez d'acres inutilisés.<br>";
		}
		if ($nombre < 1)
		{
			$erreur = 1;
			$msg .= "Vous ne pouvez pas abandonner moins d'un acre de terre.<br>";
		}
		
		if ($erreur == 0)
		{
			$nouveau = $terre - $nombre;
			$total = $total_t - $nombre;
		}
		
		// traitements et Affichages
		if ($erreur == 1)
		{
			echo '<h2>Abandon de terres</h2><b>Vous ne pouvez abandonner vos terres !</b><br><br>'.$msg.'&nbsp;';
		}
		else
		{	// si aucune erreur
			$terre_total = $total;
			
			// mises à jour
			$sql = "UPDATE `joueurs_terre` SET `$terrain` = '$nouveau', `total` = '$total' WHERE nom ='$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			
			include_once("puissance.php");
			maj_puissance($nom);
			
			// affichage
			$terre = number_format($terre, 0, ",", " ");			
			$terrain = ucfirst($terrain);
			echo '<h2>Abandon de terres</h2>
			Type de terrain : <b>'.$terrain.'</b><br><br>
			'.$image.'<br><br>
			Vous vous débarrassez de '.$nombre.' acres de terre.<br>&nbsp;';
		}
		echo '<br></td></tr></tbody></table>';
		echo cadre_fin();
		echo cadre_spacer();
		echo cadre_debut();
	}
}


// Affichage principal
$req = mysql_query("UPDATE `joueurs_terre`       SET `total` = ( `riverain` + `colline` + `désert` + `forêt` + `arctique` + `marais` + `montagne` + `plaine` + `caverne` )  WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$req = mysql_query("UPDATE `joueurs_terre_utile` SET `total` = ( `riverain` + `colline` + `désert` + `forêt` + `arctique` + `marais` + `montagne` + `plaine` + `caverne` )  WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());

$req = mysql_query("SELECT * FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data2 = mysql_fetch_row($req);
$req = mysql_query("SELECT * FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data4 = mysql_fetch_row($req);

$aquatique2= number_format($data2[2] -$data4[2], 0, ",", " ");
$colline2  = number_format($data2[3] -$data4[3], 0, ",", " ");
$desert2   = number_format($data2[4] -$data4[4], 0, ",", " ");
$foret2    = number_format($data2[5] -$data4[5], 0, ",", " ");
$arctique2 = number_format($data2[6] -$data4[6], 0, ",", " ");
$marais2   = number_format($data2[7] -$data4[7], 0, ",", " ");
$montagne2 = number_format($data2[8] -$data4[8], 0, ",", " ");
$plaine2   = number_format($data2[9] -$data4[9], 0, ",", " ");
$caverne2  = number_format($data2[10]-$data4[10],0, ",", " ");


echo '<form method="post" action="abandonner.php" name="form2">
<table class="localtable630"><tbody>
<tr>	<td colspan="3" class="tdlef"><h2>Choisir un type de terrain...</h2><br></td></tr>
<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'riverain\');"	id="lnkriverain">	<input type="radio" name="terrain" value="riverain"	id="riverain">	<strong>Riverain</strong><br>	<img src="images/terrain/aquatique.gif" border=0><br>	Acres libres : '.$aquatique2.'<br>	Acres totaux : '.number_format($data2[2], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'colline\');"	id="lnkcolline">	<input type="radio" name="terrain" value="colline"	id="colline">	<strong>Colline</strong><br>	<img src="images/terrain/colline.gif" border=0><br>	Acres libres : '.$colline2.'<br>	Acres totaux : '.number_format($data2[3], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'désert\');"	id="lnkdésert">		<input type="radio" name="terrain" value="désert"	id="désert">	<strong>Désert</strong><br>	<img src="images/terrain/desert.gif" border=0><br>	Acres libres : '.$desert2.'<br>		Acres totaux : '.number_format($data2[4], 0, ",", " ").'</a></td></tr>
<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'forêt\');"	id="lnkforêt">		<input type="radio" name="terrain" value="forêt"	id="forêt">	<strong>Forêt</strong><br>	<img src="images/terrain/foret.gif" border=0><br>	Acres libres : '.$foret2.'<br>		Acres totaux : '.number_format($data2[5], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'arctique\');"	id="lnkarctique">	<input type="radio" name="terrain" value="arctique"	id="arctique">	<strong>Arctique</strong><br>	<img src="images/terrain/arctique.gif" border=0><br>	Acres libres : '.$arctique2.'<br>	Acres totaux : '.number_format($data2[6], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'marais\');"	id="lnkmarais">		<input type="radio" name="terrain" value="marais"	id="marais">	<strong>Marais</strong><br>	<img src="images/terrain/marais.gif" border=0><br>	Acres libres : '.$marais2.'<br>		Acres totaux : '.number_format($data2[7], 0, ",", " ").'</a></td></tr>
<tr>	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'montagne\');"	id="lnkmontagne">	<input type="radio" name="terrain" value="montagne"	id="montagne">	<strong>Montagne</strong><br>	<img src="images/terrain/montagne.gif" border=0><br>	Acres libres : '.$montagne2.'<br>	Acres totaux : '.number_format($data2[8], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'plaine\');"	id="lnkplaine">		<input type="radio" name="terrain" value="plaine"	id="plaine">	<strong>Plaine</strong><br>	<img src="images/terrain/plaine.gif" border=0><br>	Acres libres : '.$plaine2.'<br>		Acres totaux : '.number_format($data2[9], 0, ",", " ").'</a></td>
	<td class="creatbatiliste"><a class="discret" href="javascript:checkterrain(\'caverne\');"	id="lnkcaverne">	<input type="radio" name="terrain" value="caverne"	id="caverne">	<strong>Caverne</strong><br>	<img src="images/terrain/caverne.gif" border=0><br>	Acres libres : '.$caverne2.'<br>	Acres totaux : '.number_format($data2[10], 0, ",", " ").'</a></td></tr>
</tbody></table>
<br>

Je désire abandonner <input type="number" name="nombre" size="5" id="nombre"> acres de terre.

<br><br><input type="hidden" name="etape" value="1">
<input type="submit" value="Abandonner >>"><br><br>
</form>
';


mysql_close();
$ifpubgoogle = false;
include ("fin.php");
?>