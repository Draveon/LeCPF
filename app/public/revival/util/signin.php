<?php
require 'conn.php';

$playername = htmlspecialchars($_POST["username"]);
$playermail = htmlspecialchars($_POST["email"]);
$playerpass = htmlspecialchars($_POST["password"]);

try {
  $conn = new PDO("mysql:host=$servername;dbname=revival", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";

	$sql = "INSERT INTO players (name, password, email)
	VALUES ('$playername', '$playerpass', '$playermail')";
   // use exec() because no results are returned
  $conn->exec($sql);
  echo "New record created successfully";
} catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}

	$conn = null;

?>