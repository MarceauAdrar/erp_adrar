<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <!-- CSS only -->
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/base.css?v=<?= uniqid() ?>" />
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/connexion.css?v=<?= uniqid() ?>" />
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/tables.css?v=<?= uniqid() ?>" />
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/evals.css?v=<?= uniqid() ?>" />
    <link rel="stylesheet" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/css/animations.css?v=<?= uniqid() ?>" />
    <title>Evaluation finale<?= $title ?></title>
</head>

<body>
    <div class="wrapper">
        <?php if (isset($_SESSION["utilisateur"]["id_stagiaire"])) { ?>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/?page=formation">
                        <img src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/adrar_logo.svg" alt="Logo de l'ADRAR" id="logo_adrar" />
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/?page=formation">Accueil</a>
                            </li>
                            <?php
                            if ($_SESSION["utilisateur"]["id_formateur"] !== -1) { ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/admin.php">Administration</a>
                                </li>
                            <?php } elseif (false) { ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/?page=boite-aux-lettres">Déposer un fichier</a>
                                </li>
                            <?php } ?>
                            <?php
                            $sql_evaluations = "SELECT evaluation_dd_name, evaluation_dd_link 
                                            FROM evaluations_dd 
                                            JOIN evaluations_sessions ON(id_dd_evaluation=evaluation_dd_id AND id_session=:id_session AND evaluation_session_active = 1)
                                            WHERE evaluation_dd_active = 1;";
                            $req_evaluations = $db->prepare($sql_evaluations);
                            $req_evaluations->bindValue(":id_session", filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT));
                            $req_evaluations->execute();
                            $evaluations = $req_evaluations->fetchAll(PDO::FETCH_ASSOC);
                            $req_evaluations->closeCursor();
                            if (!empty($evaluations)) { ?>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbar_dropdown_modules" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Évaluations
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbar_dropdown_modules">
                                        <?php foreach ($evaluations as $eval) { ?>
                                            <li><a class="dropdown-item" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/modules/<?= $eval["evaluation_dd_link"] ?>/"><?= $eval["evaluation_dd_name"] ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            <?php }
                            $sql_quiz = "SELECT quiz_module  
                                    FROM quiz 
                                    JOIN quiz_sessions ON(quiz_id = id_quiz AND id_session=:id_session AND quiz_session_active = 1)
                                    GROUP BY quiz_module;";
                            $req_quiz = $db->prepare($sql_quiz);
                            $req_quiz->bindValue(':id_session', filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT));
                            $req_quiz->execute();
                            $quizs = $req_quiz->fetchAll(PDO::FETCH_ASSOC);
                            $req_quiz->closeCursor();
                            if (!empty($quizs)) { ?>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbar_dropdown_quiz" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Quiz
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbar_dropdown_quiz">
                                        <?php foreach ($quizs as $quiz) { ?>
                                            <li><a class="dropdown-item" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/quiz?cours=<?= strtolower($quiz["quiz_module"]) ?>"><?= strtoupper($quiz["quiz_module"]) ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            <?php } ?>
                        </ul>
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <?php
                            if ($_SESSION["utilisateur"]["id_stagiaire"] > 0) {
                                echo '<a href="#" onclick="loadNewNotifications(true);" class="text-decoration-none"><i class="fas fa-bell fa-lg text-grey position-relative"><span class="notifications-count"></span></i></a>&nbsp;';
                                $nom_prenom = ucwords($_SESSION["utilisateur"]["prenom_stagiaire"]) . " " . strtoupper($_SESSION["utilisateur"]["nom_stagiaire"]);
                            } elseif ($_SESSION["utilisateur"]["id_formateur"] > 0) {
                                $nom_prenom = ucwords($_SESSION["utilisateur"]["prenom_formateur"]) . " " . strtoupper($_SESSION["utilisateur"]["nom_formateur"]);
                            }
                            ?>
                            <?php
                            if ($_SESSION["utilisateur"]["id_formateur"] > 0) { ?>
                                <li class="nav-item">
                                    <div class="nav-link form-check form-switch">
                                        <input class="form-check-input" type="checkbox" role="switch" id="form_edition_mode" onclick="toggleEditionMode();" <?=(isset($_SESSION['mode_edition']) && !empty($_SESSION['mode_edition']) ? 'checked' : '')?>>
                                        <label class="form-check-label" for="form_edition_mode">Mode édition</label>
                                    </div>
                                </li>
                            <?php } ?>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbar_dropdown_user" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <?= $nom_prenom ?>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbar_dropdown_user">
                                    <li><a class="dropdown-item" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/account.php">Modifier mes informations</a></li>
                                    <?php
                                    if ($_SESSION["utilisateur"]["id_formateur"] > 0) { ?>
                                        <li><a role="button" data-bs-toggle="modal" data-bs-target="#modalConnectAs" class="dropdown-item">Se connecter en tant que...</a></li>
                                        <li><a class="dropdown-item" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/">Retour sur l'ERP</a></li>
                                    <?php } ?>
                                    <li><a class="dropdown-item" href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/deconnexion.php">Se déconnecter</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div id="notifications" class="hidden">
                <h3>Notifications</h3>
                <hr>
                <div></div>
            </div>
        <?php } ?>