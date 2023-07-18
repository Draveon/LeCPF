<?php
session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      header("Location: http://www.destinee-online.com");
      exit;
  }
}
if($_SESSION['serveur'] != 3) header("Location: http://www.destinee-online.com");

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

include ("debut.php");
include ("menu.php");
entete("DonOr");
include "./connect.php";


if(!isset($_POST['destinataire']))
{
	$_POST['somme'] = (int) $_POST['somme'];
	if(isset($_GET['c']))
	{ ?>
		<form method="post">
		<table class="localtable630">
		<tbody>
			<tr>
				<td><h2> Faire un don d'Or </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
			<tr>
				<td><textarea cols="36" rows="12" onFocus="if (this.value=='Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') { this.value = '' }">Missive à vos intendant leur expliquant la raison de votre transfert de fonds.</textarea></td>

				<td rowspan="2" style="vertical-align:bottom;text-align:center;">
					<p>Bénéficiaire de votre don :</p>
					<select name="destinataire" size="10"><?php
					$req = mysql_query("SELECT nom FROM joueurs_heros ORDER BY nom");
					while($dat = mysql_fetch_row($req))
					{
						if($_GET['c'] != $dat[0]) echo '<option value="'.$dat[0].'">'.$dat[0].'</option>';
						else echo '<option value="'.$dat[0].'" selected >'.$dat[0].'</option>';
					} ?></select><br />
				<p>Somme à transférer :</p>
				<input type="text" name="somme"></td>
			</tr>
		</tbody>
		</table>
		<br /><br />
		<input type="submit" value="Envoyer >>" />
		</form>
		<?php
	}
	else
	{ ?>
		<form method="post">
		<table class="localtable630">
		<tbody>
			<tr>
				<td><h2> Faire un don d'Or </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
			<tr>
				<td><textarea cols="36" rows="12" name="raison" onFocus="if (this.value=='Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') { this.value = '' }">Missive à vos intendant leur expliquant la raison de votre transfert de fonds.</textarea></td>

				<td rowspan="2" style="vertical-align:bottom;text-align:center;">
					<p>Bénéficiaire de votre don :</p>
					<select name="destinataire" size="10"><?php
					$req = mysql_query("SELECT nom FROM joueurs_heros ORDER BY nom");
					while($dat = mysql_fetch_row($req))
						echo '<option value="'.$dat[0].'">'.$dat[0].'</option>';
					?></select><br />
					<p>Somme à transférer :</p>
					<input type="text" name="somme" value="0" /></td>
			</tr>
		</tbody>
		</table>
		<br /><br />
		<input type="submit" value="Envoyer >>" />
		</form>
		<?php
	}
}
else
{
	$req_ar = mysql_query("SELECT argent FROM joueurs_stats WHERE nom = '".$_SESSION['nom']."'") or die(mysql_error());
	$dat_ar = mysql_fetch_row($req_ar);
	
	if(empty($_POST['destinataire']) || empty($_POST['somme']) || empty($_POST['raison']))
	{
		?>
		<form method="post">
		<table class="localtable630">
		<center><span style="color:red;">Veillez à remplir tous les champs.</span></center>
		<tbody>
			<tr>
				<td><h2> Faire un don d'Or </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
			<tr>
				<td><textarea cols="36" rows="12" name="raison" onFocus="if (this.value=='Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') { this.value = '' }"><?php if($_POST['raison'] != 'Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') echo $_POST['raison']; else echo 'Missive à vos intendant leur expliquant la raison de votre transfert de fonds.'; ?></textarea></td>
				
				<td rowspan="2" style="vertical-align:bottom;text-align:center;">
					<p>Bénéficiaire de votre don :</p>
					<select name="destinataire" size="10"><?php
					$req = mysql_query("SELECT nom FROM joueurs_heros ORDER BY nom");
					while($dat = mysql_fetch_row($req))
					{
						if($_POST['destinataire'] == $dat[0]) echo '<option value="'.$dat[0].'" selected>'.$dat[0].'</option>';
						else echo '<option value="'.$dat[0].'">'.$dat[0].'</option>';
					}
					?></select><br />
					<p>Somme à transférer : </p>
					<input type="text" name="somme" value="<?php echo $_POST['somme']; ?>" /></td>
			</tr>
		</tbody>
		</table>
		<br /><br />
		<input type="submit" value="Envoyer >>" />
		</form>
		<?php
	}
	else
	{
		if($dat_ar[0] < $_POST['somme'] || $_POST['somme'] < 1)
		{
			?>
		<form method="post">
		<table class="localtable630">
		<center><span style="color:red;">Vous ne pouvez offrire plus d'argent que vous n'en possédez.</span></center>
		<tbody>
			<tr>
				<td><h2> Faire un don d'Or </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
			<tr>
				<td><textarea cols="36" rows="12" name="raison" onFocus="if (this.value=='Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') { this.value = '' }"><?php if($_POST['raison'] != 'Missive à vos intendant leur expliquant la raison de votre transfert de fonds.') echo $_POST['raison']; else echo 'Missive à vos intendant leur expliquant la raison de votre transfert de fonds.'; ?></textarea></td>
				
				<td rowspan="2" style="vertical-align:bottom;text-align:center;">
					<p>Bénéficiaire de votre don :</p>
					<select name="destinataire" size="10"><?php
					$req = mysql_query("SELECT nom FROM joueurs_heros ORDER BY nom");
					while($dat = mysql_fetch_row($req))
					{
						if($_POST['destinataire'] == $dat[0]) echo '<option value="'.$dat[0].'" selected>'.$dat[0].'</option>';
						else echo '<option value="'.$dat[0].'">'.$dat[0].'</option>';
					}
					?></select><br />
					<p>Somme à transférer : </p>
					<input type="text" name="somme" value="0" /></td>
			</tr>
		</tbody>
		</table>
		<br /><br />
		<input type="submit" value="Envoyer >>" />
		</form>
		<?php
		}
		else
		{
			mysql_query("INSERT INTO dons_or (id, offrant, beneficiaire, somme, raison, date, valide, refuse) VALUES ('', '".str_replace('\'', '`', $_SESSION['nom'])."', '".htmlentities(str_replace('\'', '`', $_POST['destinataire']))."', '".$_POST['somme']."', '".nl2br(addslashes($_POST['raison']))."', '".Date('d')." ".getFrenchMonth(Date('F'))."', 0, 0)") or die(mysql_error());
			mysql_query("UPDATE joueurs_stats SET argent = argent - ".$_POST['somme']." WHERE nom = '".$_SESSION['nom']."'");
		?>
		<form method="post">
		<table class="localtable630">
		<tbody>
			<tr>
				<td><h2> Faire un don d'Or </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
			<tr>
				<td colspan="2"><center>Votre demande de don a bien été envoyée à vos Indendants<br />Ils vous indiqueront s'il vous est ou non possible de le réaliser.</center></td>
			</tr>
		</tbody>
		</table>
		</form>
		<?php
		}
	}
}

mysql_close();
include ("fin.php");
?>