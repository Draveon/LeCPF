<?php

	include('newhero_functions.inc');

?>
	<div style="
		display: grid;
		grid-template-rows: 50px 300px 50px 100px;
	">
		<div style="
			grid-row: 1
		">
			<h2><?php>echo $nomRace;</?></h2>
			<img src="<?php>echo $imageRace;</?>">
		</div>
		<div style="
			display: grid;
			grid-row: 2;
			grid-template-columns: 50% 50%;
		">
		<ul>
			<li><?php>echo $attRace;</?></li>
			<li><?php>echo $defRace;</?></li>
			<li><?php>echo $iniRace;</?></li>
		</ul>
		<ul>
			<li><?php>echo $puiRace;</?></li>
			<li><?phpecho $endRace;</?></li>
			<li><?phpecho $chaRace;</?></li>
		</ul>
		</div>
		<div style="
			grid-row: 3;
		">
			<?php>echo $aptiRace;</?>
		</div>
		<div style="
			grid-row: 4;
		">
			<ul>
				<li><?php>echo $racialeRace1;</?></li>
				<li><?php>echo $racialeRace2;</?></li>
			</ul>
		</div>

	</div>

<?php 

// include('connect.php');

function getRacesList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM races") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<a id="race-'.$i.'"><li>'.$data['race'].'</li></a>';
    $i++;
  }
}

function getClassesList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM classes") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<li id="class-'.$i.'">'.$data['classe'].'</li>';
    $i++;
  }
}

function getGodsList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM stats_dieux") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<li id="god-'.$i.'">'.$data['nom'].', '.$data['dieu'].'</li>';
    $i++;
  }
}

?>