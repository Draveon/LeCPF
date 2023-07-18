<?php session_start();

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;

include ('debut.php');

if ($_SESSION['connexion'] == 1) {
    include ('menu.php');
} else if ($_SESSION['connexion_compte'] == 1) {
	include ('menu_compte.php');
} else {
	include('menu_index.php');
}
entete_index("Equipe Originale");
?>
<p></p>
<table class="localtable630">
  <tbody>
    <tr>
      <td style="text-align: left;">
        <ul>
        	<li><i>Idée originale</i><br>
        	        <ul>
        	        <li>Olivier Bernier</li>
        	        <li>Christian Blais</li>
        	        <li>Maxime Lussier</li>
        	        </ul>
        	</li>
        	<br>
        	<li><i>Conception graphique</i><br>
        	        <ul>
        	        <li>Christian Blais</li>
        	        </ul>
        	</li>
        	<br>
        	<li><i>Responsables à la recherche</i><br>
        	        <ul>
        	        <li>Olivier Bernier</li>
        	        <li>Christian Blais</li>
        	        </ul>
        	</li>
        	<br>
        	<li><i>Élaboration des différents systèmes</i><br>
        	        <ul>
        	        <li>Olivier Bernier</li>
        	        <li>Christian Blais</li>
        	        </ul>
        	</li>
        	<br>
        	<li><i>Scriptage des différents systèmes</i><br>
        	        <ul>
        	        <li>Olivier Bernier</li>
        	        <li>Christian Blais</li>
        	        </ul>
        	</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<?php

include("fin.php");
?>
