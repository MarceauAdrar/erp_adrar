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
    <title>ADRAR ERP - Inscription</title>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/inscription.css">
</head>

<body>
    <section>
        <div class="gauche">

        </div>
        <div class="droit">
            <h1>Re-bienvenue sur l'ERP</h1>
            <form action="../src/c/c_requetes.php" method="post">
                <input type="hidden" name="for_signup_csrf" value="<?= $csrfToken ?>">
                <div>
                    <label for="form_signup_mail">Email</label><br/>
                    <input type="text" name="form_signup_mail">
                </div>
                <div>
                    <label for="form_signup_pass">Mot de passe</label><br/>
                    <input type="text" name="form_signup_pass">
                </div>
                <input type="submit" value="S'inscrire" class="btn btn-primary">
            </form>
        </div>
    </section>
</body>

</html>