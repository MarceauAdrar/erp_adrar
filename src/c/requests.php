<?php
include_once __DIR__ . '/../m/connect.php';

if(!empty($_POST["stagiaire_connexion"]) && $_POST["stagiaire_connexion"] == 1) {
    $sql = "SELECT *  
            FROM stagiaires 
            WHERE stagiaire_username=:stagiaire_username;";
    $req = $db->prepare($sql);
    $req->bindParam(":stagiaire_username", $_POST["stagiaire_username"]);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);

    if(password_verify($_POST["stagiaire_password"], $stagiaire["stagiaire_password"])) {
        $_SESSION["form_connexion"]["errors"] = 0;
        $_SESSION["stagiaire"] = $stagiaire;
        header("Location: /public/index.php");
    } else {
        $_SESSION["form_connexion"]["errors"] = 1;
        header("Location: ../public/connexion.php");
    }
}

if(!empty($_POST["display_prompt_join_modal"])) {
    $sql_select_evaluation = "SELECT evaluation_id, evaluation_title, evaluation_goals, evaluation_synopsis 
                            FROM evaluations 
                            WHERE evaluation_id=:evaluation_id;";
    $req_select_evaluation = $db->prepare($sql_select_evaluation);
    $req_select_evaluation->bindParam(":evaluation_id", $_POST["evalId"]);
    $req_select_evaluation->execute();
    $modal = $req_select_evaluation->fetch(PDO::FETCH_ASSOC);
    $goals = "";
    $evaluation_goals = explode(";", $modal["evaluation_goals"]);
    foreach ($evaluation_goals as $goal) {
        $goals .= "- &nbsp;" . $goal . "<br/>";
    }
    ob_start(); ?>
    <div class="modal-header">
        <h5 class="modal-title" id="modalJoinEvaluationTitle"><?= $modal["evaluation_title"] ?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">
        <h3>Compétences: </h3>
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <?= $goals ?>
                </div>
                <div class="col-6">
                    <img class="svgs-sm" src="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/imgs/join.svg" alt="Illustration pour l'intégration à l'évaluation"/>
                </div>
            </div>
        </div>
        <hr class="hrs">
        <h3>Marche à suivre:</h3>
        <p><?= $modal["evaluation_synopsis"] ?></p>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Fermer</button>
        <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="btnJoinEvaluation(<?= $modal['evaluation_id'] ?>);">Rejoindre</button>
    </div>
    <?php 
    die(ob_get_clean());
}

if(!empty($_POST["btn_join_evaluation"])) {
    $sql_insert_stagiaire = "INSERT INTO stagiaires_evaluations(stagiaire_evaluation_completed, id_stagiaire, id_evaluation) 
                        VALUES(0, :id_stagiaire, :id_evaluation);";
    $req_insert_stagiaire = $db->prepare($sql_insert_stagiaire);
    $req_insert_stagiaire->bindParam(":id_stagiaire", $_SESSION["utilisateur"]["id_stagiaire"]);
    $req_insert_stagiaire->bindParam(":id_evaluation", $_POST["evalId"]);
    if($req_insert_stagiaire->execute()) {
        die("ok");
    }
    die("ko");
}

if(!empty($_POST["save_code"])) {
    $link = "/var/www/evaluations/public/stagiaires/" . $_SESSION["utilisateur"]["pseudo_stagiaire"]."/" . $_POST["module"];
    $file = $_POST["tp"] . "." . $_POST["extension"];
    if(!file_exists($link."/".$file)) {
        if(!mkdir($link, 0777, true)) {
            touch($link."/".$file);
        }
    }
    $eval = fopen($link."/".$file, "w") or die("ko");
    fwrite($eval, $_POST["code"]);
    fclose($eval);

    die("ok");
}

if(!empty($_POST["submit_evaluation"])) {
    $sql_update_stagiaire_evaluation = "UPDATE stagiaires_evaluations 
                                    SET stagiaire_evaluation_completed = 1 
                                    WHERE id_stagiaire=:id_stagiaire 
                                    AND id_evaluation=:id_evaluation;";
    $req_update_stagiaire_evaluation = $db->prepare($sql_update_stagiaire_evaluation);
    $req_update_stagiaire_evaluation->bindParam(":id_stagiaire", $_SESSION["utilisateur"]["id_stagiaire"]);
    $id_evaluation = substr($_POST["tp"], 2);
    $req_update_stagiaire_evaluation->bindParam(":id_evaluation", $id_evaluation);
    if($req_update_stagiaire_evaluation->execute()) {
        die("ok");
    }
    die("ko");
}

if(!empty($_POST["load_informations_tp"])) {
    $sql_select_informations_tp = "SELECT evaluation_title, evaluation_synopsis
                                    FROM evaluations 
                                    WHERE evaluation_id=:evaluation_id;";
    $req_select_informations_tp = $db->prepare($sql_select_informations_tp);
    $req_select_informations_tp->bindParam(":evaluation_id", $_POST["tp"]);
    $req_select_informations_tp->execute();
    $informations_tp = $req_select_informations_tp->fetch(PDO::FETCH_ASSOC);

    die(json_encode(array(
        "title" => $informations_tp["evaluation_title"], 
        "body" => $informations_tp["evaluation_synopsis"], 
    )));
}

if(!empty($_POST["valid_stagiaire_correction"])) {
    $sql_update_correction = "UPDATE stagiaires_evaluations 
                                SET stagiaire_evaluation_correction = 1, 
                                stagiaire_evaluation_errors_found=:errors_found
                                WHERE id_stagiaire=:id_stagiaire 
                                AND id_evaluation=:id_evaluation;";
    $req_update_correction = $db->prepare($sql_update_correction);
    $req_update_correction->bindParam(":id_stagiaire", $_POST["id_stagiaire"]);
    $req_update_correction->bindParam(":errors_found", $_POST["errors_found"]);
    $req_update_correction->bindParam(":id_evaluation", $_POST["tp"]);
    if($req_update_correction->execute()) {
        die("ok");
    }
    die("ko");
}

if(!empty($_POST["show_modal_manage_cours"])) {
    $sql_select_cours = "SELECT cours_id, cours_title, cours_category, cours_illustration, cours_active
                            FROM cours
                            ORDER BY cours_title;";
    $req_select_cours = $db->prepare($sql_select_cours);
    $req_select_cours->execute();
    $cours = $req_select_cours->fetchAll(PDO::FETCH_ASSOC);

    ob_start(); ?>
    <div class="container-fluid">
        <div class="row">
            <?php if(!empty($cours)) {
                foreach($cours as $cours) { ?>
                    <div class="col-3" onclick="updateStatusCourse(<?=$cours['cours_id']?>);">
                        <span class="admin-manage-imgs" id="cours_<?=$cours['cours_id']?>">
                            <span class="<?=(!empty($cours['cours_active']) ? "cours-active" : "cours-inactive")?>"><?php include("../public/imgs/" . strtolower($cours['cours_category']) . ".svg") ?></span>
                        </span>
                        <p class="admin-manage-text"><strong>[<?=strtoupper($cours['cours_category'])?>]</strong>&nbsp;<?=$cours['cours_title']?></p>
                    </div>
            <?php }} else { ?>
                <div class="col-6 offset-3">
                    <?php include_once("../public/imgs/under_construction.svg") ?>
                </div>
            <?php } ?>
        </div>
    </div>
    <?php 
    die(ob_get_clean());
}

if(!empty($_POST["update_status_cours"])) {
    $sql_update_cours = "UPDATE cours 
                        SET cours_active=:cours_active 
                        WHERE cours_id=:cours_id;";
    $req_update_cours = $db->prepare($sql_update_cours);
    $req_update_cours->bindParam(":cours_active", $_POST["cours_active"]);
    $req_update_cours->bindParam(":cours_id", $_POST["cours_id"]);
    if($req_update_cours->execute()) {
        die("ok");
    }
    die("ko");
}

if(!empty($_POST["fetch_quiz_data"])) {
    $sql_select_quiz = "SELECT quiz_id, quiz_question, quiz_proposition_1, quiz_proposition_2, quiz_proposition_3, quiz_proposition_4, quiz_type, id_quiz_list 
                        FROM quiz 
                        WHERE id_quiz_list=:id_quiz_list
                        LIMIT :offset, 1;";
    $req_select_quiz = $db->prepare($sql_select_quiz);
    $req_select_quiz->bindParam(":id_quiz_list", $_POST['quiz_list_id']);
    $offset = $_POST['offset'];
    $req_select_quiz->bindParam(":offset", $offset, PDO::PARAM_INT);
    $req_select_quiz->execute();
    $quiz = $req_select_quiz->fetch(PDO::FETCH_ASSOC);

    $offset++;
    $nb_colonnes = 0;
    for($i = 0 ; $i < 4 ; $i++) {
        if(!empty($quiz["quiz_proposition_" . $i])) $nb_colonnes++;
    }

    $sql_check_next_quiz = "SELECT quiz_id 
                            FROM quiz 
                            WHERE id_quiz_list=:id_quiz_list
                            LIMIT :offset, 1;";
    $req_check_next_quiz = $db->prepare($sql_check_next_quiz);
    $req_check_next_quiz->bindParam(":id_quiz_list", $_POST['quiz_list_id']);
    $req_check_next_quiz->bindParam(":offset", $offset, PDO::PARAM_INT);
    $req_check_next_quiz->execute();
    $next_quiz = $req_check_next_quiz->fetch(PDO::FETCH_COLUMN);
    
    ob_start(); ?>
    <div class="modal-header">
        <h5 class="modal-title" id="modalDisplayQuizTitle">Quiz</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h6><?=$quiz['quiz_question']?><span id="error">&nbsp;Vous devez sélectionner une réponse pour continuer</span></h6>
                </div>
            </div>
            <div class="row">
                <?php for($i = 1 ; $i <= $nb_colonnes ; $i++) { ?>
                    <div class="col-<?=12/$nb_colonnes?>">
                        <?php if($quiz['quiz_type'] == 0) { ?>
                            <input type="checkbox" data-quiz-id="<?=$i?>" class="quiz_propositions" name="quiz_proposition_<?=$i?>" id="quiz_proposition_<?=$i?>"/>
                            <label for="quiz_proposition_<?=$i?>"><?=$quiz['quiz_proposition_' . $i]?></label>
                        <?php } else { ?>
                            <input type="radio" data-quiz-id="<?=$i?>" class="quiz_propositions" name="quiz_proposition" id="quiz_proposition_<?=$i?>"/>
                            <label for="quiz_proposition_<?=$i?>"><?=$quiz['quiz_proposition_' . $i]?></label>
                        <?php } ?>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <?php if(!empty($next_quiz)) { ?>
            <span class="btn btn-success" onclick="sendQuiz(<?=$quiz['quiz_id']?>, <?=$quiz['id_quiz_list']?>, <?=$offset?>);"><i class="fa-solid fa-circle-chevron-right"></i>&nbsp;&nbsp;Suivant</span>
        <?php } else {
            $offset = 0;
        } ?>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" aria-label="Close" onclick="sendQuiz(<?=$quiz['quiz_id']?>, <?=$quiz['id_quiz_list']?>, <?=$offset?>);">Terminer</button>
    </div>
    <?php
    die(ob_get_clean());
}

if(!empty($_POST["send_quiz"])) {
    $sql_replace_quiz = "REPLACE INTO stagiaires_quiz(stagiaire_quiz_answers, id_quiz, id_stagiaire)
                        VALUES(:stagiaire_quiz_answers, :id_quiz, :id_stagiaire);";
    $req_replace_quiz = $db->prepare($sql_replace_quiz);
    $req_replace_quiz->bindParam(":stagiaire_quiz_answers", $_POST["answers"]);
    $req_replace_quiz->bindParam(":id_quiz", $_POST["quiz_id"]);
    $req_replace_quiz->bindParam(":id_stagiaire", $_SESSION["utilisateur"]["id_stagiaire"]);
    if($req_replace_quiz->execute()) {
        die("ok");
    }
    die("ko");
}
?> 