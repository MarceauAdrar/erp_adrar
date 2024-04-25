<?php

include_once __DIR__ . '/../../src/m/connect.php';

$sql = "SELECT stagiaire_nom, stagiaire_prenom, stagiaire_documents
        FROM stagiaires 
        WHERE stagiaire_id=:id_stagiaire;";
$req = $db->prepare($sql);
$id_stagiaire = (isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["stagiaire_id"] !== -1 ? $_SESSION["utilisateur"]["stagiaire_id"] : @$_GET['id_stagiaire']);
$req->bindParam(":id_stagiaire", $id_stagiaire);
$req->execute();
$stagiaire = $req->fetch(PDO::FETCH_ASSOC);

$title = " | Documents du stagiaire";
include_once('./header.php'); ?>
<h1 class="text-center">Documents du stagiaire <?= $stagiaire['stagiaire_prenom']?>&nbsp;<?=$stagiaire['stagiaire_nom']?></h1>
<?php
echo "<pre>";
var_dump(json_decode($stagiaire['stagiaire_documents'], true));
echo "</pre>";
?>
<?php include_once('./js.php');
include_once('./footer.php');