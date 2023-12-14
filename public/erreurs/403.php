<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#ffffff">
    <meta name="description" content="ERP de l'ADRAR. Connectez-vous pour en voir plus.">
    <script src="https://kit.fontawesome.com/b478fcca05.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<?= $_SERVER['REQUEST_SCHEME'] ?>://<?= $_SERVER['SERVER_NAME'] ?>/erp/public/css/_reset.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="<?= $_SERVER['REQUEST_SCHEME'] ?>://<?= $_SERVER['SERVER_NAME'] ?>/erp/public/css/_style.css?v=<?= uniqid() ?>">
    <title>Accueil - ERP</title>
</head>

<body>
    <div class="container">
        <div class="sidenav">
            <?= file_get_contents('../sidenav.php') ?>
        </div>
        <div class="main">
            <h2>Erreur 403</h2>
            <p>Vous n'êtes pas autorisé à consulter ce dossier.</p>
        </div>
    </div>
</body>

</html>