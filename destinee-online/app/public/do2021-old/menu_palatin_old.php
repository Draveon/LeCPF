<? session_start();


function valeurtaxes($pourcentage)
{
	if ($pourcentage<=1)	return 'aucune';
	if ($pourcentage<=15)	return 'faibles';
	if ($pourcentage<=30)	return 'moyennes';
				return 'élevées';
}


// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$temps = floor(time()/60);

include ("debut.php");
include ("menu.php");
entete("Palatinat");

include("connect.php");
include("temps_ecoulement.php");

$royaume = $_SESSION['royaume'];
$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];

$sql = "SELECT province FROM joueurs_bonus WHERE nom = '".$nom."'";
$result = mysql_query($sql) or die("Erreur avec la base de donnée<br>Réessayer plus tard");

$data = mysql_fetch_row($result);
$province = $data[0];


echo '<table class="localtable630"><tr><td><h2>Palatinat</h2></td></tr></table>';

// ATTENTION, yavait des tests sur cette variable sans l'avoir initialisée ?!?
$fin = 0;

if ($province != "Aucune")
{

	// contrôle d'un nombre de joueurs sufffisant dans la province, défini comme 1/3 du total des joueurs ayant rejoint une province divisé par le nombre de provinces
	$sql3 = "SELECT COUNT(id) AS nbr FROM joueurs_bonus WHERE Province != 'Aucune'";
	$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.mysql_error());
	$nbr = mysql_fetch_row($req3);
	$nbrlimit = $nbr[0]/13/3;
	$sql3 = "SELECT COUNT(id) AS nbr FROM joueurs_bonus WHERE Province = '$province'";
	$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.mysql_error());
	$nbr = mysql_fetch_row($req3);
	$nbr = $nbr[0];
	$assezdemembres = ($nbr >= $nbrlimit) ? true : false;
	echo '<!-- nbr limite: '.round($nbrlimit,2).'-->';
	
//	$assezdemembres = true;
	
	$sql = "SELECT Palatin FROM provinces_politiques WHERE Province = '$province'";
	$result = mysql_query($sql) or die(mysql_error());
	$data = mysql_fetch_row($result);
	$palatin = $data[0];
	
	if (isset($_POST['modif']) || $fin !=0)
	{
			
		if($_POST['modif'] == 1)
		{
			$sql = "SELECT argent FROM provinces_politiques WHERE province='".$province."'";
			$result = mysql_query($sql);
			$data = mysql_fetch_row($result);
			$argent = $data[0];			
			$verif = 0;

			for($b=0; $b<5;$b++)
			{
				$argent = $argent - $_POST[$b];
				if($_POST[$b] < 0)
				{
					$b = 5;
					echo "Vous ne pouvez pas entrer une valeur négative.<br>";
					$argent = -1; 
				}
			}
			
			if($argent >= 0)
				$verif = 1;
			else
				$verif = 0;			
			
			if($verif == 0)
				echo "Désolé vous ne pouvez pas investir tout cet argent.<br>";
			else
			{
				for($a=0; $a<5;$a++)
				{
					switch($a)
					{
						case 0:	$batiment = "Etude d\'Architecte";	break;
						case 1:	$batiment = "Maître cartographe";	break;
						case 2:	$batiment = "Bureau des percepteurs";	break;
						case 3:	$batiment = "Académie de magie";	break;
						case 4:	$batiment = "Casernes fortifiées";	break; 
					}
				
					$sql = "SELECT * FROM batiment_province WHERE province='$province' AND nom='$batiment'";
					$result = mysql_query($sql);
					$data = mysql_fetch_row($result);
					$niveau = $data[3];
					$or_investi = $data[5];
					
					$or = $or_investi + $_POST[$a];
					
					$sql2 = "SELECT nom FROM joueurs_bonus WHERE province='$province'";
					$result2 = mysql_query($sql2);			
					
					$niveau_total = 0;
					for($j=0;$j<mysql_num_rows($result2);$j++)
					{
						$data2 = mysql_fetch_row($result2);
						$nom_heros = $data2[0];
						
						$sql3 = "SELECT niveau FROM joueurs_stats WHERE nom='$nom_heros'";
						$result3 = mysql_query($sql3);
						$data3 = mysql_fetch_row($result3);
					
						$niveau_joueur = $data3[0];
					
						$niveau_total = $niveau_total + $niveau_joueur;
					}
				
					
					if($niveau == 0)
					{
						$niveau_bat = 1;
					}
					else
					{
						$niveau_bat = $niveau + 1;
					}
					$or_necess = $niveau_total * $niveau_bat * 40000;
					$or_necess = round($or_necess);
					
		
					
					if (($or_necess > $or)||(!$assezdemembres))
					{
						$sql="UPDATE batiment_province SET Or_investi ='$or' WHERE province='$province' AND nom='$batiment'";
						mysql_query($sql) or die(mysql_error());
						
						$sql="UPDATE provinces_politiques SET argent ='$argent' WHERE province='$province'";
						mysql_query($sql) or die(mysql_error());
						
					}
					else
					{
						$niveau++;
						if($niveau == 0)
						{
							$niveau_bat = 1;
						}
						else
						{
							$niveau_bat = $niveau + 1;
						}
						$or_necess = $niveau_total * $niveau_bat * 40000;
						$or_necess = round($or_necess);
						if($or_necess < $or)
						{
							do
							{
								$niveau++;
								if($niveau == 0)
								{
									$niveau_bat = 1;
								}
								else
								{
									$niveau_bat = $niveau + 1;
								}
								$or_necess = $niveau_total * $niveau_bat * 40000;
								$or_necess = round($or_necess);					
							}while($or_necess < $or);
						
						}
						
						
						$sql="UPDATE batiment_province SET niveau='$niveau', Or_investi ='$or' WHERE province='$province' AND nom='$batiment'";
						mysql_query($sql) or die(mysql_error());
						
						$sql="UPDATE provinces_politiques SET argent ='$argent' WHERE province='$province'";
						mysql_query($sql) or die(mysql_error());
						
					}
				}
			}
		
		}
		/*
		if($_POST['modif'] == 2)
		{	
			$politique = $_POST['politique_province'];
			
			if($politique == "Anarchie" || $politique == "Despotisme" || $politique == "Gérontocratie" || $politique == "Magocracie" || $politique == "Monarchie" || $politique == "Oligarchie" || $politique == "Régime Tribal" || $politique == "République" || $politique == "Théocratie")
			{
				$sql = "UPDATE provinces_politiques SET politique1='$politique' WHERE province='".$province."'";
				$result = mysql_query($sql);
			}
			else
			{
				echo"Le régime politique choisi n'existe pas.";
			}
			
				
		}*/
		
		if($_POST['modif'] == 3)
		{	
			$taxe_min = 0;
			$taxe_max = 51;
			$taxe = $_POST['taxe'];
			if($taxe >= $taxe_min && $taxe <= $taxe_max)
			{
				$sql = "UPDATE provinces_politiques SET taxes = '$taxe' WHERE province = '".$province."'";
				$result = mysql_query($sql);
			}
			else
			{
				echo "La taxe doit être comprise entre $taxe_min et $taxe_max %.<br>";
			}	
		}
		$fin = 0;	
	}
	
	// affichage (ou non) du menu du palatin
	if ($palatin != $nom)
	{
		if ($palatin =='')	echo 'Aucun candidat ne s\'est présenté pour la charge de palatin dans votre province ('.$province.')<br>&nbsp;';
		else			echo $palatin.' est le palatin actuel de '.$province.', votre province.<br>&nbsp;';
	}
	else
	{
		
		include ("maj_or_mana.php");
		
		$sql2 = "SELECT nom FROM joueurs_bonus WHERE province='$province'";
		$result2 = mysql_query($sql2) or die(mysql_error());
		while ($data2 = mysql_fetch_row($result2))
		{
			$nom_taxe = $data2[0];
			
			maj_or_mana ($nom_taxe);
		}
		
		$sql="SELECT taxes, argent FROM provinces_politiques WHERE Province='".$province."'";
		$result = mysql_query($sql);
		$data = mysql_fetch_row($result);
	
		$taxe = $data[0];
		$argent = $data[1];
		
		$sql = "SELECT * FROM batiment_province WHERE province='".$province."'";
		$result = mysql_query($sql);
		
		echo'
		<form action="menu_palatin.php" method="POST">
		<center>La province posséde '.$argent.' pièces d\'or.<br><br>
		<table style="width: 630px;">
		<tr align="right"><td style="background-color: #002450;color: #DCBC6C;"><b>Batîment</b></td><td style="background-color: #002450;color: #DCBC6C;"><b>Or Nécessaire</b></td><td style="background-color: #002450;color: #DCBC6C;"><b>Or Investi</b></td><td style="background-color: #002450;color: #DCBC6C;"><b>Niveau Actuel</b></td><td style="background-color: #002450;color: #DCBC6C;"><b>% par Niveau</b></td><td style="background-color: #002450;color: #DCBC6C;"><b>Budget Alloué</b></td></tr>
		';
		
		if (!$assezdemembres)
			echo "<tr><td colspan='6'>Il n'y a pas assez de seigneurs dans la province pour que des investissements conséquents soit menés.<br>Le nombre de seigneurs requis varie selon le nombre de joueurs, et est actuellement de ".ceil($nbrlimit).".</td></tr>";

		
		for($i=0; $i<5;$i++)
		{
			$data = mysql_fetch_row($result);
			
			$batiment = $data[1];
			$niveau = $data[3];
			$gain_pourcentage = $data[4];
			$or_investi = $data[5];
			
			$sql2 = "SELECT nom FROM joueurs_bonus WHERE province='$province'";
			$result2 = mysql_query($sql2);			
				
			$niveau_total = 0;
			
			for ($j=0;$j<mysql_num_rows($result2);$j++)
			{
				$data2 = mysql_fetch_row($result2);
				$nom_heros = $data2[0];
				
				$sql3 = "SELECT niveau FROM joueurs_stats WHERE nom='$nom_heros'";
				$result3 = mysql_query($sql3);
				$data3 = mysql_fetch_row($result3);
				
				$niveau_joueur = $data3[0];
				
				$niveau_total = $niveau_total + $niveau_joueur;
			}
			
			if($niveau == 0)
				$niveau_bat = 1;
			else
				$niveau_bat = $niveau + 1;
			
			$or_necess = $niveau_total * $niveau_bat * 40000;
			$or_necess = round($or_necess);
			$up = 0;
			if ($assezdemembres)
			{
				if($or_necess < $or_investi)
				{
					$up = 1;
					do
					{
						$niveau ++;
						if($niveau == 0)
						{
							$niveau_bat = 1;
						}
						else
						{
							$niveau_bat = $niveau + 1;
						}
						$or_necess = $niveau_total * $niveau_bat * 40000;
						$or_necess = round($or_necess);
					}
					while ($or_necess < $or_investi);
				}
				if($up == 1)
				{
					$batiment = addslashes($batiment);
				 	$sql="UPDATE batiment_province SET niveau='$niveau', Or_investi ='$or_investi' WHERE province='$province' AND nom='$batiment'";
					mysql_query($sql) or die("probléme ici??");
				}
			}
			if ($i != 0)
				echo"<tr align='right'><td>$batiment</td><td>$or_necess</td><td>$or_investi</td><td>$niveau</td><td>$gain_pourcentage</td><td><input name='$i' value='0'></td></tr>";
		}
		
		echo"</table>
		<br><br><input type='submit' value='Modifier le budget'><input type='hidden' name='modif' value='1'></center><br>
		</form>";
		/*echo"<br><br>";
		echo'<form action="menu_palatin.php" method="POST">';
		echo"<center>Changer le type de province:";
		
		echo'<select name="politique_province">
	     	<option value="Choisissez une politique..." selected> Choisissez une politique...</option>
	     	<option value="Anarchie"> Anarchie</option>
	     	<option value="Despotisme"> Despotisme</option>
	     	<option value="Gérontocratie"> Gérontocratie</option>
	     	<option value="Magocracie"> Magocracie</option>
	     	<option value="Monarchie"> Monarchie</option>
	     	<option value="Oligarchie"> Oligarchie</option>
	     	<option value="Régime Tribal"> Régime Tribal</option>
	     	<option value="République"> République</option>
	     	<option value="Théocratie"> Théocratie</option>
	     </select>';
		
		echo"<br><br><input type='submit' value='Modifier le type de province'><input type='hidden' name='modif' value='2'></center><br>
		</form>";*/
		
		echo"<br><br>";
		echo'<form action="menu_palatin.php" method="POST">';
		echo"<center>Changer la taxe:";
		
		echo"<input type='text' name='taxe' value='$taxe'>%";
		
		echo"<br><br><input type='submit' value='Modifier la taxe'><input type='hidden' name='modif' value='3'></center><br>
			</form>";
		
	}
}
else
{
	echo 'Vous n\'appartenez à aucune province';
}



// ceci s'exécute pour tout le monde

$sql = "SELECT * FROM provinces_politiques";
$result = mysql_query($sql) or die("Erreur avec la base");
echo '<center>
<table class="localtable630">
<tr>	<td style="text-align: center; width: 1%;">&nbsp;</td>
	<td class="cl_entete">Palatin</td>
	<td class="cl_entete" style=" width:15%;">Province</td>
	<td class="cl_entete" style=" width:15%;">Taxes</td>	</tr>'; 
for($i=0;$i<mysql_num_rows($result);$i++)
{
	$data = mysql_fetch_row($result);
	$palatin = $data[5];
	$province = $data[1];
	$taxes = $data[7];
	$palat_lien = $palatin;
	if($palatin == "")
	{
		$palatin = "Aucun palatin en fonction";
		switch ($province)
		{
			case "Scitopole"	: $da3[0] = "/images/historique/Midon.gif"; break;
			case "Zakinthe"		: $da3[0] = "/images/historique/Megiddo.gif"; break;
			case "Mésolongion"	: $da3[0] = "/images/historique/Thebets.gif"; break;
			case "Prévèze"		: $da3[0] = "/images/historique/Jazher.gif"; break;
			case "Amphise"		: $da3[0] = "/images/historique/Dothan.gif"; break;
			case "Naxos"		: $da3[0] = "/images/historique/Ataroth.gif"; break;
			case "Vénopole"		: $da3[0] = "/images/historique/Edrehi.gif"; break;
			case "Etimnon"		: $da3[0] = "/images/historique/Jesimoth.gif"; break;
			case "Argostole"	: $da3[0] = "/images/historique/Rehoboth.gif"; break;
			case "Igoumen"		: $da3[0] = "/images/historique/Askalith.gif"; break;
			case "Thassopole"	: $da3[0] = "/images/historique/Bethul.gif'"; break;
			case "Édhesse"		: $da3[0] = "/images/historique/Beth-Aran.gif"; break;
			case "Outre-Mer"	: $da3[0] = "/images/historique/Taleonor.gif"; break;
		}
		$da3[0] = '<img src="'.$da3[0].'" width="20" height="20" alt="'.$nom.'" ALIGN=middle border=1>';
	}
	else
	{
		$sql2 = "SELECT avatar FROM joueurs_infos WHERE nom='$palatin'";
		$result2 = mysql_query($sql2) or die("Erreur avec la base");
		$da3 = mysql_fetch_row($result2);
		$re4 = mysql_query('SELECT titre, royaume FROM joueurs_heros WHERE nom = "'.$palatin.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da4 = mysql_fetch_row($re4);
		$da3[0] = '<a href="information.php?cible='.$palatin.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false"><img src="'.$da3[0].'" width="20" height="20" alt="'.$palatin.'" title="'.$palatin.'" ALIGN=middle border=1></a>';
		$palatin = '<a href="information.php?cible='.$palatin.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false">'.$palatin.', '.$da4[0].' '.$da4[1].'</a>';
	}
	echo '	<tr>	<td></td>
			<td colspan="3" class="hline"></td>	</tr>
		<tr>	<td>'.$da3[0].'</td>
			<td class="tdlef">'.$palatin.'</td>
			<td class="tdlef">'.$province.'</td>
			<td class="tdrig">'.valeurtaxes($taxes).'</td>	</tr>';
	}
	echo '	<tr>	<td></td>
			<td colspan="3" class="hline"></td>	</tr>';
	echo"</table></center>";
mysql_close();
include "fin.php"; 
