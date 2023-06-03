<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Automatisation documents stage</title>
    <link rel="stylesheet" href="css/stage.css?v=<?= uniqid() ?>">
</head>

<body>
    <label for="id_formateur">Sélectionner le formateur associé à la démarche:</label>
    <select id="id_formateur"></select>
    <label for="nom_session">Sélectionner la session a exporter:</label>
    <select id="nom_session"></select>
    <a onclick="exporterStages();">Exporter !</a>
    <div id="tables-stages"></div>
    <div class="modal" id="modal">
        <div class="modal-bg modal-exit"></div> <!-- Ajouter la classe "modal-exit" si on souhaite quitter la modale en cliquant à l'extérieur -->
        <div class="modal-container">
            <button class="modal-close modal-exit">X</button>
            <section id="liste_documents">

            </section>
            <button class="modal-exit">Annuler</button>
            <button class="modal-send modal-exit" onclick="envoyerMail();">Envoyer</button>
        </div>
    </div>
    <script src="js/stage.js?v=<?= uniqid() ?>"></script>
</body>

</html>