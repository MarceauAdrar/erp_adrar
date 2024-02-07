<?php 
include_once("../../src/m/connect.php");

if(isset($_SESSION["utilisateur"]["stagiaire_id"])) {
    session_destroy();
}
header("Location: /public/index.php");
?> 