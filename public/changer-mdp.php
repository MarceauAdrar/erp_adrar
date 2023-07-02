<?php
include_once __DIR__ . '/../src/m/connect.php';

if (!isset($_SESSION['code_formateur'])) {
    header("Location: ../public/connexion.php");
}

$csrfToken = bin2hex(random_bytes(32)); // Génère un jeton CSRF unique
$_SESSION['csrf_token'] = $csrfToken;
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Définition de votre mot de passe</title>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/change_password.css">
</head>

<body>
    <img src="img/logo_adrar.png" alt="Logo de l'ADRAR">
    <h1 class="text-white">Définition d'un mot de passe</h1>
    <form action="../src/c/c_requetes.php" method="post">
        <div class="<?= (isset($_GET['message']) && !empty($_GET['message']) ? "" : "hidden ") ?>text-center alert <?= (isset($_GET['type']) && !empty($_GET['type']) && $_GET['type'] == "error" ? "alert-danger" : "alert-info") ?>"><?= @urldecode($_GET['message']) ?></div>
        <input type="hidden" name="form_change_pass_csrf" value="<?= $csrfToken ?>">
        <div>
            <label for="form_change_pass" class="text-white">Votre nouveau mot de passe</label>
            <input type="password" name="form_change_pass" placeholder="M0t-D3-p4sSe!" autocomplete="new-password">
        </div>
        <div>
            <label for="form_change_pass_bis" class="text-white">Confirmez votre nouveau mot de passe</label>
            <input type="password" name="form_change_pass_bis" placeholder="M0t-D3-p4sSe!" autocomplete="new-password">
        </div>
        <input type="submit" value="Changer le mot de passe" class="btn btn-primary full-width text-white">
    </form>
</body>

</html>