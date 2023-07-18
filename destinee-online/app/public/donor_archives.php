<?php
session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      header("Location: http://www.destinee-online.com");
      exit;
  }
}
if($_SESSION['serveur'] != 3) header("Location: http://www.destinee-online.com");
include "connect.php";
include ("debut.php");
include ("menu.php");
entete("DonOr");
?>		
		<table class="localtable630">
		<tbody>
			<tr>
				<td><h2> Archives de l'Intendance </h2>&nbsp;</td>
				<td style="text-align: right; vertical-align: top;"><a href="./donor_archives.php">Archives</a> - <a href="./donor.php">Effectuer</a></td>
			</tr>
<?php
include "./connect.php";

$req = mysql_query("SELECT offrant, beneficiaire, somme, date FROM dons_or WHERE (offrant = '".$_SESSION['nom']."' OR beneficiaire = '".$_SESSION['nom']."') AND valide = 1 ORDER BY id DESC")or die(mysql_error());
while($dat = mysql_fetch_row($req))
{
	?><tr class="rollovercolor">
		<td style="vertical-align: center; width: 15%; text-align: center;"><?php echo $dat[3]; ?></td>
		<td class="tdlef"><?php if($dat[0] == $_SESSION['nom']) echo 'Vous offrez '.$dat[2].' pièces d\'or à '.$dat[1].'.';
								elseif($dat[1] == $_SESSION['nom']) echo 'Vous recevez '.$dat[2].' pièces d\'or de '.$dat[0];'.'; ?></td>
	</tr>
	<tr><td colspan="2" class="hline"></td></tr>
	<?php
}
echo '	</tbody></table>';
include "fin.php";
mysql_close();
?>