<?php
require_once __DIR__ . '/../../src/m/connect.php';

$documents = $db->query("SELECT * FROM documents ORDER BY document_nom;")->fetchAll(PDO::FETCH_ASSOC);
$stagiaires = $db->query("SELECT * FROM stagiaires WHERE 1 ORDER BY stagiaire_nom;")->fetchAll(PDO::FETCH_ASSOC);
$sessions = $db->query("SELECT * FROM sessions ORDER BY session_nom;")->fetchAll(PDO::FETCH_ASSOC);
$formateurs = $db->prepare("SELECT * FROM formateurs WHERE id_secteur=:id_secteur AND formateur_actif IS TRUE ORDER BY formateur_nom;");
$formateurs->bindValue(':id_secteur', $_SESSION['utilisateur']['id_secteur']);
$formateurs->execute();
$formateurs = $formateurs->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#ffffff">
    <meta name="description" content="ERP de l'ADRAR. Connectez-vous pour en voir plus.">
    <link rel="apple-touch-icon" sizes="180x180" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/img/favicon-16x16.png">
    <link rel="manifest" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/site.webmanifest">
    <script src="https://kit.fontawesome.com/b478fcca05.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/_reset.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="css/_style.css?v=<?= uniqid() ?>">
    <title>Génération de documents à la volée</title>
</head>

<body>
    <div class="container">
        <div class="sidenav">
            <?= file_get_contents('sidenav.php') ?>
        </div>
        <div class="main">
            <form action="./viewer.php" method="post">
                <fieldset>
                    <legend>Informations générales pour pré-remplir le formulaire</legend>
                    <div>
                        <label for="document">Document à générer:</label>
                        <select name="document" id="document" onchange="updateForm();">
                            <?php foreach ($documents as $document) { ?>
                                <option value="<?= $document['document_index'] ?>"><?= $document['document_nom'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div>
                        <label for="stagiaire">Stagiaire:</label>
                        <select name="stagiaire" id="stagiaire">
                            <?php
                            foreach ($sessions as $session) { ?>
                                <optgroup label="<?= $session['session_nom'] ?>">
                                    <?php foreach ($stagiaires as $stagiaire) {
                                        if ($stagiaire['id_session'] == $session['session_id']) { ?>
                                            <option value="<?= $stagiaire['stagiaire_id'] ?>"><?= $stagiaire['stagiaire_prenom'] ?>&nbsp;<?= $stagiaire['stagiaire_nom'] ?></option>
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
                                <option value="<?= $formateur['formateur_id'] ?>"><?= $formateur['formateur_prenom'] ?>&nbsp;<?= $formateur['formateur_nom'] ?></option>
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
        </div>
    </div>
    <script src="js/_global.js?v=<?= uniqid() ?>"></script>
    <script>
        updateForm();
    </script>
</body>

</html>