<?php
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

  function nddate($x)
  {
    $h = gmdate("H") + $x;
    if ($h > 23)
    {
      $h = $h - 24;
      if ($h < 10)
      {
        $h = "0$h";
      }
    }
    $i = gmdate("i");
    $heure = "$h:$i";
    return $heure;
  }

  $month = gmdate('F');
  $mois = $mois[$month];  // nom du mois en français

  $jour = gmdate('d');    // jour numérique, avec 2 chiffres (de 01 à 31)

  $heure = nddate(0);      // heure GMT au format HH:mm, cycle 24 heures

?>