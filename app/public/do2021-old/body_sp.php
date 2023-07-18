<div class="col-md-12 select_perso">
	<?php 
		echo '
			<h2>
				Personnages de '.$_SESSION['login'].'
			</h2>
		'; 
		if ($nb_persos < 2) {
			echo '
			<form method="post" action="selection_perso2.php">
				<button class="btn_choose_perso" name="action" value="'.$id_perso1.'"><img class="img_perso" src="'.$avatar1.'" width="300" height="300" /></button>
				<p class="noms_persos">'.$nom_perso1.'</p>
			</form>
			';
		} 
		if ($nb_persos > 1) {
			echo '
			<form method="post" action="selection_perso2.php">
				<button class="btn_choose_perso" name="action" value="'.$id_perso1.'"><img class="img_perso" src="'.$avatar1.'" width="300" height="300" /></button>
				<p class="noms_persos">'.$nom_perso1.'</p>
				<button class="btn_choose_perso" name="action" value="'.$id_perso2.'"><img class="img_perso" src="'.$avatar2.'" width="300" height="300" /></button>
				<p class="noms_persos">'.$nom_perso2.'</p>
			</form>
			';
		}
		

		if ($nb_persos < 2) {
			echo '
				<button class="btn btn-do_connect btn_create" data-toggle="modal" data-target="#modal_create">Créer un personnage</button>
			';
		}
	?>
</div>


	<!-- Modal de connexion / inscription-->
	<!-- Creation personnage -->
<div class="col-md-12 modal fade" id="modal_create" tabindex="-1" role="dialog" aria-labelledby="modal_createLabel" aria-hidden="true">
  <div class="modal-dialog modal_sign" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal_createLabel">Créer un personnage</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body col-md-12">
      	<form method="post" action="selection_perso2.php" class="form-group">
			<label for="nom">Nom du personnage : </label>
			<input class="form-control" type="text" name="nom" id="nom" style="width:120px;" required>
			<label for="royaume">Nom du Royaume : </label>
			<input class="form-control" type="text" name="royaume" id="royaume" style="width:120px;" required>
			<div>
				<label for="classe">Votre race : </label>
				<select class="form-control" name="race" id="race" style="width:120px;" required>';
				<?php
					$req = mysql_query("SELECT race FROM races ORDER BY race ASC") or die('Erreur SQL !<br>'.mysql_error());
					while ($data = mysql_fetch_assoc($req)) {
					echo '
						<option value="'.$data['race'].'"> '.$data['race'].' </option>';
					}
					echo '
						</select>
			</div>
			<div>
						<label for="classe">Votre classe : </label>
						<select class="form-control" name="classe" id="classe" style="width:120px;" required>';
					
					$req = mysql_query("SELECT classe FROM classes ORDER BY classe ASC") or die('Erreur SQL !<br>'.mysql_error());
					while ($data = mysql_fetch_assoc($req)) {
						echo '
						<option value="'.$data['classe'].'"> '.$data['classe'].' </option>';
					}
					echo '
						</select>
			</div>
			<div>
						<label for="dieu">Votre dieu : </label>
						<select class="form-control" name="dieu" id="dieu" style="width:120px;" required>';
					
					$req = mysql_query("SELECT nom FROM stats_dieux ORDER BY nom ASC") or die('Erreur SQL !<br>'.mysql_error());
					while ($data = mysql_fetch_assoc($req)) {
						echo '
						<option value="'.$data['nom'].'"> '.$data['nom'].' </option>';
					}
					echo '
						</select>
			</div>
			<div>
					<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="sexe" value="mâle" required>
							Mâle
						</label>
					</div>
					<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="sexe" value="femelle" required> Femelle
					</label>
					</div>
						<button class="btn-do_connect form-control" name="action" type="submit" value="creer2">Créer</button>
			</div>
					'; 


		

			
				?>
			</div>
		</form>
      </div>
    </div>
  </div>
</div>
