<?php 

error_reporting(E_ALL); 
ini_set("display_errors", 1);

define("DEV", true);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
use TCPDF;

require __DIR__ . '/../vendor/autoload.php';

try {
    $db = new PDO("mysql:host=localhost;dbname=adrar_titres", "root", "adrar");
} catch(PDOException $e) {
    if(DEV) throw $e;
}

//Create an instance; passing `true` enables exceptions
$mailer = new PHPMailer(true);

//Server settings
$mailer->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
$mailer->isSMTP();                                            //Send using SMTP
$mailer->CharSet    = "UTF-8";                                //Enable encoding in UTF-8
$mailer->Encoding   = 'base64';                               //Change the default encoding
$mailer->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
$mailer->SMTPAuth   = true;                                   //Enable SMTP authentication
if(DEV) {
    $mailer->Username   = 'marceau0707@gmail.com';            //SMTP username
    $mailer->Password   = 'goemqkkzceuawntw';                 //SMTP password
} else {
    $mailer->Username   = 'marceau.ro@adrar-numerique.com';   //SMTP username
    $mailer->Password   = 'pleoxdpptfpkdmnd';                 //SMTP password
}
$mailer->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable implicit TLS encryption
$mailer->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`


include_once __DIR__ . '/requetes.php';