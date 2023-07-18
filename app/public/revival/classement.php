<?php require('util/conn.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Kalamia</title>
	<link rel="stylesheet" href="css/classementStyle.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="wrapper">
		<main> 
			<?php include("top.php"); ?>
			
			<div class="grid-container">	

				<div id="classement" class="">				
					<ol>
						<?php include('util/getPlayers.php'); ?>
					</ol>
				</div>
			</div> <!-- fin grid-container -->
		</main>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="js/menu.js"></script>
</body>
</html>

<?php require("util/endconn.php"); ?>
