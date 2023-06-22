<?php

include_once __DIR__ . '/../m/connect.php';

if (isset($_POST['recupererListeFormateurs']) && !empty($_POST['recupererListeFormateurs'])) {
    $tbody_formateurs = '';
    $id_formateur = filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT);
    
    foreach (recupererFormateurs() as $formateur) {
        if($id_formateur == $formateur['id_formateur']) {
            $choix_secteurs = "";
            foreach(recupererSecteurs() as $secteur) {
                $choix_secteurs .= '<option value="'. $secteur['id_secteur'] . '" ' . ($secteur['id_secteur'] == $formateur['id_secteur'] ? 'selected' : '') . '>' . $secteur['nom_secteur'] . '</option>';
            }
            $tbody_formateurs .= '
            <tr>
                <td><input type="text" name="form_formateur_editer_nom" value="' .  $formateur['nom_formateur'] .'"></td>
                <td><input type="text" name="form_formateur_editer_prenom" value="' .  $formateur['prenom_formateur'] .'"></td>
                <td><input type="text" name="form_formateur_editer_mail" value="' .  $formateur['mail_formateur'] .'"></td>
                <td>
                    <div>
                        <label>Téléverser ma signature: (png transparents uniquement)</label>
                        <input type="file" name="form_formateur_editer_signature"/>
                    </div>
                    <button onclick="afficherCanvasSignature(this.nextSibling.nextElementSibling.children[0].getAttribute(\'data-id\'));" id="btn-display-signature-' . $formateur['id_formateur'] . '">Signer manuellement</button>
                    <div class="hidden">
                        <canvas class="box-signature" id="signature-pad-' . $formateur['id_formateur'] . '" data-id="' . $formateur['id_formateur'] . '" width="400" height="200"></canvas>
                        <div>
                            <button id="clear-' . $formateur['id_formateur'] . '">Effacer</button>
                        </div>
                    </div>
                </td>
                <td>
                    <select name="form_formateur_editer_secteur">
                        ' . $choix_secteurs . '
                    </select>
                </td>
                <td><input type="text" name="form_formateur_editer_role" value="' .  $formateur['carte_formateur_role'] .'"></td>
                <td><textarea name="form_formateur_editer_liens">' .  $formateur['carte_formateur_liens'] .'</textarea></td>
                <td><input type="text" name="form_formateur_editer_tel" value="' .  $formateur['carte_formateur_tel'] .'"></td>
                <td><input type="text" name="form_formateur_editer_portable" value="' .  $formateur['carte_formateur_portable'] .'"></td>
                <td></td>
                <td><a href="#" onclick="majFormateur(' . $formateur['id_formateur'] . ');">Mise à jour</a></td>
            </tr>';
        } else {
            $tbody_formateurs .= '
            <tr>
                <td>' . strtoupper($formateur['nom_formateur']) . '</td>
                <td>' . ucwords($formateur['prenom_formateur']) . '</td>
                <td>' . $formateur['mail_formateur'] . '</td>
                <td>' . (empty($formateur['signature_formateur']) ? 'Signature manquante':'<img style="width:150px;height:100px;" src="../src/' . $formateur['signature_formateur'] . '" alt="Signature du formateur"/>') . '</td>
                <td>' . $formateur['nom_secteur'] . '</td>
                <td>' . $formateur['carte_formateur_role'] . '</td>
                <td>' . $formateur['carte_formateur_liens'] . '</td>
                <td>' . $formateur['carte_formateur_tel'] . '</td>
                <td>' . $formateur['carte_formateur_portable'] . '</td>
                <td></td>
                <td><a href="#" onclick="recupererListeFormateurs(' . $formateur['id_formateur'] . ');">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
            </tr>';
        }
    }
    die(json_encode($tbody_formateurs));
} elseif (isset($_POST['recupererListeStagiaires']) && !empty($_POST['recupererListeStagiaires'])) {
    $tbody_stagiaires = '';
    foreach (recupererStagiaires() as $stagiaire) {
        $tbody_stagiaires .= '
        <tr>
            <td>' . strtoupper($stagiaire['nom_stagiaire']) . '</td>
            <td>' . ucwords($stagiaire['prenom_stagiaire']) . '</td>
            <td>' . date_format(new DateTime($stagiaire['date_naissance_stagiaire']), "d/m/Y") . '</td>
            <td>' . $stagiaire['lien_serveur'] . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_stagiaires));
} elseif (isset($_POST['recupererListeStages']) && !empty($_POST['recupererListeStages'])) {
    $tbody_stages = '';
    foreach (recupererStages() as $stage) {
        $tbody_stages .= '
        <tr>
            <td>' . strtoupper($stage['nom_tuteur']) . '</td>
            <td>' . ucwords($stage['prenom_tuteur']) . '</td>
            <td>' . $stage['rue_lieu_stage'] . " " . $stage['cp_lieu_stage'] . " " . $stage['ville_lieu_stage'] . " " . $stage['pays_lieu_stage'] . '</td>
            <td>' . $stage['mail_tuteur'] . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_stages));
} elseif (isset($_POST['recupererListeSessions']) && !empty($_POST['recupererListeSessions'])) {
    $tbody_sessions = '';
    foreach (recupererSessions() as $session) {
        $tbody_sessions .= '
        <tr>
            <td>' . strtoupper($session['nom_session']) . '</td>
            <td>' . $session['duree_stage'] . '</td>
            <td>' . strtoupper($session['sigle_session']) . '</td>
            <td>' . date_format(new DateTime($session['date_debut_session']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['date_fin_session']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['date_debut_stage']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['date_fin_stage']), 'd/m/Y') . '</td>
            <td>' . strtoupper($session['nom_formateur']) . " " . ucwords($session['prenom_formateur']) . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_sessions));
} elseif (isset($_POST['recupererListeSecteurs']) && !empty($_POST['recupererListeSecteurs'])) {
    $tbody_secteurs = '';
    foreach (recupererSecteurs() as $secteur) {
        $tbody_secteurs .= '
        <tr>
            <td>' . ucfirst($secteur['nom_secteur']) . '</td>
            <td><img style="height:100px;" src="./img/' . $secteur['logo_secteur'] . '" alt="Logo du secteur ' . $secteur['nom_secteur'] . '"/></td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_secteurs));
} elseif (isset($_POST['recupererDonneesFiltres']) && !empty($_POST['recupererDonneesFiltres'])) {
    $formateurs = '<option value="0"' . (!isset($_SESSION['filtres']['id_formateur']) || empty($_SESSION['filtres']['id_formateur']) ? " selected" : "") . '>Tous</option>';
    foreach (recupererFormateurs() as $formateur) {
        $formateurs .= '<option value="' . $formateur['id_formateur'] . '"' . (isset($_SESSION['filtres']['id_formateur']) && $_SESSION['filtres']['id_formateur'] == $formateur['id_formateur'] ? " selected" : "") . '>' . strtoupper($formateur['nom_formateur']) . " " . ucwords($formateur['prenom_formateur']) . '</option>';
    }
    $sessions = '<option value="0"' . (!isset($_SESSION['filtres']['nom_session']) || empty($_SESSION['filtres']['nom_session']) ? " selected" : "") . '>Toutes</option>';
    foreach (recupererSessions() as $session) {
        $sessions .= '<option value="' . $session['nom_session'] . '"' . (isset($_SESSION['filtres']['nom_session']) && $_SESSION['filtres']['nom_session'] == $session['nom_session'] ? " selected" : "") . '>' . strtoupper($session['nom_session']) . '</option>';
    }

    die(json_encode(array(
        "sessions" => $sessions,
        "formateurs" => $formateurs
    )));
} elseif (isset($_POST['recupererDonnees']) && !empty($_POST['recupererDonnees'])) {
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
        $lienTransiPro = 'file:///' . ($data['lien_serveur'] . '\\' . '_' . strtoupper($data['nom_stagiaire']) . ' ' . ucwords($data['prenom_stagiaire']) . ' Transition Pro\Ma Dynamique Emploi\Stage 1');
        $lienClassique = 'file:///' . ($data['lien_serveur'] . '\\' . strtoupper($data['nom_stagiaire']) . ' ' . ucwords($data['prenom_stagiaire']) . '\Ma Dynamique Emploi\Stage 1');
        $tbody .= '
        <tr>
            <td>' . strtoupper($data['nom_session']) . '</td>
            <td>' . strtoupper($data['nom_stagiaire']) . '</td>
            <td>' . ucfirst($data['prenom_stagiaire']) . '</td>
            <td class="' . (!empty($data['convention_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['convention_recue']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_1']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_1']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_2']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_2']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['horaires_recues_3']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['horaires_recues_3']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['attestation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['attestation_recue']) ? '<button class="btn" data-clipboard-text="' . $lienTransiPro . '" onclick="/*window.open(\'' . $lienTransiPro . '\', \'_blank\');*/">Transition pro</button><button class="btn" data-clipboard-text="' . $lienClassique . '" onclick="/*window.open(\'' . $lienClassique . '\', \'_blank\');*/">Classique</button>' : '') . '&nbsp;' . (!empty($data['attestation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['attestation_recue']) ? "Oui" : "Non") . '</td>
            <td class="' . (!empty($data['evaluation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['evaluation_recue']) ? '<button class="btn" data-clipboard-text="' . $lienTransiPro . '" onclick="/*window.open(\'' . $lienTransiPro . '\', \'_blank\');*/">Transition pro</button><button class="btn" data-clipboard-text="' . $lienClassique . '" onclick="/*window.open(\'' . $lienClassique . '\', \'_blank\');*/">Classique</button>' : '') . '&nbsp;' . (!empty($data['evaluation_mail_envoye']) ? "Oui" : "Non") . '/' . (!empty($data['evaluation_recue']) ? "Oui" : "Non") . '</td>
            <td ' . (!empty($data['convention_recue']) && !empty($data['horaires_recues_1']) && !empty($data['horaires_recues_2']) && !empty($data['horaires_recues_3']) && !empty($data['attestation_recue']) && !empty($data['evaluation_recue']) ? "demandes_terminees" : ($data['compteur_demandes'] === 0 ? 'premiere_demande' : 'plusieurs_demandes')) . '>' . (!empty($data['convention_recue']) && !empty($data['horaires_recues_1']) && !empty($data['horaires_recues_2']) && !empty($data['horaires_recues_3']) && !empty($data['attestation_recue']) && !empty($data['evaluation_recue']) ? "Terminé !" : ($data['compteur_demandes'] === 0 ? '<a role="button" class="btn-mail" onclick="recupererDocumentsManquants(' . $data['id_stagiaire'] . ');" data-modal="modal">1ère demande</a>' : '<a role="button" class="btn-mail" onclick="recupererDocumentsManquants(' . $data['id_stagiaire'] . ');" data-modal="modal">Relance</a>')) . '</td>
        </tr>';
    }

    $stages = $head .
        $tbody .
        '</tbody>
            </table>';

    die(json_encode(array(
        "stages" => $stages
    )));
} elseif ((isset($_POST['recupererDocumentsManquants']) && !empty($_POST['recupererDocumentsManquants'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']))) {
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
            if (empty($html)) {
                $html .= '
                    <input type="hidden" name="id_stagiaire" id="id_stagiaire" value="' . $id_stagiaire . '">
                    <input type="hidden" name="relance" id="relance" value="' . ($stagiaire['compteur_demandes'] >= 1 ? "1" : "0") . '">';
            }
            if ($document === "convention_recue") {
                $html .= '
                    <div>
                        <label for="convention">
                            <input type="checkbox" name="convention" id="convention" checked>
                            Convention de stage
                        </label>
                    </div>';
            } elseif ($document === "horaires_recues_1") {
                $html .= '
                <div>
                    <label for="horaires_mois_1">
                        <input type="checkbox" name="horaires_mois_1" id="horaires_mois_1" checked>
                        Horaires mois 1
                    </label>
                </div>';
            } elseif ($document === "horaires_recues_2") {
                $html .= '
                <div>
                    <label for="horaires_mois_2">
                        <input type="checkbox" name="horaires_mois_2" id="horaires_mois_2" checked>
                        Horaires mois 2
                    </label>
                </div>';
            } elseif ($document === "horaires_recues_3") {
                $html .= '
                <div>
                    <label for="horaires_mois_3">
                        <input type="checkbox" name="horaires_mois_3" id="horaires_mois_3" checked>
                        Horaires mois 3
                    </label>
                </div>';
            } elseif ($document === "attestation_recue") {
                $html .= '
                <div>
                    <label for="attestation">
                        <input type="checkbox" name="attestation" id="attestation" checked>
                        Attestation de stage
                    </label>
                </div>';
            } elseif ($document === "evaluation_recue") {
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
} elseif ((isset($_POST['envoyerMail']) && !empty($_POST['envoyerMail'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']) && (isset($_POST['id_formateur']) && !empty($_POST['id_formateur'])))) {
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
} elseif (isset($_POST['form_formateurs_ajout']) && !empty($_POST['form_formateurs_ajout'])) {
    $sql = 'INSERT INTO formateurs(nom_formateur, prenom_formateur, mail_formateur, signature_formateur, id_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable) 
            VALUES(:nom_formateur, :prenom_formateur, :mail_formateur, :signature_formateur, :id_secteur, :carte_formateur_role, :carte_formateur_liens, :carte_formateur_tel, :carte_formateur_portable);';
    $req = $db->prepare($sql);
    $req->bindValue(":nom_formateur", filter_var($_POST['form_formateurs_ajout_nom'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":prenom_formateur", filter_var($_POST['form_formateurs_ajout_prenom'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":mail_formateur", filter_var($_POST['form_formateurs_ajout_mail'], FILTER_VALIDATE_EMAIL));
    $req->bindValue(":signature_formateur", 'v/formateurs/signature_' . filter_var($_POST['form_formateurs_ajout_signature'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":id_secteur", filter_var($_POST['id_secteur'], FILTER_VALIDATE_INT));
    $req->bindValue(":carte_formateur_role", filter_var($_POST['form_formateurs_ajout_role'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_liens", filter_var($_POST['form_formateurs_ajout_liens'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_tel", filter_var($_POST['form_formateurs_ajout_telephone'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_portable", filter_var($_POST['form_formateurs_ajout_portable'], FILTER_SANITIZE_SPECIAL_CHARS));
    die($req->execute());
} elseif (isset($_POST['form_formateur_editer']) && !empty($_POST['form_formateur_editer'])) {
    if(!empty($_POST['signature'])) {
        $uniqid = uniqid();
        $fp = fopen("../v/formateurs/signature_" . $uniqid . ".png", "wb" );
        fwrite($fp, base64_decode(explode(',', $_POST['signature'])[1])); 
        fclose($fp);
    }
    $sql = 'UPDATE formateurs  
            SET 
                nom_formateur=:nom_formateur, 
                prenom_formateur=:prenom_formateur, 
                mail_formateur=:mail_formateur, ';
    if(!empty($_POST['signature'])) {
        $sql .= ' signature_formateur=:signature_formateur, '; 

    }
    $sql .= '   id_secteur=:id_secteur, 
                carte_formateur_role=:carte_formateur_role, 
                carte_formateur_liens=:carte_formateur_liens, 
                carte_formateur_tel=:carte_formateur_tel, 
                carte_formateur_portable=:carte_formateur_portable 
            WHERE id_formateur=:id_formateur;';
    $req = $db->prepare($sql);
    $req->bindValue(":nom_formateur", filter_var($_POST['nom_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":prenom_formateur", filter_var($_POST['prenom_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":mail_formateur", filter_var($_POST['mail_formateur'], FILTER_VALIDATE_EMAIL));
    if(!empty($_POST['signature'])) {
        $req->bindValue(":signature_formateur", 'v/formateurs/signature_' . $uniqid . '.png');
    }
    $req->bindValue(":id_secteur", filter_var($_POST['id_secteur'], FILTER_VALIDATE_INT));
    $req->bindValue(":carte_formateur_role", filter_var($_POST['role_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_liens", filter_var($_POST['liens_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_tel", filter_var($_POST['tel_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_portable", filter_var($_POST['portable_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":id_formateur", filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT));
    die(json_encode($req->execute()));
} elseif (isset($_POST['form_secteurs_ajout']) && !empty($_POST['form_secteurs_ajout'])) {
    $sql = 'INSERT INTO formateurs(nom_formateur, prenom_formateur, mail_formateur, signature_formateur, id_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable) 
            VALUES(:nom_formateur, :prenom_formateur, :mail_formateur, :signature_formateur, :id_secteur, :carte_formateur_role, :carte_formateur_liens, :carte_formateur_tel, :carte_formateur_portable);';
    $req = $db->prepare($sql);
    $req->bindValue(":nom_formateur", filter_var($_POST['form_formateurs_ajout_nom'], FILTER_SANITIZE_SPECIAL_CHARS));
    die($req->execute());
}
