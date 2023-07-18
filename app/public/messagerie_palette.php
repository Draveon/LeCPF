<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="fr" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Choix de la couleur</title>
	<style type="text/css">
		.skin_barre
		{
			width:30px;
			height:300px;
			top:20px;
			left:23px;
			position:absolute;
			background-image:url('images/messagerie/barre.jpg');
			cursor:s-resize;
		}
		
		.skin_curseur1
		{
			width:45px;
			height:15px;
			position:absolute;
			top:12px;
			left:15px;
			cursor:s-resize;
			background-image:url('images/messagerie/curseur1.png');
		}
		
		.skin_carre
		{
			width:300px;
			height:300px;
			position:absolute;
			top:20px;
			left:60px;
			cursor:move;
			background-color:red;  /* on définit la couleur initiale du carré */
			background-image:url('images/messagerie/carre.png');
		}

		.skin_curseur2
		{
			width:20px;
			height:20px;
			position:absolute;
			top:10px;
			left:350px;
			cursor:move;
			background-image:url('images/messagerie/curseur2.png');
		}

		.skin_resultat
		{
			position:absolute;
			top:330px;
			left:23px;
			width: 30px;
			height: 20px;
			background-color: red;
			border:1px solid black;
			text-align:center;
		}
		
		.skin_valider
		{
			position:absolute;
			top:330px;
			left:60px;
			width:300px;
		}
	</style>
	<script type="text/javascript" src="messagerie_palette.js"></script>
	<link rel="stylesheet" type="text/css" href="style_divers.css">

</head>
	
<body>

	<div id="barre"    class="skin_barre"    onmousedown="clique('barre')"> </div>
	<div id="curseur1" class="skin_curseur1" onmousedown="clique('barre')"> </div>
	<div id="carre"    class="skin_carre"    onmousedown="clique('carre')"> </div>
	<div id="curseur2" class="skin_curseur2" onmousedown="clique('carre')"> </div>

	<form>
		<input type="text" id="resultat" class="skin_resultat" size=20 name="affichage_couleur" />
		<input type="hidden" id="rgb" value="255,0,0" />
		<input type="button" class="skin_valider" value="Valider" onclick="valider();" />
	</form>

</body>
