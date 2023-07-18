<? session_start();

$head_title = 'Liens vers d\'autres jeux';
$head_keywords = 'lien, annuaire, partenaire';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}
echo "<br>";
entete_index("Partenaires");

echo '
<table class="localtable630"><tbody>
<tr><td>
<h2>Nos partenaires</h2><br><div align="center">
';

include_once ('partenariats_include.php');
echo writeBannersAll();

/*
<img src="/images/iweb.jpg" alt="iWeb Technologies"><br><br>-->
<a href="http://www.terres-perdues.com" target="_blank"><img src="http://www.terres-perdues.com/web/baniere/1024v2/forum.gif" alt="Terres-Perdues.com"></a><br><br>
<script type="text/javascript" src="http://www.rpg-paradize.com/pub.php?numban=8"></script><br><br>

<script type="text/javascript"><!--
google_ad_client = "pub-9745708226376969";
google_ad_width = 468;
google_ad_height = 60;
google_ad_format = "468x60_as_rimg";
google_cpa_choice = "CAAQy--bzgEaCPXZUgZFUQKhKIfG93M";
//--></script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><br><br>
*/

/*?>
<a href="http://www.jeux-en-ligne-gratuits.net" target="_blank"><img border="0" title="jeu en ligne gratuit" alt="jeu en ligne gratuit" src="http://www.jeux-en-ligne-gratuits.net/images/button_88_31.gif" width="88" width="31"></a>&nbsp;&nbsp;&nbsp;
<a href="http://www.sitacados.com" target="_blank"><img src="http://www.sitacados.com/images/sitacados-8831.gif" border="0" width="88" height="31"></a>&nbsp;&nbsp;&nbsp;
<a href="http://www.jeuxvirtuels.com" target="_blank"><img src="http://www.jeuxvirtuels.com/bouton.gif" border="0" width="88" height="31" alt="Annuaire de jeux virtuels !"></a>&nbsp;&nbsp;&nbsp;
<a href="http://www.rpg-paradize.com/index.php?page=vote&vote=93" target="_blank"><img src="http://www.rpg-paradize.com/vote.gif" border=0></a>&nbsp;&nbsp;&nbsp;
<!--<a href="http://www.gamesites200.com/mpog/vote.php?id=2209"><img src="http://www.gamesites200.com/mpog/vote.gif" ALT="Paid and Free MMORPG & MPOG" border="0"></a>&nbsp;&nbsp;&nbsp;-->
<!--<a href="http://www.annuaire-des-jeux-gratuits.com"><img src="http://www.annuaire-des-jeux-gratuits.com/8831.gif" border="1" alt="Annuaire-des-Jeux-gratuits.com: jeux sur Internet"></a><br><br>-->
*/


echo '</div></tr></td></tbody></table>';

include("fin.php");
