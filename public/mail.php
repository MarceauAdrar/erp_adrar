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
