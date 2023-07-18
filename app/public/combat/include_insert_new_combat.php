<?php

//on check si c'est la même faction
$sqlAttFaction = "SELECT faction_id FROM factions_membres WHERE nom_membre = '.$nom.'";
$sqlDefFaction = "SELECT faction_id FROM factions_membres WHERE nom_membre = '.$cible.'";

$reqAttFaction = mysql_query($sqlAttFaction) or die("641 : ".mysql_error());
$reqDefFaction = mysql_query($sqlDefFaction) or die(mysql_error());

if ($reqAttFaction != $reqDefFaction) {
  // VICTOIRE FACTION
  $sql = 'INSERT INTO `combat_factions`
    (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`, `nsorts_att`, `nsorts_def`, `ip_att`) VALUES
    (NULL, "'.$nom.'", "'.$cible.'", "'.$temps.'", "'.$gagnant.'", "'.$date.'", "'.$texte1.'", "'.$texte2.'", "'.$nsorts[0].'", "'.$nsorts[1].'", "'.$_SERVER["REMOTE_ADDR"].'")';
  $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
  $sql = 'INSERT INTO `combat_joueurs`
    (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`, `nsorts_att`, `nsorts_def`, `ip_att`) VALUES
    (NULL, "'.$nom.'", "'.$cible.'", "'.$temps.'", "'.$gagnant.'", "'.$date.'", "'.$texte1.'", "'.$texte2.'", "'.$nsorts[0].'", "'.$nsorts[1].'", "'.$_SERVER["REMOTE_ADDR"].'")';
  $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
} else {
  // VICTOIRE STANDARD
  $sql = 'INSERT INTO `combat_joueurs`
    (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`, `nsorts_att`, `nsorts_def`, `ip_att`) VALUES
    (NULL, "'.$nom.'", "'.$cible.'", "'.$temps.'", "'.$gagnant.'", "'.$date.'", "'.$texte1.'", "'.$texte2.'", "'.$nsorts[0].'", "'.$nsorts[1].'", "'.$_SERVER["REMOTE_ADDR"].'")';
  $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

 ?>
