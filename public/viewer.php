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

$req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, nom_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, GROUP_CONCAT(adresse_num_site, ' ', adresse_rue_site, ' ', adresse_cp_site, ' ', adresse_ville_site) AS carte_formateur_adresse_site
                    FROM formateurs 
                    INNER JOIN sites ON sites.id_site = formateurs.id_site  
                    INNER JOIN secteurs ON secteurs.id_secteur = formateurs.id_secteur 
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
                    $html2pdf->Image(__DIR__ . "/../src/" . $formateur[$i['signature']], $i['xsignature'], $i['ysignature'], 47, 27.5);
                }
            }
        }
        
        // Ajout des informations saisies dans le formulaires si elles sont présentes
        if(isset($_POST['document_attestation']) && !empty($_POST['document_attestation'])) {
            if($page['num_page'] == 1) {
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
                if(isset($_POST['tache_effectuee_attestation_6']) && !empty($_POST['tache_effectuee_attestation_6'])) {
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
            }
        } elseif(isset($_POST['document_convention']) && !empty($_POST['document_convention'])) {
        } elseif(isset($_POST['document_evaluation']) && !empty($_POST['document_evaluation'])) {
            if($page['num_page'] == 1) {
                if(isset($_POST['nom_entreprise_evaluation']) && !empty($_POST['nom_entreprise_evaluation'])) {
                    $html2pdf->setXY(110, 49);
                    $html2pdf->Cell(0, 10, filter_var($_POST['nom_entreprise_evaluation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_1']) && !empty($_POST['tache_effectuee_evaluation_1'])) {
                    $html2pdf->setXY(25, 83);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_2']) && !empty($_POST['tache_effectuee_evaluation_2'])) {
                    $html2pdf->setXY(25, 91);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_3']) && !empty($_POST['tache_effectuee_evaluation_3'])) {
                    $html2pdf->setXY(25, 98);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_3'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_4']) && !empty($_POST['tache_effectuee_evaluation_4'])) {
                    $html2pdf->setXY(25, 106);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_4'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_5']) && !empty($_POST['tache_effectuee_evaluation_5'])) {
                    $html2pdf->setXY(25, 113);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_5'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_6']) && !empty($_POST['tache_effectuee_evaluation_6'])) {
                    $html2pdf->setXY(110, 83);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_6'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_7']) && !empty($_POST['tache_effectuee_evaluation_7'])) {
                    $html2pdf->setXY(110, 91);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_7'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_8']) && !empty($_POST['tache_effectuee_evaluation_8'])) {
                    $html2pdf->setXY(110, 98);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_8'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_9']) && !empty($_POST['tache_effectuee_evaluation_9'])) {
                    $html2pdf->setXY(110, 106);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_9'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['tache_effectuee_evaluation_10']) && !empty($_POST['tache_effectuee_evaluation_10'])) {
                    $html2pdf->setXY(110, 113);
                    $html2pdf->Cell(0, 10, filter_var($_POST['tache_effectuee_evaluation_10'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['travaux_difficiles_evaluation_1']) && !empty($_POST['travaux_difficiles_evaluation_1'])) {
                    $html2pdf->setXY(25, 133);
                    $html2pdf->Cell(0, 10, filter_var($_POST['travaux_difficiles_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['travaux_difficiles_evaluation_2']) && !empty($_POST['travaux_difficiles_evaluation_2'])) {
                    $html2pdf->setXY(25, 141);
                    $html2pdf->Cell(0, 10, filter_var($_POST['travaux_difficiles_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['points_forts_evaluation_1']) && !empty($_POST['points_forts_evaluation_1'])) {
                    $html2pdf->setXY(25, 161);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_forts_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['points_forts_evaluation_2']) && !empty($_POST['points_forts_evaluation_2'])) {
                    $html2pdf->setXY(25, 169);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_forts_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['points_a_travailler_evaluation_1']) && !empty($_POST['points_a_travailler_evaluation_1'])) {
                    $html2pdf->setXY(25, 183);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_a_travailler_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['points_a_travailler_evaluation_2']) && !empty($_POST['points_a_travailler_evaluation_2'])) {
                    $html2pdf->setXY(25, 190);
                    $html2pdf->Cell(0, 10, filter_var($_POST['points_a_travailler_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['conseil_au_stagiaire_evaluation_1']) && !empty($_POST['conseil_au_stagiaire_evaluation_1'])) {
                    $html2pdf->setXY(25, 212);
                    $html2pdf->Cell(0, 10, filter_var($_POST['conseil_au_stagiaire_evaluation_1'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
                if(isset($_POST['conseil_au_stagiaire_evaluation_2']) && !empty($_POST['conseil_au_stagiaire_evaluation_2'])) {
                    $html2pdf->setXY(25, 219);
                    $html2pdf->Cell(0, 10, filter_var($_POST['conseil_au_stagiaire_evaluation_2'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
            } elseif($page['num_page'] == 2) {
                if(isset($_POST['appreciations_entreprise_evaluation']) && !empty($_POST['appreciations_entreprise_evaluation'])) {
                    $html2pdf->setXY(25, 34);
                    $html2pdf->Cell(0, 10, filter_var($_POST['appreciations_entreprise_evaluation'], FILTER_SANITIZE_SPECIAL_CHARS), 0, 1);
                }
            }
        } elseif(isset($_POST['document_presence']) && !empty($_POST['document_presence'])) {
            
        }
    }
}
$html2pdf->Output(__DIR__ . '/viewer.pdf', 'I');