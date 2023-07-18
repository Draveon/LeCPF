<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Kalamia</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/indexStyle.css">
	<link rel="stylesheet" href="css/topStyle.css">
	<link rel="stylesheet" href="css/mainStyle.css">
</head>
<body>
	<div id="main-container" class="container-fluid">
		<div class="row">
			<?php include("top.php"); ?>

			<div class="container-fluid">
				<div class="row">
					<div class="col">
						<p>Bienvenue dans le monde sombre, fantastique et impitoyable de Kalamia...</p>
					</div>
					<div class="col">
						<div id="login" class="container form-index">
							<div class="row">
								<div class="container-fluid">
									<div class="row">
										<h2 class="col">Connexion</h2>
										<a href="#" id="btnSignin" class="col" data-toggle="modal" data-target="#signinModal">
										  Inscription
										</a>
									</div>	
								</div>
							</div>
							<div class="row">
								<form id="loginForm" class="form-index" name="loginform" method="post" action="util/login.php">
									<p><label for="username">Pseudo:</label><input type="text" id="username" title="username" name="username" /><span class="shadow"></span></p>
									<p><label for="password">Mot de Passe:</label><input type="password" id="password" title="password" name="password" /><span class="shadow"></span></p>
									
									<p><span class="spanSubmit"><input type="submit" name="loginSubmit" value="Connect" /></span></p>
								</form>
							</div>
							
						</div>
					</div>
				</div>				
			</div>
		</div>
	</div>

	<!-- Modal Signin-->
<div class="modal fade" id="signinModal" tabindex="-1" role="dialog" aria-labelledby="Inscription" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="signinModalLabel">Inscription</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
			<form id="signinForm" class="form-index" name="signinform" method="post" action="util/signin.php">
				<p><label for="username">Pseudo:</label><input type="text" id="username" title="username" name="username" required="true" /><span class="shadow"></span></p>
				<p><label for="email">Email:</label><input type="email" id="email" title="email" name="email" required="true" /><span class="shadow"></span></p>
				<p><label for="password">Mot de Passe:</label><input type="password" id="password" title="password" name="password" required="true" /><span class="shadow"></span></p>
				
				<p><span class="spanSubmit"><input type="submit" name="signinSubmit" value="Sign in" /></span></p>
			</form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
	<?php include('scriptsjs.php'); ?>
</body>
</html>
