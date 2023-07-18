<?php
session_start();
// Vérification du formulaire de connexion
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login']) && isset($_POST['password'])) {
    $login = $_POST['login'];
    $password = $_POST['password'];

    // Validation du login et du mot de passe
    if (validateCredentials($login, $password)) {
        // Authentification réussie, rediriger vers la page sécurisée
        $_SESSION['login'] = $login;
        header('Location: page_securisee.php');
        exit;
    } else {
        // Identifiants invalides, afficher un message d'erreur
        echo '<p>Identifiants invalides. Veuillez réessayer.</p>';
    }
}

// Génération d'un nouveau token anti-bot
$_SESSION['token'] = bin2hex(random_bytes(32));

// Fonction de validation des identifiants
function validateCredentials($login, $password)
{
    // Connexion à la base de données
    include 'administration/connect.php';

    try {

        // Requête pour récupérer le mot de passe haché correspondant au login
        $stmt = $conn->prepare('SELECT password FROM players WHERE name = :login');
        $stmt->execute(['login' => $login]);
        $row = $stmt->fetch();

        if ($row && password_verify($password, $row['password'])) {
            // Mot de passe valide
            return true;
        }
    } catch (PDOException $e) {
        echo 'Erreur de connexion à la base de données : ' . $e->getMessage();
    }

    // Identifiants invalides
    return false;
}
?>
