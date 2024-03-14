<?php
include_once("../../src/m/connect.php");

$title = " | Boîte aux lettres";

$comptes = "";
$sql = "SELECT avatar_lien, sta.stagiaire_id, stagiaire_nom, stagiaire_prenom, s.session_id 
        FROM stagiaires sta 
        JOIN avatars ON (avatar_id = id_avatar) 
        JOIN sessions s ON (s.session_id = sta.id_session) 
        JOIN formateurs f ON (f.formateur_id = s.id_formateur) 
        JOIN secteurs sec ON (sec.secteur_id = f.id_secteur) 
        WHERE sta.stagiaire_actif = 1 
        AND (f.formateur_id=:id_formateur OR s.session_id=:id_session)
        ORDER BY stagiaire_prenom, stagiaire_nom;";
$req = $db->prepare($sql);
$req->bindValue(":id_formateur", filter_var($_SESSION["utilisateur"]["formateur_id"], FILTER_VALIDATE_INT));
$req->bindValue(":id_session", filter_var($_SESSION["utilisateur"]["id_session"], FILTER_VALIDATE_INT));
$req->execute();
$listeComptes = $req->fetchAll(PDO::FETCH_ASSOC);

foreach (recupererSessions() as $session) {
    if(isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["stagiaire_id"] > 0 && $session['session_id'] == $_SESSION["utilisateur"]["id_session"]) {
        $comptes .= '<div class="ps-1 pt-2 pb-2 fake-link" onclick="showMessagesSession(' . $session['session_id'] . ')">' . $session['session_nom'] . '</div>';
    } elseif(isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["formateur_id"] > 0) {
        $comptes .= '<div class="ps-1 pt-2 pb-2 fake-link" onclick="showMessagesSession(' . $session['session_id'] . ')">' . $session['session_nom'] . '</div>';
    }
    foreach ($listeComptes as $compte) if ($session['session_id'] === $compte['session_id']) {
        $comptes .= '<div class="ps-4 pt-2 pb-2 fake-link" onclick="showMessages(' . $compte['stagiaire_id'] . ')"><img src="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/imgs/avatars/' . $compte['avatar_lien'] . '">&nbsp;(' . $compte['stagiaire_id'] . ')&nbsp;' . $compte['stagiaire_prenom'] . "&nbsp;" . $compte['stagiaire_nom'] . '</div>';
    }
}

ob_start();
include_once("./header.php");
?>
<div class="container">
    <div class="row pb-5">
        <div class="col-12">
            <h1 class="text-center">Bienvenue dans votre <em>boîte aux lettres</em></h1>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row" style="min-height: 71vh;">
        <div class="col-2 bg-light height-message-scroll">
            <?= $comptes ?>
        </div>
        <div class="col-10 bg-dark text-white text-center" id="messages">
            <input type="hidden" id="form_user_id" value="">
            <input type="hidden" id="form_session_id" value="">
            <h2 class="d-none user-visibility">Début de la conversation avec <span id="user"></span></h2>
            <h2 class="d-none session-visibility">Début de la conversation avec <span id="session"></span></h2>
            <div id="contenu" class="height-message-scroll2">
                Sélectionner un compte pour voir les messages...
            </div>
            <div class="d-none user-visibility session-visibility bg-dark">
                <input type="text" id="form_message" placeholder="Ton message ici..." class="form-control w-75" onkeypress="sendMessage(event);">
                <a href="#" class="btn btn-success" onclick="sendMessage(event);"><i class="fa-solid fa-paper-plane"></i>&nbsp;Envoyer</a>
            </div>
        </div>
    </div>
</div>

<?php
include_once("./js.php"); ?>
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
                $("#form_session_id").val(0);
                $("#form_user_id").val(id_user);
                $("#messages #session").html("");
                $("#messages #user").html(r.user);
                $("#messages .session-visibility").addClass("d-none");
                $("#messages .user-visibility").removeClass("d-none");
                $("#messages #contenu").html(r.messages);
            }
        });
    }

    function showMessagesSession(id_session) {
        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            dataType: "json",
            data: {
                show_messages: 1,
                id_session: id_session
            },
            success: function(r) {
                $("#form_user_id").val(0);
                $("#form_session_id").val(id_session);
                $("#messages #user").html("");
                $("#messages #session").html(r.session);
                $("#messages .user-visibility").addClass("d-none");
                $("#messages .session-visibility").removeClass("d-none");
                $("#messages #contenu").html(r.messages);
            }
        });
    }

    function sendMessage(event) {
        if (event.keyCode === 13 || event === true) {
            event.preventDefault();
            $.ajax({
                url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
                method: "post",
                dataType: "json",
                data: {
                    send_message: 1,
                    id_user: $('#form_user_id').val(),
                    id_session: $('#form_session_id').val(),
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
include_once("./footer.php");
die(ob_get_clean());
?>