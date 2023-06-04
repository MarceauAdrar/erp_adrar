<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);

//Load Composer's autoloader
require __DIR__ . '/../src/vendor/autoload.php';
require __DIR__ . '/../src/m/connect.php';

$docs = array('convention', 'attestation', 'evaluation', 'presence');
// $docs = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

$liste_documents = implode("', '", $docs);
$req = $db->prepare("SELECT id_document, index_document, nom_document
                    FROM documents
                    WHERE index_document IN ('" . $liste_documents . "');");
$req->execute();
$documents = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom_stagiaire, prenom_stagiaire, duree_stage, sigle_session, DATE_FORMAT(date_debut_session, '%d/%m/%Y') AS date_debut_session, DATE_FORMAT(date_fin_session, '%d/%m/%Y') AS date_fin_session, DATE_FORMAT(date_debut_stage, '%d/%m/%Y') AS date_debut_stage, DATE_FORMAT(date_fin_stage, '%d/%m/%Y') AS date_fin_stage, rue_lieu_stage, cp_lieu_stage, ville_lieu_stage, pays_lieu_stage, nom_tuteur, prenom_tuteur, mail_tuteur
                    FROM stagiaires 
                    JOIN sessions ON sessions.id_session = stagiaires.id_session
                    LEFT JOIN stages ON stages.id_stage = stagiaires.id_stage
                    WHERE stagiaires.id_stagiaire=:id_stagiaire;");
$req->bindParam(":id_stagiaire", $_GET['id']); // TODO: rendre cette valeur dynamique
$req->execute();
$stage = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, carte_formateur
                    FROM formateurs 
                    WHERE id_formateur=1;"); // TODO: rendre cette valeur dynamique
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
