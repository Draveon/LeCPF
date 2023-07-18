<? session_start(); 

$head_keywords = 'inscription, jeu, regles, refus, accepte';

include("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}

entete_index("Foire aux questions");

echo '<table class="localtable630"><tbody>
<tr>	<td><h2>Foire aux Questions - Inscription</h2></td>
	<td style="text-align: right; width: 50%; vertical-align:top;"><a href="javascript:sweeptoggle(\'contract\')"><i>Tout cacher</a> | <a href="javascript:sweeptoggle(\'expand\')">Tout voir</i></a></td>	</tr>
<tr>	<td colspan="2" style="text-align:left;">
';
?>
<UL class="faq">
		<LI><h2 onClick="expandcontent(this, 'sc3')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
		Quelle est l'influence du choix du sexe ?</h2>
		<div id="sc3" class="switchcontent">
			Aucune influence, sinon celle du choix du titre vous étant attribué. Ainsi, un nain peut être un Roi, alors qu'une naine sera plutôt Reine. Il en va de même pour les autres races ainsi que les autres titres. Veuillez noter qu'aucune modification n'est apportée à vos statistiques en fonction de votre choix du sexe de votre héros.
		</div>
	</LI>
</UL>

</td></tr>
</tbody></table>
<?

include("fin.php");
