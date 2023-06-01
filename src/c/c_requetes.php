<?php

include_once __DIR__ . '/../m/connect.php';

if (isset($_POST['recupererDonnees']) && !empty($_POST['recupererDonnees'])) {
    $html = '';
    $sessions = array();
    foreach (recupererDonnees() as $data) {
        $head = '';
        $footer = '';
        if (!in_array($data['nom_session'], $sessions)) {
            array_push($sessions, $data['nom_session']);
            $head = '
            <table class="table-stages" id="table-stages-' . $data['nom_session'] . '">
                <thead>
                    <tr>
                        <th>Session</th>
                        <th>NOM</th>
                        <th>Prénom</th>
                        <th>Convention de stage</th>
                        <th>Horaire mois 1</th>
                        <th>Horaire mois 2</th>
                        <th>Horaire mois 3</th>
                        <th>Attestation (envoyée/reçue)</th>
                        <th>Évaluation (demande/reçue)</th>
                        <th>Envoi/Relance</th>
                    </tr>
                </thead>
                <tbody>';
        }
        $html .= $head . '
        <tr>
            <td>' . strtoupper($data['nom_session']) . '</td>
            <td>' . strtoupper($data['nom']) . '</td>
            <td>' . ucfirst($data['prenom']) . '</td>
            <td class="' . (!empty($data['convention_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['convention_recue']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_1']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_1']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_2']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_2']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_3']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_3']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['attestation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['attestation_recue']) ? '<a href="/">Voir</a>' : '') . '&nbsp;' . (!empty($data['attestation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['attestation_recue']) ? "Oui" : "Non") . '</td>
            <td class="' . (!empty($data['evaluation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['evaluation_recue']) ? '<a href="/">Voir</a>' : '') . '&nbsp;' . (!empty($data['evaluation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['evaluation_recue']) ? "Oui" : "Non") . '</td>
            <td ' . ($data['compteur_demandes'] === 0 ? 'premiere_demande' : 'plusieurs_demandes') . '>' . ($data['compteur_demandes'] === 0 ? '<a role="button" onclick="attribuerId(' . $data['id'] . ', false);" data-modal="modal">1ère demande</a>' : '<a role="button" onclick="attribuerId(' . $data['id'] . ', true);" data-modal="modal">Relance</a>') . '</td>
        </tr>' . $footer;
    }
    die(json_encode($html));
}

if ((isset($_POST['envoyerMail']) && !empty($_POST['envoyerMail'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']))) {
    $documents = array();
    $documents_libelles = array();
    $horaires = array();
    if(isset($_POST['horaires_mois_1']) && $_POST['horaires_mois_1'] == "true") {
        array_push($horaires, 1);
    } 
    if(isset($_POST['horaires_mois_2']) && $_POST['horaires_mois_2'] == "true") {
        array_push($horaires, 2);
    } 
    if(isset($_POST['horaires_mois_3']) && $_POST['horaires_mois_3'] == "true") {
        array_push($horaires, 3);
    } 
    if(!empty($horaires)) {
        array_push($documents, 'presence');
        array_push($documents_libelles, "L'entiereté des heures de présence (Mois n°" . implode(", n°", $horaires) . ": Elles sont essentielles pour assurer que le stagiaire a bien travaillé dans votre structure.");
    }
    if(isset($_POST['convention_de_stage']) && $_POST['convention_de_stage'] == "true") {
        array_push($documents, 'convention');
        array_push($documents_libelles, 'Convention de stage : Veuillez nous fournir une copie signée de votre convention de stage. Assurez-vous que tous les détails, sont correctement remplis.');
    } 
    if(isset($_POST['attestation_de_stage']) && $_POST['attestation_de_stage'] == "true") {
        array_push($documents, 'attestation');
        array_push($documents_libelles, 'Attestation de stage : Veuillez nous fournir une copie signée de votre attestation de stage. Assurez-vous que tous les détails, sont correctement remplis.');
    } 
    if(isset($_POST['evaluation_de_stage']) && $_POST['evaluation_de_stage'] == "true") {
        array_push($documents, 'evaluation');
        array_push($documents_libelles, 'Évaluation de stage : Afin de pouvoir avoir un retour sur la prestation du stagiaire, il est important que ce document nous soit retourné.');
    }
    die(json_encode(envoyerMail($_POST['id_stagiaire'], $documents, $documents_libelles, $_POST['relance'])));
}