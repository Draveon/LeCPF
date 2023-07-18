<?php 
require("conn.php");
error_reporting(E_ALL);
function getListPlayers() {

	$msg = ""; 	
	try {
		$query = "select * from `players` ORDER BY `id` ASC";
		$stmt = $conn->prepare($query);
		$stmt->execute();
		$count = $stmt->rowCount();
		$row   = $stmt->fetch(PDO::FETCH_ASSOC);
		/******************** Your code ***********************/
		// for ($i=0; $i < $count; $i++) { 
		// 	# code...
		// }
		echo "<li>$row['name']</li>";

	} else {
		$msg = "Aucun joueur trouvé.";
		echo $msg;
	} catch (PDOException $e) {
		echo "Error : ".$e->getMessage();
	}
}

?>
