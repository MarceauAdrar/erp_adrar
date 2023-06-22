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
    <title>Regénération d'un code d'accès temporaire</title>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/oublie.css">
</head>

<body>
    <section>
        <div class="gauche">
            <img src="img/homme.png" alt="">
        </div>
        <div class="droit">
            <div>
                <h1 class="text-white">Regénération d'un code d'accès temporaire</h1>
                <form action="../src/c/c_requetes.php" method="post">
                    <input type="hidden" name="form_forgotten_csrf" value="<?= $csrfToken ?>">
                    <div>
                        <label for="form_forgotten_mail" class="text-white">Mail associé à la démarche</label>
                        <input type="text" name="form_forgotten_mail" placeholder="johndoe@adrar-formation.com">
                    </div>
                    <input type="submit" value="Envoyer" class="btn btn-primary full-width text-white">
                </form>
            </div>
        </div>
    </section>
</body>

</html>