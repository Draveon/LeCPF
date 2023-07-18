<?php
    include 'administration/connect.php';
    $name = $_POST['login']; // Mot de passe saisi par l'utilisateur
    $password = $_POST['password']; // Mot de passe saisi par l'utilisateur
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
    $email = $_POST['email']; // Mot de passe saisi par l'utilisateur
    
    // Insérer le nom d'utilisateur et le mot de passe haché dans la base de données
    $stmt = $conn->prepare("INSERT INTO players (name, password, email) VALUES (:name, :password, :email)");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':password', $hashedPassword);
    $stmt->bindParam(':email', $email);
    $stmt->execute();
   
    // Redirection vers l'index après l'inscription réussie
    header("Location: index.php");
    exit;
?>