<?php 

include_once __DIR__ . '/../src/m/connect.php';
include_once __DIR__ . '/../src/vendor/autoload.php';

$req = $db->prepare("SELECT * FROM documents WHERE index_document=:index_document;");
$req->bindParam(":index_document", $_POST['document']);
$req->execute();
$document = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT * FROM documents_pages WHERE id_document=:id_document;");
$req->bindParam(":id_document", $document['id_document']);
$req->execute();
$pages = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom_stagiaire, prenom_stagiaire, DATE_FORMAT(date_naissance_stagiaire, '%d/%m/%Y') AS date_naissance_stagiaire, mail_stagiaire, tel_stagiaire, duree_stage, sigle_session, DATE_FORMAT(date_debut_session, '%d/%m/%Y') AS date_debut_session, DATE_FORMAT(date_fin_session, '%d/%m/%Y') AS date_fin_session, DATE_FORMAT(date_debut_stage, '%d/%m/%Y') AS date_debut_stage, DATE_FORMAT(date_fin_stage, '%d/%m/%Y') AS date_fin_stage, rue_lieu_stage, cp_lieu_stage, ville_lieu_stage, pays_lieu_stage, nom_tuteur, prenom_tuteur, mail_tuteur, DATE_FORMAT(NOW(), '%d/%m/%Y') AS date_aujourdhui
                    FROM stagiaires 
                    JOIN sessions ON sessions.id_session = stagiaires.id_session
                    LEFT JOIN stages ON stages.id_stage = stagiaires.id_stage
                    WHERE stagiaires.id_stagiaire=:id_stagiaire;");
$req->bindParam(":id_stagiaire", $_POST['stagiaire']);
$req->execute();
$stage = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, carte_formateur_logo_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, carte_formateur_adresse_site
                    FROM formateurs 
                    WHERE id_formateur=:id_formateur;");
$req->bindParam(":id_formateur", $_POST['formateur']);
$req->execute();
$formateur = $req->fetch(PDO::FETCH_ASSOC);

$html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
$html2pdf->SetCreator("Marceau RODRIGUES");
$html2pdf->SetAuthor("Marceau RODRIGUES");
$html2pdf->SetTitle($document['nom_document']);
$html2pdf->SetSubject($document['nom_document']);
if(!empty($pages)) {
    foreach($pages as $page) {
        $html2pdf->AddPage();
        $html2pdf->Image(__DIR__ . '/../src/v/templates_documents/' . $document['index_document'] . '/' . $page['lien']);
        if (!empty($page['textes_ajoutes'])) {
            foreach (json_decode($page['textes_ajoutes'], true) as $key => $i) {
                $html2pdf->setXY($i['X'], $i['Y']);
                if (str_contains($i['texte'], "|")) {
                    $texte = explode('|', $i['texte']);
                    if (array_key_exists($texte[0], $stage) && array_key_exists($texte[1], $stage)) {
                        $html2pdf->Cell(0, 10, strtoupper($stage[$texte[0]]) . " " . ucwords($stage[$texte[1]]), 0, 1);
                    } elseif (array_key_exists($texte[0], $formateur) && array_key_exists($texte[1], $formateur)) {
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
                    $html2pdf->Image(__DIR__ . "/../src/" . $i['tampon'], $i['xtampon'], $i['ytampon'], 60, 30);
                }
                if (isset($i['signature']) && !empty($i['signature'])) { // Gère la signature du formateur si elle est nécessaire sur le document
                    $i['signature'] = strtr($i['signature'], array(
                        '{{FORMATEUR_SIGNATURE}}' => $formateur['signature_formateur']
                    ));
                    $html2pdf->Image(__DIR__ . "/../src/v/formateurs/" . $i['signature'], $i['xsignature'], $i['ysignature'], 47, 27.5);
                }
            }
        }
        
        // Ajout des informations saisies dans le formulaires si elles sont présentes
        if(isset($_POST['document_attestation']) && !empty($_POST['document_attestation'])) {
            if(isset($_POST['poste_occupe_attestation']) && !empty($_POST['poste_occupe_attestation'])) {
                $html2pdf->setXY(50, 95.5);
                $html2pdf->Cell(0, 10, filter_var($_POST['poste_occupe_attestation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_1']) && !empty($_POST['tache_effectuee_attestation_1'])) {
                $html2pdf->setXY(29, 125);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_2']) && !empty($_POST['tache_effectuee_attestation_2'])) {
                $html2pdf->setXY(29, 132);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_3']) && !empty($_POST['tache_effectuee_attestation_3'])) {
                $html2pdf->setXY(29, 139);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_4']) && !empty($_POST['tache_effectuee_attestation_4'])) {
                $html2pdf->setXY(29, 146);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_5']) && !empty($_POST['tache_effectuee_attestation_5'])) {
                $html2pdf->setXY(29, 153);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_5'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['tache_effectuee_attestation_6']) && !empty($_POST['tache_effectuee_attestation_attestation_6'])) {
                $html2pdf->setXY(29, 160);
                $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_6'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['observation_tuteur_attestation_1']) && !empty($_POST['observation_tuteur_attestation_1'])) {
                $html2pdf->setXY(29, 191.5);
                $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['observation_tuteur_attestation_2']) && !empty($_POST['observation_tuteur_attestation_2'])) {
                $html2pdf->setXY(29, 198.5);
                $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['observation_tuteur_attestation_3']) && !empty($_POST['observation_tuteur_attestation_3'])) {
                $html2pdf->setXY(29, 205.5);
                $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
            if(isset($_POST['observation_tuteur_attestation_4']) && !empty($_POST['observation_tuteur_attestation_4'])) {
                $html2pdf->setXY(29, 212.5);
                $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
            }
        } elseif(isset($_POST['document_convention']) && !empty($_POST['document_convention'])) {
            
        }
    }
}
$html2pdf->Output(__DIR__ . '/viewer.pdf', 'I');