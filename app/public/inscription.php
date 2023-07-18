<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion/Inscription</title>
    <style>
        /* Ajoutez ici votre CSS personnalisé */
    </style>
</head>
<body>
<?php
// Initialisation de la session
session_start();
include 'start.php';
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



<!-- Formulaire d'inscription -->
<h2>Inscription</h2>
<form method="POST" action="register.php">
	<input type="hidden" name="token" value="<?php echo $_SESSION['token']; ?>">
    <label for="login">Nouveau login:</label>
    <input type="text" id="login" name="login" required><br>
    <label for="password">Nouveau mot de passe:</label>
    <input type="password" id="password" name="password" required><br>
	<label for="email">Email:</label>
	<input type="email" id="email" name="email" required><br>
    <button type="submit">S'inscrire</button>
</form>


<!-- Formulaire de connexion -->
<h2>Connexion</h2>
<form method="POST" action="connect_player.php">
    <input type="hidden" name="token" value="<?php echo $_SESSION['token']; ?>">
    <label for="login">Login:</label>
    <input type="text" id="login" name="login" required><br>
    <label for="password">Mot de passe:</label>
    <input type="password" id="password" name="password" required><br>
    <button type="submit">Se connecter</button>
	<a href="inscription.php">S'inscrire</a>
</form>


<!-- Bouton de retour vers l'index -->
<a href="index.php">Retour à l'index</a>
</body>
</html>
