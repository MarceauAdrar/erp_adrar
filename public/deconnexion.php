<?php

session_start();
if (session_destroy()) { // Détruit les informations de la session
    setcookie("DECONNECTE", true, 0, "/");
}
unset($_SESSION); // Détruit les données stockées dans la variable de session
header('Location: ./connexion.php' . "?url=" . @$_GET['url'] . (isset($_GET['type']) && isset($_GET['message']) ? "&type=" . $_GET['type'] . "&message=" . $_GET['message'] : ""));
