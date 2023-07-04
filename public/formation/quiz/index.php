<?php
include_once("../../../src/m/connect.php");

$title = " | Quiz";

$sql_quiz_list = "SELECT quiz_id, quiz_module, quiz_lien, quiz_difficulte, id_secteur 
                FROM quiz 
                WHERE quiz_module=:quiz_module;";
$req_quiz_list = $db->prepare($sql_quiz_list);
$req_quiz_list->bindParam(":quiz_module", $_GET["cours"]);
$req_quiz_list->execute();
$quiz_list = $req_quiz_list->fetchAll(PDO::FETCH_ASSOC);

$lignes = '';
if(!empty($quiz_list)) {
    foreach($quiz_list as $value) {
        $difficulte = "Facile";
        if($value['quiz_difficulte'] == 3) {
            $difficulte = "Extrême";
        } elseif($value['quiz_difficulte'] == 2) {
            $difficulte = "Difficile";
        } elseif($value['quiz_difficulte'] == 1) {
            $difficulte = "Modéré";
        }
        $lignes .= '<tr>';
        $lignes .= '    <td>' . strtoupper($value['quiz_module']) . "\n" . $difficulte . '</td>';
        $lignes .= '    <td>' . strtoupper($value['quiz_module']) . '</td>';
        $lignes .= '    <td><button role="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#modalDisplayQuiz" onclick="fetchQuizData(' . $value['quiz_id'] . ');">Commencer</button></td>';
        $lignes .= '</tr>';
    }
} else {
    $lignes = '<tr><td colspan="3">Aucune donnée à afficher...</td></tr>';
}

ob_start();
include_once("../header.php"); ?>
<div class="container">
    <div class="row">
        <div class="col-8 offset-2 text-center">
            <h1>Liste des quiz disponibles</h1>
            <?php include_once("../imgs/online_test.svg");?>
            <table class="table table-bordered table-striped table-responsive mt-3">
                <thead>
                    <th>Titre</th>
                    <th>Type</th>
                    <th>Lien</th>
                </thead>
                <tbody>
                    <?=$lignes?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal modal-lg fade" id="modalDisplayQuiz" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalDisplayQuizTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        </div>
    </div>
</div>

<?php include_once("../js.php"); ?>
<script>
    sessionStorage.setItem("previous_uri", "<?=$_SERVER["REQUEST_URI"]?>");

    function fetchQuizData(quiz_id) {
        $.ajax({
            url: "http://<?=$_SERVER["SERVER_NAME"]?>/erp/src/c/requests.php", 
            method: "post",
            data: {
                fetch_quiz_data: 1,
                quiz_id: quiz_id 
            }, 
            success: function(r) {
                $("#modalDisplayQuiz .modal-content").html(r);
            }
        });
    }
</script>
<?php 
include_once("../footer.php");
die(ob_get_clean());
