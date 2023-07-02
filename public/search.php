<?php 

include_once __DIR__ . '/../src/m/connect.php';
$sql = "SELECT * FROM cours WHERE cours_keywords LIKE CONCAT('%', :recherche,'%');";
$req = $db->prepare($sql);
$req->bindValue(':recherche', filter_var($_GET['q'], FILTER_SANITIZE_SPECIAL_CHARS));
$req->execute();
$resultats = $req->fetchAll(PDO::FETCH_ASSOC);
$req->closeCursor();
foreach($resultats as $cours) {
    echo $cours['cours_title'];
}
?>