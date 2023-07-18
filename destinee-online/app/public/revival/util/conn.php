<?php
// Rapporte toutes les erreurs PHP
error_reporting(E_ALL);

try {
  $conn = new PDO("mysql:host=localhost;dbname=revival", "phpmyadmin", "n5k8Ha6W");
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);  
  echo "Connected successfully";
} catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}


?>