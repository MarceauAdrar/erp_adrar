<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require __DIR__ . '/../src/vendor/autoload.php';
require __DIR__ . '/../src/m/connect.php';
$req = $db->prepare("SELECT nom, prenom, duree_stage, sigle, DATE_FORMAT(date_debut_stage, '%d/%m/%Y') AS date_debut, DATE_FORMAT(date_fin_stage, '%d/%m/%Y') AS date_fin, nom_tuteur, prenom_tuteur, mail_tuteur
                    FROM stagiaires 
                    JOIN sessions ON sessions.id = stagiaires.id_session
                    LEFT JOIN stages ON stages.id = stagiaires.id_stage
                    WHERE stagiaires.id=:id_stagiaire;");
$req->bindParam(":id_stagiaire", $_GET['id']);
$req->execute();
$stage = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom, prenom, mail, signature, carte
                    FROM formateurs 
                    WHERE id=1;");
$req->execute();
$formateur = $req->fetch(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT nom_document, lien, textes_ajoutes
                    FROM documents 
                    JOIN documents_pages ON documents.id = documents_pages.id_document
                    WHERE nom_document='Convention de stage';");
$req->execute();
$document = $req->fetchAll(PDO::FETCH_ASSOC);

$html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
$html2pdf->SetCreator('Marceau RODRIGUES');
$html2pdf->SetAuthor('Marceau RODRIGUES');
$html2pdf->SetTitle($document[0]['nom_document']);
$html2pdf->SetSubject($document[0]['nom_document']);

// var_dump(json_decode($document[0]['textes_ajoutes'], true));
// die;
foreach ($document as $page) {
    $html2pdf->AddPage();
    $html2pdf->Image(__DIR__ . "/../src/v/templates_documents/" . $page['lien']); // Le template de la convention
    // $html2pdf->Image(__DIR__ . "/../v/templates_documents/" . $page['lien']); // Le template de la convention
    if (!empty($page['textes_ajoutes'])) {
        foreach (json_decode($page['textes_ajoutes'], true) as $i) {
            $html2pdf->setXY($i['X'], $i['Y']);
            if(str_contains($i['texte'], "|")) {
                $texte = explode('|', $i['texte']);
                $html2pdf->Cell(0, 10, ucwords($stage[$texte[0]]) . " " . strtoupper($stage[$texte[1]]), 0, 1);
            } elseif(array_key_exists($i['texte'], $stage)) {
                $html2pdf->Cell(0, 10, $stage[$i['texte']], 0, 1);
            } elseif(array_key_exists($i['texte'], $formateur)) {
                $html2pdf->Cell(0, 10, $formateur[$i['texte']], 0, 1);
            } else {
                $html2pdf->Cell(0, 10, $i['texte'], 0, 1);
            }
            if (isset($i['tampon']) && !empty($i['tampon'])) {
                $html2pdf->Image(__DIR__ . "/../src/" . $i['tampon'], $i['xtampon'], $i['ytampon'], 60, 30);
            }
            if (isset($i['signature']) && !empty($i['signature'])) {
                $html2pdf->Image(__DIR__ . "/../src/" . $i['signature'], $i['xsignature'], $i['ysignature'], 47, 27.5);
            }
        }
    }
}
$html2pdf->Output(__DIR__ . '/../v/tmp/convention.pdf', 'I');
