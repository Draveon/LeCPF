<?php 

$etape = (!isset($_GET['etape'])) ? 0 : (($_GET['etape'] > 0) ? (($_GET['etape'] == 1) ? 1 : (($_GET['etape'] == 2) ? 2 : 0 ))  : 0 ) ;
// Quelques inclusions
include "inclus/conf.php";
include "fonctions/profil.class.php";
// On initialise quelques variables
$erreurs = 0;
$note = '';
$mdp_genere = '';
$nom = $email = '';
?>

<header class="col-md-12 col-sm-12 col-xs-12">
			<a href="http://www.destinee-online.com/index.php">
				<h1 class="t1">Destinée-Online</h1>
			</a>
			<ul class="bannlinks">
				<li><a href="index2.php">Accueil</a></li>
				<li><a href="forum/" title="Forum">Forum Général</a></li>
				<li><a href="administration.php">L'équipe</a></li>
			</ul>
</header>
<div class="col-md-12">
	<?php
	if ($_SESSION['connexion'] == 1) {
		include ('menu2.php');


	} else if ($_SESSION['connexion_compte'] == 1) {
		include ('menu_compte2.php');
		include ('player_stats.php');

	} else {
		include('menu_index2.php');
	}

	?>

</div>
<div class="col-md-12"><!-- DIV DECORATIVE ADRESSEE AUX DEVELOPPEURS QUI AIMENT LES DIV UTILES --></div>

	<!-- Modal de connexion / inscription-->
	<!-- Connexion -->
<div class="col-md-12 modal fade" id="modal_connect" tabindex="-1" role="dialog" aria-labelledby="modal_connectLabel" aria-hidden="true">
  <div class="modal-dialog modal_sign" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal_connectLabel">Connexion / Inscription</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body col-md-12">
      	<h2>Déjà un compte ?</h2>
        <form method="post" action="selection_perso2.php" class="form-group">
			<span class="login_info">Héros : </span><input type="text" name="login" class="form-control"><br/>
			<span class="login_info">Mot de passe : </span><input type="password" name="password" class="form-control"><br/>
			<span class="login_info">Serveur : </span><select name="serveur" class="select_server form-control"><br/>
				<option selected value="1">Serveur - 1</option>
				<option value="2">Serveur Test</option>
			</select><br/>
		 	<div>
		 		<input type="submit" value="Connexion" class="btn btn-do_connect">
		 	</div>
		</form>
	<!-- Inscription -->
		<div class="inscription_modal col-md-6">
			<h2>Nouveau compte</h2>
			<form method="POST" action="inscription.php?serveur=1&etape=2" class="form-group">
					<span>Login : </span><input type="text" name="login" size="20" required class="form-control" /><br/>
					<span>Mot de passe : </span><input type="password" name="motdepasse" size="20" required class="form-control" /><br/>
					<span>E-mail : </span><input type="text" name="email" size="20" value="<?php echo $email; ?>" required class="form-control" /><br/>
					<div>
						<input type="submit" value="Confirmer" class="btn btn-do_connect">
					</div>
			</form>
 	 	</div>

      </div>
    </div>
  </div>
</div>
