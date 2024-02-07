<?php

include_once __DIR__ . '/../m/connect.php';

if (isset($_POST['recupererListeFormateurs']) && !empty($_POST['recupererListeFormateurs'])) {
    $tbody_formateurs = '';
    $id_formateur = filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT);

    foreach (recupererFormateurs() as $formateur) {
        if ($id_formateur == $formateur['formateur_id']) {
            $choix_secteurs = "";
            foreach (recupererSecteurs() as $secteur) {
                $choix_secteurs .= '<option value="' . $secteur['secteur_id'] . '" ' . ($secteur['secteur_id'] == $formateur['id_secteur'] ? 'selected' : '') . '>' . $secteur['secteur_nom'] . '</option>';
            }
            $tbody_formateurs .= '
            <tr>
                <td><input type="text" name="form_formateur_editer_nom" value="' .  $formateur['formateur_nom'] . '"></td>
                <td><input type="text" name="form_formateur_editer_prenom" value="' .  $formateur['formateur_prenom'] . '"></td>
                <td><input type="text" name="form_formateur_editer_mail" value="' .  $formateur['formateur_mail'] . '"></td>
                <td>
                    <div>
                        <label>Téléverser ma signature: (png transparents uniquement)</label>
                        <input type="file" name="form_formateur_editer_signature">
                    </div>
                    <button onclick="afficherCanvasSignature(this.nextSibling.nextElementSibling.children[0].getAttribute(\'data-id\'));" id="btn-display-signature-' . $id_formateur . '">Signer manuellement</button>
                    <div class="hidden">
                        <canvas class="box-signature" id="signature-pad-' . $id_formateur . '" data-id="' . $id_formateur . '" width="400" height="200"></canvas>
                        <div>
                            <button id="clear-' . $id_formateur . '">Effacer</button>
                        </div>
                    </div>
                </td>
                <td>
                    <select name="form_formateur_editer_secteur">
                        ' . $choix_secteurs . '
                    </select>
                </td>
                <td><input type="text" name="form_formateur_editer_role" value="' .  $formateur['carte_formateur_role'] . '"></td>
                <td><textarea name="form_formateur_editer_liens">' .  $formateur['carte_formateur_liens'] . '</textarea></td>
                <td><input type="text" name="form_formateur_editer_tel" value="' .  $formateur['carte_formateur_tel'] . '"></td>
                <td><input type="text" name="form_formateur_editer_portable" value="' .  $formateur['carte_formateur_portable'] . '"></td>
                <td><a href="#" onclick="majFormateur(' . $id_formateur . ');">Mise à jour</a></td>
            </tr>';
        } else {
            $tbody_formateurs .= '
            <tr>
                <td>' . strtoupper($formateur['formateur_nom']) . '</td>
                <td>' . ucwords($formateur['formateur_prenom']) . '</td>
                <td>' . $formateur['formateur_mail'] . '</td>
                <td>' . (empty($formateur['formateur_signature']) ? 'Signature manquante' : '<img style="width:150px;height:100px;" src="../src/' . $formateur['formateur_signature'] . '" alt="Signature du formateur">') . '</td>
                <td>' . $formateur['secteur_nom'] . '</td>
                <td>' . $formateur['carte_formateur_role'] . '</td>
                <td>' . $formateur['carte_formateur_liens'] . '</td>
                <td>' . $formateur['carte_formateur_tel'] . '</td>
                <td>' . $formateur['carte_formateur_portable'] . '</td>
                <td><a href="#" onclick="recupererListeFormateurs(' . $formateur['formateur_id'] . ');">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
            </tr>';
        }
    }
    die(json_encode($tbody_formateurs));
} elseif (isset($_POST['recupererListeStagiaires']) && !empty($_POST['recupererListeStagiaires'])) {
    $tbody_stagiaires = '';
    foreach (recupererStagiaires() as $stagiaire) {
        $tbody_stagiaires .= '
        <tr>
            <td>' . strtoupper($stagiaire['stagiaire_nom']) . '</td>
            <td>' . ucwords($stagiaire['stagiaire_prenom']) . '</td>
            <td>' . date_format(new DateTime($stagiaire['stagiaire_date_naissance']), "d/m/Y") . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_stagiaires));
} elseif (isset($_POST['recupererListeStages']) && !empty($_POST['recupererListeStages'])) {
    $tbody_stages = '';
    foreach (recupererStages() as $stage) {
        $tbody_stages .= '
        <tr>
            <td>' . strtoupper($stage['stage_nom_tuteur']) . '</td>
            <td>' . ucwords($stage['stage_prenom_tuteur']) . '</td>
            <td>' . $stage['stage_adresse_rue'] . " " . $stage['stage_adresse_cp'] . " " . $stage['stage_adresse_ville'] . " " . $stage['stage_adresse_pays'] . '</td>
            <td>' . $stage['stage_mail_tuteur'] . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_stages));
} elseif (isset($_POST['recupererListeSessions']) && !empty($_POST['recupererListeSessions'])) {
    $tbody_sessions = '';
    foreach (recupererSessions() as $session) {
        $tbody_sessions .= '
        <tr>
            <td>' . strtoupper($session['session_nom']) . '</td>
            <td>' . $session['session_duree_stage'] . '</td>
            <td>' . strtoupper($session['session_sigle']) . '</td>
            <td>' . date_format(new DateTime($session['session_date_debut']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['session_date_fin']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['session_stage_date_debut']), 'd/m/Y') . '</td>
            <td>' . date_format(new DateTime($session['session_stage_date_fin']), 'd/m/Y') . '</td>
            <td>' . strtoupper($session['formateur_nom']) . " " . ucwords($session['formateur_prenom']) . '</td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_sessions));
} elseif (isset($_POST['recupererListeSecteurs']) && !empty($_POST['recupererListeSecteurs'])) {
    $tbody_secteurs = '';
    foreach (recupererSecteurs() as $secteur) {
        $tbody_secteurs .= '
        <tr>
            <td>' . ucfirst($secteur['secteur_nom']) . '</td>
            <td><img style="height:100px;" src="./img/' . $secteur['secteur_logo'] . '" alt="Logo du secteur ' . $secteur['secteur_nom'] . '"></td>
            <td><a href="#" onclick="">Editer</a>&nbsp;<a href="#" onclick="">Supprimer</a></td>
        </tr>';
    }
    die(json_encode($tbody_secteurs));
} elseif (isset($_POST['recupererDonneesFiltres']) && !empty($_POST['recupererDonneesFiltres'])) {
    $formateurs = '<option value="0"' . (!isset($_SESSION['filtres']['formateur_id']) || empty($_SESSION['filtres']['formateur_id']) ? " selected" : "") . '>Tous</option>';
    foreach (recupererFormateurs() as $formateur) {
        $formateurs .= '<option value="' . $formateur['formateur_id'] . '"' . (isset($_SESSION['filtres']['formateur_id']) && $_SESSION['filtres']['formateur_id'] == $formateur['formateur_id'] ? " selected" : "") . '>' . strtoupper($formateur['formateur_nom']) . " " . ucwords($formateur['formateur_prenom']) . '</option>';
    }
    $sessions = '<option value="0"' . (!isset($_SESSION['filtres']['session_nom']) || empty($_SESSION['filtres']['session_nom']) ? " selected" : "") . '>Toutes</option>';
    foreach (recupererSessions() as $session) {
        $sessions .= '<option value="' . $session['session_nom'] . '"' . (isset($_SESSION['filtres']['session_nom']) && $_SESSION['filtres']['session_nom'] == $session['session_nom'] ? " selected" : "") . '>' . strtoupper($session['session_nom']) . '</option>';
    }

    die(json_encode(array(
        "sessions" => $sessions,
        "formateurs" => $formateurs
    )));
} elseif (isset($_POST['recupererDonnees']) && !empty($_POST['recupererDonnees'])) {
    $_SESSION['filtres']['formateur_id'] = filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT);
    $_SESSION['filtres']['session_nom'] = filter_var($_POST['nom_session'], FILTER_SANITIZE_SPECIAL_CHARS);

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
    foreach (recupererStages($_SESSION['filtres']['formateur_id'], $_SESSION['filtres']['session_nom']) as $data) {
        $tbody .= '
        <tr>
            <td>' . strtoupper($data['session_nom']) . '</td>
            <td>' . strtoupper($data['stagiaire_nom']) . '</td>
            <td>' . ucfirst($data['stagiaire_prenom']) . '</td>
            <td class="' . (!empty($data['stagiaire_convention_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_convention_recue']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['stagiaire_horaires_recues_1']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_horaires_recues_1']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['stagiaire_horaires_recues_2']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_horaires_recues_2']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['stagiaire_horaires_recues_3']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_horaires_recues_3']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['stagiaire_attestation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_attestation_recue']) ? 'Oui' : 'Non') . '</td>
            <td class="' . (!empty($data['stagiaire_evaluation_recue']) ? 'coul-vert' : 'coul-rouge') . '">' . (!empty($data['stagiaire_evaluation_recue']) ? 'Oui' : 'Non') . '</td>
            <td ' . (!empty($data['stagiaire_convention_recue']) && !empty($data['stagiaire_horaires_recues_1']) && !empty($data['stagiaire_horaires_recues_2']) && !empty($data['stagiaire_horaires_recues_3']) && !empty($data['stagiaire_attestation_recue']) && !empty($data['stagiaire_evaluation_recue']) ? "demandes_terminees" : ($data['stagiaire_compteur_demandes'] === 0 ? 'premiere_demande' : 'plusieurs_demandes')) . '>' . (!empty($data['stagiaire_convention_recue']) && !empty($data['stagiaire_horaires_recues_1']) && !empty($data['stagiaire_horaires_recues_2']) && !empty($data['stagiaire_horaires_recues_3']) && !empty($data['stagiaire_attestation_recue']) && !empty($data['stagiaire_evaluation_recue']) ? "Terminé !" : ($data['stagiaire_compteur_demandes'] === 0 ? '<a role="button" class="btn-mail" onclick="recupererDocumentsManquants(' . $data['stagiaire_id'] . ');" data-modal="modal">1ère demande</a>' : '<a role="button" class="btn-mail" onclick="recupererDocumentsManquants(' . $data['stagiaire_id'] . ');" data-modal="modal">Relance</a>')) . '</td>
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

    $req = $db->prepare("SELECT stagiaire_convention_recue, stagiaire_horaires_recues_1, stagiaire_horaires_recues_2, stagiaire_horaires_recues_3, stagiaire_attestation_recue, stagiaire_evaluation_recue, stagiaire_compteur_demandes
                        FROM stagiaires
                        WHERE stagiaire_id=:id_stagiaire;");
    $req->bindParam(":id_stagiaire", $id_stagiaire);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);
    $html = "";
    foreach ($stagiaire as $document => $recu) {
        if (!$recu) {
            if (empty($html)) {
                $html .= '
                    <input type="hidden" name="id_stagiaire" id="id_stagiaire" value="' . $id_stagiaire . '">
                    <input type="hidden" name="relance" id="relance" value="' . ($stagiaire['stagiaire_compteur_demandes'] >= 1 ? "1" : "0") . '">';
            }
            if ($document === "stagiaire_convention_recue") {
                $html .= '
                    <div>
                        <label for="convention">
                            <input type="checkbox" name="convention" id="convention" checked>
                            Convention de stage
                        </label>
                    </div>';
            } elseif ($document === "stagiaire_horaires_recues_1") {
                $html .= '
                <div>
                    <label for="horaires_mois_1">
                        <input type="checkbox" name="horaires_mois_1" id="horaires_mois_1" checked>
                        Horaires mois 1
                    </label>
                </div>';
            } elseif ($document === "stagiaire_horaires_recues_2") {
                $html .= '
                <div>
                    <label for="horaires_mois_2">
                        <input type="checkbox" name="horaires_mois_2" id="horaires_mois_2" checked>
                        Horaires mois 2
                    </label>
                </div>';
            } elseif ($document === "stagiaire_horaires_recues_3") {
                $html .= '
                <div>
                    <label for="horaires_mois_3">
                        <input type="checkbox" name="horaires_mois_3" id="horaires_mois_3" checked>
                        Horaires mois 3
                    </label>
                </div>';
            } elseif ($document === "stagiaire_attestation_recue") {
                $html .= '
                <div>
                    <label for="attestation">
                        <input type="checkbox" name="attestation" id="attestation" checked>
                        Attestation de stage
                    </label>
                </div>';
            } elseif ($document === "stagiaire_evaluation_recue") {
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
} elseif ((isset($_POST['envoyerMailTuteur']) && !empty($_POST['envoyerMailTuteur'])) && (isset($_POST['id_stagiaire']) && !empty($_POST['id_stagiaire']) && (isset($_POST['id_formateur']) && !empty($_POST['id_formateur'])))) {
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
    die(json_encode(envoyerMailTuteur($mailer, $id_stagiaire, $id_formateur, $documents, $documents_libelles, $_POST['relance'])));
} elseif (isset($_POST['form_formateurs_ajout']) && !empty($_POST['form_formateurs_ajout'])) {
    die(inscriptionFormateur($mailer, $_POST['form_formateurs_ajout_nom'], $_POST['form_formateurs_ajout_prenom'], $_POST['form_formateurs_ajout_mail'], $_POST['form_formateurs_ajout_role'], $_POST['form_formateurs_ajout_telephone'], $_POST['id_site'], $_POST['id_secteur']));
} elseif (isset($_POST['form_formateur_editer']) && !empty($_POST['form_formateur_editer'])) {
    if (!empty($_POST['signature'])) {
        $uniqid = uniqid();
        $fp = fopen("../v/formateurs/signature_" . $uniqid . ".png", "wb");
        fwrite($fp, base64_decode(explode(',', $_POST['signature'])[1]));
        fclose($fp);
    }
    $sql = 'UPDATE formateurs  
            SET 
                formateur_nom=:nom_formateur, 
                formateur_prenom=:prenom_formateur, 
                formateur_mail=:mail_formateur, 
                ';
    if (!empty($_POST['mdp_formateur'])) {
        $sql .= ' formateur_mdp=:mdp_formateur, ';
    }
    if (!empty($_POST['signature'])) {
        $sql .= ' formateur_signature=:signature_formateur, ';
    }
    $sql .= '   id_secteur=:id_secteur, 
                carte_formateur_role=:carte_formateur_role, 
                carte_formateur_liens=:carte_formateur_liens, 
                carte_formateur_tel=:carte_formateur_tel, 
                carte_formateur_portable=:carte_formateur_portable 
            WHERE formateur_id=:id_formateur;';
    $req = $db->prepare($sql);
    $req->bindValue(":nom_formateur", filter_var($_POST['nom_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":prenom_formateur", filter_var($_POST['prenom_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":mail_formateur", filter_var($_POST['mail_formateur'] . "@adrar-formation.com", FILTER_VALIDATE_EMAIL));
    if (!empty($_POST['mdp_formateur'])) {
        $req->bindValue(":mdp_formateur", filter_var($_POST['mdp_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    }
    if (!empty($_POST['signature'])) {
        $req->bindValue(":signature_formateur", 'v/formateurs/signature_' . $uniqid . '.png');
    }
    $req->bindValue(":id_secteur", filter_var($_POST['id_secteur'], FILTER_VALIDATE_INT));
    $req->bindValue(":carte_formateur_role", filter_var($_POST['role_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_liens", filter_var($_POST['liens_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_tel", filter_var($_POST['tel_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":carte_formateur_portable", filter_var($_POST['portable_formateur'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(":id_formateur", filter_var($_POST['id_formateur'], FILTER_VALIDATE_INT));
    die(json_encode($req->execute()));
} elseif (isset($_POST['form_secteurs_ajout']) && !empty($_POST['form_secteurs_ajout'])) { // TODO: vérifier cette partie une fois le CRUD fait
    $nom_secteur = filter_var($_POST['form_secteurs_ajout_nom'], FILTER_SANITIZE_SPECIAL_CHARS);
    $logo_secteur = "";
    $success = false;
    if (isset($_FILES['form_secteurs_ajout_image']) && !empty($_FILES['form_secteurs_ajout_image'])) {
        $fp = fopen("../../public/img/logo_" . $nom_secteur . ".png", "wb");
        fwrite($fp, $_FILES['form_secteurs_ajout_image']['tmp_name']);
        fclose($fp);
    }
    if (!empty($logo_secteur)) {
        $sql = 'INSERT INTO secteurs(secteur_nom, secteur_logo) 
                VALUES(:nom_secteur, :logo_secteur);';
        $req = $db->prepare($sql);
        $req->bindValue(":nom_secteur", $nom_secteur);
        $req->bindValue(":logo_secteur", $logo_secteur);
        $success = $req->execute();
        $req->closeCursor();
    }
    die($success);
} elseif (isset($_POST['form_login_csrf']) && !empty($_POST['form_login_csrf'])) {
    if ($_SESSION['csrf_token'] === $_POST['form_login_csrf'] && isset($_POST['form_login_username']) && !empty($_POST['form_login_username']) && isset($_POST['form_login_pass']) && !empty($_POST['form_login_pass'])) {
        // On sauvegarde une tentative de connexion
        $req = $db->prepare("INSERT INTO connexions_essais(connexion_essai_ip, connexion_essai_date, connexion_essai_username) 
                            VALUES(:connexion_essai_ip, NOW(), :connexion_essai_username);");
        $req->bindValue(':connexion_essai_ip', $_SERVER['REMOTE_ADDR']);
        $req->bindValue(':connexion_essai_username', $_POST['form_login_username']);
        $req->execute();
        // S'il y a 5 tentatives infructueuses en 5 minutes ou moins, on bloque l'accès au compte
        $req = $db->prepare("SELECT COUNT(*) 
                            FROM connexions_essais 
                            WHERE connexion_essai_username=:connexion_essai_username 
                            AND connexion_essai_date >= DATE_SUB(NOW(), INTERVAL 5 MINUTE) 
                            GROUP BY connexion_essai_username;");
        $req->bindValue(':connexion_essai_username', $_POST['form_login_username']);
        $req->execute();
        if ($req->fetch(PDO::FETCH_COLUMN) <= 5) {
            if (connexionUtilisateur($_POST['form_login_username'])) {
                if (array_key_exists("formateur_mdp", $_SESSION['utilisateur']) && password_verify($_POST['form_login_pass'], $_SESSION['utilisateur']['formateur_mdp'])) {
                    $redirect = "../../public/index.php";
                } elseif (array_key_exists("stagiaire_mdp", $_SESSION['utilisateur']) && password_verify($_POST['form_login_pass'], $_SESSION['utilisateur']['stagiaire_mdp'])) {
                    $redirect = "../../public/formation";
                } else {
                    $redirect = "../../public/connexion.php?type=error&message=" . urlencode("Email et/ou mot de passe invalide");
                }
                setcookie("DECONNECTE", false, time() - 3600, "/");
            } else {
                $redirect = "../../public/connexion.php?type=error&message=" . urlencode("Email et/ou mot de passe invalide");
            }
        } else {
            $redirect = "../../public/connexion.php?type=error&message=" . urlencode("Votre compte est bloqué...<br>Trop de tentatives infructueuses (5).<br>Réessayer dans quelques minutes.");
        }
    } else {
        $redirect = "../../public/connexion.php?type=error&message=" . urlencode("Jeton incorrect");
    }
    if(isset($_POST['form_login_url']) && !empty($_POST['form_login_url'])) {
        $redirect = $_POST['form_login_url'];
    }
    header("Location: " . $redirect);
} elseif (isset($_POST['form_signup_csrf']) && !empty($_POST['form_signup_csrf'])) {
    unset($_SESSION['code_tmp']);
    if ($_SESSION['csrf_token'] === $_POST['form_signup_csrf'] && isset($_POST['form_signup_code']) && !empty($_POST['form_signup_code'])) {
        $code_tmp = filter_var($_POST['form_signup_code'], FILTER_VALIDATE_INT);
        $req_formateur = $db->prepare("SELECT * FROM formateurs WHERE (formateur_code_entree=:code_formateur OR formateur_code_tmp=:code_formateur) AND (NOW() <= formateur_date_code_entree OR NOW() <= formateur_date_code_tmp);");
        $req_formateur->bindValue(":code_formateur", $code_tmp);
        $req_formateur->execute();

        $req_stagiaire = $db->prepare("SELECT * FROM stagiaires WHERE stagiaire_code_tmp=:code_stagiaire;");
        $req_stagiaire->bindValue(":code_stagiaire", $code_tmp);
        $req_stagiaire->execute();

        if ($req_formateur->rowCount() === 1) {
            $req_formateur->closeCursor();
            $_SESSION['code_tmp'] = "formateur_" . $code_tmp;
            $redirect = "../../public/changer-mdp.php";
        } elseif ($req_stagiaire->rowCount() === 1) {
            $req_stagiaire->closeCursor();
            $_SESSION['code_tmp'] = "stagiaire_" . $code_tmp;
            $redirect = "../../public/changer-mdp.php";
        } else {
            $redirect = "../../public/code.php?type=error&message=" . urlencode("Code invalide ou expiré");
        }
    } else {
        $redirect = "../../public/code.php?type=error&message=" . urlencode("Jeton incorrect");
    }
    header("Location: " . $redirect);
} elseif (isset($_POST['form_change_pass_csrf']) && !empty($_POST['form_change_pass_csrf'])) {
    if ($_SESSION['csrf_token'] === $_POST['form_change_pass_csrf']) {
        if (isset($_POST['form_change_pass']) && !empty($_POST['form_change_pass']) && isset($_POST['form_change_pass_bis']) && !empty($_POST['form_change_pass_bis']) && $_POST['form_change_pass'] === $_POST['form_change_pass_bis']) {
            if (str_contains($_SESSION['code_tmp'], "formateur_")) {
                $req = $db->prepare("UPDATE formateurs 
                                    SET 
                                        formateur_code_entree=NULL, 
                                        formateur_code_tmp=NULL, 
                                        formateur_mdp=:mdp_formateur
                                    WHERE (formateur_code_entree=:code_tmp OR formateur_code_tmp=:code_tmp);");
                $req->bindValue(":mdp_formateur", password_hash(htmlspecialchars($_POST['form_change_pass']), PASSWORD_BCRYPT));
                $req->bindValue(":code_tmp", filter_var(str_replace("formateur_", "", $_SESSION['code_tmp']), FILTER_VALIDATE_INT));
            } elseif (str_contains($_SESSION['code_tmp'], "stagiaire_")) {
                $req = $db->prepare("UPDATE stagiaires 
                                    SET 
                                        stagiaire_code_tmp=NULL, 
                                        stagiaire_mdp=:mdp_stagiaire
                                    WHERE stagiaire_code_tmp=:code_tmp;");
                $req->bindValue(":mdp_stagiaire", password_hash(htmlspecialchars($_POST['form_change_pass']), PASSWORD_BCRYPT));
                $req->bindValue(":code_tmp", filter_var(str_replace("stagiaire_", "", $_SESSION['code_tmp']), FILTER_VALIDATE_INT));
            }
            if (isset($req) && $req->execute()) {
                $req->closeCursor();
                $redirect = "../../public/connexion.php?type=info&message=" . urlencode("Mot de passe changé avec succès");
                unset($_SESSION);
            } else {
                $redirect = "../../public/changer-mdp.php?type=error&message=" . urlencode("Une erreur s'est produite, veuillez réessayer");
            }
        } else {
            $redirect = "../../public/changer-mdp.php?type=error&message=" . urlencode("Les mots de passe ne correspondent pas");
        }
    } else {
        $redirect = "../../public/changer-mdp.php?type=error&message=" . urlencode("Jeton incorrect");
    }
    header("Location: " . $redirect);
} elseif (isset($_POST['form_forgotten_csrf']) && !empty($_POST['form_forgotten_csrf'])) {
    if ($_SESSION['csrf_token'] === $_POST['form_forgotten_csrf'] && isset($_POST['form_forgotten_mail']) && !empty($_POST['form_forgotten_mail'])) {
        $resultat = reinitialiserMotDePasse($mailer, $_POST['form_forgotten_mail']);
    } else {
        $resultat = array(
            'type' => 'error',
            'message' => "Jeton incorrect"
        );
    }
    header("Location: ../../public/code.php?type=" . $resultat['type'] . "&message=" . $resultat['message']);
} elseif (isset($_POST['form_update_formateur']) && !empty($_POST['form_update_formateur'])) {
    $type = "error";
    $message = "";

    if (isset($_POST['form_update_formateur_pass']) && !empty($_POST['form_update_formateur_pass'])) {
        $password = trim(filter_var($_POST['form_update_formateur_pass'], FILTER_SANITIZE_SPECIAL_CHARS));
    }
    $liens = trim(filter_var($_POST['form_update_formateur_liens'], FILTER_SANITIZE_SPECIAL_CHARS));

    $telephone = trim(filter_var($_POST['form_update_formateur_telephone'], FILTER_SANITIZE_SPECIAL_CHARS));
    if (strlen($telephone) !== 10) {
        $message = "<li>Le format du numéro de téléphone ne correspond pas</li>";
    }
    if (isset($_POST['form_update_formateur_portable']) && !empty($_POST['form_update_formateur_portable'])) {
        $portable = trim(filter_var($_POST['form_update_formateur_portable'], FILTER_SANITIZE_SPECIAL_CHARS));
        if (strlen($portable) !== 10) {
            $message = "<li>Le format du numéro de portable ne correspond pas</li>";
        }
    }
    if (!empty($_POST['form_update_formateur_signature'])) {
        $uniqid = uniqid("v/formateurs/signature_") . ".png";
        $fp = fopen("../" . $uniqid, "wb");
        fwrite($fp, base64_decode(explode(',', $_POST['form_update_formateur_signature'])[1]));
        fclose($fp);
    }

    if (empty($message)) {
        $sql = "UPDATE formateurs 
                SET 
                    formateur_nom=:nom_formateur, 
                    formateur_prenom=:prenom_formateur, ";
        if (isset($password)) {
            $sql .= "  formateur_mdp=:mdp_formateur, ";
        }
        $sql .= "       carte_formateur_role=:carte_formateur_role, ";
        if (!empty($liens)) {
            $sql .= "   carte_formateur_liens=:carte_formateur_liens, ";
        } else {
            $sql .= "   carte_formateur_liens = NULL, ";
        }
        $sql .= "   carte_formateur_tel=:carte_formateur_tel, ";
        if (isset($portable)) {
            $sql .= "   carte_formateur_portable=:carte_formateur_portable, ";
        } else {
            $sql .= "   carte_formateur_portable = NULL, ";
        }
        if (isset($uniqid)) {
            $sql .= "   formateur_signature=:signature_formateur, ";
        }
        $sql .= "   id_site=:id_site, 
                    id_secteur=:id_secteur 
                WHERE formateur_id=:id_formateur;";
        $req = $db->prepare($sql);
        $req->bindValue(':nom_formateur', filter_var($_POST['form_update_formateur_nom'], FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(':prenom_formateur', filter_var($_POST['form_update_formateur_prenom'], FILTER_SANITIZE_SPECIAL_CHARS));
        if (isset($password)) {
            $req->bindValue(':mdp_formateur', password_hash($password, PASSWORD_BCRYPT));
        }
        $req->bindValue(':carte_formateur_role', filter_var($_POST['form_update_formateur_role'], FILTER_SANITIZE_SPECIAL_CHARS));
        if (!empty($liens)) {
            $req->bindValue(':carte_formateur_liens', $liens);
        }
        $req->bindValue(':carte_formateur_tel', $telephone);
        if (isset($portable)) {
            $req->bindValue(':carte_formateur_portable', $portable);
        }
        if (isset($uniqid)) {
            $req->bindValue(':signature_formateur', $uniqid);
        }
        $req->bindValue(':id_site', filter_var($_POST['form_update_formateur_site'], FILTER_VALIDATE_INT));
        $req->bindValue(':id_secteur', filter_var($_POST['form_update_formateur_secteur'], FILTER_VALIDATE_INT));
        $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
        $req->execute();
        $req->closeCursor();
        $type = "info";
        $message = "Les informations du compte ont été mises à jour.";
    }
    header("Location: ../../public/index.php?page=mon-compte&type=" . $type . "&message=" . $message);
} elseif (isset($_POST['form_add_formateur']) && !empty($_POST['form_add_formateur'])) {
    $resultat = json_decode(inscriptionFormateur($mailer, $_POST['form_add_formateur_nom'], $_POST['form_add_formateur_prenom'], $_POST['form_add_formateur_mail'] . "@adrar-formation.com", $_POST['form_add_formateur_role'], $_POST['form_add_formateur_telephone'], $_POST['form_add_formateur_site'], $_POST['form_add_formateur_secteur']), true);
    header("Location: ../../public/index.php?page=ajouter_referent&type=" . ($resultat['success'] == true ? "info" : "danger") . "&message=" . $resultat['message']);
} elseif (isset($_POST['form_add_stagiaire']) && !empty($_POST['form_add_stagiaire'])) {
    $resultat = json_decode(inscriptionStagiaire($mailer, $_POST['form_add_stagiaire_nom'], $_POST['form_add_stagiaire_prenom'], $_POST['form_add_stagiaire_mail'], $_POST['form_add_stagiaire_pseudo'], $_POST['form_add_stagiaire_telephone'], $_POST['form_add_stagiaire_date_naissance'], $_POST['form_add_stagiaire_session'], empty($_POST['form_add_stagiaire_stage']) ? null : $_POST['form_add_stagiaire_stage']), true);
    header("Location: ../../public/index.php?page=ajouter_stagiaire&type=" . ($resultat['success'] == true ? "info" : "danger") . "&message=" . $resultat['message']);
} elseif (isset($_POST['form_add_document']) && !empty($_POST['form_add_document'])) {
    $resultat = json_decode(ajouterDocument($_POST['form_add_document_nom'], $_FILES['form_add_document_fichier']), true);
    header("Location: ../../public/index.php?page=ajouter_document&type=" . ($resultat['success'] == true ? "info" : "danger") . "&message=" . $resultat['message']);
} elseif (isset($_POST['get_ratio_convention']) && !empty($_POST['get_ratio_convention'])) {
    $sql = "SELECT stagiaire_convention_recue 
            FROM stagiaires sta 
            JOIN sessions s ON(s.session_id = sta.id_session AND s.session_stage_date_debut <= NOW()) ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " 
            JOIN formateurs f ON(f.formateur_id = s.id_formateur) ";
    }
    $sql .= " WHERE 1 
              AND sta.id_stage IS NOT NULL ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " AND f.id_secteur=:id_secteur ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $sql .= " AND s.id_formateur=:id_formateur ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $sql .= " AND sta.id_session=:id_session ";
    }
    $sql .= " AND sta.stagiaire_actif=1 ";
    // var_dump($sql);
    $req = $db->prepare($sql);
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $req->bindValue(":id_secteur", filter_var($_SESSION['utilisateur']['id_secteur'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $req->bindValue(":id_formateur", filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $req->bindValue(":id_session", filter_var($_POST['filtre_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $somme = 0;
    foreach ($req->fetchAll(PDO::FETCH_COLUMN) as $value) {
        $somme += $value;
    }

    $total = $req->rowCount();
    $color = "";
    $value = 0;
    $success = true;
    if (!empty($total)) {
        $value = ($somme / $total) * 100;
    } else {
        $success = false;
    }

    if ($value <= 30) {
        $color = "col-bad";
    } elseif ($value <= 70) {
        $color = "col-medium";
    } else {
        $color = "col-good";
    }

    die(json_encode(array(
        'value' => number_format($value, 2, ","),
        'color' => $color,
        'success' => $success
    )));
} elseif (isset($_POST['get_ratio_attestation']) && !empty($_POST['get_ratio_attestation'])) {
    $sql = "SELECT stagiaire_attestation_recue 
            FROM stagiaires sta 
            JOIN sessions s ON(s.session_id = sta.session_id AND s.session_stage_date_debut <= NOW()) ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " 
            JOIN formateurs f ON(f.formateur_id = s.id_formateur) ";
    }
    $sql .= " WHERE 1 
              AND sta.id_stage IS NOT NULL ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " AND f.id_secteur=:id_secteur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $sql .= " AND s.id_formateur=:id_formateur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $sql .= " AND sta.id_session=:id_session ";
    }
    $sql .= " AND sta.stagiaire_actif=1 ";
    $req = $db->prepare($sql);
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $req->bindValue(":id_secteur", filter_var($_SESSION['utilisateur']['id_secteur'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $req->bindValue(":id_formateur", filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $req->bindValue(":id_session", filter_var($_POST['filtre_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $somme = 0;
    foreach ($req->fetchAll(PDO::FETCH_COLUMN) as $value) {
        $somme += $value;
    }

    $total = $req->rowCount();
    $color = "";
    $value = 0;
    $success = true;
    if (!empty($total)) {
        $value = ($somme / $total) * 100;
    } else {
        $success = false;
    }

    if ($value <= 30) {
        $color = "col-bad";
    } elseif ($value <= 70) {
        $color = "col-medium";
    } else {
        $color = "col-good";
    }

    die(json_encode(array(
        'value' => number_format($value, 2, ","),
        'color' => $color,
        'success' => $success
    )));
} elseif (isset($_POST['get_ratio_evaluation']) && !empty($_POST['get_ratio_evaluation'])) {
    $sql = "SELECT stagiaire_evaluation_recue 
            FROM stagiaires sta 
            JOIN sessions s ON(s.session_id = sta.id_session AND s.session_stage_date_debut <= NOW()) ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " 
            JOIN formateurs f ON(f.formateur_id = s.id_formateur) ";
    }
    $sql .= " WHERE 1 
              AND sta.id_stage IS NOT NULL ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " AND f.id_secteur=:id_secteur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $sql .= " AND s.id_formateur=:id_formateur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $sql .= " AND sta.id_session=:id_session ";
    }
    $sql .= " AND sta.stagiaire_actif =1 ";
    $req = $db->prepare($sql);
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $req->bindValue(":id_secteur", filter_var($_SESSION['utilisateur']['id_secteur'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $req->bindValue(":id_formateur", filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $req->bindValue(":id_session", filter_var($_POST['filtre_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $somme = 0;
    foreach ($req->fetchAll(PDO::FETCH_COLUMN) as $value) {
        $somme += $value;
    }

    $total = $req->rowCount();
    $color = "";
    $value = 0;
    $success = true;
    if (!empty($total)) {
        $value = ($somme / $total) * 100;
    } else {
        $success = false;
    }

    if ($value <= 30) {
        $color = "col-bad";
    } elseif ($value <= 70) {
        $color = "col-medium";
    } else {
        $color = "col-good";
    }

    die(json_encode(array(
        'value' => number_format($value, 2, ","),
        'color' => $color,
        'success' => $success
    )));
} elseif (isset($_POST['get_ratio_presence']) && !empty($_POST['get_ratio_presence'])) {
    $sql = "SELECT stagiaire_horaires_recues_1, stagiaire_horaires_recues_2, stagiaire_horaires_recues_3 
            FROM stagiaires sta 
            JOIN sessions s ON(s.session_id = sta.id_session AND s.session_stage_date_debut <= NOW()) ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " 
            JOIN formateurs f ON(f.formateur_id = s.id_formateur) ";
    }
    $sql .= " WHERE 1 
              AND sta.id_stage IS NOT NULL ";
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $sql .= " AND f.id_secteur=:id_secteur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $sql .= " AND s.id_formateur=:id_formateur ";
        $sql .= " AND s.session_stage_date_fin <= NOW() ";
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $sql .= " AND sta.id_session=:id_session ";
    }
    $sql .= " AND sta.stagiaire_actif=1 ";
    $req = $db->prepare($sql);
    if (isset($_POST['filtre_session']) && $_POST['filtre_session'] == -1) {
        $req->bindValue(":id_secteur", filter_var($_SESSION['utilisateur']['id_secteur'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] == 0) {
        $req->bindValue(":id_formateur", filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
    } elseif (isset($_POST['filtre_session']) && $_POST['filtre_session'] > 0) {
        $req->bindValue(":id_session", filter_var($_POST['filtre_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $somme = 0;
    foreach ($req->fetchAll(PDO::FETCH_ASSOC) as $value) {
        $somme += $value['stagiaire_horaires_recues_1'];
        $somme += $value['stagiaire_horaires_recues_2'];
        $somme += $value['stagiaire_horaires_recues_3'];
    }
    $somme = $somme / 3;

    $total = $req->rowCount();
    $color = "";
    $value = 0;
    $success = true;
    if (!empty($total)) {
        $value = ($somme / $total) * 100;
    } else {
        $success = false;
    }

    if ($value <= 30) {
        $color = "col-bad";
    } elseif ($value <= 70) {
        $color = "col-medium";
    } else {
        $color = "col-good";
    }

    die(json_encode(array(
        'value' => number_format($value, 2, ","),
        'color' => $color,
        'success' => $success
    )));
}
