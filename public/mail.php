<?php
//TODO: supprimer ce fichier
//Load Composer's autoloader
require __DIR__ . '/../src/m/connect.php';
require __DIR__ . '/../src/vendor/autoload.php';

$req = $db->prepare("SELECT document_id, document_index, document_nom
                    FROM documents;");
$req->execute();
$documents = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT stagiaire_nom, stagiaire_prenom, session_duree_stage, session_sigle, DATE_FORMAT(session_date_debut, '%d/%m/%Y') AS session_date_debut, DATE_FORMAT(session_date_fin, '%d/%m/%Y') AS session_date_fin, DATE_FORMAT(session_stage_date_debut, '%d/%m/%Y') AS session_stage_date_debut, DATE_FORMAT(session_stage_date_fin, '%d/%m/%Y') AS session_stage_date_fin, stage_adresse_rue, stage_adresse_cp, stage_adresse_ville, stage_adresse_pays, stage_nom_tuteur, stage_prenom_tuteur, stage_mail_tuteur
                    FROM stagiaires 
                    JOIN sessions ON sessions.session_id = stagiaires.id_session
                    LEFT JOIN stages ON stages.stage_id = stagiaires.id_stage
                    WHERE stagiaires.stagiaire_id=:id_stagiaire;");
$req->bindParam(":id_stagiaire", $_GET['id']); // TODO: rendre cette valeur dynamique
$req->execute();
$stage = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT formateur_nom, formateur_prenom, formateur_mail, formateur_signature, carte_formateur
                    FROM formateurs 
                    WHERE formateur_id=1;"); // TODO: rendre cette valeur dynamique
$req->execute();
$formateur = $req->fetch(PDO::FETCH_ASSOC);

if (!empty($documents)) {

    foreach ($documents as $document) {
        $req = $db->prepare("SELECT document_nom, document_page_lien, document_page_textes_ajoutes
                            FROM documents 
                            JOIN documents_pages ON documents.document_id = documents_pages.id_document
                            WHERE document_index=:document_index;");
        $req->bindParam(":document_index", $document['document_index']);
        $req->execute();
        $pages = $req->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($pages)) {
            $html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
            $html2pdf->SetCreator(ucfirst($formateur['formateur_prenom']) . " " . strtoupper($formateur['formateur_nom']));
            $html2pdf->SetAuthor(ucfirst($formateur['formateur_prenom']) . " " . strtoupper($formateur['formateur_nom']));
            $html2pdf->SetTitle($pages[0]['document_nom']);
            $html2pdf->SetSubject($pages[0]['document_nom']);

            foreach ($pages as $page) {
                $html2pdf->AddPage();
                $html2pdf->Image(__DIR__ . "/../v/templates_documents/" . $document['document_index'] . "/" . $page['document_page_lien']); // Le template de la convention
                if (!empty($page['document_page_textes_ajoutes'])) {
                    foreach (json_decode($page['document_page_textes_ajoutes'], true) as $i) {
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
            $html2pdf->Output(__DIR__ . '/../v/tmp/' . $document['document_index'] . '.pdf', 'F');
            $mail->addAttachment(__DIR__ . '/../v/tmp/' . $document['document_index'] . '.pdf', str_replace(" ", "_", $document['document_nom']) . '.pdf');
        }
    }
}
