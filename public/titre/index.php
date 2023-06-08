<?php
require __DIR__ . '/../../src/m/connect.php';

$documents = $db->query("SELECT * FROM documents ORDER BY nom_document;")->fetchAll(PDO::FETCH_ASSOC);
$stagiaires = $db->query("SELECT * FROM stagiaires WHERE id_stage IS NOT NULL ORDER BY nom_stagiaire;")->fetchAll(PDO::FETCH_ASSOC);
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
    <form action="./viewer.php" method="post">
        <fieldset>
            <legend>Informations générales pour pré-remplir le formulaire</legend>
            <div>
                <label for="document">Document à générer:</label>
                <select name="document" id="document" onchange="updateForm();">
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
                            <?php foreach ($stagiaires as $stagiaire) { 
                                if($stagiaire['id_session'] == $session['id_session']) { ?>
                                <option value="<?= $stagiaire['id_stagiaire'] ?>"><?= $stagiaire['prenom_stagiaire'] ?>&nbsp;<?= $stagiaire['nom_stagiaire'] ?></option>
                            <?php }} ?>
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
        </fieldset>
        <fieldset>
            <legend>Informations du fichier</legend>
            <div id="document_attestation">
                <input type="hidden" name="document_attestation" value="1">
                <label for="poste_occupe">Poste occupé par le stagiaire:</label>
                <input type="text" name="poste_occupe" id="poste_occupe">
                <label for="tache_effectuee_1">Tâche n°1 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_1" id="tache_effectuee_1">
                <label for="tache_effectuee_2">Tâche n°2 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_2" id="tache_effectuee_2">
                <label for="tache_effectuee_3">Tâche n°3 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_3" id="tache_effectuee_3">
                <label for="tache_effectuee_4">Tâche n°4 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_4" id="tache_effectuee_4">
                <label for="tache_effectuee_5">Tâche n°5 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_5" id="tache_effectuee_5">
                <label for="tache_effectuee_6">Tâche n°6 effectuée par le stagiaire:</label>
                <input type="text" name="tache_effectuee_6" id="tache_effectuee_6">
            </div>
        </fieldset>
        <button type="submit">Voir le PDF</button>
    </form>
    <script src="./js/_global.js"></script>
</body>

</html>