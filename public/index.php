<?php
include_once __DIR__ . '/m/connect.php';

$page = "notfound.html";
if(isset($_GET["page"]) && !empty($_GET["page"])) {
    switch($_GET["page"]) {
        case "formation":
            $page = "formation/index.php";
            break;
        case "admin":
            $page = "admin/index.php";
            break;
        case "stage":
            $page = "stage/index.php";
            break;
        case "titre":
            $page = "titre/index.php";
            break;
    }
} 

include __DIR__."/".$page;
?>