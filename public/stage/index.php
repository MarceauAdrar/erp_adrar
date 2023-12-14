<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#ffffff">
    <meta name="description" content="ERP de l'ADRAR. Connectez-vous pour en voir plus.">
    <script src="https://kit.fontawesome.com/b478fcca05.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/_reset.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="css/_style.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="css/stage.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <script src="//code.jquery.com/jquery-3.5.1.js"></script>
    <script src="//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <title>Automatisation documents stage</title>
</head>

<body>
    <div class="container">
        <div class="sidenav">
            <?= file_get_contents('sidenav.php') ?>
        </div>
        <div class="main">
            <label for="id_formateur">Sélectionner le formateur associé à la démarche:</label>
            <select id="id_formateur" onchange="recupererDonnees();"></select>
            <label for="nom_session">Sélectionner la session a exporter:</label>
            <select id="nom_session" onchange="recupererDonnees();"></select>
            <a class="btn" onclick="exporterStages();">Exporter !</a>
            <div id="tables-stages"></div>
            <div class="modal" id="modal">
                <div class="modal-bg modal-exit"></div> <!-- Ajouter la classe "modal-exit" si on souhaite quitter la modale en cliquant à l'extérieur -->
                <div class="modal-container">
                    <button class="modal-close modal-exit">X</button>
                    <section id="liste_documents">

                    </section>
                    <button class="modal-exit">Annuler</button>
                    <button class="modal-send modal-exit" onclick="envoyerMailTuteur();">Envoyer</button>
                </div>
            </div>
        </div>
    </div>
    <script src="../src/vendor/zenorocha/clipboardjs/dist/clipboard.min.js"></script>
    <script src="js/stage.js?v=<?= uniqid() ?>"></script>
</body>

</html>