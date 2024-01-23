<?php
// Fichier permettant de lire un suivi des acquisition ADRAR et de le retranscrire pour les stagiaires

use PhpOffice\PhpSpreadsheet\Reader\Xlsx;

error_reporting(E_ALL);
ini_set("display_errors", 1);

require __DIR__ . '/../../src/m/connect.php';
require __DIR__ . '/../../src/vendor/autoload.php';

$full_path = "Suivi_des_Acquisitions_DEV.xlsx";


// Crée un objet Reader pour lire le fichier Excel
$reader = new Xlsx();
$spreadsheet = $reader->load($full_path);

// Obtient toutes les données de la première feuille de calcul
$data = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);

// Convertit les données en format JSON
$jsonData = json_encode($data);

// Affiche le JSON résultant
echo $jsonData;
exit;
