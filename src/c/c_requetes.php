<?php

include_once __DIR__ . '/../m/connect.php';

if (isset($_POST['recupererDonneesFiltres']) && !empty($_POST['recupererDonneesFiltres'])) {    
    $formateurs = '<option value="0"' . (!isset($_SESSION['filtres']['id_formateur']) || empty($_SESSION['filtres']['id_formateur']) ? " selected" : "") . '>Tous</option>';
    foreach(recupererFormateurs() as $formateur) {
        $formateurs .= '<option value="' . $formateur['id_formateur'] . '"' . (isset($_SESSION['filtres']['id_formateur']) && $_SESSION['filtres']['id_formateur'] == $formateur['id_formateur'] ? " selected" : "") . '>' . strtoupper($formateur['nom_formateur']) . " " . ucwords($formateur['prenom_formateur']) . '</option>';
    }
    $sessions = '<option value="0"' . (!isset($_SESSION['filtres']['nom_session']) || empty($_SESSION['filtres']['nom_session']) ? " selected" : "") . '>Toutes</option>';
    foreach(recupererSessions() as $session) {
        $sessions .= '<option value="' . $session['nom_session'] . '"' . (isset($_SESSION['filtres']['nom_session']) && $_SESSION['filtres']['nom_session'] == $session['nom_session'] ? " selected" : "") . '>' . strtoupper($session['nom_session']) . '</option>';
    }

    die(json_encode(array(
        "sessions" => $sessions, 
        "formateurs" => $formateurs
    )));
}

if (isset($_POST['recupererDonnees']) && !empty($_POST['recupererDonnees'])) {
    $_SESSION['filtres']['id_formateur'] = filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT);
    $_SESSION['filtres']['nom_session'] = filter_var($_POST['nom_session'], FILTER_SANITIZE_SPECIAL_CHARS);

    $stages = '';
    $liste_sessions = array();
    $head = '
            <table class="table-stages" id="table-stages">
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
                        <th>Évaluation (demandée/reçue)</th>
                        <th>Envoi/Relance</th>
                    </tr>
                </thead>
                <tbody>';
    $tbody = '';
    
    // var_dump($_SESSION['filtres']['nom_session']);
    foreach (recupererStages($_SESSION['filtres']['id_formateur'], $_SESSION['filtres']['nom_session']) as $data) {
        $lienTransiPro = ($data['lien_serveur'] . '_' . strtoupper($data['nom_stagiaire']) . ' ' . ucwords($data['prenom_stagiaire']) . ' Transition Pro\Ma Dynamique Emploi\Stage 1\\');
        $lienClassique = ($data['lien_serveur'] . strtoupper($data['nom_stagiaire']) . ' ' . ucwords($data['prenom_stagiaire']) . '\Ma Dynamique Emploi\Stage 1\\');
        $tbody .= '
        <tr>
            <td>' . strtoupper($data['nom_session']) . '</td>
            <td>' . strtoupper($data['nom_stagiaire']) . '</td>
            <td>' . ucfirst($data['prenom_stagiaire']) . '</td>
            <td class="' . (!empty($data['convention_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['convention_recue']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_1']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_1']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_2']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_2']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_3']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_3']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['attestation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['attestation_recue']) ? '<button class="btn" data-clipboard-text="Lien transition pro">Transition pro</button><button class="btn" data-clipboard-text="Lien classique">Classique</button>' : '') . '&nbsp;' . (!empty($data['attestation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['attestation_recue']) ? "Oui" : "Non") . '</td>
            <td class="' . (!empty($data['evaluation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['evaluation_recue']) ? '<button class="btn" data-clipboard-text="Lien transition pro">Transition pro</button><button class="btn" data-clipboard-text="Lien classique">Classique</button>' : '') . '&nbsp;' . (!empty($data['evaluation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['evaluation_recue']) ? "Oui" : "Non") . '</td>
            <td ' . (!empty($data['convention_recue']) && !empty($data['horaires_recues_1']) && !empty($data['horaires_recues_2']) && !empty($data['horaires_recues_3']) && !empty($data['attestation_recue']) && !empty($data['evaluation_recue']) ? "demandes_terminees" : ($data['compteur_demandes'] === 0 ? 'premiere_demande' : 'plusieurs_demandes')) . '>' . (!empty($data['convention_recue']) && !empty($data['horaires_recues_1']) && !empty($data['horaires_recues_2']) && !empty($data['horaires_recues_3']) && !empty($data['attestation_recue']) && !empty($data['evaluation_recue']) ? "Terminé !" : ($data['compteur_demandes'] === 0 ? '<a role="button" onclick="recupererDocumentsManquants(' . $data['id_stagiaire'] . ');" data-modal="modal">1ère demande</a>' : '<a role="button" onclick="recupererDocumentsManquants(' . $data['id_stagiaire'] . ');" data-modal="modal">Relance</a>')) . '</td>
        </tr>';
    }

    $stages = $head . 
                $tbody . 
                '</tbody>
            </table>';

    die(json_encode(array(
        "stages" => $stages
    )));
}

if ((isset($_POST['recupererDocumentsManquants']) && !empty($_POST['recupererDocumentsManquants'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']))) {
    $id_stagiaire = filter_input(INPUT_POST, 'id_stagiaire', FILTER_VALIDATE_INT);

    $req = $db->prepare("SELECT convention_recue, horaires_recues_1, horaires_recues_2, horaires_recues_3, attestation_recue, evaluation_recue, compteur_demandes
                        FROM stagiaires
                        WHERE id_stagiaire=:id_stagiaire;");
    $req->bindParam(":id_stagiaire", $id_stagiaire);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);
    $html = "";
    foreach ($stagiaire as $document => $recu) {
        if (!$recu) {
            if(empty($html)) {
                $html .= '
                    <input type="hidden" name="id_stagiaire" id="id_stagiaire" value="' . $id_stagiaire . '">
                    <input type="hidden" name="relance" id="relance" value="' . ($stagiaire['compteur_demandes'] > 1 ? true : false) . '">';
            }
            if($document === "convention_recue") {
                $html .= '
                    <div>
                        <label for="convention">
                            <input type="checkbox" name="convention" id="convention" checked>
                            Convention de stage
                        </label>
                    </div>';
            } elseif($document === "horaires_recues_1") {
                $html .= '
                <div>
                    <label for="horaires_mois_1">
                        <input type="checkbox" name="horaires_mois_1" id="horaires_mois_1" checked>
                        Horaires mois 1
                    </label>
                </div>';
            } elseif($document === "horaires_recues_2") {
                $html .= '
                <div>
                    <label for="horaires_mois_2">
                        <input type="checkbox" name="horaires_mois_2" id="horaires_mois_2" checked>
                        Horaires mois 2
                    </label>
                </div>';
            } elseif($document === "horaires_recues_3") {
                $html .= '
                <div>
                    <label for="horaires_mois_3">
                        <input type="checkbox" name="horaires_mois_3" id="horaires_mois_3" checked>
                        Horaires mois 3
                    </label>
                </div>';
            } elseif($document === "attestation_recue") {
                $html .= '
                <div>
                    <label for="attestation">
                        <input type="checkbox" name="attestation" id="attestation" checked>
                        Attestation de stage
                    </label>
                </div>';
            } elseif($document === "evaluation_recue") {
                $html .= '
                <div>
                    <label for="evaluation">
                        <input type="checkbox" name="evaluation" id="evaluation" checked>
                        Évaluation de stage
                    </label>
                </div>';
            }
        }
    }
    die($html);
}

if ((isset($_POST['envoyerMail']) && !empty($_POST['envoyerMail'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']) && (isset($_POST['id_formateur']) && !empty($_POST['id_formateur'])))) {
    $documents = array();
    $documents_libelles = array();
    $horaires = array();
    
    $id_stagiaire = filter_input(INPUT_POST, 'id_stagiaire', FILTER_VALIDATE_INT);
    $id_formateur = filter_input(INPUT_POST, 'id_formateur', FILTER_VALIDATE_INT);
    if (isset($_POST['horaires_mois_1']) && $_POST['horaires_mois_1'] == "true") {
        array_push($horaires, 1);
    }
    if (isset($_POST['horaires_mois_2']) && $_POST['horaires_mois_2'] == "true") {
        array_push($horaires, 2);
    }
    if (isset($_POST['horaires_mois_3']) && $_POST['horaires_mois_3'] == "true") {
        array_push($horaires, 3);
    }
    if (!empty($horaires)) {
        array_push($documents, 'presence');
        array_push($documents_libelles, "L'entiereté des heures de présence (Mois n°" . implode(", n°", $horaires) . ": Elles sont essentielles pour assurer que le stagiaire a bien travaillé dans votre structure.");
    }
    if (isset($_POST['convention']) && $_POST['convention'] == "true") {
        array_push($documents, 'convention');
        array_push($documents_libelles, 'Convention de stage : Veuillez nous fournir une copie signée de votre convention de stage. Assurez-vous que tous les détails, sont correctement remplis.');
    }
    if (isset($_POST['attestation']) && $_POST['attestation'] == "true") {
        array_push($documents, 'attestation');
        array_push($documents_libelles, 'Attestation de stage : Veuillez nous fournir une copie signée de votre attestation de stage. Assurez-vous que tous les détails, sont correctement remplis.');
    }
    if (isset($_POST['evaluation']) && $_POST['evaluation'] == "true") {
        array_push($documents, 'evaluation');
        array_push($documents_libelles, 'Évaluation de stage : Afin de pouvoir avoir un retour sur la prestation du stagiaire, il est important que ce document nous soit retourné.');
    }
    die(json_encode(envoyerMail($id_stagiaire, $id_formateur, $documents, $documents_libelles, $_POST['relance'])));
}
