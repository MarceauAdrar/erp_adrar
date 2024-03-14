<?php

include_once("../../src/m/connect.php");

$title = " | Contrôle administration";

if (array_key_exists("stagiaire_pseudo", $_SESSION["utilisateur"])) {
    header("Location: ../formation");
} else {
    header("Location: ../../../adminator");
}
