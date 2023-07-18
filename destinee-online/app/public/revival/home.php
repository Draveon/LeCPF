<?php
session_start(); 
 // HTML START
if(!isset($_SESSION['sess_user_id']) && $_SESSION['sess_user_id'] == "") {
  header('location:index.php');
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Kalamia : Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/homeStyle.css">
	<link rel="stylesheet" href="css/topStyle.css">
	<link rel="stylesheet" href="css/mainStyle.css">
	<link rel="stylesheet" href="css/navStyle.css">

</head>
<body>
	<div id="main-container" class="container-fluid"> 
		<div class="row">
			<?php include("top.php"); ?>



			<div class="container-fluid">
				<div class="row home">
					<?php if(isset($_SESSION['sess_user_id']) && $_SESSION['sess_user_id'] != "") { ?>

					<!-- Name -->
					<div class="container-fluid">
						<div class="row">
							<h1> <span>
							<?php if (isset($_SESSION['sess_user_name'])) {
								echo $_SESSION['sess_user_name'];
							} else {
								echo "Stranger";
							}
						?>
							</span><span>Roi</span><span>de</span><span>Belundra</span>
						</h1>
						</div>
						<div class="row">
							<?php include('recap.php'); ?>
						</div>
					</div>

					
					<!-- Sidebar -->
					<nav class="sidebar">
						<?php include('nav.php'); ?>
					</nav>

					<!-- Profile -->
					<div id="profile-infos" class="col-md-3">
						
						<div id="container profile-stats" class="col">
							<img style="width: 250px;" src="images/avatars/ashtar.jpg" alt="avatar du personnage">
							<table>
								<tr>
									<td>Race</td><td>Homme</td>
								</tr><tr>
									<td>Classe</td><td>Guerrier</td>
								</tr><tr>
									<td>Force</td><td>0</td>
								</tr><tr>
									<td>Defense</td><td>0</td>
								</tr><tr>
									<td>Initiative</td><td>0</td>
								</tr>

							</table>
						</div>
					<?php } ?>
					</div>


					<!-- PROFILE-DASHBOARD -->
					<div id="profile-dashboard" class="col-md-6">
						<div id="chat">
							<h2>Chat</h2>
							<div class="chatframe">
								<p> Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum </p>
							</div>
						</div>
						<div id="archives">
							<h2>Dernières archives</h2>
							<div class=""> 
								<ul>
									<li>blablabla</li>
									<li>blablabla</li>
									<li>blablabla</li>
									<li>blablabla</li>
									<li>blablabla</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<?php include('scriptsjs.php'); ?>	
</body>
</html>