<?php
require_once __DIR__ . '/../../src/m/connect.php';

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
                        <optgroup label="<?= $session['nom_session'] ?>">
                            <?php foreach ($stagiaires as $stagiaire) {
                                if ($stagiaire['id_session'] == $session['id_session']) { ?>
                                    <option value="<?= $stagiaire['id_stagiaire'] ?>"><?= $stagiaire['prenom_stagiaire'] ?>&nbsp;<?= $stagiaire['nom_stagiaire'] ?></option>
                            <?php }
                            } ?>
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
                    <label for="nom_entreprise_convention">Nom de l'entreprise:</label>
                    <input type="text" name="nom_entreprise_convention" id="nom_entreprise_convention">
                </div>
                <div>
                    <label for="tel_entreprise_convention">Téléphone de l'entreprise:</label>
                    <input type="text" name="tel_entreprise_convention" id="tel_entreprise_convention">
                </div>
                <div>
                    <label for="fax_entreprise_convention">Fax de l'entreprise:</label>
                    <input type="text" name="fax_entreprise_convention" id="fax_entreprise_convention">
                </div>
                <div>
                    <label for="siret_entreprise_convention">SIRET:</label>
                    <input type="text" name="siret_entreprise_convention" id="siret_entreprise_convention">
                </div>
                <div>
                    <label for="effectif_entreprise_convention">Effectif salarié:</label>
                    <input type="number" name="effectif_entreprise_convention" id="effectif_entreprise_convention">
                </div>
                <div>
                    <label for="ape_entreprise_convention">Code APE:</label>
                    <input type="text" name="ape_entreprise_convention" id="ape_entreprise_convention">
                </div>
                <div>
                    <label for="representant_entreprise_convention">Représentant (NOM Prénom):</label>
                    <input type="text" name="representant_entreprise_convention" id="representant_entreprise_convention">
                </div>
                <div>
                    <label for="poste_representant_entreprise_convention">Poste du représentant:</label>
                    <input type="text" name="poste_representant_entreprise_convention" id="poste_representant_entreprise_convention">
                </div>
            </span>
            <span id="document_attestation">
                <div>
                    <label for="poste_occupe_attestation">Poste occupé par le stagiaire:</label>
                    <input type="text" name="poste_occupe_attestation" id="poste_occupe_attestation">
                </div>
                <?php for ($tache = 1; $tache <= 6; $tache++) { ?>
                    <div class="<?= ($tache > 1 ? 'hidden' : '') ?>">
                        <label for="tache_effectuee_attestation_<?= $tache ?>">Tâche n°<?= $tache ?> effectuée par le stagiaire:</label>
                        <input type="text" class="tache_effectuee_attestation_" name="tache_effectuee_attestation_<?= $tache ?>" id="tache_effectuee_attestation_<?= $tache ?>" onchange="loadNextInput('tache_effectuee_attestation_', this, <?= $tache + 1 ?>);">
                    </div>
                <?php } ?>
                <?php for ($observation = 1; $observation <= 4; $observation++) { ?>
                    <div class="<?= ($observation > 1 ? 'hidden' : '') ?>">
                        <label for="observation_tuteur_attestation_<?= $observation ?>">Observation du tuteur n°<?= $observation ?>:</label>
                        <input type="text" class="observation_tuteur_attestation_" name="observation_tuteur_attestation_<?= $observation ?>" id="observation_tuteur_attestation_<?= $observation ?>" onchange="loadNextInput('observation_tuteur_attestation_', this, <?= $observation + 1 ?>);">
                    </div>
                <?php } ?>
            </span>
            <span id="document_evaluation">
                <div>
                    <label for="nom_entreprise_evaluation">Nom de l'entreprise:</label>
                    <input type="text" name="nom_entreprise_evaluation" id="nom_entreprise_evaluation">
                </div>
                <?php for ($tache = 1; $tache <= 10; $tache++) { ?>
                    <div class="<?= ($tache > 1 ? 'hidden' : '') ?>">
                        <label for="tache_effectuee_evaluation_<?= $tache ?>">Tâche n°<?= $tache ?> effectuée par le stagiaire:</label>
                        <input type="text" class="tache_effectuee_evaluation_" name="tache_effectuee_evaluation_<?= $tache ?>" id="tache_effectuee_evaluation_<?= $tache ?>" onchange="loadNextInput('tache_effectuee_evaluation_', this, <?= $tache + 1 ?>);">
                    </div>
                <?php } ?>
                <?php for ($travaux = 1; $travaux <= 2; $travaux++) { ?>
                    <div class="<?= ($travaux > 1 ? 'hidden' : '') ?>">
                        <label for="travaux_difficiles_evaluation_<?= $travaux ?>">Travaus ayant donnés des difficultés n°<?= $travaux ?> au stagiaire:</label>
                        <input type="text" class="travaux_difficiles_evaluation_" name="travaux_difficiles_evaluation_<?= $travaux ?>" id="travaux_difficiles_evaluation_<?= $travaux ?>" onchange="loadNextInput('travaux_difficiles_evaluation_', this, <?= $travaux + 1 ?>);">
                    </div>
                <?php } ?>
                <?php for ($ptsForts = 1; $ptsForts <= 2; $ptsForts++) { ?>
                    <div class="<?= ($ptsForts > 1 ? 'hidden' : '') ?>">
                        <label for="points_forts_evaluation_<?= $ptsForts ?>">Point fort n°<?= $ptsForts ?> du stagiaire:</label>
                        <input type="text" class="points_forts_evaluation_" name="points_forts_evaluation_<?= $ptsForts ?>" id="points_forts_evaluation_<?= $ptsForts ?>" onchange="loadNextInput('points_forts_evaluation_', this, <?= $ptsForts + 1 ?>);">
                    </div>
                <?php } ?>
                <?php for ($ptsATravailler = 1; $ptsATravailler <= 2; $ptsATravailler++) { ?>
                    <div class="<?= ($ptsATravailler > 1 ? 'hidden' : '') ?>">
                        <label for="points_a_travailler_evaluation_<?= $ptsATravailler ?>">Point à travailler n°<?= $ptsATravailler ?> du stagiaire:</label>
                        <input type="text" class="points_a_travailler_evaluation_" name="points_a_travailler_evaluation_<?= $ptsATravailler ?>" id="points_a_travailler_evaluation_<?= $ptsATravailler ?>" onchange="loadNextInput('points_a_travailler_evaluation_', this, <?= $ptsATravailler + 1 ?>);">
                    </div>
                <?php } ?>
                <?php for ($conseil = 1; $conseil <= 2; $conseil++) { ?>
                    <div class="<?= ($conseil > 1 ? 'hidden' : '') ?>">
                        <label for="conseil_au_stagiaire_evaluation_<?= $conseil ?>">Conseil n°<?= $conseil ?> pour le stagiaire:</label>
                        <input type="text" class="conseil_au_stagiaire_evaluation_" name="conseil_au_stagiaire_evaluation_<?= $conseil ?>" id="conseil_au_stagiaire_evaluation_<?= $conseil ?>" onchange="loadNextInput('conseil_au_stagiaire_evaluation_', this, <?= $conseil + 1 ?>);">
                    </div>
                <?php } ?>
                <div>
                    <label for="appreciations_entreprise_evaluation">Appréciations d'ensemble de l'entreprise:</label>
                    <div>
                        <textarea name="appreciations_entreprise_evaluation" id="appreciations_entreprise_evaluation" cols="30" rows="10"></textarea>
                    </div>
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