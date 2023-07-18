<?php session_start();

$head_title = 'Membres de l\'équipe d\'administration';
$head_keywords = 'administration, moderateur, forum, communauté, administrateur';


include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Administration");


?>
<table class="localtable630"><tbody>
<tr><td style="text-align:left;">
<h2>L'équipe d'Administration</h2>
<UL>
	<LI><i>Honorables fondateurs de Destinée-Online</i><br>
	<UL>
		<LI>AD Balthazar</LI>
		<LI>AD Melkhior</LI>
    <a href="credits.php">Crédits de l'équipe originale</a>
	</UL>
	</LI>
	<br>
	<LI><i>Panthéon des Admins</i><br>
	<UL>
    <li style="list-style-type: none; color: grey;">---Anciens---</li>
    <LI>Eleusis</LI>
    <LI>Gilnarfein</LI>
    <LI>Zhao Yun/Sidirr</LI>
		<LI>Aro</LI>
		<LI>Tharkis</LI>
    <li style="list-style-type: none; color: grey;">---Actuel(s)---</li>
		<LI>Draveon - draveongoblin@gmail.com</LI>
	</UL>
	</LI>
	<br>

	<LI><i>Panthéon des Dev</i><br>
		<UL>
      <li style="list-style-type: none; color: grey;">---Anciens---</li>
      <LI>Gilnarfein</LI>
      <LI>Zhao Yun</LI>
			<LI>Aro</LI>
			<li>Tharkis
        <ul>
          <li>Ainkurn (Stagiaire)</li>
        </ul>
      </li>
      <li style="list-style-type: none; color: grey;">---Actuel(s)---</li>
			<li>Draveon</li>
		</UL>
	</LI>
	<br>
</UL>

</td></tr></tbody></table><?php

include("fin.php");
