<?php
error_reporting(E_ALL);
ini_set('memory_limit', -1);
ini_set("display_errors", 1);
ini_set("session.gc_maxlifetime", 14400);

session_start();

if (
    !array_key_exists('utilisateur', $_SESSION) && $_SERVER['REQUEST_URI'] !== "/erp/public/code.php" && explode('?', $_SERVER['REQUEST_URI'])[0] !== "/erp/public/code.php"
    && $_SERVER['REQUEST_URI'] !== "/erp/public/changer-mdp.php" && explode('?', $_SERVER['REQUEST_URI'])[0] !== "/erp/public/changer-mdp.php"
) {
    header("Location: https://" . $_SERVER['SERVER_NAME'] . "/erp/public/deconnexion.php?type=info&message=" . urlencode("Session expirée"));
}

define("DEV", false);
define("LIEN_FORMATION", "/erp/public/formation/");

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
use TCPDF;

require __DIR__ . '/../vendor/autoload.php';

try {
    $db = new PDO("mysql:host=localhost;dbname=adrar_titres", "debian", "Adr4r!");
} catch (PDOException $e) {
    if (DEV) throw $e;
}

//Create an instance; passing `true` enables exceptions
$mailer = new PHPMailer(true);

//Server settings
$mailer->SMTPDebug  = 0;                                      //Enable verbose debug output
$mailer->isSMTP();                                            //Send using SMTP
$mailer->CharSet    = "UTF-8";                                //Enable encoding in UTF-8
$mailer->Encoding   = 'base64';                               //Change the default encoding
$mailer->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
$mailer->SMTPAuth   = true;                                   //Enable SMTP authentication
if (DEV) {
    $mailer->Username   = 'marceau0707@gmail.com';            //SMTP username
    $mailer->Password   = 'goemqkkzceuawntw';                 //SMTP password
} else {
    $mailer->Username   = 'marceau.ro@adrar-numerique.com';   //SMTP username
    $mailer->Password   = 'pleoxdpptfpkdmnd';                 //SMTP password
    // Compte de secours
    $mailer->Username   = 'adrar34070@gmail.com';             //SMTP username
    $mailer->Password   = 'oirjjazufhovozgi';                 //SMTP password
}
$mailer->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable implicit TLS encryption
$mailer->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
$mailer->isHTML(true);

include_once __DIR__ . '/requetes.php';
