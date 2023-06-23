<?php
include_once __DIR__ . '/../src/m/connect.php';

if(isset($_GET["page"]) && !empty($_GET["page"])) {
    if(isset($db) && !empty($db)) {
        $page = "notfound.html";
        // if(isset($_SESSION['user'])) {
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
        // } else {
        //     $page = "connexion.php";
        // }
    } else {
        $page = "maintenance.php";
    }
    include __DIR__."/".$page;die;
} 
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/b478fcca05.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/_style.css">
    <title>Applications</title>
</head>
<body>
    <div class="wrapper">
        <div class="cards">
            <div class="card">
                <div class="card-title">Accueil</div>
                <div class="card-body"></div>
                <div class="card-footer">
                    <a class="card-btn" href="?page=">Recharger</a>
                </div>
            </div>
            <div class="card">
                <div class="card-title">Administration</div>
                <div class="card-body"></div>
                <div class="card-footer">
                    <a class="card-btn" href="?page=admin">Administrer</a>
                </div>
            </div>
            <div class="card">
                <div class="card-title">Formation</div>
                <div class="card-body"></div>
                <div class="card-footer">
                    <a class="card-btn" href="?page=formation">WIP !</a>
                </div>
            </div>
            <div class="card">
                <div class="card-title">Stage</div>
                <div class="card-body"></div>
                <div class="card-footer">
                    <a class="card-btn" href="?page=stage">Envoyer !</a>
                </div>
            </div>
            <div class="card">
                <div class="card-title">Titre</div>
                <div class="card-body"></div>
                <div class="card-footer">
                    <a class="card-btn" href="?page=titre">Générer</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>