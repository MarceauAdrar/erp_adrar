<?php

include_once("../../src/m/connect.php");

$title = " | Vérification";

$errors = array();
$error404 = false;

if($_GET["module"] == "html-css") {
    $sql_select_stagiaires = "SELECT stagiaire_id, stagiaire_username
                            FROM stagiaires;";
    $req_select_stagiaires = $db->prepare($sql_select_stagiaires);
    $req_select_stagiaires->execute();
    $stagiaires = $req_select_stagiaires->fetchAll(PDO::FETCH_ASSOC);

    switch($_GET["tp"]) {
        case "1":
            $re = '/(<!DOCTYPE html>)|(<html[\ a-zA-Z="]+>)|(<head>)|(<meta[\ a-zA-Z0-9=,."-]+[\>\/>])|(<title>[a-zA-Z0-9]+<\/title>)|(<\/head>)|(<body>)|(<\/body>)|(<\/html>)/m';

            foreach($stagiaires as $stagiaire) {
                $tp = "./stagiaires/" . $stagiaire["stagiaire_username"] . "/html-css/tp1.html";
                if(file_exists($tp)) {
                    $str = file_get_contents($tp);
                    preg_match_all($re, $str, $matches, PREG_SET_ORDER, 0);
                    
                    $errors_found = sizeof($matches);

                    $sql_update_tp = "UPDATE stagiaires_evaluations 
                                        SET stagiaire_evaluation_correction = 1, 
                                        stagiaire_evaluation_completed = 1,  
                                        stagiaire_evaluation_errors_found=:stagiaire_evaluation_errors_found
                                        WHERE id_stagiaire=:stagiaire_id 
                                        AND id_evaluation = 1;";
                    $req_update_tp = $db->prepare($sql_update_tp);
                    $req_update_tp->bindParam(":stagiaire_id", $stagiaire["stagiaire_id"]);
                    $req_update_tp->bindParam(":stagiaire_evaluation_errors_found", $errors_found);
                    if(!$req_update_tp->execute()) {
                        $errors[$stagiaire["stagiaire_id"]]["message"] = "Une erreur s'est produite lors de la correction des tps";
                        $errors[$stagiaire["stagiaire_id"]]["module"] = "html-css";
                        $errors[$stagiaire["stagiaire_id"]]["tp"] = "1";
                        $errors[$stagiaire["stagiaire_id"]]["username"] = $stagiaire["stagiaire_username"];
                    }
                }
            }
            break;
        case "2":
            $re = '/(<link rel="stylesheet"[\ \/a-zA-Z0-9=,."-]+[\>\/>])|(<title>[\ a-zA-Z0-9]+<\/title>)/m';

            foreach($stagiaires as $stagiaire) {
                $tp = "./stagiaires/" . $stagiaire["stagiaire_username"] . "/html-css/tp2.html";
                if(file_exists($tp)) {
                    $str = file_get_contents($tp);
                    preg_match_all($re, $str, $matches, PREG_SET_ORDER, 0);
                    
                    $errors_found = sizeof($matches);
                
                    $sql_update_tp = "UPDATE stagiaires_evaluations 
                                    SET stagiaire_evaluation_correction = 1, 
                                    stagiaire_evaluation_completed = 1,  
                                    stagiaire_evaluation_errors_found=:stagiaire_evaluation_errors_found
                                    WHERE id_stagiaire=:stagiaire_id 
                                    AND id_evaluation = 2;";
                    $req_update_tp = $db->prepare($sql_update_tp);
                    $req_update_tp->bindParam(":stagiaire_id", $stagiaire["stagiaire_id"]);
                    $req_update_tp->bindParam(":stagiaire_evaluation_errors_found", $errors_found);
                    if(!$req_update_tp->execute()) {
                    $errors[$stagiaire["stagiaire_id"]]["message"] = "Une erreur s'est produite lors de la correction des tps";
                    $errors[$stagiaire["stagiaire_id"]]["module"] = "html-css";
                    $errors[$stagiaire["stagiaire_id"]]["tp"] = "2";
                    $errors[$stagiaire["stagiaire_id"]]["username"] = $stagiaire["stagiaire_username"];
                    }
                }
            }
            break;
        case "3":
            break;
        case "4":
            break;
        default:
            $error404 = true;
    }
} elseif($_GET["category"] == "quiz") {
    $sql_select_quiz = "SELECT ";
}


include_once("./header.php");
if($error404) {
    include_once("./error404.php");
} else { ?>
<div class="container">
    <div class="row">
        <div class="col-8 offset-2">
            <table class="table table-bordered table-striped mt-3 text-center">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Module</th>
                        <th>TP</th>
                        <th>Error</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if(!empty($errors)) {
                        
                    foreach($errors as $key => $value) { ?>
                        <tr>
                            <td><?=$key?></td>
                            <td><?=$value["username"]?></td>
                            <td><?=$value["module"]?></td>
                            <td><?=$value["tp"]?></td>
                            <td><?=$value["message"]?></td>
                        </tr>
                    <?php } 
                    } else { ?>
                        <tr>
                            <td colspan="5">Aucune erreur reportée</td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php 
} 
include_once("./js.php");
include_once("./footer.php");
