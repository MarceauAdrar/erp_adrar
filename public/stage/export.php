<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);

require __DIR__ . '/../../src/m/connect.php';
require __DIR__ . '/../../src/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\ConditionalFormatting\Wizard;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Style;
use PhpOffice\PhpSpreadsheet\Cell\DataValidation;

// Création des couleurs
$greenStyle = new Style(false, true);
$greenStyle->getFill()
  ->setFillType(Fill::FILL_SOLID)
  ->getEndColor()->setARGB("A9D08E");
// $greenStyle->getFont()->setColor(new Color(Color::COLOR_DARKRED));
$redStyle = new Style(false, true);
$redStyle->getFill()
  ->setFillType(Fill::FILL_SOLID)
  ->getEndColor()->setARGB("e77171");
$redStyle->getFont()->setBold(true);

$cellRangeChoix = 'C2:H1000';
$choix = ['Oui', 'Non'];

// Create a new Spreadsheet object
$spreadsheet = new Spreadsheet();

// Créer la validation des données avec la liste déroulante de choix
$dataValidation = new DataValidation();
$dataValidation->setType(DataValidation::TYPE_LIST);
$dataValidation->setErrorStyle(DataValidation::STYLE_STOP);
$dataValidation->setShowDropDown(true);
$dataValidation->setFormula1('"' . implode(',', $choix) . '"');

// Création des règles
$conditionalStyles = [];
$wizardFactory = new Wizard($cellRangeChoix);
$cellWizard = $wizardFactory->newRule(Wizard::TEXT_VALUE);

$cellWizard->contains("Oui")
  ->setStyle($greenStyle);
$conditionalStyles[] = $cellWizard->getConditional();

$cellWizard->contains("Non")
  ->setStyle($redStyle);
$conditionalStyles[] = $cellWizard->getConditional();

$req = $db->prepare("SELECT *
                      FROM stagiaires
                      JOIN sessions ON sessions.session_id = stagiaires.id_session
                      WHERE session_nom " . (isset($_GET['nom_session']) && !empty($_GET['nom_session']) ? "=:nom_session" : "IS NOT NULL") . ";");
if (isset($_GET['nom_session']) && !empty($_GET['nom_session'])) {
  $req->bindParam(":nom_session", $_GET['nom_session']);
}
$req->execute();
$session = $req->fetchAll(PDO::FETCH_ASSOC);

// Définition des bordures
$borderThickBlack = array(
  'borders' => array(
    'outline' => array(
      'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THICK,
      'color' => array('argb' => '000000'),
    ),
    'inside' => array(
      'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
      'color' => array('argb' => '000000'),
    ),
  ),
  'alignment' => [
    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
  ],
  'font' => [
    'bold' => true,
  ]
);
$borderThinWheat = array(
  'borders' => array(
    'allBorders' => array(
      'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
      'color' => array('argb' => 'adadad'),
    ),
    'outline' => array(
      'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
      'color' => array('argb' => '000000'),
    ),
  ),
);

if (!empty($session)) {
  $sessions = array();
  for ($stagiaire = 1; $stagiaire <= sizeof($session); $stagiaire++) {
    if (!in_array($session[$stagiaire - 1]['session_nom'], $sessions)) {
      $i = 2;
      if (empty($sessions)) {
        $sheet = $spreadsheet->getActiveSheet();
      } else {
        $sheet = $spreadsheet->createSheet();
      }
      array_push($sessions, $session[$stagiaire - 1]['session_nom']);

      $sheet->setTitle($session[$stagiaire - 1]['session_nom']);

      // Appliquer la validation des données à la plage de cellules spécifiée
      $sheet->setDataValidation($cellRangeChoix, $dataValidation);

      // Création de l'en-tête du tableau
      $sheet->setCellValue('A1', 'NOM');
      $sheet->setCellValue('B1', 'Prénom');
      $sheet->setCellValue('C1', 'Convention de stage');
      $sheet->setCellValue('D1', 'Horaires mois 1');
      $sheet->setCellValue('E1', 'Horaires mois 2');
      $sheet->setCellValue('F1', 'Horaires mois 3');
      $sheet->setCellValue('G1', 'Attestation reçue');
      $sheet->setCellValue('H1', 'Évaluation reçue');
      $sheet->getStyle('A1:H1')->applyFromArray($borderThickBlack);
      $sheet->getStyle('A1:H1')->getFill()->setFillType(Fill::FILL_SOLID)->getStartColor()->setRGB('9BC2E6'); // Définition du background
      $sheet->setAutoFilter('A1:H1'); // Définition des filtres

      // Ajuster automatiquement la taille des cellules en fonction du contenu

      $sheet->getStyle($cellWizard->getCellRange())
        ->setConditionalStyles($conditionalStyles);
    }
    $sheet->setCellValue("A" . $i, strtoupper($session[$stagiaire - 1]['stagiaire_nom']));
    $sheet->setCellValue("B" . $i, ucwords($session[$stagiaire - 1]['stagiaire_prenom']));
    $sheet->setCellValue("C" . $i, ($session[$stagiaire - 1]['stagiaire_convention_recue'] ? "Oui" : "Non"));
    $sheet->setCellValue("D" . $i, ($session[$stagiaire - 1]['stagiaire_horaires_recues_1'] ? "Oui" : "Non"));
    $sheet->setCellValue("E" . $i, ($session[$stagiaire - 1]['stagiaire_horaires_recues_2'] ? "Oui" : "Non"));
    $sheet->setCellValue("F" . $i, ($session[$stagiaire - 1]['stagiaire_horaires_recues_3'] ? "Oui" : "Non"));
    $sheet->setCellValue("G" . $i, ($session[$stagiaire - 1]['stagiaire_attestation_recue'] ? "Oui" : "Non"));
    $sheet->setCellValue("H" . $i, ($session[$stagiaire - 1]['stagiaire_evaluation_recue'] ? "Oui" : "Non"));
    $i++;
    $sheet->getStyle('A2:H' . $i - 1)->applyFromArray($borderThinWheat);
    foreach (range('A', $sheet->getHighestDataColumn()) as $col) {
      $sheet->getColumnDimension($col)
        ->setAutoSize(true);
    }
  }
}

// Save the spreadsheet as XLSX
$writer = new Xlsx($spreadsheet);
// Set appropriate headers for file download
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="Liste_' . uniqid("SS_") . '.xlsx"');
header('Cache-Control: max-age=0');

$writer->save('php://output');
exit;
// $writer->save('output.xlsx'); // To save it on the server
// echo 'Export completed.';
