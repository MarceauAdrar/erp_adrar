<?php
include_once __DIR__ . '/../src/m/connect.php';
$csrfToken = bin2hex(random_bytes(32)); // Génère un jeton CSRF unique
$_SESSION['csrf_token'] = $csrfToken;
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADRAR ERP - Code</title>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/code.css">
</head>

<body onload="actionCode();">
    <div class="container justify-content-center">
        <div class="row">
            <div class="col-12 text-center">
                <img src="img/logo_adrar.png" alt="Logo de l'ADRAR">
                <h1 class="text-white">Bienvenue sur l'ERP</h1>
            </div>
            <div class="col-12">
                <form action="../src/c/c_requetes.php" method="post">
                    <div class="<?= (isset($_GET['message']) && !empty($_GET['message']) ? "" : "hidden ") ?>text-center alert <?= (isset($_GET['type']) && !empty($_GET['type']) && $_GET['type'] == "error" ? "alert-danger" : "alert-info") ?>"><?= @urldecode($_GET['message']) ?></div>
                    <input type="hidden" name="form_signup_csrf" value="<?= $csrfToken ?>">
                    <div>
                        <label for="form_signup_code" class="text-white">Code reçu (6 chiffres, valable 1 semaine)</label>
                        <input type="text" name="form_signup_code" placeholder="<?= random_int(100000, 999999) ?>" value="<?= @$_GET['code'] ?>" autocomplete="off">
                    </div>
                    <input type="submit" value="S'inscrire" class="btn btn-primary full-width text-white">
                </form>
            </div>
        </div>
    </div>

    <script src="js/code.js"></script>
</body>

</html>