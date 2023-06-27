<?php 

session_start();
session_destroy(); // Détruit les informations de la session
unset($_SESSION); // Détruit les données stockées dans la variable de session
header('Location: ./connexion.php'.(isset($_GET['type']) && isset($_GET['message']) ? "?type=".$_GET['type']."&message=".$_GET['message'] : ""));
?>