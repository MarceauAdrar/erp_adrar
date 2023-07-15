<?php

use PHPMailer\PHPMailer\PHPMailer;

function recupererStages($id_formateur = 0, $nom_session = 0)
{
    global $db;

    $sql = "SELECT * 
            FROM stagiaires
            JOIN sessions ON sessions.id_session = stagiaires.id_session
            JOIN stages ON stages.id_stage = stagiaires.id_stage 
            WHERE 1 ";
    if (!empty($id_formateur)) {
        $sql .= " AND sessions.id_formateur=:id_formateur ";
    }
    if (!empty($nom_session)) {
        $sql .= " AND sessions.nom_session=:nom_session ";
    }
    $sql .= ";";
    $req = $db->prepare($sql);
    if (!empty($id_formateur)) {
        $req->bindParam(":id_formateur", $id_formateur);
    }
    if (!empty($nom_session)) {
        $req->bindParam(":nom_session", $nom_session);
    }
    $req->execute();
    $stages = $req->fetchAll(PDO::FETCH_ASSOC);
    return $stages;
}

function recupererFormateurs()
{
    global $db;

    $req = $db->prepare("SELECT *
                        FROM formateurs
                        INNER JOIN secteurs ON secteurs.id_secteur = formateurs.id_secteur;");
    $req->execute();
    $formateurs = $req->fetchAll(PDO::FETCH_ASSOC);
    return $formateurs;
}

function recupererStagiaires()
{
    global $db;

    $req = $db->prepare("SELECT *
                        FROM stagiaires;");
    $req->execute();
    $stagiaires = $req->fetchAll(PDO::FETCH_ASSOC);
    return $stagiaires;
}

function recupererSessions($id_formateur = 0)
{
    global $db;

    $sql = "SELECT *
            FROM sessions
            LEFT JOIN formateurs ON formateurs.id_formateur = sessions.id_formateur 
            WHERE 1 ";
    if (!empty($id_formateur)) {
        $sql .= " AND sessions.id_formateur=:id_formateur ";
    }
    $req = $db->prepare($sql);
    if (!empty($id_formateur)) {
        $req->bindValue(':id_formateur', filter_var($id_formateur, FILTER_VALIDATE_INT));
    }
    $req->execute();
    $sessions = $req->fetchAll(PDO::FETCH_ASSOC);
    return $sessions;
}

function recupererSecteurs()
{
    global $db;

    $req = $db->prepare("SELECT *
                        FROM secteurs;");
    $req->execute();
    $secteurs = $req->fetchAll(PDO::FETCH_ASSOC);
    return $secteurs;
}

/**
 * Permet d'envoyer les documents manquants à un tuteur donné.
 *
 *
 * @param PHPMailer $mailer Une instance paramétrée de PHPMailer.
 * @param int       $id_stagiaire L'identifiant du stagiaire.
 * @param int       $id_formateur L'identifiant du formateur associé à la démarche.
 * @param array     $documents Tableau des documents à générer et joindre.
 * @param array     $document_libelles Tableau des explications pour chaque document.
 * @param boolean   $bEstRelance Permet de changer le template du mail envoyé, si rien n'est précisé, il ne s'agit pas d'une relance par défaut.
 * @return boolean  Renvoi un simple booléen.
 */
function envoyerMailTuteur($mailer, $id_stagiaire, $id_formateur, $documents, $document_libelles, $bEstRelance = false)
{
    global $db;
    global $mailer;

    //Récupération des données du stage
    $req = $db->prepare("SELECT nom_stagiaire, prenom_stagiaire, duree_stage, sigle_session, DATE_FORMAT(date_debut_session, '%d/%m/%Y') AS date_debut_session, DATE_FORMAT(date_fin_session, '%d/%m/%Y') AS date_fin_session, DATE_FORMAT(date_debut_stage, '%d/%m/%Y') AS date_debut_stage, DATE_FORMAT(date_fin_stage, '%d/%m/%Y') AS date_fin_stage, rue_lieu_stage, cp_lieu_stage, ville_lieu_stage, pays_lieu_stage, nom_tuteur, prenom_tuteur, mail_tuteur
                        FROM stagiaires 
                        JOIN sessions ON sessions.id_session = stagiaires.id_session
                        LEFT JOIN stages ON stages.id_stage = stagiaires.id_stage
                        WHERE stagiaires.id_stagiaire=:id_stagiaire;");
    $req->bindParam(":id_stagiaire", $id_stagiaire);
    $req->execute();
    $stage = $req->fetch(PDO::FETCH_ASSOC);

    try {
        //Recipients
        $mailer->setFrom('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
        if (DEV) {
            $mailer->addAddress('marceau0707@gmail.com', $stage['prenom_tuteur'] . " " . $stage['nom_tuteur']);
        } else {
            $mailer->addAddress($stage['mail_tuteur'], $stage['prenom_tuteur'] . " " . $stage['nom_tuteur']);
            $mailer->addBCC('marceaurodrigues@adrar-formation.com'); // Blind Carbon Copy
        }
        $mailer->addReplyTo('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
        // $mailer->addCC('marceaurodrigues@adrar-formation.com');

        //Création des PDFs personnalisés
        // $documents = array('convention', 'attestation', 'evaluation', 'presence');

        $liste_documents = implode("', '", $documents);
        $req = $db->prepare("SELECT id_document, index_document, nom_document
                            FROM documents
                            WHERE index_document IN ('" . $liste_documents . "');");
        $req->execute();
        $documents = $req->fetchAll(PDO::FETCH_ASSOC);

        $req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, nom_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, GROUP_CONCAT(adresse_num_site, ' ', adresse_rue_site, ' ', adresse_cp_site, ' ', adresse_ville_site) AS carte_formateur_adresse_site
                            FROM formateurs 
                            INNER JOIN sites ON sites.id_site = formateurs.id_site  
                            INNER JOIN secteurs ON secteurs.id_secteur = formateurs.id_secteur 
                            WHERE id_formateur=:id_formateur;");
        $req->bindParam(":id_formateur", $id_formateur);
        $req->execute();
        $formateur = $req->fetch(PDO::FETCH_ASSOC);

        if (!empty($documents)) {

            foreach ($documents as $document) {
                $req = $db->prepare("SELECT nom_document, lien, textes_ajoutes
                                    FROM documents 
                                    JOIN documents_pages ON documents.id_document = documents_pages.id_document
                                    WHERE index_document=:index_document;");
                $req->bindParam(":index_document", $document['index_document']);
                $req->execute();
                $pages = $req->fetchAll(PDO::FETCH_ASSOC);

                if (!empty($pages)) {
                    $html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
                    $html2pdf->SetCreator(ucfirst($formateur['prenom_formateur']) . " " . strtoupper($formateur['nom_formateur']));
                    $html2pdf->SetAuthor(ucfirst($formateur['prenom_formateur']) . " " . strtoupper($formateur['nom_formateur']));
                    $html2pdf->SetTitle($pages[0]['nom_document']);
                    $html2pdf->SetSubject($pages[0]['nom_document']);

                    foreach ($pages as $page) {
                        $html2pdf->AddPage();
                        $html2pdf->Image(__DIR__ . "/../v/templates_documents/" . $document['index_document'] . "/" . $page['lien']); // Le template de la convention
                        if (!empty($page['textes_ajoutes'])) {
                            foreach (json_decode($page['textes_ajoutes'], true) as $i) {
                                $html2pdf->setXY($i['X'], $i['Y']);
                                if (str_contains($i['texte'], "|")) {
                                    $texte = explode('|', $i['texte']);
                                    if (array_key_exists($texte[0], $stage) || array_key_exists($texte[1], $stage)) {
                                        $html2pdf->Cell(0, 10, strtoupper($stage[$texte[0]]) . " " . ucwords($stage[$texte[1]]), 0, 1);
                                    } elseif (array_key_exists($texte[0], $formateur) || array_key_exists($texte[1], $formateur)) {
                                        $html2pdf->Cell(0, 10, strtoupper($formateur[$texte[0]]) . " " . ucwords($formateur[$texte[1]]), 0, 1);
                                    }
                                } elseif (array_key_exists($i['texte'], $stage)) {
                                    $html2pdf->Cell(0, 10, $stage[$i['texte']], 0, 1);
                                } elseif (array_key_exists($i['texte'], $formateur)) {
                                    $html2pdf->Cell(0, 10, $formateur[$i['texte']], 0, 1);
                                } else {
                                    $html2pdf->Cell(0, 10, $i['texte'], 0, 1);
                                }
                                if (isset($i['tampon']) && !empty($i['tampon'])) { // Gère le tampon s'il est nécessaire sur le document
                                    $html2pdf->Image(__DIR__ . "/../" . $i['tampon'], $i['xtampon'], $i['ytampon'], 60, 30);
                                }
                                if (isset($i['signature']) && !empty($i['signature'])) { // Gère la signature du formateur si elle est nécessaire sur le document
                                    $html2pdf->Image(__DIR__ . "/../" . $i['signature'], $i['xsignature'], $i['ysignature'], 47, 27.5);
                                }
                            }
                        }
                    }
                    $html2pdf->Output(__DIR__ . '/../v/tmp/' . $document['index_document'] . '.pdf', 'F');
                    $mailer->addAttachment(__DIR__ . '/../v/tmp/' . $document['index_document'] . '.pdf', str_replace(" ", "_", $document['nom_document']) . '.pdf');
                }
            }
        }


        $liste_documents = "";
        foreach ($document_libelles as $document) {
            $liste_documents .= "<li>" . $document . "</li>";
        }

        if ($bEstRelance) {
            $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_RELANCE.html');
            $message = strtr($message, array(
                '{{NB_RELANCE}}' => $stage['compteur_demandes'] + 1
            ));
        } else {
            $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_DEMANDE.html');
        }
        $numeros = "";
        $liens = "";
        if (!empty($formateur['carte_formateur_tel']) && !empty($formateur['carte_formateur_portable'])) {
            $numeros .= '<p style="margin:0;"><a href="tel:' . $formateur['carte_formateur_tel'] . '">' . $formateur['carte_formateur_tel'] . '</a></p>';
            $numeros .= '<p style="margin:0;"><a href="tel:' . $formateur['carte_formateur_portable'] . '">' . $formateur['carte_formateur_portable'] . '</a></p>';
        } elseif (!empty($formateur['carte_formateur_tel'])) {
            $numeros .= '<p style="margin:0;"><a href="tel:' . $formateur['carte_formateur_tel'] . '">' . $formateur['carte_formateur_tel'] . '</a></p>';
        } elseif (!empty($formateur['carte_formateur_portable'])) {
            $numeros .= '<p style="margin:0;"><a href="tel:' . $formateur['carte_formateur_portable'] . '">' . $formateur['carte_formateur_portable'] . '</a></p>';
        }
        if (!empty($formateur['carte_formateur_liens'])) {
            if (str_contains(",", $formateur['carte_formateur_liens'])) {
                foreach (explode(",", $formateur['carte_formateur_liens']) as $lien) {
                    $liens .= '<p style="margin:0;"><a href="' . $lien . '">' . $lien . '</a></p>';
                }
            } else {
                $liens .= '<p style="margin:0;"><a href="' . $formateur['carte_formateur_liens'] . '">' . $formateur['carte_formateur_liens'] . '</a></p>';
            }
        }

        $message = strtr($message, array(
            '{{NOM_TUTEUR}}' => strtoupper($stage['nom_tuteur']),
            '{{PRENOM_NOM_STAGIAIRE}}' => strtoupper($stage['nom_stagiaire']) . " " . ucwords($stage['prenom_stagiaire']),
            '{{LISTE_DOCUMENTS}}' => $liste_documents,
            '{{CARTE_PRENOM}}' => ucwords($formateur['prenom_formateur']),
            '{{CARTE_NOM}}' => strtoupper($formateur['nom_formateur']),
            '{{CARTE_LOGO_SECTEUR}}' => $formateur['carte_formateur_logo_secteur'],
            '{{CARTE_ADRESSE}}' => $formateur['carte_formateur_adresse_site'],
            '{{CARTE_NUMEROS}}' => $numeros,
            '{{CARTE_LIENS}}' => $liens,
            '{{CARTE_ROLE}}' => $formateur['carte_formateur_role']
        ));


        //Content
        if ($bEstRelance) {
            $mailer->Subject = 'Relance de demande des documents de stage';
        } else {
            $mailer->Subject = 'Demande de documents de stage';
        }
        $mailer->Body    = $message;
        $mailer->AltBody = strip_tags($message);

        if ($mailer->send()) {
            if (!DEV) {
                $req = $db->prepare("UPDATE stagiaires 
                                    SET compteur_demandes = compteur_demandes + 1
                                    WHERE id_stagiaire=:id_stagiaire;");
                $req->bindParam(":id_stagiaire", $id_stagiaire);
                $req->execute();
            }
            array_map("unlink", glob(__DIR__ . "/../v/tmp/*.pdf")); // Permet de supprimer l'entiereté des PDF généré pour qu'il n'en reste pas de trace
        }
        echo "Message délivré.";
    } catch (Exception $e) {
        throw new Error("Message non délivré. Erreur: {$mailer->ErrorInfo}");
    }
    return true;
}

/**
 * Permet d'enregistrer un formateur dans la table **formateurs**.
 *
 * Cette fonction prend un ensemble de paramètres pour un formateur donné.
 *
 * @param PHPMailer $mailer Une instance paramétrée de PHPMailer.
 * @param string    $nom Le nom du formateur.
 * @param string    $prenom Le prénom du formateur.
 * @param string    $mail Le mail du formateur (@adrar-formation.com OU @adrar-numerique.com).
 * @param string    $role Le rôle du formateur, format libre.
 * @param string    $tel Le téléphone du formateur (commençant par 05, cf. Wildix).
 * @param int       $site L'identifiant du site du formateur, cf. table **sites**.
 * @param int       $secteur L'identifiant du secteur du formateur, cf. table **secteurs**.
 * @return string   Un JSON avec deux index `boolean success` et `string message`.
 */
function inscriptionFormateur(PHPMailer $mailer, string $nom, string $prenom, string $mail, string $role, string $tel, int $site, int $secteur)
{
    global $db;

    $mail_formateur = filter_var($mail, FILTER_VALIDATE_EMAIL);

    $req = $db->prepare("SELECT id_formateur FROM formateurs WHERE mail_formateur=:mail_formateur;");
    $req->bindValue(":mail_formateur", $mail_formateur);
    $req->execute();
    if ($req->rowCount() === 0) { // Si le mail du formateur n'existe pas encore
        $req->closeCursor();

        $nom_formateur = filter_var($nom, FILTER_SANITIZE_SPECIAL_CHARS);
        $prenom_formateur = filter_var($prenom, FILTER_SANITIZE_SPECIAL_CHARS);
        $code_entree_formateur = random_int(100000, 999999);

        $req = $db->prepare("INSERT INTO formateurs(nom_formateur, prenom_formateur, mail_formateur, carte_formateur_role, carte_formateur_tel, code_entree_formateur, date_code_entree_formateur, id_site, id_secteur) 
                            VALUES(:nom_formateur, :prenom_formateur, :mail_formateur, :carte_formateur_role, :carte_formateur_tel, :code_entree_formateur, DATE_ADD(NOW(), INTERVAL 7 DAY), :id_site, :id_secteur);");
        $req->bindValue(":nom_formateur", $nom_formateur);
        $req->bindValue(":prenom_formateur", $prenom_formateur);
        $req->bindValue(":mail_formateur", $mail_formateur);
        $req->bindValue(":carte_formateur_role", filter_var($role, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":carte_formateur_tel", filter_var($tel, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":code_entree_formateur", $code_entree_formateur);
        $req->bindValue(":id_site", filter_var($site, FILTER_VALIDATE_INT));
        $req->bindValue(":id_secteur", filter_var($secteur, FILTER_VALIDATE_INT));
        if ($req->execute()) {
            $req->closeCursor();

            $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_CODE_ENTREE.html');
            $message = strtr($message, array(
                '{{PRENOM_FORMATEUR}}' => ucwords($prenom),
                '{{CODE_ENTREE_FORMATEUR}}' => $code_entree_formateur,
                '{{LIEN}}' => $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "/erp/public/code.php?code=" . $code_entree_formateur
            ));
            $mailer->Subject = '[ERP] Code UNIQUE formateur';
            $mailer->Body    = $message;
            $mailer->AltBody = strip_tags($message);
            $mailer->setFrom('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            if (DEV) {
                $mailer->addAddress('marceau0707@gmail.com', $mail_formateur . " - " . $prenom_formateur . " " . $nom_formateur);
            } else {
                $mailer->addAddress($mail_formateur, $prenom_formateur . " " . $nom_formateur);
                $mailer->addBCC('marceaurodrigues@adrar-formation.com'); // Blind Carbon Copy
            }
            $mailer->addReplyTo('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            try {
                $mailer->send();
                $success = true;
                $message = "Email envoyé.";
            } catch (Exception $e) {
                $success = false;
                $message = "Erreur: " . $e->getMessage();
            }
        } else {
            $success = false;
            $message = "Une erreur s'est produite, veuillez réessayer.";
        }
    } else {
        $success = false;
        $message = "Cette adresse mail est déjà utilisée par un autre formateur.";
    }
    return json_encode(array(
        'success' => $success,
        'message' => $message
    ));
}

/**
 * Permet d'enregistrer un stagiaire dans la table **stagiaires**.
 *
 *
 * @param PHPMailer $mailer Une instance paramétrée de PHPMailer.
 * @param string    $nom Le nom du stagiaire.
 * @param string    $prenom Le prénom du stagiaire.
 * @param string    $mail Le mail du stagiaire.
 * @param string    $pseudo Le pseudo du stagiaire.
 * @param string    $tel Le téléphone du stagiaire.
 * @param string    $date_anniversaire La date d'anniversaire du stagiaire (format libre).
 * @param int       $id_session L'identifiant de la session du stagiaire, cf. table **sessions**.
 * @param int|null  $id_stage L'identifiant du stage en entreprise du stagiaire, cf. table **stages**.
 * @return string   Un JSON avec deux index `boolean success` et `string message`.
 */
function inscriptionStagiaire(PHPMailer $mailer, string $nom, string $prenom, string $mail, string $pseudo, string $tel, string $date_anniversaire, int $id_session, int $id_stage = null)
{
    global $db;

    $mail_stagiaire = filter_var($mail, FILTER_VALIDATE_EMAIL);

    $req = $db->prepare("SELECT id_stagiaire FROM stagiaires WHERE mail_stagiaire=:mail_stagiaire;");
    $req->bindValue(":mail_stagiaire", $mail_stagiaire);
    $req->execute();
    if ($req->rowCount() === 0) { // Si le mail du stagiaire n'existe pas encore
        $req->closeCursor();

        $nom_stagiaire = filter_var($nom, FILTER_SANITIZE_SPECIAL_CHARS);
        $prenom_stagiaire = filter_var($prenom, FILTER_SANITIZE_SPECIAL_CHARS);
        $mdp_stagiaire = readable_random_string(10);

        $req = $db->prepare("INSERT INTO stagiaires(nom_stagiaire, prenom_stagiaire, mail_stagiaire, pseudo_stagiaire, mdp_stagiaire, mdp_decode_stagiaire, tel_stagiaire, date_naissance_stagiaire, lien_serveur, id_session".(isset($id_stage) ? ", id_stage" : "").") 
                            VALUES(:nom_stagiaire, :prenom_stagiaire, :mail_stagiaire, :pseudo_stagiaire, :mdp_stagiaire, :mdp_decode_stagiaire, :tel_stagiaire, DATE_FORMAT(:date_naissance_stagiaire, '%Y-%m-%d'), :lien_serveur, :id_session".(isset($id_stage) ? ", :id_stage" : "").");");
        $req->bindValue(":nom_stagiaire", $nom_stagiaire);
        $req->bindValue(":prenom_stagiaire", $prenom_stagiaire);
        $req->bindValue(":mail_stagiaire", $mail_stagiaire);
        $req->bindValue(":pseudo_stagiaire", filter_var($pseudo, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":mdp_stagiaire", password_hash(filter_var($mdp_stagiaire, FILTER_SANITIZE_SPECIAL_CHARS), PASSWORD_BCRYPT));
        $req->bindValue(":mdp_decode_stagiaire", filter_var($mdp_stagiaire, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":tel_stagiaire", filter_var($tel, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":date_naissance_stagiaire", filter_var($date_anniversaire, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":lien_serveur", filter_var("lien/vers/serveur/T", FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":id_session", filter_var($id_session, FILTER_VALIDATE_INT));
        if(isset($id_stage)) {
            $req->bindValue(":id_stage", filter_var($id_stage, FILTER_VALIDATE_INT));
        }
        if ($req->execute()) {
            $req->closeCursor();

            $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_STAGIAIRE.html');
            $message = strtr($message, array(
                '{{PRENOM_STAGIAIRE}}' => ucwords($prenom),
                '{{LOGIN_STAGIAIRE}}' => $pseudo,
                '{{MDP_STAGIAIRE}}' => $mdp_stagiaire,
                '{{LIEN}}' => $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "/erp/public/connexion.php"
            ));
            $mailer->Subject = '[ERP] - ADRAR - Votre session stagiaire';
            $mailer->Body    = $message;
            $mailer->AltBody = strip_tags($message);
            $mailer->setFrom('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            if (DEV) {
                $mailer->addAddress('marceau0707@gmail.com', $mail_stagiaire . " - " . $prenom_stagiaire . " " . $nom_stagiaire);
            } else {
                $mailer->addAddress($mail_stagiaire, $prenom_stagiaire . " " . $nom_stagiaire);
                $mailer->addBCC('marceaurodrigues@adrar-formation.com'); // Blind Carbon Copy
            }
            $mailer->addReplyTo('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            try {
                $mailer->send();
                $success = true;
                $message = "Email envoyé.";
            } catch (Exception $e) {
                $success = false;
                $message = "Erreur: " . $e->getMessage();
            }
        } else {
            $success = false;
            $message = "Une erreur s'est produite, veuillez réessayer.";
        }
    } else {
        $success = false;
        $message = "Cette adresse mail est déjà utilisée par un autre stagiaire.";
    }
    return json_encode(array(
        'success' => $success,
        'message' => $message
    ));
}

/**
 * Permet de réinitialiser le mot de passe d'un formateur dans la table **formateurs**.
 *
 *
 * @param PHPMailer $mailer Une instance paramétrée de PHPMailer.
 * @param string    $mail L'identifiant du formateur.
 * @return array    Un tableau avec deux index `string type` et `string message`.
 */
function reinitialiserMotDePasseFormateur(PHPMailer $mailer, string $mail)
{
    global $db;

    $mail_formateur = filter_var($mail, FILTER_VALIDATE_EMAIL);
    $tmp_code_formateur = random_int(100000, 999999);
    unset($_SESSION['code_formateur']);

    $req = $db->prepare("SELECT * FROM formateurs WHERE mail_formateur=:mail_formateur AND code_entree_formateur IS NULL;");
    $req->bindValue(":mail_formateur", $mail_formateur);
    $req->execute();
    if ($req->rowCount() === 1) { // Si le mail du formateur existe
        $user = $req->fetch(PDO::FETCH_ASSOC);
        $req->closeCursor();

        $req = $db->prepare("UPDATE formateurs 
                            SET 
                                tmp_code_formateur=:tmp_code_formateur, 
                                date_tmp_code_formateur=DATE_ADD(NOW(), INTERVAL 15 MINUTE)
                            WHERE mail_formateur=:mail_formateur;");
        $req->bindValue(":mail_formateur", $mail_formateur);
        $req->bindValue(":tmp_code_formateur", $tmp_code_formateur);
        if ($req->execute()) {
            $req->closeCursor();

            $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_CODE_TMP.html');
            $message = strtr($message, array(
                '{{PRENOM_FORMATEUR}}' => ucwords($user['prenom_formateur']),
                '{{CODE_TMP_FORMATEUR}}' => $tmp_code_formateur,
                '{{LIEN}}' => $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "/erp/public/code.php?code=" . $tmp_code_formateur
            ));
            $mailer->Subject = '[ERP] Code TEMPORAIRE formateur';
            $mailer->Body    = $message;
            $mailer->AltBody = strip_tags($message);
            $mailer->setFrom('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            if (DEV) {
                $mailer->addAddress('marceau0707@gmail.com', $mail_formateur . " - " . $user['prenom_formateur'] . " " . $user['nom_formateur']);
            } else {
                $mailer->addAddress($mail_formateur, $user['prenom_formateur'] . " " . $user['nom_formateur']);
                $mailer->addBCC('marceaurodrigues@adrar-formation.com'); // Blind Carbon Copy
            }
            $mailer->addReplyTo('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
            try {
                $mailer->send();
                $type = "success";
                $message = "Un mail a été envoyé si l'adresse mail existe.";
            } catch (Exception $e) {
                $type = "error";
                $message = "Erreur: " . $e->getMessage();
            }
        } else {
            $type = "error";
            $message = "Une erreur s'est produite, veuillez réessayer.";
        }
    } else {
        $type = "success";
        $message = "Un mail a été envoyé si l'adresse mail existe.";
    }
    return array(
        'type' => $type,
        'message' => $message
    );
}

/**
 * Permet de connecter un formateur présent dans la table **formateurs** OU un stagiaire présent dans la table **stagiaires**.
 *
 *
 * @param string|int    $identifiant L'identifiant *unique* du formateur, un email ou un code d'accès.
 * @param string|null   $dns L'extension de domaine pour le mail (@adrar-formation.com OU @adrar-numerique.com).
 * @return boolean      Un booléen.
 */
function connexionUtilisateur(string|int $identifiant, string|int $dns)
{
    global $db;

    if ($dns == -1) {
        $sql = "SELECT * 
                FROM stagiaires WHERE pseudo_stagiaire=:identifiant;";
        $req = $db->prepare($sql);
        $req->bindValue(":identifiant", filter_var($identifiant, FILTER_SANITIZE_SPECIAL_CHARS));
        $req->execute();
        if ($req->rowCount() === 1) {
            $_SESSION['utilisateur'] = $req->fetch(PDO::FETCH_ASSOC);
            $_SESSION['utilisateur']['id_formateur'] = -1;
            $req->closeCursor();
            return true;
        }
    } else {
        $sql = "SELECT *  
            FROM formateurs WHERE (mail_formateur=:identifiant 
                                OR code_entree_formateur=:identifiant 
                                OR tmp_code_formateur=:identifiant);";
        $req = $db->prepare($sql);
        $req->bindValue(":identifiant", filter_var($identifiant . $dns, FILTER_VALIDATE_EMAIL));
        $req->execute();
        if ($req->rowCount() === 1) {
            $_SESSION['utilisateur'] = $req->fetch(PDO::FETCH_ASSOC);
            $_SESSION['utilisateur']['id_stagiaire'] = -1;
            $_SESSION['utilisateur']['id_session'] = NULL;
            $req->closeCursor();
            return true;
        }
    }
    return false;
}

/**
 * Generates human-readable string.
 * 
 * @param string $length Desired length of random string.
 * @credits sepehr readable_random_string.php
 * 
 * @return string Random string.
 */ 
function readable_random_string($length = 6)
{  
    $string = '';
    $vowels = array("a","e","i","o","u");  
    $consonants = array(
        'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 
        'n', 'p', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'
    );  

    $max = $length / 2;
    for ($i = 1; $i <= $max; $i++)
    {
        $string .= $consonants[rand(0,19)];
        $string .= $vowels[rand(0,4)];
        $string .= '-';
    }

    return $string;
}

/**
 * Permet la prise en charge d'un nouveau document.
 * 
 * @param string $nom_document Le nom du document.
 * @param array $fichier Le fichier a importer.
 * 
 * 
 * @return string Un tableau avec deux index `string type` et `string message`..
 */ 
function ajouterDocument(string $nom_document, array $fichier)
{
    $type = "info";
    $message = "Document ajouté";

    if(!is_dir("../v/templates_documents/$nom_document")) {
        if(!mkdir("../v/templates_documents/$nom_document", 0777, true)) {
            $type = "error";
            $message = "Le dossier n'a pas pu être créé.";
        }
    }

    $nom_dossier = $nom_document;

    switch($fichier['type']) {
        case "application/pdf":
            $extension = "pdf";
            break;
        default:
            $extension = "";
            $type = "error";
            $message = "Extension non prise en charge. Seuls les PDF sont acceptés.";
    }
    
    if(!empty($extension)) {
        // Création de l'objet Imagick
        $imagick = new \Imagick();
        
        // Réglage de la résolution pour améliorer la qualité de l'image PNG
        $imagick->setResolution(300, 300);

        // Lire le fichier PDF
        $imagick->readImage($fichier['tmp_name']);

        // Convertir chaque page du PDF en PNG
        foreach ($imagick as $pageNumber => $image) {
            // Enregistrer l'image au format PNG
            $image->writeImage('../v/templates_documents/'. $nom_dossier . '/' . $nom_document . '_' . ($pageNumber + 1) . '.jpg');
        }
        // Libérer la mémoire
        $imagick->clear();
        $imagick->destroy();
    }

    return array(
        'type' => $type,
        'message' => $message
    );
}