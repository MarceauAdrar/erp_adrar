<?php
include_once __DIR__ . '/../m/connect.php';

if (!empty($_POST["stagiaire_connexion"]) && $_POST["stagiaire_connexion"] == 1) {
    $sql = "SELECT *  
            FROM stagiaires 
            WHERE stagiaire_username=:stagiaire_username;";
    $req = $db->prepare($sql);
    $req->bindParam(":stagiaire_username", $_POST["stagiaire_username"]);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);

    if (password_verify($_POST["stagiaire_password"], $stagiaire["stagiaire_password"])) {
        $_SESSION["form_connexion"]["errors"] = 0;
        $_SESSION["stagiaire"] = $stagiaire;
        header("Location: /public/index.php");
    } else {
        $_SESSION["form_connexion"]["errors"] = 1;
        header("Location: ../public/connexion.php");
    }
}

if (!empty($_POST["display_prompt_join_modal"])) {
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
                    <img class="svgs-sm" src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/join.svg" alt="Illustration pour l'intégration à l'évaluation" />
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

if (!empty($_POST["btn_join_evaluation"])) {
    $sql_insert_stagiaire = "INSERT INTO stagiaires_evaluations(stagiaire_evaluation_completed, id_stagiaire, id_evaluation) 
                        VALUES(0, :id_stagiaire, :id_evaluation);";
    $req_insert_stagiaire = $db->prepare($sql_insert_stagiaire);
    $req_insert_stagiaire->bindParam(":id_stagiaire", $_SESSION["utilisateur"]["id_stagiaire"]);
    $req_insert_stagiaire->bindParam(":id_evaluation", $_POST["evalId"]);
    if ($req_insert_stagiaire->execute()) {
        die("ok");
    }
    die("ko");
}

if (!empty($_POST["save_code"])) {
    $link = "../../public/formation/stagiaires/" . $_SESSION["utilisateur"]["pseudo_stagiaire"] . "/" . $_POST["module"];
    $file = $_POST["tp"] . "." . $_POST["extension"];
    if (!file_exists($link . "/" . $file)) {
        if (!mkdir($link, 0777, true)) {
            touch($link . "/" . $file);
        }
    }
    $eval = fopen($link . "/" . $file, "w") or die("ko");
    fwrite($eval, $_POST["code"]);
    fclose($eval);

    die("ok");
}

if (!empty($_POST["submit_evaluation"])) {
    $sql_update_stagiaire_evaluation = "UPDATE stagiaires_evaluations 
                                    SET stagiaire_evaluation_completed = 1 
                                    WHERE id_stagiaire=:id_stagiaire 
                                    AND id_evaluation=:id_evaluation;";
    $req_update_stagiaire_evaluation = $db->prepare($sql_update_stagiaire_evaluation);
    $req_update_stagiaire_evaluation->bindParam(":id_stagiaire", $_SESSION["utilisateur"]["id_stagiaire"]);
    $id_evaluation = substr($_POST["tp"], 2);
    $req_update_stagiaire_evaluation->bindParam(":id_evaluation", $id_evaluation);
    if ($req_update_stagiaire_evaluation->execute()) {
        die("ok");
    }
    die("ko");
}

if (!empty($_POST["load_informations_tp"])) {
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

if (!empty($_POST["valid_stagiaire_correction"])) {
    $sql_update_correction = "UPDATE stagiaires_evaluations 
                                SET stagiaire_evaluation_correction = 1, 
                                stagiaire_evaluation_errors_found=:errors_found
                                WHERE id_stagiaire=:id_stagiaire 
                                AND id_evaluation=:id_evaluation;";
    $req_update_correction = $db->prepare($sql_update_correction);
    $req_update_correction->bindParam(":id_stagiaire", $_POST["id_stagiaire"]);
    $req_update_correction->bindParam(":errors_found", $_POST["errors_found"]);
    $req_update_correction->bindParam(":id_evaluation", $_POST["tp"]);
    if ($req_update_correction->execute()) {
        die("ok");
    }
    die("ko");
}

if (!empty($_POST["show_modal_manage_cours"])) {
    $sql = "SELECT * 
            FROM sessions 
            WHERE id_formateur=:id_formateur ";
    if (isset($_POST['id_session']) && $_POST['id_session'] > 0) {
        $sql .= " AND id_session=:id_session ";
    } elseif (isset($_POST['id_session']) && $_POST['id_session'] == "-1") { // Actives uniquement
        $sql .= " AND (date_fin_session>=NOW()) ";
    } else { // Toute sessions confondues 
    }
    $sql .= " ORDER BY nom_session;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
    if (isset($_POST['id_session']) && $_POST['id_session'] > 0) {
        $req->bindValue(':id_session', filter_var($_POST['id_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $sessions = $req->fetchAll(PDO::FETCH_ASSOC);
    $req->closeCursor();

    ob_start(); ?>
    <div class="container-fluid">
        <?php if (!empty($sessions)) {
            foreach ($sessions as $session) {
                $sql_select_cours = "SELECT *
                                    FROM cours 
                                    JOIN cours_modules ON (cours_module_id = id_module) 
                                    JOIN sessions as s ON (s.id_session=:id_session) 
                                    LEFT JOIN cours_sessions ON (cours_id = id_cours AND cours_sessions.id_session=s.id_session) 
                                    WHERE 1 ";
                $sql_select_cours .= "  AND (cours_session_active=:cours_session_active ";
                if (isset($_POST['cours_actifs']) && $_POST['cours_actifs'] == "false") {
                    $sql_select_cours .= "      OR cours_session_active IS NULL ";
                }
                $sql_select_cours .= " ) ";
                $sql_count_cours = $sql_select_cours;
                if (!empty($_POST['search'])) {
                    $mots_cles = explode(" ", filter_var(trim(rtrim($_POST['search']), FILTER_SANITIZE_SPECIAL_CHARS)));
                    $conditions = array();
                    $conditions2 = array();
                    foreach ($mots_cles as $mot) {
                        $conditions[] = "cours_keywords LIKE '%" . $mot . "%'";
                        $conditions2[] = "cours_title LIKE '%" . $mot . "%'";
                    }
                    $sql_select_cours .= " AND " . implode(' AND ', $conditions);
                    $sql_select_cours .= " OR " . implode(' AND ', $conditions2);
                }
                $sql_select_cours .= "  ORDER BY cours_module_position, cours_position 
                                        -- LIMIT 10 -- OFFSET :offset
                                        ;";
                // var_dump($sql_select_cours);
                // var_dump(filter_var($_POST['cours_actifs'], FILTER_VALIDATE_BOOL));
                $req_select_cours = $db->prepare($sql_select_cours);
                $req_count_cours = $db->prepare($sql_count_cours);
                $req_select_cours->bindValue(':id_session', filter_var($session['id_session'], FILTER_VALIDATE_INT));
                $req_count_cours->bindValue(':id_session', filter_var($session['id_session'], FILTER_VALIDATE_INT));
                $req_select_cours->bindValue(':cours_session_active', filter_var($_POST['cours_actifs'], FILTER_VALIDATE_BOOL));
                $req_count_cours->bindValue(':cours_session_active', filter_var($_POST['cours_actifs'], FILTER_VALIDATE_BOOL));
                // $req_select_cours->bindValue(':offset', (isset($_POST['page']) ? filter_var($_POST['page'], FILTER_VALIDATE_INT) : 1) * 25);
                $req_count_cours->execute();
                $req_select_cours->execute();
                $cours = $req_select_cours->fetchAll(PDO::FETCH_ASSOC);
                $nbCours = sizeof($req_count_cours->fetchAll(PDO::FETCH_ASSOC));
                $req_select_cours->closeCursor(); ?>
                <div class="row">
                    <h2><?= $session['nom_session'] ?></h2><small>&nbsp;(<?= sizeof($cours) ?> cours trouvés sur <?= $nbCours ?>)</small>
                    <!-- <div class="col-12 d-flex">
                        <nav aria-label="Navigation session <?= $session['nom_session'] ?>">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Précédent</a></li>
                                <?php if (sizeof($cours) >= 1) for ($i = 1; $i <= $nbCours / 25; $i++) { ?>
                                    <li class="page-item"><a class="page-link" href="#"><?= $i ?></a></li>
                                <?php } ?>
                                <li class="page-item"><a class="page-link" href="#">Suivant</a></li>
                            </ul>
                        </nav>
                    </div> -->

                    <?php foreach ($cours as $cour) { ?>
                        <div class="col-3" id="cours_<?= $cour['cours_id'] ?>_<?= $session['id_session'] ?>" onclick="<?= (!empty($_SESSION['mode_edition']) ? 'updateStatusCourse(' . $cour['cours_id'] . ',' . $session['id_session'] . ');' : 'alert(\'Mode édition désactivé !\');') ?>">
                            <span class="admin-manage-imgs" id="cours_<?= $cour['cours_id'] ?>">
                                <span class="<?= (empty($_SESSION['mode_edition']) ? "edition-off" : (!empty($cour['cours_session_active']) ? "cours-active" : "cours-inactive")) ?>">
                                    <img class="img-course" alt="Illustration <?= $cour["cours_module_libelle"] ?>" src="/erp/public/formation/imgs/<?= $cour['cours_module_illustration'] ?>" loading="lazy" />
                                </span>
                            </span>
                            <p class="admin-manage-text"><strong>[<?= strtoupper($cour['cours_module_libelle']) ?>]</strong>&nbsp;<?= $cour['cours_title'] ?></p>
                        </div>
                    <?php } ?>
                </div>
            <?php }
        } else { ?>
            <div class="row">
                <p>Aucune session visible</p>
                <?php include_once("../../public/formation/imgs/under_construction.svg") ?>
            </div>
        <?php } ?>
    </div>
<?php
    die(ob_get_clean());
}

if (!empty($_POST["show_modal_manage_quiz"])) {
    $sql = "SELECT * 
            FROM sessions 
            WHERE id_formateur=:id_formateur ";
    if (!empty($_POST['id_session'])) {
        $sql .= " AND id_session=:id_session ";
    }
    $sql .= " ORDER BY nom_session;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
    if (!empty($_POST['id_session'])) {
        $req->bindValue(':id_session', filter_var($_POST['id_session'], FILTER_VALIDATE_INT));
    }
    $req->execute();
    $sessions = $req->fetchAll(PDO::FETCH_ASSOC);
    $req->closeCursor();

    ob_start(); ?>
    <div class="container-fluid">
        <?php if (!empty($sessions)) {
            foreach ($sessions as $session) {
                $sql_select_quiz = "SELECT *
                                    FROM quiz 
                                    LEFT JOIN quiz_sessions ON (quiz_id = id_quiz AND id_session=:id_session) 
                                    ORDER BY quiz_module;";
                $req_select_quiz = $db->prepare($sql_select_quiz);
                $req_select_quiz->bindValue(':id_session', filter_var($session['id_session'], FILTER_VALIDATE_INT));
                $req_select_quiz->execute();
                $quiz = $req_select_quiz->fetchAll(PDO::FETCH_ASSOC);
                $req_select_quiz->closeCursor(); ?>
                <div class="row">
                    <h2><?= $session['nom_session'] ?></h2>
                    <?php foreach ($quiz as $value) {
                        $difficulte = "Facile";
                        if ($value['quiz_difficulte'] == 3) {
                            $difficulte = "Extrême";
                        } elseif ($value['quiz_difficulte'] == 2) {
                            $difficulte = "Difficile";
                        } elseif ($value['quiz_difficulte'] == 1) {
                            $difficulte = "Modéré";
                        } ?>
                        <div class="col-3" id="quiz_<?= $value['quiz_id'] ?>_<?= $session['id_session'] ?>" onclick="updateStatusQuiz(<?= $value['quiz_id'] ?>, <?= $session['id_session'] ?>);">
                            <span class="admin-manage-imgs" id="quiz_<?= $value['quiz_id'] ?>">
                                <span class="<?= (!empty($value['quiz_session_active']) ? "quiz-active" : "quiz-inactive") ?>"><?php include("../../public/formation/imgs/video_game_night.svg") ?></span>
                            </span>
                            <p class="admin-manage-text"><strong>[<?= strtoupper($value['quiz_module']) ?>]</strong>&nbsp;<?= $difficulte ?></p>
                        </div>
                    <?php } ?>
                </div>
            <?php }
        } else { ?>
            <div class="row">
                <p>Aucune session assignée</p>
                <?php include_once("../../public/formation/imgs/under_construction.svg") ?>
            </div>
        <?php } ?>
    </div>
<?php
    die(ob_get_clean());
}

if (!empty($_POST["add_cours"])) { // TODO supprimer la colonne et intégrer la donnée de la table `cours_modules`
    $req = $db->prepare("INSERT INTO cours(cours_title, cours_synopsis, cours_text, cours_keywords, cours_link, cours_category, id_formateur)
                        VALUES(:cours_title, :cours_synopsis, :cours_text, :cours_keywords, :cours_link, :cours_category, :id_formateur) 
                        RETURNING cours_id;");
    $req->bindValue(':cours_title', filter_var($_POST['form_cours_title'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_synopsis', filter_var($_POST['form_cours_synopsis'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_text', filter_var($_POST['form_cours_text'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_keywords', filter_var($_POST['form_cours_keywords'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_link', filter_var($_POST['form_cours_link'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_category', filter_var(strtolower($_POST['form_cours_module']), FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
    if ($req->execute() && !empty($_POST['form_cours_active'])) {
        $id_cours = $req->fetch(PDO::FETCH_ASSOC)['cours_id'];
        $req = $db->prepare("SELECT id_session FROM sessions WHERE id_formateur=:id_formateur;");
        $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
        $req->execute();
        $sessions = $req->fetchAll(PDO::FETCH_COLUMN);
        foreach ($sessions as $session) {
            $req = $db->prepare("REPLACE INTO cours_sessions(id_session, id_cours, cours_session_active)
                                VALUES(:id_session, :id_cours, :cours_session_active);");
            $req->bindValue(':id_session', filter_var($session, FILTER_VALIDATE_INT));
            $req->bindValue(':id_cours', filter_var($id_cours, FILTER_VALIDATE_INT));
            $req->bindValue(':cours_session_active', filter_var($_POST['form_cours_active'], FILTER_VALIDATE_BOOL));
            $req->execute();
        }
    }
    $req->closeCursor();
    die("ok");
}

if (!empty($_POST["add_quiz"])) {
    $req = $db->prepare("INSERT INTO quiz(quiz_module, quiz_lien, quiz_difficulte, id_formateur)
                        VALUES(:quiz_module, :quiz_lien, :quiz_difficulte, :id_formateur) 
                        RETURNING quiz_id;");
    $req->bindValue(':quiz_module', filter_var($_POST['form_quiz_module'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':quiz_lien', filter_var($_POST['form_quiz_lien'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':quiz_difficulte', filter_var($_POST['form_quiz_difficulte'], FILTER_VALIDATE_INT));
    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
    if ($req->execute() && !empty($_POST['form_quiz_active'])) {
        $id_quiz = $req->fetch(PDO::FETCH_ASSOC)['quiz_id'];
        $req = $db->prepare("SELECT id_session FROM sessions WHERE id_formateur=:id_formateur;");
        $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
        $req->execute();
        $sessions = $req->fetchAll(PDO::FETCH_COLUMN);
        foreach ($sessions as $session) {
            $req = $db->prepare("REPLACE INTO quiz_sessions(id_session, id_quiz, quiz_session_active)
                                VALUES(:id_session, :id_quiz, :quiz_session_active);");
            $req->bindValue(':id_session', filter_var($session, FILTER_VALIDATE_INT));
            $req->bindValue(':id_quiz', filter_var($id_quiz, FILTER_VALIDATE_INT));
            $req->bindValue(':quiz_session_active', filter_var($_POST['form_quiz_active'], FILTER_VALIDATE_BOOL));
            $req->execute();
        }
    }
    $req->closeCursor();
    header("Location: ../../public/formation/admin.php");
}

if (!empty($_POST["update_status_cours"])) {
    $sql_update_cours = "REPLACE INTO cours_sessions(id_session, id_cours, cours_session_active) 
                        VALUES(:id_session, :id_cours, :cours_session_active);";
    $req_update_cours = $db->prepare($sql_update_cours);
    $req_update_cours->bindParam(":cours_session_active", $_POST["cours_active"]);
    $req_update_cours->bindParam(":id_cours", $_POST["cours_id"]);
    $req_update_cours->bindParam(":id_session", $_POST["id_session"]);
    if ($req_update_cours->execute()) {
        $req_select_stagiaires_session = $db->prepare("SELECT id_stagiaire 
                                                       FROM stagiaires 
                                                       WHERE id_session=:id_session;");
        $req_select_stagiaires_session->bindValue(":id_session", filter_var($_POST['id_session'], FILTER_VALIDATE_INT));
        $req_select_stagiaires_session->execute();
        $ids_stagiaires = $req_select_stagiaires_session->fetchAll(PDO::FETCH_COLUMN);
        $req_select_stagiaires_session->closeCursor();

        $req_select_cours = $db->prepare("SELECT cours_title, cours_module_libelle, cours_link
                                        FROM cours 
                                        JOIN cours_modules ON (cours_module_id = id_module) 
                                        WHERE cours_id=:id_cours;");
        $req_select_cours->bindValue(":id_cours", filter_var($_POST["cours_id"], FILTER_VALIDATE_INT));
        $req_select_cours->execute();
        $cours = $req_select_cours->fetch(PDO::FETCH_ASSOC);
        $req_select_cours->closeCursor();
        if ($_POST['cours_active'] == 1) {
            foreach ($ids_stagiaires as $id_stagiaire) {
                $req = $db->prepare("INSERT INTO notifications(notification_titre, notification_lien, notification_date, id_stagiaire) 
                                    VALUES(:notification_titre, :notification_lien, NOW(), :id_stagiaire);");
                $req->bindValue(':notification_titre', "[" . strtoupper($cours['cours_module_libelle']) . "] Nouveau cours disponible: " . $cours['cours_title']);
                $req->bindValue(':notification_lien', LIEN_FORMATION . "embed.php?slide=" . $cours['cours_link']);
                $req->bindValue(':id_stagiaire', $id_stagiaire);
                $req->execute();
                $req->closeCursor();
            }
        } else {
            foreach ($ids_stagiaires as $id_stagiaire) {
                $req = $db->prepare("DELETE FROM notifications 
                                    WHERE notification_lien=:notification_lien 
                                    AND id_stagiaire=:id_stagiaire;");
                $req->bindValue(':notification_lien', LIEN_FORMATION . "embed.php?slide=" . $cours['cours_link']);
                $req->bindValue(':id_stagiaire', $id_stagiaire);
                $req->execute();
                $req->closeCursor();
            }
        }
        die("ok");
    }
    die("ko");
}

if (!empty($_POST["update_status_quiz"])) {
    $sql_update_quiz = "REPLACE INTO quiz_sessions(id_session, id_quiz, quiz_session_active) 
                        VALUES(:id_session, :id_quiz, :quiz_session_active);";
    $req_update_quiz = $db->prepare($sql_update_quiz);
    $req_update_quiz->bindParam(":id_session", $_POST["id_session"]);
    $req_update_quiz->bindParam(":id_quiz", $_POST["quiz_id"]);
    $req_update_quiz->bindParam(":quiz_session_active", $_POST["quiz_active"]);
    if ($req_update_quiz->execute()) {
        $req_select_stagiaires_session = $db->prepare("SELECT id_stagiaire 
                                                       FROM stagiaires 
                                                       WHERE id_session=:id_session;");
        $req_select_stagiaires_session->bindValue(":id_session", filter_var($_POST['id_session'], FILTER_VALIDATE_INT));
        $req_select_stagiaires_session->execute();
        $ids_stagiaires = $req_select_stagiaires_session->fetchAll(PDO::FETCH_COLUMN);
        $req_select_stagiaires_session->closeCursor();

        $req_select_quiz = $db->prepare("SELECT quiz_module, quiz_lien, quiz_difficulte
                                        FROM quiz 
                                        WHERE quiz_id=:id_quiz;");
        $req_select_quiz->bindValue(":id_quiz", filter_var($_POST["quiz_id"], FILTER_VALIDATE_INT));
        $req_select_quiz->execute();
        $quiz = $req_select_quiz->fetch(PDO::FETCH_ASSOC);
        $req_select_quiz->closeCursor();
        if ($_POST['quiz_active'] == "1") {
            foreach ($ids_stagiaires as $id_stagiaire) {
                $req = $db->prepare("INSERT INTO notifications(notification_titre, notification_lien, notification_date, id_stagiaire) 
                                    VALUES(:notification_titre, :notification_lien, NOW(), :id_stagiaire);");
                $req->bindValue(':notification_titre', "[" . strtoupper($quiz['quiz_module']) . "] Nouveau quiz disponible: " . $quiz['quiz_module'] . " - " . $quiz['quiz_difficulte'] . "/3");
                $req->bindValue(':notification_lien', "https://quizizz.com/join?gc=" . $quiz['quiz_lien']);
                $req->bindValue(':id_stagiaire', $id_stagiaire);
                $req->execute();
                $req->closeCursor();
            }
        } else {
            foreach ($ids_stagiaires as $id_stagiaire) {
                $req = $db->prepare("DELETE FROM notifications 
                                    WHERE notification_lien=:notification_lien 
                                    AND id_stagiaire=:id_stagiaire;");
                $req->bindValue(':notification_lien', "https://quizizz.com/join?gc=" . $quiz['quiz_lien']);
                $req->bindValue(':id_stagiaire', $id_stagiaire);
                $req->execute();
                $req->closeCursor();
            }
        }
        die("ok");
    }
    die("ko");
}

if (!empty($_POST["fetch_quiz_data"])) {
    $sql_select_quiz = "SELECT * 
                        FROM quiz 
                        LEFT JOIN quiz_sessions ON (quiz_id = id_quiz AND id_session=:id_session) 
                        WHERE quiz_id=:quiz_id;";
    $req_select_quiz = $db->prepare($sql_select_quiz);
    $req_select_quiz->bindValue(":quiz_id", filter_var($_POST['quiz_id'], FILTER_VALIDATE_INT));
    $req_select_quiz->bindValue(":id_session", filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT));
    $req_select_quiz->execute();
    $quiz = $req_select_quiz->fetch(PDO::FETCH_ASSOC);

    ob_start(); ?>
    <div class="modal-header">
        <h5 class="modal-title" id="modalDisplayQuizTitle">Quiz</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h6><?= strtoupper($quiz['quiz_module']) ?></h6>
                </div>
            </div>
            <div class="row">
                <div style="width:100%;display:flex;flex-direction:column;gap:8px;min-height:635px;"><iframe src="https://quizizz.com/join?gc=<?= $quiz['quiz_lien'] ?>" title="Test - Quizizz" style="flex:1;" frameBorder="0" allowfullscreen></iframe></div>
            </div>
        </div>
    </div>
<?php
    die(ob_get_clean());
}

if (!empty($_POST["form_ressource_add"])) {
    $req = $db->prepare("SELECT cours_id FROM cours WHERE cours_link=:cours_link;");
    $req->bindValue(':cours_link', filter_var($_POST['form_ressource_cours_id'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->execute();
    $id_cours = $req->fetch(PDO::FETCH_COLUMN);

    $ressource_lien = NULL;
    if (isset($_POST['form_ressource_lien']) && !empty($_POST['form_ressource_lien'])) {
        $ressource_lien = filter_var($_POST['form_ressource_lien'], FILTER_SANITIZE_SPECIAL_CHARS);
    }
    $archive = NULL;
    $archive_lien = NULL;
    if (isset($_FILES['form_ressource_file']) && !empty($_FILES['form_ressource_file'])) {
        $extensions_ok = array("gz", "tar", "zip", "rar");
        $extension = substr(strrchr($_FILES['form_ressource_file']['name'], '.'), 1);
        if (in_array($extension, $extensions_ok)) {
            $pseudo_formateur = strtolower(substr($_SESSION['utilisateur']['prenom_formateur'], 0, 1) . $_SESSION['utilisateur']['nom_formateur']);
            $lien = "../v/formateurs/" . $pseudo_formateur;
            $archive = uniqid("_") . "_ressource_cours_" . $id_cours . "." . $extension;
            $archive_lien = sha1($archive);
            if (!is_dir($lien)) {
                mkdir($lien);
            }
            move_uploaded_file($_FILES['form_ressource_file']['tmp_name'], $lien . "/" . $archive);
        }
    }
    $req = $db->prepare("INSERT INTO cours_ressources(id_cours, cours_ressource_type, cours_ressource_titre, cours_ressource_resume, cours_ressource_lien, cours_ressource_archive, cours_ressource_archive_lien) 
                        VALUES(:id_cours, :cours_ressource_type, :cours_ressource_titre, :cours_ressource_resume, :cours_ressource_lien, :cours_ressource_archive, :cours_ressource_archive_lien);");
    $req->bindValue(':id_cours', filter_var($id_cours, FILTER_VALIDATE_INT));
    $req->bindValue(':cours_ressource_type', filter_var($_POST['form_ressource_type'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_ressource_titre', filter_var($_POST['form_ressource_titre'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_ressource_resume', filter_var($_POST['form_ressource_synopsis'], FILTER_SANITIZE_SPECIAL_CHARS));
    $req->bindValue(':cours_ressource_lien', $ressource_lien);
    $req->bindValue(':cours_ressource_archive', $archive);
    $req->bindValue(':cours_ressource_archive_lien', $archive_lien);
    if ($req->execute()) {
        $req_select_stagiaires_session = $db->prepare("SELECT s.id_stagiaire 
                                                       FROM stagiaires s
                                                       JOIN cours_sessions c ON (s.id_session = c.id_session AND id_cours=:id_cours) 
                                                       WHERE s.id_session=:id_session;");
        $req_select_stagiaires_session->bindValue(":id_session", filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT));
        $req_select_stagiaires_session->bindValue(":id_cours", filter_var($id_cours, FILTER_VALIDATE_INT));
        $req_select_stagiaires_session->execute();
        $ids_stagiaires = $req_select_stagiaires_session->fetchAll(PDO::FETCH_COLUMN);
        $req_select_stagiaires_session->closeCursor();

        $req_select_cours = $db->prepare("SELECT cours_title, cours_module_libelle, cours_link
                                        FROM cours 
                                        JOIN cours_modules ON (cours_module_id = id_module) 
                                        WHERE cours_id=:id_cours;");
        $req_select_cours->bindValue(":id_cours", filter_var($id_cours, FILTER_VALIDATE_INT));
        $req_select_cours->execute();
        $cours = $req_select_cours->fetch(PDO::FETCH_ASSOC);
        $req_select_cours->closeCursor();
        foreach ($ids_stagiaires as $id_stagiaire) {
            $req = $db->prepare("INSERT INTO notifications(notification_titre, notification_lien, notification_date, id_stagiaire) 
                                VALUES(:notification_titre, :notification_lien, NOW(), :id_stagiaire);");
            $req->bindValue(':notification_titre', "[" . strtoupper($cours['cours_module_libelle']) . "] Nouvelle ressource disponible: " . $cours['cours_title'] . " - " . $cours['cours_module_libelle']);
            $req->bindValue(':notification_lien', $cours['cours_link']);
            $req->bindValue(':id_stagiaire', $id_stagiaire);
            $req->execute();
            $req->closeCursor();
        }
    }
    header('Location: /erp/public/formation/embed.php?slide=' . $_POST['form_ressource_cours_id']);
}

if (!empty($_POST["load_new_notifications"])) {
    $notifications = "";
    $notifications_count = 0;
    if ($_SESSION['utilisateur']['id_stagiaire'] > 0) {
        $req = $db->prepare("SELECT notification_titre, notification_date, notification_lien 
                            FROM notifications 
                            WHERE id_stagiaire=:id_stagiaire 
                            ORDER BY notification_date ASC;");
        $req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
        $req->execute();
        $result = $req->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($result)) {
            foreach ($result as $notification) {
                $notifications .= "<a onclick=\"deleteNotification('" . $notification['notification_lien'] . "');\"" . (substr($notification['notification_lien'], 0, 5) == "https" ? 'target="_blank"' : '') . " href=\"" . $notification['notification_lien'] . "\"><span>" . $notification['notification_titre'] . "</span><em class=\"d-block\">Le " . date_format(new DateTimeImmutable($notification['notification_date']), "d/m/y à H:i:s") . "</em></a>";
            }
            $notifications .= "<button onclick=\"deleteNotification();\"><i class=\"fa-solid fa-trash text-grey\"></i></button>";
        } else {
            $notifications = "Aucune notification pour le moment";
        }
        $notifications_count = $req->rowCount();
        $req->closeCursor();
    }

    die(json_encode(array(
        "notifications" => $notifications,
        "notifications_count" => $notifications_count
    )));
}

if (isset($_POST['delete_notification'])) {
    $sql = "DELETE FROM notifications 
            WHERE id_stagiaire=:id_stagiaire";
    if (isset($_POST['lien_notification']) && !empty($_POST['lien_notification'])) {
        $sql .= " AND notification_lien=:notification_lien";
    }
    $sql .= ";";
    $req = $db->prepare($sql);
    $req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
    if (isset($_POST['lien_notification']) && !empty($_POST['lien_notification'])) {
        $req->bindValue(":notification_lien", filter_var($_POST['lien_notification'], FILTER_SANITIZE_SPECIAL_CHARS));
    }
    die(json_encode($req->execute()));
}

if (isset($_POST['send_tp']) && isset($_FILES['fichier']) && !empty($_FILES['fichier'])) {
    $tp_id = filter_var($_POST['tp_id'], FILTER_VALIDATE_INT);
    $lien_ressource_rendue = filter_var("ressource_" . $tp_id . "_" . $_FILES['fichier']['name'], FILTER_SANITIZE_SPECIAL_CHARS);
    if (!is_dir("../../public/formation/stagiaires/" . $_SESSION['utilisateur']['pseudo_stagiaire'] . "/tps/")) {
        mkdir("../../public/formation/stagiaires/" . $_SESSION['utilisateur']['pseudo_stagiaire'] . "/tps/");
    }
    move_uploaded_file($_FILES['fichier']['tmp_name'], "../../public/formation/stagiaires/" . $_SESSION['utilisateur']['pseudo_stagiaire'] . "/tps/" . $lien_ressource_rendue);
    $req = $db->prepare("REPLACE INTO stagiaires_ressources(id_stagiaire, id_ressource, lien_ressource_rendue) 
                        VALUES(:id_stagiaire, :id_ressource, :lien_ressource_rendue);");
    $req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
    $req->bindValue(":id_ressource", $tp_id);
    $req->bindValue(":lien_ressource_rendue", $lien_ressource_rendue);
    die(json_encode($req->execute()));
}

if (isset($_POST['get_modules']) && !empty($_POST['get_modules'])) {
    $success = true;

    if ($_SESSION['utilisateur']['id_formateur'] > 0) {
        $sql = "SELECT id_formateur FROM formateurs ";
        if (!empty($_SESSION['utilisateur']['id_secteur'])) {
            $sql .= " WHERE id_secteur=:id_secteur";
        }
        $sql .= ";";
        $req = $db->prepare($sql);
        if (!empty($_SESSION['utilisateur']['id_secteur'])) {
            $req->bindValue(':id_secteur', filter_var($_SESSION['utilisateur']['id_secteur'], FILTER_VALIDATE_INT));
        }
        $req->execute();
        $ids_formateurs = $req->fetchAll(PDO::FETCH_COLUMN);
        $req->closeCursor();

        $sql = "SELECT * 
                FROM cours 
                JOIN formateurs ON (formateurs.id_formateur = cours.id_formateur) 
                JOIN cours_modules ON (cours_module_id = id_module) 
                WHERE formateurs.id_formateur IN(" . implode(", ", $ids_formateurs) . ") ";
        if (isset($_POST['recherche']) && !empty($_POST['recherche'])) {
            $mots_cles = explode(" ", filter_var(trim($_POST['recherche'], FILTER_SANITIZE_SPECIAL_CHARS)));
            $conditions = array();
            foreach ($mots_cles as $mot) {
                $conditions[] = "cours_keywords LIKE '%" . $mot . "%'";
            }
            $sql .= " AND " . implode(' AND ', $conditions);
        }
        $sql .= " GROUP BY id_module 
                ORDER BY cours_module_position;";
        $req = $db->prepare($sql);
        $req->execute();
        $modules = $req->fetchAll(PDO::FETCH_ASSOC);
        $req->closeCursor();
    } else {
        $sql = "SELECT * 
                FROM cours 
                JOIN cours_sessions ON (cours_id = id_cours AND id_session=:id_session AND cours_session_active = 1) 
                JOIN cours_modules ON (cours_module_id = id_module) 
                WHERE 1 ";
        if (isset($_POST['recherche']) && !empty($_POST['recherche'])) {
            $mots_cles = explode(" ", filter_var(trim($_POST['recherche'], FILTER_SANITIZE_SPECIAL_CHARS)));
            $conditions = array();
            foreach ($mots_cles as $mot) {
                $conditions[] = "cours_keywords LIKE '%" . $mot . "%'";
            }
            $sql .= " AND " . implode(' AND ', $conditions);
        }
        $sql .= " GROUP BY id_module  
                ORDER BY cours_module_position;";
        $req = $db->prepare($sql);
        $req->bindValue(':id_session', filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT));
        $req->execute();
        $modules = $req->fetchAll(PDO::FETCH_ASSOC);
        $req->closeCursor();
    }

    $liste_modules = "";
    if ($_SESSION['utilisateur']['id_formateur'] > 0 && !empty($_SESSION['mode_edition'])) {
        $liste_modules .= '<div class="col-xs-1 col-md-3 col-lg-3 mb-3">
            <div class="card">
                <span class="card-img-top" alt="Illustration d\'un nouveau module">
                    <label for="form_add_module">Choisir l\'image
                        <input type="file" id="form_add_module">
                    </label>
                </span>
                <div class="card-body" style="padding-bottom: 0.6rem;">
                    <p class="card-title h5 text-decoration-underline"><input type="text" placeholder="Ajoutez le nom du module"></p>
                </div>
            </div>
        </div>';
    }
    if (!empty($modules)) {
        foreach ($modules as $module) {
            $liste_modules .= '<div class="col-xs-1 col-md-3 col-lg-3 mb-3">
                <a href="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/cours.php?cours=' . $module['cours_module_uuid'] . (isset($_POST['recherche']) && !empty($_POST['recherche']) ? '&q=' . $_POST['recherche'] : '') . '" class="text-black">
                    <div class="card">
                        <span class="card-img-top">
                            <img class="img-course" alt="Illustration ' . $module["cours_module_libelle"] . '" src="/erp/public/formation/imgs/' . $module['cours_module_illustration'] . '" loading="lazy" />
                        </span>
                        <div class="card-body">
                            <p class="card-title h5 text-decoration-underline">' . strtoupper($module['cours_module_libelle']) . '</p>
                        </div>
                    </div>
                </a>
            </div>';
        }
    } else {
        $liste_modules = "<p>Vous n'avez pas de cours dans votre secteur</p>";
    }

    die(json_encode(array(
        'success' => $success,
        'modules' => $liste_modules
    )));
}

if (isset($_POST['get_courses']) &&  !empty($_POST['get_courses'])) {
    $success = true;

    if ($_SESSION['utilisateur']['id_formateur'] > 0) {
        $sql_select_cours = "SELECT cours_id, cours_title, cours_synopsis, cours_link, cours_module_libelle, cours_module_illustration, nom_formateur, prenom_formateur 
                            FROM cours c 
                            INNER JOIN cours_modules cm ON cm.cours_module_id = c.id_module
                            INNER JOIN formateurs f ON (f.id_formateur = c.id_formateur) 
                            WHERE 1 ";
        if (isset($_POST['recherche']) && !empty($_POST['recherche'])) {
            $mots_cles = explode(" ", filter_var(trim($_POST['recherche'], FILTER_SANITIZE_SPECIAL_CHARS)));
            $conditions = array();
            foreach ($mots_cles as $mot) {
                $conditions[] = "cours_keywords LIKE '%" . $mot . "%'";
            }
            $sql_select_cours .= " AND " . implode(' AND ', $conditions);
        }
        $sql_select_cours .= " AND cours_module_uuid=:cours_uuid
                                ORDER BY cours_position;";
        $req_select_cours = $db->prepare($sql_select_cours);
    } else {
        $sql_select_cours = "SELECT cours_id, cours_title, cours_synopsis, cours_link, cours_module_libelle, cours_module_illustration, nom_formateur, prenom_formateur 
                            FROM cours c 
                            INNER JOIN cours_modules cm ON cm.cours_module_id = c.id_module
                            INNER JOIN formateurs f ON (f.id_formateur = c.id_formateur) ";
        if (isset($_SESSION["utilisateur"]["id_session"]) && !empty($_SESSION["utilisateur"]["id_session"])) {
            $sql_select_cours .= " INNER JOIN cours_sessions cs ON (c.cours_id = cs.id_cours AND cs.id_session=:id_session) ";
        } else {
            $sql_select_cours .= " INNER JOIN cours_sessions cs ON c.cours_id = cs.id_cours ";
        }
        $sql_select_cours .= "  WHERE cours_session_active = 1
                                AND cours_module_uuid=:cours_uuid ";
        if (isset($_POST['recherche']) && !empty($_POST['recherche'])) {
            $mots_cles = explode(" ", filter_var(trim($_POST['recherche'], FILTER_SANITIZE_SPECIAL_CHARS)));
            $conditions = array();
            foreach ($mots_cles as $mot) {
                $conditions[] = "cours_keywords LIKE '%" . $mot . "%'";
            }
            $sql_select_cours .= " AND " . implode(' AND ', $conditions);
        }
        if (!isset($_SESSION["utilisateur"]["id_session"]) || empty($_SESSION["utilisateur"]["id_session"])) {
            $sql_select_cours .= " GROUP BY cours_id ";
        }
        $sql_select_cours .= " ORDER BY cours_position;";
        $req_select_cours = $db->prepare($sql_select_cours);
        if (isset($_SESSION["utilisateur"]["id_session"]) && !empty($_SESSION["utilisateur"]["id_session"])) {
            $req_select_cours->bindParam(":id_session", $_SESSION["utilisateur"]["id_session"]);
        }
    }
    $req_select_cours->bindParam(":cours_uuid", $_POST["module"]);
    $req_select_cours->execute();
    $cours = $req_select_cours->fetchAll(PDO::FETCH_ASSOC);

    $liste_cours = "";
    if ($_SESSION['utilisateur']['id_formateur'] > 0 && !empty($_SESSION['mode_edition'])) {
        $liste_cours .= '<div class="col-xs-1 col-lg-3 mb-3">
            <div class="card">
                <span class="card-img-top" alt="Illustration a ajouter">
                    <input type="file" class="hidden" name="add_course_img" id="add_course_img">
                    ' . @file_get_contents("../../public/formation/imgs/add.svg") . '
                </span>
                <div class="card-body">
                    <h5 class="card-title text-decoration-underline"><input type="text" placeholder="Nom du cours..."></h5>
                    <p class="card-text"><textarea placeholder="Synopsis du cours..."></textarea></p>
                </div>
            </div>
        </div>';
    }
    if (!empty($cours)) {
        foreach ($cours as $cours) {
            $liste_cours .= '<div class="col-xs-1 col-lg-3 mb-3">
                    <a title="Cours fait par ' . ucwords($cours['prenom_formateur']) . " " . strtoupper($cours['nom_formateur']) . '" href="embed.php?slide=' . $cours['cours_link'] . '" class="text-decoration-none text-black">
                        <div class="card">
                            <span class="card-img-top">
                                <img class="img-course" alt="Illustration ' . $cours["cours_module_libelle"] . '" src="/erp/public/formation/imgs/' . $cours['cours_module_illustration'] . '" loading="lazy" />
                            </span>
                            <div class="card-body">
                                <h5 class="card-title text-decoration-underline">' . $cours["cours_title"] . '</h5>
                                <p class="card-text">' . $cours["cours_synopsis"] . '</p>
                            </div>
                        </div>
                    </a>
                </div>';
        }
    } else {
        $liste_cours = '<div class="col-3 offset-4 mt-5 text-center">
                    ' . @file_get_contents("../../public/formation/imgs/no_data.svg") . '
                            <h3 class="mt-3">Aucun cours trouvé...</h3>
                        </div>';
    }

    die(json_encode(array(
        'success' => $success,
        'cours' => $liste_cours
    )));
}

if (isset($_POST['put_user_informations']) && !empty($_POST['put_user_informations'])) {
    // TODO

    die(json_encode(array(
        'success' => true
    )));
}

if (isset($_POST['toggle_edition_mode']) && !empty($_POST['toggle_edition_mode'])) {
    $_SESSION['mode_edition'] = !$_SESSION['mode_edition'];

    die(json_encode(array(
        'success' => $_SESSION['mode_edition']
    )));
}

if (isset($_POST['load_trainees']) && !empty($_POST['load_trainees'])) {
    $req = $db->prepare('SELECT pseudo_stagiaire 
                        FROM stagiaires s 
                        JOIN sessions ss ON (s.id_session = ss.id_session) 
                        WHERE est_actif IS TRUE 
                        AND id_formateur=:id_formateur;');
    $req->bindValue(':id_formateur', $_SESSION['utilisateur']['id_formateur']);
    $req->execute();

    die(json_encode(array(
        'trainees' => $req->fetchAll(PDO::FETCH_COLUMN),
        'nb_trainees' => $req->rowCount()
    )));
}

if (isset($_POST['connect_as_trainee']) && !empty($_POST['connect_as_trainee'])) {
    die(json_encode(connexionUtilisateur($_POST['username_trainee'])));
}

if (
    isset($_POST['form_update_trainee']) && !empty($_POST['form_update_trainee'])
    && isset($_POST['form_nom_stagiaire']) && !empty($_POST['form_nom_stagiaire'])
    && isset($_POST['form_prenom_stagiaire']) && !empty($_POST['form_prenom_stagiaire'])
) {
    $sql = "UPDATE stagiaires 
            SET 
                nom_stagiaire=:nom_stagiaire, 
                prenom_stagiaire=:prenom_stagiaire ";
    if (isset($_POST['form_mail_stagiaire']) && !empty($_POST['form_mail_stagiaire'])) {
        $sql .= " , mail_stagiaire=:mail_stagiaire ";
    }
    if (isset($_POST['form_mdp_stagiaire']) && !empty($_POST['form_mdp_stagiaire'])) {
        $sql .= " , mdp_stagiaire=:mdp_stagiaire ";
    }
    $sql .= " WHERE id_stagiaire=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(':nom_stagiaire', strtoupper($_POST['form_nom_stagiaire']));
    $req->bindValue(':prenom_stagiaire', ucwords($_POST['form_prenom_stagiaire']));
    if (isset($_POST['form_mail_stagiaire']) && !empty($_POST['form_mail_stagiaire'])) {
        $req->bindValue(':mail_stagiaire', filter_var($_POST['form_mail_stagiaire'], FILTER_VALIDATE_EMAIL));
    }
    if (isset($_POST['form_mdp_stagiaire']) && !empty($_POST['form_mdp_stagiaire'])) {
        $req->bindValue(':mdp_stagiaire', password_hash($_POST['form_mdp_stagiaire'], PASSWORD_BCRYPT));
        $req->bindValue(':id_stagiaire', filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
        $req->execute();
        header("Location: /erp/public/deconnexion.php?type=info&message=" . urlencode("Vous devez vous reconnecter suite aux changements"));
        exit;
    }
    $req->bindValue(':id_stagiaire', filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
    $req->execute();

    header("Location: ../../public/formation/account.php");
    exit;
}

if (
    isset($_POST['form_update_trainer']) && !empty($_POST['form_update_trainer'])
    && isset($_POST['form_nom_formateur']) && !empty($_POST['form_nom_formateur'])
    && isset($_POST['form_prenom_formateur']) && !empty($_POST['form_prenom_formateur'])
) {
    $sql = "UPDATE formateurs 
            SET 
                nom_formateur=:nom_formateur, 
                prenom_formateur=:prenom_formateur ";
    if (isset($_POST['form_mdp_formateur']) && !empty($_POST['form_mdp_formateur'])) {
        $sql .= " , mdp_formateur=:mdp_formateur ";
    }
    $sql .= " WHERE id_formateur=:id_formateur;";
    $req = $db->prepare($sql);
    $req->bindValue(':nom_formateur', strtoupper($_POST['form_nom_formateur']));
    $req->bindValue(':prenom_formateur', ucwords($_POST['form_prenom_formateur']));
    if (isset($_POST['form_mdp_formateur']) && !empty($_POST['form_mdp_formateur'])) {
        $req->bindValue(':mdp_formateur', password_hash($_POST['form_mdp_formateur'], PASSWORD_BCRYPT));
        $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
        $req->execute();
        header("Location: /erp/public/deconnexion.php?type=info&message=" . urlencode("Vous devez vous reconnecter suite aux changements"));
        exit;
    }
    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['id_formateur'], FILTER_VALIDATE_INT));
    $req->execute();

    header("Location: ../../public/formation/account.php");
    exit;
}

if (isset($_POST['set_module_position']) && isset($_SESSION['utilisateur']['id_formateur']) && $_SESSION['utilisateur']['id_formateur'] > 0) {
    $sql = "UPDATE cours_modules, cours_modules AS cm2
            SET cours_modules.cours_module_position = cm2.cours_module_position, cm2.cours_module_position = cours_modules.cours_module_position
            WHERE cours_modules.cours_module_position=:new AND cm2.cours_module_position=:old;";
    $req = $db->prepare($sql);
    $req->bindParam(':new', $_POST['new']);
    $req->bindParam(':old', $_POST['old']);
    if ($req->execute()) {
        die(json_encode(array(
            'success' => true,
            'message' => "Module déplacé !"
        )));
    }
    die(json_encode(array(
        'success' => false,
        'message' => "Une erreur s'est produite..."
    )));
}

if (isset($_POST['set_cours_position']) && isset($_SESSION['utilisateur']['id_formateur']) && $_SESSION['utilisateur']['id_formateur'] > 0) {
    $sql = "UPDATE cours, cours AS c2
            SET cours.cours_position = c2.cours_position, c2.cours_position = cours.cours_position
            WHERE cours.cours_position=:new AND c2.cours_position=:old 
            AND cours.id_module = (SELECT cours_module_id 
                                    FROM cours_modules 
                                    WHERE cours_module_uuid=:module_uuid)
            AND c2.id_module = (SELECT cours_module_id 
                                    FROM cours_modules 
                                    WHERE cours_module_uuid=:module_uuid);";
    $req = $db->prepare($sql);
    $req->bindParam(':new', $_POST['new']);
    $req->bindParam(':old', $_POST['old']);
    $req->bindParam(':module_uuid', $_POST['module']);
    if ($req->execute()) {
        die(json_encode(array(
            'success' => true,
            'message' => "Cours déplacé !"
        )));
    }
    die(json_encode(array(
        'success' => false,
        'message' => "Une erreur s'est produite..."
    )));
}

if (isset($_POST['form_faq_theme']) && isset($_POST['form_faq_title']) && !empty($_POST['form_faq_title']) && isset($_POST['form_faq_content']) && !empty($_POST['form_faq_content']) && isset($_POST['form_faq_secteur']) && isset($_SESSION['utilisateur']['id_formateur']) && $_SESSION['utilisateur']['id_formateur'] > 0) {
    $sql = "INSERT INTO faqs(faq_theme, faq_title, faq_content, faq_priority, id_secteur) 
            VALUES(:theme, :title, :content, :priority, :secteur)";
    $req = $db->prepare($sql);
    $req->bindValue(":theme", (!empty($_POST['form_faq_secteur']) && $_POST['form_faq_secteur'] < 0 ? "global" : strtolower($_POST['form_faq_theme'])));
    $req->bindValue(":title", ucfirst($_POST['form_faq_title']));
    $req->bindValue(":content", htmlentities($_POST['form_faq_content']));
    $req->bindValue(":secteur", (!empty($_POST['form_faq_secteur']) && $_POST['form_faq_secteur'] < 0 ? NULL : $_POST['form_faq_secteur']));
    $req->bindValue(":priority", (!empty($_POST['form_faq_secteur']) && $_POST['form_faq_secteur'] < 0 ? 1 : 0));
    if ($req->execute()) {
        header("Location: /erp/public/formation/admin.php");
        exit;
    }
    header("Location: /erp/public/formation/admin.php");
    exit;
}
?>