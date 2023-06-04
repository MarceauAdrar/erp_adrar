<?php

error_reporting(E_ALL); 
ini_set("display_errors", 1);

// Chemin du fichier PDF
$pdfPath = __DIR__ . '/../test.pdf';

// Création de l'objet Imagick
$imagick = new \Imagick();

// Réglage de la résolution pour améliorer la qualité de l'image PNG
$imagick->setResolution(300, 300);

// Lire le fichier PDF
$imagick->readImage($pdfPath);

// Convertir chaque page du PDF en PNG
foreach ($imagick as $pageNumber => $image) {
    // Nom du fichier de sortie
    $outputPath = __DIR__ . '/../test/page_' . ($pageNumber + 1) . '.png';

    // Enregistrer l'image au format PNG
    $image->setImageFormat('png');
    $image->writeImage($outputPath);
}

// Libérer la mémoire
$imagick->clear();
$imagick->destroy();

echo 'Conversion terminée.';