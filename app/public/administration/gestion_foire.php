<?php

echo '<form method="post" action="gestion_foire.php?srv='.$_GET['srv'].'">';

switch($_GET['srv']){
	case '1' : include("connect_p.php"); break;
	case '2' : include("connect_b.php"); break;
	case '3' : include("connect_a.php"); break;
	case '4' : include("connect_4.php"); break;
}

if (isset($_POST['delete'])){
	
	$delete = $_POST['id'];
	
	for ($i=0; $i<count($delete); $i++){
		echo $delete[$i].' effacé<br>';
		$sql = 'DELETE FROM `foire_vente` WHERE `id` = "'.$delete[$i].'"';
		mysql_query($sql, $db);
	}
}

$time = floor(time()/60);

$jour["Monday"] = "Lundi";
$jour["Tuesday"] = "Mardi";
$jour["Wednesday"] = "Mercredi";
$jour["Thursday"] = "Jeudi";
$jour["Friday"] = "Vendredi";
$jour["Saturday"] = "Samedi";
$jour["Sunday"] = "Dimanche";

function getJour($day) {
return $jour[$day];
}

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

function getMois($month){
return $mois[$month];
}

$jour = gmdate('d');
$month = gmdate('F');
$mois = $mois[$month];
$heure = gmdate("H:i");
$minute = gmdate("i");
$day = gmdate('l');
$ampm = gmdate('a');

$date = "$heure $ampm<br>$jour $mois";


/*	C'est pô bien que ça termine les transactions selon la méthode d'avant la dernière raz, ça fait des beugues :(
	Je laisse en commentaire pour au cas où, mais ce n'est PAS la bonne méthode pour terminer les transactions !!!
$sql3 = "SELECT * FROM foire_vente WHERE temps < '$time' ORDER BY temps";
$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
$nombre = mysql_num_rows($req3);

for($i=0; $i < $nombre; $i++){
    $data = mysql_fetch_row($req3);
    $id = $data[0];
    $vendeur = $data[1];
    $item = $data[2];
    $qtee = $data[3];
    $offre = $data[4];
    $temps = $data[5];
    $acheteur = $data[7];
    $type = $data[8];

    $taxe = 0;
    if ($offre > 1000){
        $taxe = 5;
        $x = 1000;
        while ($x <= $offre){
            $taxe = $taxe + 5;
            $x = $x * 2;
        }
        if($taxe > 60){$taxe = 60;}
    }
    $taxe = round(($offre/100) * $taxe);
    
    // Aptitude : COMMERCE
    $sql = "SELECT * FROM joueurs_aptitudes WHERE nom = '$vendeur'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $data = mysql_fetch_array($req);
    $commerce = $data['21'];
    $taxe = $taxe - round(($taxe/100) * $commerce);
    
    $offre = $offre - $taxe;
    $final = $offre + $taxe;

    if ($type == "ressource"){
        if ($acheteur == ""){
            $sql = "SELECT $item FROM joueurs_stats WHERE nom = '$vendeur'";
            $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
            $data = mysql_fetch_array($req);
            $qtee = $data[0] + $qtee;
            $sql = "UPDATE `joueurs_stats` SET `$item` = '$qtee' WHERE nom ='$vendeur'";
            $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
            $delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
            mysql_query($delete,$db);
            $texte = "Vos ressources ($item) n`ayant pas trouvées preneur, vous en reprenez possession.";
            $req = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$vendeur', '$time', 'Foire', '$date', '$texte', '$texte');";
            mysql_query($req,$db);
        }
        else{
        $sql = "SELECT argent FROM joueurs_stats WHERE nom = '$vendeur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_array($req);
        $argent = $data[0] + $offre;

        $sql = "SELECT $item FROM joueurs_stats WHERE nom = '$acheteur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_array($req);
        $qtee = $data[0] + $qtee;

        $sql = "UPDATE `joueurs_stats` SET `argent` = '$argent' WHERE nom ='$vendeur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $sql = "UPDATE `joueurs_stats` SET `$item` = '$qtee' WHERE nom ='$acheteur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
        mysql_query($delete,$db);
        $texte = "Vos ressources ($item) ont trouvées preneur au prix de $final pièces d`or (Taxe : $taxe)";
        $req = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$vendeur', '$time', 'Foire', '$date', '$texte', '$texte');";
        mysql_query($req,$db);
    }}
    if ($type == "objet"){

        $sql = "SELECT id, nom FROM objets_stats WHERE nom = '$item'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_row($req);
        $id_objet = $data[0];
        $nom_objet = $data[1];

        $sql = "SELECT * FROM joueurs_objets WHERE nom = '$acheteur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_array($req);
        
        if ($acheteur == ""){
        $sql = "SELECT * FROM joueurs_objets WHERE nom = '$vendeur'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_array($req);
        for ($k=1; $k < 17; $k++){
            $slot = $data[$k];
            if ($slot == 0){
                $sql = "UPDATE `joueurs_objets` SET `$k` = '$id_objet' WHERE nom ='$vendeur'";
                $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
                $delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
                mysql_query($delete,$db);
                $texte = "L`enchère s`étant terminée sans offre, vous reprenez possession de votre $nom_objet.";
                $req = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$vendeur', '$time', 'Foire', '$date', '$texte', '$texte');";
                mysql_query($req,$db);
                break;
            }
        }}
        else{
        for ($k=1; $k < 17; $k++){
            $slot = $data[$k];
            if ($slot == 0){
                $sql = "SELECT argent FROM joueurs_stats WHERE nom = '$vendeur'";
                $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
                $data = mysql_fetch_row($req);
                $argent = $data[0] + $offre;
                $sql = "UPDATE `joueurs_stats` SET `argent` = '$argent' WHERE nom ='$vendeur'";
                $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
                $sql = "UPDATE `joueurs_objets` SET `$k` = '$id_objet' WHERE nom ='$acheteur'";
                $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
                $delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
                mysql_query($delete,$db);
                $texte = "Votre $nom_objet part au prix de $final pièces d`or (Taxe : $taxe)";
                $req = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$vendeur', '$vendeur', '$time', 'Foire', '$date', '$texte', '$texte');";
                mysql_query($req,$db);
                break;
            }
        }
        }
    }
    
    $delete = "DELETE FROM `foire_vente` WHERE `id` = '$id'";
	mysql_query($delete,$db);
}
*/

mysql_close();


$temps = floor(time()/60);

?>

<center><table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>


    <?php
    $time = floor(time()/60);
    
    switch($_GET['srv']){
		case '1' : include("connect_p.php"); break;
		case '2' : include("connect_b.php"); break;
		case '3' : include("connect_a.php"); break;
		case '4' : include("connect_4.php"); break;
	}

    $sql = "SELECT * FROM foire_vente WHERE temps > '$time' ORDER BY offre DESC";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $nombre = mysql_num_rows($req);
  
    ?>
   
    <br><br></div>
    <div align="center"><table border="0" cellspacing="2" cellpadding="0" style="width: 100%; vertical-align: center;"><tbody><tr>
    <td style="width: 1px;"></td>
    <td style="width: 30px;"></td><td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Item</big></td>
    <td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Quantité</big></td>
    <td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Prix</big></td>
    <td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Offrant</big></td>
    <td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Vendeur</big></td>
    <td style="text-align: center; background-color: #002450;"><big><span style="color: #DCBC6C;">Temps</big></td>
    </tr><tr><td></td><td colspan="6" style="text-align: center; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr><?php

    for($i=0; $i < $nombre; $i++) {
        $data = mysql_fetch_row($req);
        $id = $data[0];
        $vendeur = $data[1];
        $item = ucfirst($data[2]);
        $qtee = number_format($data[3], 0, ",", " ");
        $offre = $data[4];
        $temps = $data[5] - $time;
        $image = $data[6];
        $acheteur = $data[7];

        if ($temps > 1279){ $a = "24h"; }
        if ($temps < 1280){ $a = "23h"; }
        if ($temps < 1320){ $a = "22h"; }
        if ($temps < 1260){ $a = "21h"; }
        if ($temps < 1200){ $a = "20h"; }
        if ($temps < 1140){ $a = "19h"; }
        if ($temps < 1080){ $a = "18h"; }
        if ($temps < 1020){ $a = "17h"; }
        if ($temps < 960){ $a = "16h"; }
        if ($temps < 900){ $a = "15h"; }
        if ($temps < 840){ $a = "14h"; }
        if ($temps < 780){ $a = "13h"; }
        if ($temps < 720){ $a = "12h"; }
        if ($temps < 660){ $a = "11h"; }
        if ($temps < 600){ $a = "10h"; }
        if ($temps < 540){ $a = "9h"; }
        if ($temps < 480){ $a = "8h"; }
        if ($temps < 420){ $a = "7h"; }
        if ($temps < 360){ $a = "6h"; }
        if ($temps < 300){ $a = "5h"; }
        if ($temps < 240){ $a = "4h"; }
        if ($temps < 180){ $a = "3h"; }
        if ($temps < 120){ $a = "2h"; }
        if ($temps < 61){ $a = "1h"; }
        if ($temps < 56){ $a = "55 min"; }
        if ($temps < 51){ $a = "50 min"; }
        if ($temps < 46){ $a = "45 min"; }
        if ($temps < 41){ $a = "40 min"; }
        if ($temps < 36){ $a = "35 min"; }
        if ($temps < 31){ $a = "1/2h"; }
        if ($temps < 30){ $a = "29 min"; }
        if ($temps < 29){ $a = "28 min"; }
        if ($temps < 28){ $a = "27 min"; }
        if ($temps < 27){ $a = "26 min"; }
        if ($temps < 26){ $a = "25 min"; }
        if ($temps < 25){ $a = "24 min"; }
        if ($temps < 24){ $a = "23 min"; }
        if ($temps < 23){ $a = "22 min"; }
        if ($temps < 22){ $a = "21 min"; }
        if ($temps < 21){ $a = "20 min"; }
        if ($temps < 20){ $a = "19 min"; }
        if ($temps < 19){ $a = "18 min"; }
        if ($temps < 18){ $a = "17 min"; }
        if ($temps < 17){ $a = "16 min"; }
        if ($temps < 16){ $a = "15 min"; }
        if ($temps < 15){ $a = "14 min"; }
        if ($temps < 14){ $a = "13 min"; }
        if ($temps < 13){ $a = "12 min"; }
        if ($temps < 12){ $a = "11 min"; }
        if ($temps < 11){ $a = "10 min"; }
        if ($temps < 10){ $a = "9 min"; }
        if ($temps < 9){ $a = "8 min"; }
        if ($temps < 8){ $a = "7 min"; }
        if ($temps < 7){ $a = "6 min"; }
        if ($temps < 6){ $a = "5 min"; }
        if ($temps < 5){ $a = "4 min"; }
        if ($temps < 4){ $a = "3 min"; }
        if ($temps < 3){ $a = "2 min"; }
        if ($temps < 2){ $a = time()-($data[5]*60); $a = (60-$a)-60; $a = "$a sec";}

        $offre = number_format($offre, 0, ",", ",");
        ?>
        <tr onMouseover="this.bgColor='#D2A945'" onMouseout="this.bgColor=''">
        <?php
        echo '<td><input type="checkbox" name="id[]" value="'.$id.'"></td>';
        ?>
        <td style="width: 1px;"><a href="/info_foire.php?item=<?phpecho $id; ?>" onclick="NewWindow(this.href,'name','300','400','yes');return false"><img src="<?phpecho $image;?>" alt="<?phpecho $item;?>" width="30px" height="30px"></a></td><?php
        echo "<td><div align='left'>";

        if ($item != "Soufre" AND $item != "Mercure" AND $item != "Cristal" AND $item != "Gemme"){
            ?><a href="/info_objets2.php?objet=<?phpecho $item; ?>" onclick="NewWindow(this.href,'name','300','310','yes');return false"><?php
            echo "<b>$item</b></a></td>";
        }
        else{echo "<b>$item</b></td>";}
        echo "<td style='text-align: center;'><b>$qtee</b></td>
        <td style='text-align: center;'><b>$offre</b></td>
        <td style='text-align: center;'><b>$acheteur</b></td>
        <td style='text-align: center;'><b>$vendeur</b></td>
        <td style='text-align: center;'><b>$a</b></td>";?>
        </tr><tr><td></td><td colspan="6" style="text-align: center; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr><?php

    }

echo "</tbody></table>";

echo '<br><center><input type="submit" name="delete" value="Effacer >>">';

echo '<br><br><a href="administration.php">Retour à l\'administration</a></div>';

mysql_close();
