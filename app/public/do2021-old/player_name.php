<?php 

	function entete1($x)
	{
		if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
			$connexion = 0;
		else
		{
			$connexion = 1;
			$nom = $_SESSION['nom'];
			$titre = $_SESSION['titre'];
			$royaume = $_SESSION['royaume'];
		}
		
		echo '
		<table class="entetetableindex"><tbody>
		<tr>	<td class="entetetopleft"></td>
			<td class="entetetopcenter">';
		if ($connexion == 1)	echo '	<span class="nomJoueur">'.$nom.'</span>,<br>
						<span class="nomRoyaume">'.$titre.' '.$royaume.'</span>';
		else			echo '	<span class="nomJoueur">Bienvenue !</span><br>
						<span class="nomRoyaume">Destinee-Online.com</span>';
		echo '		</td>
			<td class="entetetopright"> ~ <h1>'.$x.'</h1> ~ </td>
			<td class="cadretopright" rowspan="2"></td></tr>
		<tr>	<td class="cadremiddleleft"></td>
			<td class="cadrecontenu"  colspan="2">&nbsp;</td></tr>
		<tr>	<td class="cadrebottom"   colspan="4"></td></tr>
	</tbody></table>'."\n\n";
	}

 ?>