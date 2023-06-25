<?php 
include_once("../../src/m/connect.php");

if(isset($_SESSION["utilisateur"]["id_stagiaire"])) {
    session_destroy();
}
header("Location: /public/index.php");
?> 