<div separateurDO class="text-center plank_background"><h2>Actualités de Kalamaï</h2></div>
<div class="container-fluid">

  <div class="row">
    <div plankBack class="plank_background col-12 col-md-7">
      <div last24h class="scroll_background">
          <?php

          	echo '<div>';
          	echo '<b><a href="#">Événements de ces dernières 24h</a>:</b><br>';
          	$req = mysql_query("SELECT `texte` FROM `evenement` ORDER BY `tempspost` DESC") or die('Erreur SQL !<br>'.mysql_error());
          	if (mysql_num_rows($req) == 0) {
          		echo '<div>Rien d\'important à signaler ces dernières 24 heures...</div>';
          	} else {
              while ($data = mysql_fetch_assoc($req)) {
          		    echo '<p>'.$data['texte'].'</p>';
              }
            }
       ?>
       </div>
    </div>
  </div>



    <div plankBack class="plank_background col-12 col-md-5">

    <?php

    // prochaines ventes sur le marché central
    	echo '<div market class="scroll_background">';
    	echo '<b><a href="foire.php">Prochaines ventes</a>:</b>';
    	$whereclause = "'1' = '1'";
    	$req = mysql_query("SELECT * FROM foire_vente WHERE ".$whereclause." AND temps > '".$temps."' AND type = 'objet' ORDER BY temps ASC LIMIT 3") or die('Erreur SQL !<br>'.mysql_error());
    	while ($data = mysql_fetch_row($req))
    	{
    		$id = $data[0];
    		$vendeur = $data[1];
    		$item = $data[2];
    		$qtee = number_format($data[3], 0, ",", " ");
    		$offre = $data[4];
    		$temp_ = $data[5] - $temps;
    		$image = $data[6];
    		$acheteur = $data[7];
    		if (is_numeric($item))
    		{
    			$req1 = mysql_query("SELECT objets_stats.nom, objets_items.bonus FROM objets_items INNER JOIN objets_stats ON objets_stats.id = objets_items.base WHERE objets_items.id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());
    			if ($dat1 = mysql_fetch_row($req1)) {
    				$item = $dat1[0];
    				$item_affiche = $dat1[1] > 0 ? '<font color="purple">'.$dat1[0].'</font>' : $dat1[0];
    			}
    		}
    		else	$item = ucfirst($item);

    		$h = floor(($temp_ /60));
    		$m = floor( $temp_ %60 );
    		if ($h > 0)	$a = $h.'h';
    		else		$a = $m.'m';
    		if ($temp_ < 2)
    		{
    			$a = time()-($data[5]*60);
    			$a = (60-$a)-60;
    			$a = "$a sec";
    		}
    		$offre = number_format($offre, 0, ",", ",");

    		echo '<div style="'.$paddingItem.'"><a class="discreb" href="info_foire.php?item='.$id.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">
    			<img src="'.$image.'" alt="'.$item.'" width="20" height="20" border=0>
    			<b>'.$item_affiche.'</b> ('.$a.') <span style="white-space: nowrap;">'.$offre.' pièces d\'or</span></a></div>';
    		$nbrmsg++;
    	}
    	if (mysql_num_rows($req) == 0)
    	{
    		echo '<br>Aucune vente n\'est en cours en ce moment.';
    		$nbrmsg++;
    	}

    	if ((isset($transactionError))&&($transactionError!=''))
    		echo '<div style="'.$paddingItem.' font-weight: bold;">'.$transactionError.'</div>';

    	echo '</div>';


      // / si pas de province
      // if ($province == 'Aucune')
      // {
      // 	echo $QG;
      // 	$QG = '';
      // 	echo '<div style="'.$paddingItem.'"><a class="discreb" href="menu_palatin.php">Vous devez choisir une province!</a></div>';
      // 	$alert = true;
      // }

      // si ya des pts de carac à attribuer
      $req = mysql_query("SELECT (satt + sdef + sini + spui + send + scha) AS nbptcaracsupp FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
      $data = mysql_fetch_row($req);
      if ($data[0] < $niveau)
      {
      	echo $QG;
      	$QG = '';
      	echo '<div ptsCaracteristiquesADistribuer class="scroll_background"><a class="discreb" href="aptitudes.php">Vous avez <b>'.($niveau-$data[0]).' points de caractéristique</b> à distribuer!</a></div>';
      	$alert = true;
      }
      // si ya des points d'aptitudes
      $req = mysql_query("SELECT `points` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
      $data = mysql_fetch_assoc($req);
      if ($data['points'] > 0)
      {
      	echo $QG;
      	$QG = '';
      	echo '<div ptsAptitudesDisponible class="scroll_background"><a class="discreb" href="aptitudes.php">Vous avez <b>'.$data['points'].' points d\'aptitude</b> à distribuer!</a></div>';
      	$alert = true;
      	$nbrmsg++;
      }
      // si on peut construire des bat spé
      require_once ('batimentspec_include.php');
      if ($nbrBatSpe < $nbrBatAuth)
      {
      	echo $QG;
      	$QG = '';
      	echo '<div batSpePretAConstruire class="scroll_background"><a class="discreb" href="construction.php?c=1&terrain=riverain&type=2#ici">Vous pouvez construire un ou des <b>bâtiments spéciaux</b>!</a></div>';
      	$alert = true;
      }
      // si inventaire plein
      $alertinv = true;
      $sql = "SELECT * FROM joueurs_objets WHERE nom = '$nom'";
      $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
      if ($data = mysql_fetch_array($req))
      {
      	for ($k=1; $k < 17; $k++)
      		if ($data[$k] == 0)
      			$alertinv = false;
      }
      if ($alertinv)
      {
      	echo $QG;
      	$QG = '';
      	echo '<div inventairePlein class="scroll_background"><a class="discreb" href="inventaire.php"><b>Votre inventaire est plein</b>, pensez à y ménager un peu de place!</a></div>';
      	$alert = true;
      }
      ?>

      <div archivesRoyaume class="scroll_background">
        <b><a href="archives.php">Archives du royaume</a>:</b>
        <div lastEvents>

              <?php $req = mysql_query("SELECT * FROM combat_joueurs WHERE `attaquant` = '".$nom."' OR `defendant` = '".$nom."' AND `temps` >= '".($temps - $duree_jour)."' ORDER BY `temps` DESC") or die('Erreur SQL !<br>'.mysql_error());

              while ($data = mysql_fetch_row($req)) {
                $id = $data[0];
              	$atta = $data[1];
              	$defe = $data[2];
              	$victoire = $data[4];
              	$date = $data[5];
                $texte = $data[6];
                $link = true;
              	$texte = strip_tags(str_replace('<br>',' ',$texte));
                // $data2 = mysql_fetch_array($req);

            	if (mysql_num_rows($req) == 0) {
            		echo '<div>Rien d\'important à signaler ces dernières 24 heures...</div>';
            	} else {
                // while ($data = mysql_fetch_assoc($req)) {

                    	echo '<div class="ligneArchives"> - <a class="view_data discreb" id="'.$id.'" data-toggle="modal" data-target="#modalArchive" href="#">'.$texte.'</a></div>';
                  	// else		echo $texte;
                // }
              }

              } ?>

        </div>
      </div>

    </div>


</div>
<!-- The Modal -->
<div class="modal" id="modalArchive">
  <div class="modal-dialog modalArchiveVue">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Archive</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="archive_detail">
        <?php
        include("info_message.php?message='.$id.'&texte='.$a.'&serveur='.$serveur.");
         // echo $texte; ?>
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
