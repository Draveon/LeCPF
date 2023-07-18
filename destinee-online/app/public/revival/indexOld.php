<?php 
// PHP START

$username = 'dada';
$password = 'dada';

 // booleans
$connection = false;

 // HTML START
?>

<!DOCTYPE html>
	<html>
	<head>
		<title>DO2</title>
		<link rel="stylesheet" href="styleRevival.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
		<div class="wrapper">
			<main>
				<div class="logo"><span class="logo1">Cyberpunk</span><hr><span class="logo2"><span>Kalamia</span></div>
									
<?php
////////////////////////////////////////////////////
// LOGIN FORM
if ( strtolower($_POST['username']) !== strtolower($username) || $_POST['password'] !== $password ) { ?>
	<p>Bienvenue dans le monde de Cyberpunk : Kalamai...</p>

	<div id="login" class="">
		
		<div class="loginButtons"><a href="#" id="btnLogin">Connexion</a><span>|</span><a href="#" id="btnSignin">Inscription</a></div>
		<form id="loginForm" name="loginform" method="post" action="index.php">
			<p><label for="username">Pseudo:</label><input type="text" id="username" title="username" name="username" /><span class="shadow"></span></p>
			<p><label for="password">Mot de Passe:</label><input type="password" id="password" title="password" name="password" /><span class="shadow"></span></p>
			
			<p><span class="spanSubmit"><input type="submit" name="loginSubmit" value="Connect" /></span></p>
		</form>
		<form id="signinForm" name="signinform" method="post" action="index.php">
			<p><label for="username">Pseudo:</label><input type="text" id="username" title="username" name="username" required="true" /><span class="shadow"></span></p>
			<p><label for="email">Email:</label><input type="email" id="email" title="email" name="email" required="true" /><span class="shadow"></span></p>
			<p><label for="password">Mot de Passe:</label><input type="password" id="password" title="password" name="password" required="true" /><span class="shadow"></span></p>
			
			<p><span class="spanSubmit"><input type="submit" name="signinSubmit" value="Sign in" /></span></p>

		</form>
	</div>


<?php 
} else {
	$connection = true;
	session_start();

	$username = isset($_POST['username'])	? $_POST['username'] : null;
	$_SESSION['username'] = $username;
	// $sessionName = isset($_SESSION['username'])	? $_SESSION['username'] : null;
	$sessionName = "Hephaiiisthor";

	// process successful login as normal)
	//////////////////////////////////////////////////////
	// DASHBOARD DISPLAY
	if (isset($connection) ) {	?>
		<div id="dashboard" class="dashboardDisplayed">
			<?php include('dashboard.php') ?>
		</div>
	<?php
	}
} ?>

				
				<div id="dashboardQG">
					<?php include('dashboardQG.php') ?>
				</div>
		
			</main>
			<div id="navIndex" class="nav">
				<div class="btn">menuIndex1</div>
				<div class="btn">menuIndex2</div>
				<div class="btn">menuIndex3</div>
				<div class="btn">menuIndex4</div>
				<div class="boxtab">
					<div id="1" class="subtab">
						<ul>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div id="2" class="subtab">
						<ul>
							<li>2</li>
							<li>2</li>
							<li>2</li>
							<li>2</li>
						</ul>
					</div>
					<div id="3" class="subtab">
						<ul>
							<li>3</li>
							<li>3</li>
							<li>3</li>
							<li>3</li>
						</ul>
					</div>
					<div id="4" class="subtab">
						<ul>
							<li>4</li>
							<li>4</li>
							<li>4</li>
							<li>4</li>
						</ul>
					</div>
				</div>
				<span class="closeTab">X</span>
			</div> 
			<div id="navPerso" class="nav">
				<div id="toQG" class="mainBtn"><div>PageQG</div></div>
				<div class="btn">menuPerso2</div>
				<div class="btn">menuPerso3</div>
				<div class="btn">menuPerso4</div>
				<div class="boxtab">
					<div id="1" class="subtab">
						<ul>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div id="2" class="subtab">
						<ul>
							<li>2</li>
							<li>2</li>
							<li>2</li>
							<li>2</li>
						</ul>
					</div>
					<div id="3" class="subtab">
						<ul>
							<li>3</li>
							<li>3</li>
							<li>3</li>
							<li>3</li>
						</ul>
					</div>
					<div id="4" class="subtab">
						<ul>
							<li>4</li>
							<li>4</li>
							<li>4</li>
							<li>4</li>
						</ul>
					</div>
				</div>
				<span class="closeTab">X</span>
			</div> 
			<div id="navQG" class="nav">
				<div id="toPerso" class="mainBtn"><div>pagePerso</div></div>
				<div class="btn">menuQG2</div>
				<div class="btn">menuQG3</div>
				<div class="btn">menuQG4</div>
				<div class="boxtab">
					<div id="1" class="subtab">
						<ul>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div id="2" class="subtab">
						<ul>
							<li>2</li>
							<li>2</li>
							<li>2</li>
							<li>2</li>
						</ul>
					</div>
					<div id="3" class="subtab">
						<ul>
							<li>3</li>
							<li>3</li>
							<li>3</li>
							<li>3</li>
						</ul>
					</div>
					<div id="4" class="subtab">
						<ul>
							<li>4</li>
							<li>4</li>
							<li>4</li>
							<li>4</li>
						</ul>
					</div>
				</div>
				<span class="closeTab">X</span>
			</div> 
		<!-- <div id="mn1" class="sub-nav">
			<div style="border: 1px solid black; margin: 15px;">test</div>
		</div> -->

	

		</wrapper>
		<!-- <div class="wrapperGeomForms">test</div> -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
		<script src="menu.js"></script>
		<script>
			if (sessionStorage.hitSubmit == undefined) {
				sessionStorage.setItem("hitSubmit", 0);
			}
			$("#login INPUT[type=submit]").on("click", function() {
				// sessionStorage.removeItem("hitSubmit");
				sessionStorage.setItem("hitSubmit", 1);
			})
			$(document).ready(function() {
				var now = new Date($.now())
				const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric'};
				
				time = daysAfter(now, 90)
				time.toLocaleDateString(undefined, options);
			console.log(time)
			})
			function daysAfter(d, days) {
			  var nd = new Date(d.getTime());
			  nd.setDate(d.getDate() + days);
			  return nd;
			}
		</script>
	</body>
	</html>
