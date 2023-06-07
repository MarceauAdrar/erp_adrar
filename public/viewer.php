<?php 

include_once __DIR__ . '/../src/m/connect.php';
include_once __DIR__ . '/../src/vendor/autoload.php';

$html2pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');
$html2pdf->SetCreator("Marceau RODRIGUES");
$html2pdf->SetAuthor("Marceau RODRIGUES");
$html2pdf->SetTitle("Livret d'évaluation");
$html2pdf->SetSubject("Livret d'évaluation");
$html2pdf->AddPage();
$html2pdf->Image(__DIR__ . '/../src/v/templates_documents/livret_evaluation/dwwm/Livret_evaluation_DWWM-01.png');
$html2pdf->Output(__DIR__ . '/viewer.pdf', 'I');