<?php

include_once("../../src/m/connect.php");

if (!empty($_GET["module"]) && !empty($_GET["tp"])) {
    $sql_check_achieved = "SELECT stagiaire_evaluation_correction 
                            FROM stagiaires_evaluations 
                            WHERE id_evaluation=:id_evaluation 
                            AND id_stagiaire=:id_stagiaire;";
    $req_check_achieved = $db->prepare($sql_check_achieved);
    $req_check_achieved->bindParam(":id_evaluation", $_GET["tp"]);
    $id_stagiaire = (!empty($_GET["stagiaire_id"]) ? $_GET["stagiaire_id"] : $_SESSION["utilisateur"]["stagiaire_id"]);
    $stagiaire_username = (!empty($_GET["stagiaire_username"]) ? $_GET["stagiaire_username"] : $_SESSION["stagiaire"]["stagiaire_username"]);
    $req_check_achieved->bindParam(":id_stagiaire", $id_stagiaire);
    $req_check_achieved->execute();
    if (empty($req_check_achieved->fetch(PDO::FETCH_COLUMN)) && (!isset($_GET["correction"]) && empty($_GET["correction"]))) {
        header("Location: ./index.php");
    }
}

$title = " | Vision du TP terminé";

include_once("./header.php"); ?>
<script>
    var module = sessionStorage.setItem("module", "<?= $_GET["module"] ?>");
    var tp = sessionStorage.setItem("tp", "<?= $_GET["tp"] ?>");
</script>
<div class="container-fluid">
    <div class="row">
        <div class="col-12 mb-3 mt-3">
            <div class="float-start">
                <a class="btn btn-primary" id="btn_go_back"><i class="fa-solid fa-chevron-left"></i>&nbsp;Retour</a>
            </div>
        </div>
        <div class="col-6">
            <div class="editor">
                <div class="line-numbers">
                    <span></span>
                </div>
                <textarea readonly id="code_editor_readonly" spellcheck="false"></textarea>
            </div>
            <iframe id="web_preview" src="" frameborder="0"></iframe>
        </div>
        <div class="col-6">
            <div class="editor">
                <div class="line-numbers-correction">
                    <span></span>
                </div>
                <textarea readonly id="code_editor_correction_readonly" spellcheck="false"></textarea>
            </div>
            <iframe id="web_preview_correction" src="" frameborder="0"></iframe>
        </div>
    </div>
</div>
<?php
include_once("./js.php");
?>
<script src="./js/evals.js?v=<?= uniqid() ?>"></script>
<script>
    loadButtons();
    chargerCorrection();

    function chargerCorrection() {
        const link = "//" + SERVER_NAME + "/erp/public/formation/stagiaires/" + "<?= $stagiaire_username ?>" + "/" + sessionStorage.getItem("module") + "/tp" + sessionStorage.getItem("tp") + ".html";
        const linkCorrection = "//" + SERVER_NAME + "/erp/public/formation/modules/" + sessionStorage.getItem("module") + "/corrections/tp" + sessionStorage.getItem("tp") + ".html";

        var html_editor_1 = getHtmlContent(link);
        $("#code_editor_readonly").val(html_editor_1);
        var html_editor_2 = getHtmlContent(linkCorrection);
        $("#code_editor_correction_readonly").val(html_editor_2);

        setTimeout(function() {
            // On ajoute les lignes aux éditeurs
            $(".line-numbers").html("");
            for (var i = 0; i < html_editor_1.split(/\r\n|\r|\n/).length + 3; i++) {
                $(".line-numbers").html($(".line-numbers").html() + "<span></span>");
            }

            $(".line-numbers-correction").html("");
            for (var i = 0; i < html_editor_2.split(/\r\n|\r|\n/).length + 3; i++) {
                $(".line-numbers-correction").html($(".line-numbers-correction").html() + "<span></span>");
            }
        }, 250);

        if ($("#web_preview").length) {
            // IFrame
            var iframe = document.getElementById('web_preview');
            iframe.src = link;
        }
        if ($("#web_preview_correction").length) {
            // IFrame
            var iframeCorrection = document.getElementById('web_preview_correction');
            iframeCorrection.src = linkCorrection;
        }
    }
</script>