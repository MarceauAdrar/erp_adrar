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
            <img src="img/homme.png" alt="">
        </div>
        <div class="droit">
            <div>
                <h1 class="text-white">Bienvenue sur l'ERP</h1>
                <form action="../src/c/c_requetes.php" method="post">
                    <input type="hidden" name="for_signup_csrf" value="<?= $csrfToken ?>">
                    <div>
                        <label for="form_signup_code" class="text-white">Code reçu (6 chiffres, valable 1 semaine)</label>
                        <input type="text" name="form_signup_code" placeholder="<?=random_int(100000, 999999)?>">
                        <p class="text-white">Le code ne fonctionne pas ou n'est plus valide ? <a href="oublie.php">Génèrez-en un nouveau</a></a></p>
                    </div>
                    <input type="submit" value="S'inscrire" class="btn btn-primary full-width text-white">
                </form>
            </div>
        </div>
    </section>
</body>

</html>