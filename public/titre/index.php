<?php
require __DIR__ . '/../../src/m/connect.php';

$documents = $db->query("SELECT * FROM documents ORDER BY nom_document;")->fetchAll(PDO::FETCH_ASSOC);
$stagiaires = $db->query("SELECT * FROM stagiaires ORDER BY nom_stagiaire;")->fetchAll(PDO::FETCH_ASSOC);
$sessions = $db->query("SELECT * FROM sessions ORDER BY nom_session;")->fetchAll(PDO::FETCH_ASSOC);
$formateurs = $db->query("SELECT * FROM formateurs ORDER BY nom_formateur;")->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Génération de documents à la volée</title>
</head>

<body>
    <form>
        <div>
            <label for="document">Document à générer:</label>
            <select name="document" id="document">
                <?php foreach ($documents as $document) { ?>
                    <option value="<?= $document['index_document'] ?>"><?= $document['nom_document'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div>
            <label for="stagiaire">Stagiaire:</label>
            <select name="stagiaire" id="stagiaire">
                <?php
                foreach ($sessions as $session) { ?>
                    <optgroup label="<?=$session['nom_session']?>">
                        <?php foreach ($stagiaires as $stagiaire) { ?>
                            <option value="<?= $stagiaire['id_stagiaire'] ?>"><?= $stagiaire['prenom_stagiaire'] ?>&nbsp;<?= $stagiaire['nom_stagiaire'] ?></option>
                        <?php } ?>
                    </optgroup>
                <?php } ?>
            </select>
        </div>
        <div>
            <label for="formateur">Formateur:</label>
            <select name="formateur" id="formateur">
                <?php foreach ($formateurs as $formateur) { ?>
                    <option value="<?= $formateur['id_formateur'] ?>"><?= $formateur['prenom_formateur'] ?>&nbsp;<?= $formateur['nom_formateur'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div>
            <label for="date_production">Date:</label>
            <input type="date" name="date_production" id="date_production">
        </div>
        <a target="_blank" onclick="genererPDF();">Voir le PDF</a>
    </form>
    <script src="../js/_global.js"></script>
</body>

</html>