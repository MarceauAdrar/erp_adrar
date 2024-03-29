<?php

include_once("../../src/m/connect.php");

$title = " | Contrôle administration";

if (array_key_exists("stagiaire_pseudo", $_SESSION["utilisateur"])) {
    header("Location: ../formation");
}

$sql_select_stagiaires = "SELECT i.stagiaire_id, stagiaire_nom, stagiaire_prenom, stagiaire_pseudo, evaluation_errors_max, stagiaire_evaluation_completed, stagiaire_evaluation_correction, stagiaire_evaluation_errors_found, evaluation_id, evaluation_dd_link
                    FROM stagiaires_evaluations ie 
                    JOIN stagiaires i ON (i.stagiaire_id = ie.id_stagiaire) 
                    JOIN evaluations e ON (e.evaluation_id = ie.id_evaluation) 
                    JOIN evaluations_dd edd ON (edd.evaluation_dd_id = e.id_evaluation_dd) 
                    ORDER BY evaluation_dd_id, evaluation_id;";
$req_select_stagiaires = $db->prepare($sql_select_stagiaires);
$req_select_stagiaires->execute();
$stagiaires = $req_select_stagiaires->fetchAll(PDO::FETCH_ASSOC);

$sql_select_tps = "SELECT evaluation_id, id_evaluation_dd 
                    FROM evaluations e
                    JOIN stagiaires_evaluations ie ON (e.evaluation_id = ie.id_evaluation 
                                                        AND stagiaire_evaluation_correction = 0 
                                                        AND stagiaire_evaluation_completed = 1
                                                        ) 
                    GROUP BY evaluation_id;";
$req_select_tps = $db->prepare($sql_select_tps);
$req_select_tps->execute();
$tps = $req_select_tps->fetchAll(PDO::FETCH_ASSOC);

$req_secteurs = $db->prepare("SELECT secteur_id, secteur_nom FROM secteurs ORDER BY secteur_nom;");
$req_secteurs->execute();
$secteurs = $req_secteurs->fetchAll(PDO::FETCH_ASSOC);

$arr = array(
    ["html-css" => 0],
    ["bootstrap" => 0],
);

include_once("./header.php"); ?>
<div class="container-fluid">
    <div class="row mt-2">
        <div class="col-8 offset-2">
            <button role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAddCourse">Ajouter un cours</button>
            <button role="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#modalManagecours" onclick="showModalManagecours();">Gérer les cours</button>
            <!-- <button role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAddQuiz">Ajouter un quiz</button>
            <button role="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#modalManageQuiz" onclick="showModalManageQuiz();">Gérer les quiz</button> -->
        </div>
    </div>
    <div class="row">
        <div class="col-3 offset-2">
            <form class="bg-light p-3 mt-3" action="//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php" method="post">
                <div class="form-group">
                    <label for="form_faq_theme">Thème de la FAQ (25 caractères max)</label>
                    <input type="text" class="form-control" name="form_faq_theme" id="form_faq_theme" placeholder="Thème de la FAQ (laisser vide si `global`)">
                </div>
                <div class="form-group pt-2">
                    <label for="form_faq_title">Titre de la FAQ</label>
                    <input type="text" class="form-control" name="form_faq_title" id="form_faq_title" placeholder="Titre de la FAQ">
                </div>
                <div class="form-group pt-2 pb-2">
                    <label for="form_faq_content">Contenu de la FAQ</label>
                    <textarea class="form-control" name="form_faq_content" id="form_faq_content"></textarea>
                </div>
                <div class="form-group pb-2">
                    <label for="form_faq_secteur">Secteur</label>
                    <select class="form-select" name="form_faq_secteur" id="form_faq_secteur">
                        <option value="-1">Tous les secteurs</option>
                        <?php foreach ($secteurs as $secteur) { ?>
                            <option value="<?= $secteur['secteur_id'] ?>"><?= $secteur['secteur_nom'] ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="text-end">
                    <button role="button" type="submit" class="btn btn-primary">Envoyer</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-8 offset-2">

            <div class="modules mt-3">
                <details close>
                    <summary>
                        <span class="admin-titles">Données du module HTML/CSS</span>
                    </summary>
                    <?php foreach ($tps as $value) if ($value['id_evaluation_dd'] == 1) { ?>
                        <a class="btn btn-warning mb-2" href="./check.php?module=html-css&tp=<?= $value['evaluation_id'] ?>">Correction TP<?= $value ?></a>
                    <?php } ?>
                    <table class="table table-bordered table-striped table-responsive">
                        <thead>
                            <tr class="text-center">
                                <th>TP n°</th>
                                <th>(#ID) Prénom NOM</th>
                                <th>Voir</th>
                                <th>TP terminé</th>
                                <th>TP corrigé</th>
                                <th>Score obtenu/Score max</th>
                                <th>Note</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($stagiaires)) {
                                foreach ($stagiaires as $stagiaire) if ($stagiaire['evaluation_dd_link'] == "html-css") {
                                    $arr[0]["html-css"] += 1;
                            ?>
                                    <tr>
                                        <td class="text-center"><?= $stagiaire["evaluation_id"] ?></td>
                                        <td>(<?= $stagiaire["stagiaire_id"] ?>)&nbsp;<?= $stagiaire["stagiaire_nom"] ?> <?= $stagiaire["stagiaire_prenom"] ?></td>
                                        <td><a href="./achieved.php?module=html-css&tp=<?= $stagiaire["evaluation_id"] ?>&stagiaire_username=<?= $stagiaire["stagiaire_pseudo"] ?>&stagiaire_id=<?= $stagiaire["stagiaire_id"] ?>&correction=1" class="btn btn-info btn-sm">Voir</a></td>
                                        <td><?= (!empty($stagiaire["stagiaire_evaluation_completed"]) ? '<span class="circle completed" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation terminée !"></span>' : '<span class="circle awaiting" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation en cours !"></span>') ?></td>
                                        <td><?= (!empty($stagiaire["stagiaire_evaluation_correction"]) ? '<span class="circle completed" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation corrigée !"></span>' : '<span class="circle awaiting" style="cursor: pointer;" onclick="validInternCorrection(' . $stagiaire["stagiaire_id"] . ', ' . $stagiaire["evaluation_id"] . ', \'plus\');" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation non corrigée !"></span>') ?></td>
                                        <td class="text-center">
                                            <?php if (!empty($stagiaire["evaluation_errors_max"])) { ?>
                                                <?= (!empty($stagiaire["stagiaire_evaluation_errors_found"]) ? '<i class="fa-solid fa-circle-minus" style="cursor: pointer; float: left; padding-top: 2%; color: var(--col_base);" onclick="validInternCorrection(' . $stagiaire["stagiaire_id"] . ', ' . $stagiaire["evaluation_id"] . ', \'minus\');"></i>' : '') ?>
                                                <span id="errors_found_plus_one_<?= $stagiaire["evaluation_id"] ?>_<?= $stagiaire["stagiaire_id"] ?>" value="<?= intval($stagiaire["stagiaire_evaluation_errors_found"]) ?>"><?= $stagiaire["stagiaire_evaluation_errors_found"] ?></span>
                                                /
                                                <?= $stagiaire["evaluation_errors_max"] ?><?= ($stagiaire["stagiaire_evaluation_errors_found"] < $stagiaire["evaluation_errors_max"] ? '<i class="fa-solid fa-plus-circle" style="cursor: pointer; float: right; padding-top: 2%; color: var(--col_base);" onclick="validInternCorrection(' . $stagiaire["stagiaire_id"] . ', ' . $stagiaire["evaluation_id"] . ', \'plus\');"></i>' : '') ?>
                                            <?php } ?>
                                        </td>
                                        <td class="text-center"><?= (!empty($stagiaire["evaluation_errors_max"]) ? number_format(floatval($stagiaire["stagiaire_evaluation_errors_found"] / $stagiaire["evaluation_errors_max"]) * 100, 0) : "") ?></td>
                                    </tr>
                                <?php }
                            }
                            if (empty($arr[0]["html-css"]) || empty($stagiaires)) { ?>
                                <tr>
                                    <td class="text-center" colspan="7">Aucune donnée à afficher</td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </details>
            </div>

            <div class="modules mt-3">
                <details open>
                    <summary>
                        <span class="admin-titles">Données du module Bootstrap</span>
                    </summary>
                    <?php foreach ($tps as $value) if ($value['id_evaluation_dd'] == 3) { ?>
                        <a class="btn btn-warning mb-2" href="./check.php?module=bootstrap&tp=<?= $value['evaluation_id'] ?>">Correction TP<?= $value ?></a>
                    <?php } ?>
                    <table class="table table-bordered table-striped table-responsive">
                        <thead>
                            <tr class="text-center">
                                <th>TP n°</th>
                                <th>(#ID) Prénom NOM</th>
                                <th>Voir</th>
                                <th>TP terminé</th>
                                <th>TP corrigé</th>
                                <th>Score obtenu/Score max</th>
                                <th>Note</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($stagiaires)) {
                                foreach ($stagiaires as $stagiaire) if ($stagiaire['evaluation_dd_link'] == "bootstrap") {
                                    $arr[0]["bootstrap"] += 1;
                            ?>
                                    <tr>
                                        <td class="text-center"><?= $stagiaire["evaluation_id"] ?></td>
                                        <td>(<?= $stagiaire["stagiaire_id"] ?>)&nbsp;<?= $stagiaire["stagiaire_nom"] ?> <?= $stagiaire["stagiaire_prenom"] ?></td>
                                        <td><a href="achieved.php?module=bootstrap&tp=<?= $stagiaire["evaluation_id"] ?>&stagiaire_username=<?= $stagiaire["stagiaire_username"] ?>&stagiaire_id=<?= $stagiaire["stagiaire_id"] ?>&correction=1" class="btn btn-info btn-sm">Voir</a></td>
                                        <td><?= (!empty($stagiaire["stagiaire_evaluation_completed"]) ? '<span class="circle completed" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation terminée !"></span>' : '<span class="circle awaiting" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation en cours !"></span>') ?></td>
                                        <td><?= (!empty($stagiaire["stagiaire_evaluation_correction"]) ? '<span class="circle completed" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation corrigée !"></span>' : '<span class="circle awaiting" data-bs-toggle="tooltip" data-bs-placement="right" title="Évaluation non corrigée !"></span>') ?></td>
                                        <td class="text-center"><?= $stagiaire["stagiaire_evaluation_errors_found"] ?>/<?= $stagiaire["evaluation_errors_max"] ?></td>
                                        <td class="text-center"><?= number_format(floatval($stagiaire["stagiaire_evaluation_errors_found"] / $stagiaire["evaluation_errors_max"]) * 100, 0) ?></td>
                                    </tr>
                                <?php }
                            }
                            if (empty($arr[0]["bootstrap"]) || empty($stagiaires)) { ?>
                                <tr>
                                    <td class="text-center" colspan="7">Aucune donnée à afficher</td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </details>
            </div>

        </div>
    </div>
</div>


<div class="modal modal-xl fade" id="modalAddCourse" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalAddCourseTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAddCourseTitle">Ajouter un cours</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="../src/requests.php" method="post">
                    <div class="mb-3">
                        <label for="form_cours_module" class="form-label">Nom du module:</label>
                        <input type="text" class="form-control" name="form_cours_module" id="form_cours_module" placeholder="html">
                    </div>
                    <div class="mb-3">
                        <label for="form_cours_title" class="form-label">Titre du cours:</label>
                        <input type="text" class="form-control" name="form_cours_title" id="form_cours_title" placeholder="HTML...">
                    </div>
                    <div class="mb-3">
                        <label for="form_cours_synopsis" class="form-label">Synopsis du cours:</label>
                        <textarea class="form-control" name="form_cours_synopsis" id="form_cours_synopsis" placeholder="Bref énoncé..." cols="" rows="5"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="form_cours_text" class="form-label">Enoncé du cours:</label>
                        <textarea class="form-control" name="form_cours_text" id="form_cours_text" placeholder="Énoncé..." cols="" rows="15"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="form_cours_keywords" class="form-label">Mots-clés du cours:</label>
                        <input type="text" class="form-control" name="form_cours_keywords" id="form_cours_keywords" placeholder="...">
                    </div>
                    <div class="mb-3">
                        <label for="form_cours_link" class="form-label">Lien de l'intégration du cours:</label>
                        <input type="text" class="form-control" name="form_cours_link" id="form_cours_link" placeholder="2PACX-...">
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" id="form_cours_active">
                        <label class="form-check-label" for="form_cours_active">
                            Cours visible ?
                        </label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Fermer</button>
                <button type="submit" class="btn btn-success" onclick="addCourse();">Enregistrer</button>
            </div>
        </div>
    </div>
</div>


<div class="modal modal-xl fade" id="modalManagecours" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalManagecoursTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div class="container">
                    <div class="row">
                        <h5 class="modal-title w-auto" id="modalManagecoursTitle">Gérer les cours</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        &nbsp;
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <select name="form_session_cours" class="form-select" onchange="showModalManagecours();">
                                <option value="-1">Toutes mes sessions actives</option>
                                <option value="0">Toutes mes sessions</option>
                                <?php
                                $sql = "SELECT * 
                                        FROM sessions 
                                        WHERE id_formateur=:id_formateur
                                        ORDER BY session_nom;";
                                $req = $db->prepare($sql);
                                $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
                                $req->execute();
                                $sessions_formateur = $req->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($sessions_formateur as $session) { ?>
                                    <option value="<?= $session['session_id'] ?>"><?= $session['session_nom'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-3">
                            <label for="form_active_cours">
                                <input type="checkbox" name="form_active_cours" id="form_active_cours" onchange="showModalManagecours();">
                                Cours non actifs / actifs
                            </label>
                        </div>
                        <div class="col">
                            <input type="text" name="form_search_cours" placeholder="Cours, mot-clé, ..." class="form-control" onkeyup="showModalManagecours();">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-body">
            </div>
            <!-- <div class="modal-footer">
                <div class="d-flex">
                    <button type="button" class="btn btn-light">Précédent</button>
                    <button type="button" class="btn btn-light">Suivant</button>
                </div>
            </div> -->
        </div>
    </div>
</div>

<!-- <div class="modal modal-xl fade" id="modalAddQuiz" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalAddQuizTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAddQuizTitle">Ajouter un quiz</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php" method="post" id="form_add_quiz">
                    <div class="mb-3">
                        <label for="form_quiz_module" class="form-label">Nom du module:</label>
                        <input type="text" class="form-control" name="form_quiz_module" placeholder="html">
                    </div>
                    <div class="mb-3">
                        <label for="form_quiz_title" class="form-label">Titre du quiz:</label>
                        <input type="text" class="form-control" name="form_quiz_title" placeholder="HTML...">
                    </div>
                    <div class="mb-3">
                        <label for="form_quiz_keywords" class="form-label">Mots-clés du quiz:</label>
                        <input type="text" class="form-control" name="form_quiz_keywords" placeholder="...">
                    </div>
                    <div class="mb-3">
                        <label for="form_quiz_lien" class="form-label">Lien de l'intégration du quiz:</label>
                        <input type="text" class="form-control" name="form_quiz_lien" placeholder="<?= sha1(random_bytes(6)) ?>...">
                    </div>
                    <div class="mb-3">
                        <label for="form_quiz_difficulte" class="form-label">Difficulté du quiz:</label>
                        <select name="form_quiz_difficulte" id="form_quiz_difficulte">
                            <option value="0">Facile</option>
                            <option value="1">Modéré</option>
                            <option value="2">Difficile</option>
                            <option value="3">Extrême</option>
                        </select>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" name="form_quiz_active">
                        <label class="form-check-label" for="form_quiz_active">
                            Cours visible ?
                        </label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Fermer</button>
                <button type="submit" class="btn btn-success" name="add_quiz" form="form_add_quiz" value="1">Enregistrer</button>
            </div>
        </div>
    </div>
</div>


<div class="modal modal-lg fade" id="modalManageQuiz" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalManageQuizTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalManageQuizTitle">Gérer les quiz</h5>
                &nbsp;
                <select name="form_session_quiz" onchange="showModalManageQuiz();">
                    <option value="0">Toutes mes sessions</option>
                    <?php
                    $sql = "SELECT * 
                                FROM sessions 
                                WHERE id_formateur=:id_formateur
                                ORDER BY session_nom;";
                    $req = $db->prepare($sql);
                    $req->bindValue(':id_formateur', filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
                    $req->execute();
                    $sessions_formateur = $req->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($sessions_formateur as $session) { ?>
                        <option value="<?= $session['session_id'] ?>"><?= $session['session_nom'] ?></option>
                    <?php } ?>
                </select>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            </div>
        </div>
    </div>
</div> -->

<?php
include_once("./js.php"); ?>
<!-- TinyMCE CDN -->
<script src="https://cdn.tiny.cloud/1/a8r1baghsc0tvoi3mea8smbftcwaas0dv5duyputb14spmju/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: 'textarea#form_faq_content',
        skin: 'bootstrap',
        plugins: 'lists, link, image, media',
        toolbar: 'h3 h4 h5 h6 bold italic strikethrough blockquote bullist numlist backcolor | link image media | removeformat help',
        // menubar: false,
        setup: (editor) => {
            // Apply the focus effect
            editor.on("init", () => {
                editor.getContainer().style.transition = "border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out";
            });
            editor.on("focus", () => {
                (editor.getContainer().style.boxShadow = "0 0 0 .2rem rgba(0, 123, 255, .25)"),
                (editor.getContainer().style.borderColor = "#80bdff");
            });
            editor.on("blur", () => {
                (editor.getContainer().style.boxShadow = ""),
                (editor.getContainer().style.borderColor = "");
            });
        },
    });
</script>
<script>
    sessionStorage.setItem("previous_uri", "<?= $_SERVER["REQUEST_URI"] ?>");

    function validInternCorrection(id_stagiaire, tp, operation) {
        var errors_found = $("#errors_found_plus_one_" + tp + "_" + id_stagiaire).attr("value");
        if (operation === 'minus') errors_found--;
        if (operation === 'plus') errors_found++;

        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            data: {
                valid_stagiaire_correction: 1,
                tp: tp,
                errors_found: errors_found,
                id_stagiaire: id_stagiaire
            },
            success: function(r) {
                $("#errors_found_plus_one_" + tp + "_" + id_stagiaire).attr("value", errors_found);
                $("#errors_found_plus_one_" + tp + "_" + id_stagiaire).text(errors_found);
            }
        });
    }

    function showModalManagecours() {
        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            data: {
                show_modal_manage_cours: 1,
                cours_actifs: document.querySelector('input[name="form_active_cours"]').checked,
                id_session: document.querySelector('select[name="form_session_cours"]').value,
                search: document.querySelector('input[name="form_search_cours"]').value
            },
            success: function(r) {
                $("#modalManagecours .modal-content .modal-body").html(r);
            }
        });
    }

    function showModalManageQuiz() {
        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            data: {
                show_modal_manage_quiz: 1,
                id_session: document.querySelector('select[name="form_session_quiz"]').value
            },
            success: function(r) {
                $("#modalManageQuiz .modal-content .modal-body").html(r);
            }
        });
    }

    function updateStatusCourse(cours_id, id_session) {
        var cours_active = ($("#cours_" + cours_id + "_" + id_session + " span > span").hasClass("cours-active") ? 0 : 1);

        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            data: {
                update_status_cours: 1,
                cours_id: cours_id,
                id_session: id_session,
                cours_active: cours_active
            },
            success: function(r) {
                if (r == "ok") {
                    $("#cours_" + cours_id + "_" + id_session + " span > span").toggleClass("cours-active cours-inactive");
                }
            }
        });
    }

    function updateStatusQuiz(quiz_id, id_session) {
        var quiz_active = ($("#quiz_" + quiz_id + "_" + id_session + " span > span").hasClass("quiz-active") ? 0 : 1);

        $.ajax({
            url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
            method: "post",
            data: {
                update_status_quiz: 1,
                quiz_id: quiz_id,
                id_session: id_session,
                quiz_active: quiz_active
            },
            success: function(r) {
                if (r == "ok") {
                    $("#quiz_" + quiz_id + "_" + id_session + " span > span").toggleClass("quiz-active quiz-inactive");
                }
            }
        });
    }

    function addCourse() {
        $.ajax({
            url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
            method: "post",
            data: {
                add_cours: 1,
                form_cours_module: $("#form_cours_module").val(),
                form_cours_title: $("#form_cours_title").val(),
                form_cours_synopsis: $("#form_cours_synopsis").val(),
                form_cours_text: $("#form_cours_text").val(),
                form_cours_keywords: $("#form_cours_keywords").val(),
                form_cours_link: $("#form_cours_link").val(),
                form_cours_active: $("#form_cours_active").is(":checked"),
            },
            success: function(r) {
                $("#modalCourse .modal-content").html("");
                $("#modalCourse").modal("hide");
            }
        });
    }
</script>
<?php
include_once("./footer.php");
