<?php

include_once __DIR__ . '/../src/m/connect.php';
include_once __DIR__ . '/../src/vendor/autoload.php';

$req = $db->prepare("SELECT * FROM documents WHERE document_index=:document_index;");
$req->bindParam(":document_index", $_POST['document']);
$req->execute();
$document = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT * FROM documents_pages WHERE document_id=:document_id;");
$req->bindParam(":document_id", $document['document_id']);
$req->execute();
$pages = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT stages.stage_id, stagiaire_nom, stagiaire_prenom, DATE_FORMAT(stagiaire_date_naissance, '%d/%m/%Y') AS stagiaire_date_naissance, stagiaire_mail, stagiaire_tel, session_duree_stage, session_sigle, DATE_FORMAT(session_date_debut, '%d/%m/%Y') AS session_date_debut, DATE_FORMAT(session_date_fin, '%d/%m/%Y') AS session_date_fin, DATE_FORMAT(session_stage_date_debut, '%d/%m/%Y') AS session_stage_date_debut, DATE_FORMAT(session_stage_date_fin, '%d/%m/%Y') AS session_stage_date_fin, stage_adresse_rue, stage_adresse_cp, stage_adresse_ville, stage_adresse_pays, stage_nom_tuteur, stage_prenom_tuteur, stage_mail_tuteur, DATE_FORMAT(NOW(), '%d/%m/%Y') AS date_aujourdhui
                    FROM stagiaires 
                    JOIN sessions ON sessions.session_id = stagiaires.id_session
                    LEFT JOIN stages ON stages.stage_id = stagiaires.id_stage
                    WHERE stagiaires.stagiaire_id=:id_stagiaire;");
$req->bindParam(":id_stagiaire", $_POST['stagiaire']);
$req->execute();
$stage = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT formateur_nom, formateur_prenom, formateur_mail, formateur_signature, secteur_nom, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, GROUP_CONCAT(site_adresse_num, ' ', site_adresse_rue, ' ', site_adresse_cp, ' ', site_adresse_ville) AS carte_formateur_adresse_site
                    FROM formateurs 
                    INNER JOIN sites ON sites.site_id = formateurs.id_site  
                    INNER JOIN secteurs ON secteurs.secteur_id = formateurs.id_secteur 
                    WHERE formateur_id=:id_formateur;");
$req->bindParam(":id_formateur", $_POST['formateur']);
$req->execute();
$formateur = $req->fetch(PDO::FETCH_ASSOC);

$html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
$html2pdf->SetCreator("Marceau RODRIGUES");
$html2pdf->SetAuthor("Marceau RODRIGUES");
$html2pdf->SetTitle($document['document_nom']);
$html2pdf->SetSubject($document['document_nom']);
if (!empty($pages)) {
    foreach ($pages as $page) {
        $html2pdf->AddPage();
        $html2pdf->Image(__DIR__ . '/../src/v/templates_documents/' . $document['document_index'] . "/" . $page['document_page_lien']);
        if (!empty($page['document_page_textes_ajoutes'])) {
            foreach (json_decode($page['document_page_textes_ajoutes'], true) as $key => $i) {
                $html2pdf->setXY($i['X'], $i['Y']);
                if (str_contains($i['texte'], "|")) {
                    $texte = explode('|', $i['texte']);
                    if (isset($stage['stage_id']) && array_key_exists($texte[0], $stage) && array_key_exists($texte[1], $stage)) {
                        $html2pdf->Cell(0, 10, strtoupper($stage[$texte[0]]) . " " . ucwords($stage[$texte[1]]), 0, 1);
                    } elseif (array_key_exists($texte[0], $formateur) && array_key_exists($texte[1], $formateur)) {
                        $html2pdf->Cell(0, 10, strtoupper($formateur[$texte[0]]) . " " . ucwords($formateur[$texte[1]]), 0, 1);
                    }
                } elseif (isset($stage['stage_id']) && array_key_exists($i['texte'], $stage)) {
                    $html2pdf->Cell(0, 10, $stage[$i['texte']], 0, 1);
                } elseif (array_key_exists($i['texte'], $formateur)) {
                    $html2pdf->Cell(0, 10, $formateur[$i['texte']], 0, 1);
                } elseif (isset($stage['stage_id'])) {
                    $html2pdf->Cell(0, 10, $i['texte'], 0, 1);
                }
                if (isset($i['tampon']) && !empty($i['tampon'])) { // Gère le tampon s'il est nécessaire sur le document
                    $html2pdf->Image(__DIR__ . "/../src/" . $i['tampon'], $i['xtampon'], $i['ytampon'], 60, 30);
                }
                if (isset($i['signature']) && !empty($i['signature'])) { // Gère la signature du formateur si elle est nécessaire sur le document
                    $i['signature'] = strtr($i['signature'], array(
                        '{{FORMATEUR_SIGNATURE}}' => $formateur['formateur_signature']
                    ));
                    $html2pdf->Image(__DIR__ . "/../src/" . $formateur[$i['signature']], $i['xsignature'], $i['ysignature'], 47, 27.5);
                }
            }
        }

        // Ajout des informations saisies dans le formulaires si elles sont présentes
        if (isset($_POST['document_attestation']) && !empty($_POST['document_attestation'])) {
            if ($page['document_page_num'] == 1) {
                if (isset($_POST['poste_occupe_attestation']) && !empty($_POST['poste_occupe_attestation'])) {
                    $html2pdf->setXY(50, 95.5);
                    $html2pdf->Cell(0, 10, filter_var($_POST['poste_occupe_attestation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_1']) && !empty($_POST['tache_effectuee_attestation_1'])) {
                    $html2pdf->setXY(29, 125);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_2']) && !empty($_POST['tache_effectuee_attestation_2'])) {
                    $html2pdf->setXY(29, 132);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_3']) && !empty($_POST['tache_effectuee_attestation_3'])) {
                    $html2pdf->setXY(29, 139);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_4']) && !empty($_POST['tache_effectuee_attestation_4'])) {
                    $html2pdf->setXY(29, 146);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_5']) && !empty($_POST['tache_effectuee_attestation_5'])) {
                    $html2pdf->setXY(29, 153);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_5'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_attestation_6']) && !empty($_POST['tache_effectuee_attestation_6'])) {
                    $html2pdf->setXY(29, 160);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_attestation_6'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['observation_tuteur_attestation_1']) && !empty($_POST['observation_tuteur_attestation_1'])) {
                    $html2pdf->setXY(29, 191.5);
                    $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['observation_tuteur_attestation_2']) && !empty($_POST['observation_tuteur_attestation_2'])) {
                    $html2pdf->setXY(29, 198.5);
                    $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['observation_tuteur_attestation_3']) && !empty($_POST['observation_tuteur_attestation_3'])) {
                    $html2pdf->setXY(29, 205.5);
                    $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['observation_tuteur_attestation_4']) && !empty($_POST['observation_tuteur_attestation_4'])) {
                    $html2pdf->setXY(29, 212.5);
                    $html2pdf->Cell(0, 10, filter_var($_POST['observation_tuteur_attestation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
            }
        } elseif (isset($_POST['document_convention']) && !empty($_POST['document_convention'])) {
        } elseif (isset($_POST['document_evaluation']) && !empty($_POST['document_evaluation'])) {
            if ($page['document_page_num'] == 1) {
                if (isset($_POST['nom_entreprise_evaluation']) && !empty($_POST['nom_entreprise_evaluation'])) {
                    $html2pdf->setXY(110, 49);
                    $html2pdf->Cell(0, 10, filter_var($_POST['nom_entreprise_evaluation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_1']) && !empty($_POST['tache_effectuee_evaluation_1'])) {
                    $html2pdf->setXY(25, 83);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_2']) && !empty($_POST['tache_effectuee_evaluation_2'])) {
                    $html2pdf->setXY(25, 91);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_3']) && !empty($_POST['tache_effectuee_evaluation_3'])) {
                    $html2pdf->setXY(25, 98);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_4']) && !empty($_POST['tache_effectuee_evaluation_4'])) {
                    $html2pdf->setXY(25, 106);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_5']) && !empty($_POST['tache_effectuee_evaluation_5'])) {
                    $html2pdf->setXY(25, 113);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_5'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_6']) && !empty($_POST['tache_effectuee_evaluation_6'])) {
                    $html2pdf->setXY(110, 83);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_6'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_7']) && !empty($_POST['tache_effectuee_evaluation_7'])) {
                    $html2pdf->setXY(110, 91);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_7'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_8']) && !empty($_POST['tache_effectuee_evaluation_8'])) {
                    $html2pdf->setXY(110, 98);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_8'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_9']) && !empty($_POST['tache_effectuee_evaluation_9'])) {
                    $html2pdf->setXY(110, 106);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_9'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['tache_effectuee_evaluation_10']) && !empty($_POST['tache_effectuee_evaluation_10'])) {
                    $html2pdf->setXY(110, 113);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_10'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['travaux_difficiles_evaluation_1']) && !empty($_POST['travaux_difficiles_evaluation_1'])) {
                    $html2pdf->setXY(25, 133);
                    $html2pdf->Cell(0, 10, filter_var($_POST['travaux_difficiles_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['travaux_difficiles_evaluation_2']) && !empty($_POST['travaux_difficiles_evaluation_2'])) {
                    $html2pdf->setXY(25, 141);
                    $html2pdf->Cell(0, 10, filter_var($_POST['travaux_difficiles_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['points_forts_evaluation_1']) && !empty($_POST['points_forts_evaluation_1'])) {
                    $html2pdf->setXY(25, 161);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_forts_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['points_forts_evaluation_2']) && !empty($_POST['points_forts_evaluation_2'])) {
                    $html2pdf->setXY(25, 169);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_forts_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['points_a_travailler_evaluation_1']) && !empty($_POST['points_a_travailler_evaluation_1'])) {
                    $html2pdf->setXY(25, 183);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_a_travailler_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['points_a_travailler_evaluation_2']) && !empty($_POST['points_a_travailler_evaluation_2'])) {
                    $html2pdf->setXY(25, 190);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_a_travailler_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['conseil_au_stagiaire_evaluation_1']) && !empty($_POST['conseil_au_stagiaire_evaluation_1'])) {
                    $html2pdf->setXY(25, 212);
                    $html2pdf->Cell(0, 10, filter_var($_POST['conseil_au_stagiaire_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if (isset($_POST['conseil_au_stagiaire_evaluation_2']) && !empty($_POST['conseil_au_stagiaire_evaluation_2'])) {
                    $html2pdf->setXY(25, 219);
                    $html2pdf->Cell(0, 10, filter_var($_POST['conseil_au_stagiaire_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
            } elseif ($page['document_page_num'] == 2) {
                if (isset($_POST['appreciations_entreprise_evaluation']) && !empty($_POST['appreciations_entreprise_evaluation'])) {
                    $html2pdf->setXY(25, 34);
                    $html2pdf->Cell(0, 10, filter_var($_POST['appreciations_entreprise_evaluation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
            }
        } elseif (isset($_POST['document_presence']) && !empty($_POST['document_presence'])) {
        }
    }
}
$html2pdf->Output(__DIR__ . '/viewer.pdf', 'I');
