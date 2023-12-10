<?php
include_once("../src/m/connect.php");

$title = " | Boîte aux lettres";

$comptes = "";
if($_SESSION["utilisateur"]["id_formateur"] !== -1) {
    $sql = "SELECT avatar_lien, sta.id_stagiaire AS stagiaire_id, nom_stagiaire, prenom_stagiaire 
            FROM stagiaires sta 
            JOIN avatars ON (avatar_id = id_avatar) 
            JOIN sessions s ON (s.id_session = sta.id_session) 
            JOIN formateurs f ON (f.id_formateur = s.id_formateur) 
            JOIN secteurs sec ON (sec.id_secteur = f.id_secteur) 
            WHERE sta.est_actif = 1 
            AND f.id_formateur=:id_formateur 
            ORDER BY prenom_stagiaire, nom_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(":id_formateur", filter_var($_SESSION["utilisateur"]["id_formateur"], FILTER_VALIDATE_INT));
    $req->execute();
    $listeComptes = $req->fetchAll(PDO::FETCH_ASSOC);
    
    foreach($listeComptes as $compte) {
        $comptes .= '<div class="ps-1 pt-2 pb-2 fake-link" onclick="showMessages(' . $compte['stagiaire_id'] . ')"><img src="//'.$_SERVER["SERVER_NAME"].'/erp/public/formation/imgs/avatars/'.$compte['avatar_lien'].'">&nbsp;(' . $compte['stagiaire_id'] . ')&nbsp;'.$compte['prenom_stagiaire']."&nbsp;".$compte['nom_stagiaire'].'</div>';
    }
}

ob_start();
include_once("./formation/header.php");
?>
<div class="container">
    <div class="row pb-5">
        <div class="col-12">
            <h1 class="text-center">Bienvenue dans votre <em>boîte aux lettres</em></h1>      
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-2 bg-light height-message-scroll">
            <?=$comptes?>
        </div>
        <div class="col-10 bg-dark text-white text-center" id="messages">
            <input type="hidden" id="form_user_id" value="">
            <h2 class="d-none user-visibility">Début de la conversation avec <span id="user"></span></h2>
            <div id="contenu" class="height-message-scroll2">
                Sélectionner un compte pour voir les messages...
            </div>
            <div class="d-none user-visibility bg-dark">
                <input type="text" id="form_message" placeholder="Ton message ici..." class="form-control w-75" onkeypress="sendMessage(event);">
                <a href="#" class="btn btn-success"><i class="fa-solid fa-paper-plane"></i>&nbsp;Envoyer</a>
            </div>
        </div>
    </div>
</div>

<?php
include_once("./formation/js.php"); ?>
<script>
    function showMessages(id_user) {
        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            dataType: "json",
            data: {
                show_messages: 1,
                id_user: id_user
            },
            success: function(r) {
                $("#form_user_id").val(id_user);
                $("#messages #user").html(r.user);
                $("#messages .user-visibility").removeClass("d-none");
                $("#messages #contenu").html(r.messages);
            }
        });
    }
    function sendMessage(event) {
        if(event.keyCode === 13 || event === true) {
            event.preventDefault();
            $.ajax({
                url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
                method: "post",
                dataType: "json",
                data: {
                    send_message: 1,
                    id_user: $('#form_user_id').val(), 
                    message_content: $('#form_message').val()
                },
                success: function(r) {
                    $("#messages #contenu").html($("#messages #contenu").html() + $('#form_message').val());
                }
            });
        }
    }
</script>
<?php 
include_once("./formation/footer.php");
die(ob_get_clean());
?> 
