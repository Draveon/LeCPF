<?php
    $login = $_POST['login']; // Mot de passe saisi par l'utilisateur
    $password = $_POST['password']; // Mot de passe saisi par l'utilisateur
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
    include 'user_functions.php';
    
    if (validateCredentials($login, $hashedPassword)) {
        // Redirection vers l'index après l'inscription réussie
        header("Location: index.php");
        exit;
    }
?>