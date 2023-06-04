<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
use TCPDF;

require __DIR__ . '/../vendor/autoload.php';

function recupererStages()
{
    global $db;

    $req = $db->prepare("SELECT stagiaires.id_stagiaire, nom_stagiaire, prenom_stagiaire, nom_session, convention_recue, horaires_recues_1, horaires_recues_2, horaires_recues_3, attestation_mail_envoye, attestation_recue, evaluation_mail_envoye, evaluation_recue, compteur_demandes
                        FROM stagiaires
                        JOIN sessions ON sessions.id_session = stagiaires.id_session
                        JOIN stages ON stages.id_stage = stagiaires.id_stage;");
    $req->execute();
    $stages = $req->fetchAll(PDO::FETCH_ASSOC);
    return $stages;
}

function recupererFormateurs()
{
    global $db;

    $req = $db->prepare("SELECT *
                        FROM formateurs;");
    $req->execute();
    $formateurs = $req->fetchAll(PDO::FETCH_ASSOC);
    return $formateurs;
}

function envoyerMail($id_stagiaire, $id_formateur, $documents, $document_libelles, $bEstRelance = false)
{
    global $db;

    //Récupération des données du stage
    $req = $db->prepare("SELECT nom_stagiaire, prenom_stagiaire, duree_stage, sigle_session, DATE_FORMAT(date_debut_session, '%d/%m/%Y') AS date_debut_session, DATE_FORMAT(date_fin_session, '%d/%m/%Y') AS date_fin_session, DATE_FORMAT(date_debut_stage, '%d/%m/%Y') AS date_debut_stage, DATE_FORMAT(date_fin_stage, '%d/%m/%Y') AS date_fin_stage, rue_lieu_stage, cp_lieu_stage, ville_lieu_stage, pays_lieu_stage, nom_tuteur, prenom_tuteur, mail_tuteur
                        FROM stagiaires 
                        JOIN sessions ON sessions.id_session = stagiaires.id_session
                        LEFT JOIN stages ON stages.id_stage = stagiaires.id_stage
                        WHERE stagiaires.id_stagiaire=:id_stagiaire;");
    $req->bindParam(":id_stagiaire", $id_stagiaire);
    $req->execute();
    $stage = $req->fetch(PDO::FETCH_ASSOC);

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->CharSet    = "UTF-8";                                //Enable encoding in UTF-8
        $mail->Encoding   = 'base64';                               //Change the default encoding
        $mail->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        if(DEV) {
            $mail->Username   = 'marceau0707@gmail.com';            //SMTP username
            $mail->Password   = 'goemqkkzceuawntw';                 //SMTP password
        } else {
            $mail->Username   = 'marceau.ro@adrar-numerique.com';   //SMTP username
            $mail->Password   = 'pleoxdpptfpkdmnd';                 //SMTP password
        }
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
        if (DEV) {
            $mail->addAddress('marceau0707@gmail.com', $stage['prenom_tuteur'] . " " . $stage['nom_tuteur']);
        } else {
            $mail->addAddress($stage['mail_tuteur'], $stage['prenom_tuteur'] . " " . $stage['nom_tuteur']);
            $mail->addBCC('marceaurodrigues@adrar-formation.com'); // Blind Carbon Copy
        }
        $mail->addReplyTo('marceaurodrigues@adrar-formation.com', 'Marceau RODRIGUES');
        // $mail->addCC('marceaurodrigues@adrar-formation.com');

        //Création des PDFs personnalisés
        // $documents = array('convention', 'attestation', 'evaluation', 'presence');

        $liste_documents = implode("', '", $documents);
        $req = $db->prepare("SELECT id_document, index_document, nom_document
                            FROM documents
                            WHERE index_document IN ('" . $liste_documents . "');");
        $req->execute();
        $documents = $req->fetchAll(PDO::FETCH_ASSOC);

        $req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, carte_formateur
                            FROM formateurs 
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
                    $mail->addAttachment(__DIR__ . '/../v/tmp/' . $document['index_document'] . '.pdf', str_replace(" ", "_", $document['nom_document']) . '.pdf');
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
        $message = strtr($message, array(
            '{{NOM_TUTEUR}}' => strtoupper($stage['nom_tuteur']),
            '{{PRENOM_NOM_STAGIAIRE}}' => strtoupper($stage['nom_stagiaire']) . " " . ucwords($stage['prenom_stagiaire']),
            '{{LISTE_DOCUMENTS}}' => $liste_documents,
        ));

        //Content
        $mail->isHTML(true);
        if ($bEstRelance) {
            $mail->Subject = 'Relance de demande des documents de stage';
        } else {
            $mail->Subject = 'Demande de documents de stage';
        }
        $mail->Body    = $message;
        $mail->AltBody = strip_tags($message);

        if ($mail->send()) {
            if(!DEV) {
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
        throw new Error("Message non délivré. Erreur: {$mail->ErrorInfo}");
    }
    return true;
}
