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
    <link rel="stylesheet" href="./css/_style.css">
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
            <input type="hidden" name="document_attestation" id="document_informations" value="1">
            <legend>Informations du fichier</legend>
            <span id="document_convention">
                <div>
                    <label for="">CONVENTION:</label>
                </div>
            </span>
            <span id="document_attestation">
                <div>
                    <label for="poste_occupe">Poste occupé par le stagiaire:</label>
                    <input type="text" name="poste_occupe" id="poste_occupe">
                </div>
                <?php for($tache = 1 ; $tache <= 6 ; $tache++) { ?>
                    <div class="<?=($tache > 1 ? 'hidden':'') ?>">
                        <label for="tache_effectuee_<?=$tache?>">Tâche n°<?=$tache?> effectuée par le stagiaire:</label>
                        <input type="text" class="tache_effectuee_" name="tache_effectuee_<?=$tache?>" id="tache_effectuee_<?=$tache?>" onchange="loadNextInput('tache_effectuee_', this, <?=$tache + 1?>);">
                    </div>
                <?php } ?>
                <?php for($observation = 1 ; $observation <= 4 ; $observation++) { ?>
                    <div class="<?=($observation > 1 ? 'hidden':'') ?>">
                        <label for="observation_tuteur_<?=$observation?>">Observation du tuteur n°<?=$observation?>:</label>
                        <input type="text" class="observation_tuteur_" name="observation_tuteur_<?=$observation?>" id="observation_tuteur_<?=$observation?>" onchange="loadNextInput('observation_tuteur_', this, <?=$observation + 1?>);">
                    </div>
                <?php } ?>
            </span>
            <span id="document_evaluation">
                <div>
                    <label for="">EVALUATION:</label>
                </div>
            </span>
            <span id="document_presence">
                <div>
                    <label for="">PRESENCE:</label>
                </div>
            </span>
            <span id="document_livret_evaluation">
                <div>
                    <label for="">LIVRET:</label>
                </div>
            </span>
        </fieldset>
        <button type="submit">Voir le PDF</button>
    </form>
    <script src="./js/_global.js"></script>
    <script>
        updateForm();
    </script>
</body>

</html>