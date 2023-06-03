<?php 

error_reporting(E_ALL); 
ini_set("display_errors", 1);

define("RACINE", '/var/www/html/automatisation_stages/');
define("DEV", true);

try {
    $db = new PDO("mysql:host=localhost;dbname=adrar_titres", "root", "adrar");
} catch(PDOException $e) {
    throw $e;
}

include_once __DIR__ . '/requetes.php';