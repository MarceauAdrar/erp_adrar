<?php
include_once("../../src/m/connect.php");

if(isset($_GET['q']) && !empty($_GET['q'])) {
    $req = $db->prepare("SELECT formateur_nom, formateur_prenom, cours_ressource_archive 
                        FROM cours_ressources 
                        JOIN cours ON (cours_id = id_cours) 
                        JOIN formateurs ON (formateurs.formateur_id = cours.id_formateur)  
                        WHERE cours_ressource_archive_lien=:cours_ressource_archive_lien;");
    $req->bindValue(":cours_ressource_archive_lien", filter_var($_GET['q'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->execute();
    $ressource = $req->fetch(PDO::FETCH_ASSOC);
    if(!empty($ressource)) {
        $fichier = "../../src/v/formateurs/".strtolower(substr($_SESSION['utilisateur']['formateur_prenom'], 0, 1) . $_SESSION['utilisateur']['formateur_nom']).'/'.$ressource['cours_ressource_archive'];
        header('Content-Type: '.mime_content_type($fichier));
        header('Content-Disposition: attachment; filename="' . $ressource['cours_ressource_archive'] . '"');
        header('Cache-Control: max-age=0');
        header('Content-Length: ' . filesize($fichier));
        readfile($fichier);
    }
}

exit;