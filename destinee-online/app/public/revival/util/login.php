<?php 
session_start();
require("conn.php");
error_reporting(E_ALL);
$msg = ""; 
if(isset($_POST['loginSubmit'])) {
  $username = trim($_POST['username']);
  $password = trim($_POST['password']);
  if($username != "" && $password != "") {
    try {
      $query = "select * from `players` where `name`=:username and `password`=:password";
      $stmt = $conn->prepare($query);
      $stmt->bindParam('username', $username, PDO::PARAM_STR);
      $stmt->bindValue('password', $password, PDO::PARAM_STR);
      $stmt->execute();
      $count = $stmt->rowCount();
      $row   = $stmt->fetch(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row)) {
        /******************** Your code ***********************/
        $_SESSION['sess_user_id']   = $row['id'];
        $_SESSION['sess_user_name'] = $row['name'];

        try {
          $query = "select * from `players_lastconnection` where `player_id`=:player_id";
          $stmt = $conn->prepare($query);
          $stmt->bindValue('player_id', $row['id'], PDO::PARAM_STR);
          $stmt->execute();
          $count = $stmt->rowCount();
          $row   = $stmt->fetch(PDO::FETCH_ASSOC);
          if($count == 1 && !empty($row)) {
            echo "Detecté <br>";
          }
          $setLastConnection = "UPDATE players_lastconnection SET lastconnection=".time()." WHERE player_id=".$_SESSION['sess_user_id']." ";
          $conn->exec($setLastConnection);
          echo "connection establised";
        } catch(PDOException $e) {
          echo $setLastConnection . "<br>" . $e->getMessage();
        }


        header('location:../home.php');
       
      } else {
        $msg = "Invalid username and password!";
        echo $msg;
      }
    } catch (PDOException $e) {
      echo "Error : ".$e->getMessage();
    }
  }
}

require("endconn.php");
?>