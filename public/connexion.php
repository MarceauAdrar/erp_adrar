<?php
session_start();
$csrfToken = bin2hex(random_bytes(32)); // Génère un jeton CSRF unique
$_SESSION['csrf_token'] = $csrfToken;
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADRAR ERP - Connexion</title>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/connexion.css">
</head>

<body>
    <section>
        <div class="gauche">
            <img src="img/femme.png" alt="">
        </div>
        <div class="droit">
            <div>
                <h1 class="text-white">Re bienvenue sur l'ERP</h1>
                <form action="../src/c/c_requetes.php" method="post">
                    <div class="<?= (isset($_GET['message']) && !empty($_GET['message']) ? "" : "hidden ") ?>text-center alert <?= (isset($_GET['type']) && !empty($_GET['type']) && $_GET['type'] == "error" ? "alert-danger" : "alert-info") ?>"><?= @urldecode($_GET['message']) ?></div>
                    <input type="hidden" name="form_login_csrf" value="<?= $csrfToken ?>">
                    <div>
                        <label for="form_login_username" class="text-white">Nom d'utilisateur</label>
                        <input type="text" name="form_login_username" placeholder="johndoe" autocomplete="off">
                        <select name="form_login_dns">
                            <option value="-1">Aucun DNS</option>
                            <option value="@adrar-formation.com">@adrar-formation.com</option>
                            <option value="@adrar-numerique.com">@adrar-numerique.com</option>
                        </select>
                    </div>
                    <div>
                        <label for="form_login_pass" class="text-white">Mot de passe</label>
                        <input type="password" name="form_login_pass" placeholder="motdepasse" autocomplete="off">
                    </div>
                    <p class="text-white">Mot de passe oublié ? <a href="oublie.php">Génèrez-en un nouveau</a></a></p>
                    <input type="submit" value="Se connecter" class="btn btn-primary full-width text-white">
                </form>
            </div>
        </div>
    </section>
</body>

</html>