<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require __DIR__ . '/../vendor/autoload.php';

function recupererDonnees() {
    global $db;

    $req = $db->prepare("SELECT stagiaires.id, nom, prenom, nom_session, horaires_recues_1, horaires_recues_2, horaires_recues_3, attestation_mail_envoye, attestation_recue, evaluation_mail_envoye, evaluation_recue, compteur_demandes
                        FROM stagiaires
                        JOIN sessions ON sessions.id = stagiaires.id_session
                        LEFT JOIN stages ON stages.id = stagiaires.id_stage;");
    $req->execute();
    $donnees = $req->fetchAll(PDO::FETCH_ASSOC);
    return $donnees;
}

function envoyerMail($id_stagiaire, $documents) {
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
        $mail->Username   = 'marceau.ro@adrar-numerique.com';       //SMTP username
        $mail->Password   = 'pleoxdpptfpkdmnd';                     //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable implicit TLS encryption
        $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('marceau.ro@adrar-numerique.com', 'Marceau 2');
        $mail->addAddress('marceaurodrigues@adrar-formation.com', 'Marceau 1');     //Add a recipient
        $mail->addReplyTo('marceau.ro@adrar-numerique.com', 'Marceau 2');
        $mail->addCC('marceaurodrigues@adrar-formation.com');
        // $mail->addBCC('bcc@example.com'); // Blind Carbon Copy

        //Création des PDFs personnalisés
        $html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
        $html2pdf->SetCreator('Your Creator');
        $html2pdf->SetAuthor('Your Author');
        $html2pdf->SetTitle('Your Title');
        $html2pdf->SetSubject('Your Subject');
        $html2pdf->SetKeywords('Your Keywords');
        $attestation = file_get_contents(__DIR__ . '/../../public/documents/templates/attestation.html');
        $attestation = strtr($attestation, array(
            '{{NOM_PRENOM_STAGIAIRE}}' => 'NOM Prénom Stagiaire',
            '{{DATE_DEBUT_STAGE}}' => '01/02/2023',
            '{{DATE_FIN_STAGE}}' => '05/05/2023',
            '{{DUREE_STAGE}}' => '253',
        ));
        $html2pdf->AddPage();
        $html2pdf->writeHTML($attestation);
        $html2pdf->Output(__DIR__ . '/../v/tmp/attestation.pdf', 'F');

        $evaluation = file_get_contents(__DIR__ . '/../../public/documents/templates/evaluation.html');
        $evaluation = strtr($evaluation, array(
            '{{NOM_PRENOM_STAGIAIRE}}' => 'NOM Prénom Stagiaire',
            '{{NOM_ENTREPRISE}}' => 'ADRAR',
            '{{NOM_SESSION}}' => 'dwwm',
            '{{NOM_PRENOM_TUTEUR}}' => 'NOM Prénom tuteur',
            '{{DATE_DEBUT_STAGE}}' => '01/02/2023',
            '{{DATE_FIN_STAGE}}' => '05/05/2023',
            '{{DUREE_STAGE}}' => '253',
            '{{DATE_VISITE}}' => '26/05/2023',
        ));
        $html2pdf->writeHTML($evaluation);
        $html2pdf->Output(__DIR__ . '/../v/tmp/evaluation.pdf', 'F');

        //Attachments
        // $mail->addAttachment(__DIR__ . '/../src/v/tmp/attestation.pdf', 'Attestation_de_stage.pdf');    //Optional name
        // $mail->addAttachment(__DIR__ . '/../src/v/tmp/evaluation.pdf', 'Evaluation_de_stage.pdf');    //Optional name

        $message = file_get_contents(__DIR__ . '/../v/templates_mails/MAIL_DEMANDE.html');
        $message = strtr($message, array(
            '{{NOM_TUTEUR}}' => 'Marceau RODRIGUES',
            '{{PRENOM_NOM_STAGIAIRE}}' => 'Marceau RODRIGUES stagiaire',
            '{{LISTE_DOCUMENTS}}' => '<li>Attestation de stage</li><li>Évaluation de stage</li>',
        ));

        //Content
        $mail->isHTML(true); //Set email format to HTML
        $mail->Subject = 'Demande de documents de stage';
        $mail->Body    = $message;
        $mail->AltBody = strip_tags($message);

        $mail->send();
        $status = true;
    } catch (Exception $e) {
        $status = false;
        // echo "Message non délivré. Erreur: {$mail->ErrorInfo}";
    }

    return $status;
}
