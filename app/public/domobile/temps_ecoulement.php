<?php

//test différenciation des deux serveurs ...
include('connect.php');





if ($actual_db == 1) {

		$temps = floor(time()/60);
		$temps_ecoulement = 2;//anciennement 1
		$duree_jour = 1440 / 2;	// durée du jour-unité en ce qui concerne l'IAM, les archives, etc.
}
if ($actual_db == 2) {
		$temps = floor(time()/60);
		$temps_ecoulement = 100;
		$duree_jour = 1440 / $temps_ecoulement;	// durée du jour-unité en ce qui concerne l'IAM, les archives, etc.

}

?>
