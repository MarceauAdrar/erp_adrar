<?php
include_once("../../src/m/connect.php");

$title = " | Accueil";

$derniers_cours_suivis = null;

$sql = "SELECT * 
        FROM cours 
        INNER JOIN cours_modules ON (cours_modules.cours_module_id = cours.id_module) 
        INNER JOIN formateurs ON (formateurs.formateur_id = cours.id_formateur) ";
if (isset($_SESSION['utilisateur']['id_session']) && $_SESSION['utilisateur']['id_session'] > 0) {
    $sql .= " INNER JOIN cours_sessions ON (cours_sessions.id_session=:id_session AND cours_sessions.id_cours = cours.cours_id) ";
}
$sql .= "WHERE cours_visitors > 0 
ORDER BY cours_visitors DESC
LIMIT 0, 15;";
$req = $db->prepare($sql);
if (isset($_SESSION['utilisateur']['id_session']) && $_SESSION['utilisateur']['id_session'] > 0) {
    $req->bindValue(":id_session", filter_var($_SESSION['utilisateur']['id_session'], FILTER_VALIDATE_INT), PDO::PARAM_INT);
}
$req->execute();
$cours_populaires = $req->fetchAll(PDO::FETCH_ASSOC);

$sql = "SELECT questionnaire_question, stagiaire_questionnaire_note, stagiaire_questionnaire_reponse, stagiaire_prenom, avatar_nom, avatar_lien 
        FROM stagiaires_questionnaires 
        INNER JOIN stagiaires ON (stagiaire_id = id_stagiaire) 
        INNER JOIN avatars ON (avatar_id = id_avatar) 
        INNER JOIN questionnaires ON (questionnaire_id = id_questionnaire) 
        WHERE stagiaire_questionnaire_reponse <> '' 
        LIMIT 0,15;";
$req = $db->prepare($sql);
$req->execute();
$avis_stagiaires = $req->fetchAll(PDO::FETCH_ASSOC);

if (isset($_SESSION['utilisateur']['stagiaire_id']) && $_SESSION['utilisateur']['stagiaire_id'] > 0) {
    $sql = "SELECT id_stagiaire FROM stagiaires_questionnaires WHERE id_stagiaire=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(":id_stagiaire", $_SESSION['utilisateur']['stagiaire_id']);
    $req->execute();
    $questions_repondues = $req->rowCount();

    $sql = "SELECT session_date_fin <= NOW()
            FROM stagiaires 
            INNER JOIN sessions ON (session_id = id_session)   
            WHERE stagiaire_id=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(":id_stagiaire", $_SESSION['utilisateur']['stagiaire_id']);
    $req->execute();
    $questionnaire_disponible = $req->fetch(PDO::FETCH_COLUMN);

    $sql = "SELECT * 
            FROM stagiaires_cours_suivis 
            INNER JOIN cours ON (cours.cours_id = stagiaires_cours_suivis.id_cours) 
            INNER JOIN cours_modules ON (cours_modules.cours_module_id = cours.id_module) 
            INNER JOIN formateurs ON (formateurs.formateur_id = cours.id_formateur) 
            WHERE id_stagiaire=:id_stagiaire 
            ORDER BY stagiaire_cours_suivi_date DESC 
            LIMIT 0,4;";
    $req = $db->prepare($sql);
    $req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['stagiaire_id'], FILTER_VALIDATE_INT));
    $req->execute();
    $derniers_cours_suivis = $req->fetchAll(PDO::FETCH_ASSOC);
}

ob_start();
include_once("./header.php"); ?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Bienvenue sur la plateforme pédagogique</h1>
        </div>
    </div>

    <?php if (isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["stagiaire_id"] > 0 && $questions_repondues < 4 && $questionnaire_disponible) { ?>
        <div class="row pt-5">
            <div class="alert alert-success w-auto" role="alert">
                <h4 class="alert-heading">Enquête de satisfaction !</h4>
                <p>Dites-nous ce que vous avez pensé de nous en répondant à ce bref questionnaire !</p>
                <hr>
                <p class="mb-0"><a class="btn btn-secondary" href="questionnaire.php">Répondre au questionnaire</a></p>
            </div>
        </div>
    <?php } ?>

    <?php if (isset($derniers_cours_suivis)) { ?>
        <div class="row pt-5">
            <h2>Vos derniers cours suivis</h2>
            <?php if (!empty($derniers_cours_suivis)) { ?>
                <?php foreach ($derniers_cours_suivis as $cours) { ?>
                    <div class="col-xs-1 col-md-3 col-lg-3 mb-3">
                        <a title="Cours fait par <?= ucwords($cours['formateur_prenom']) . " " . strtoupper($cours['formateur_nom']) ?>" href="<?= '//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/embed.php?slide=' . $cours['cours_link'] ?>" class="text-black text-decoration-none">
                            <div class="card h-100">
                                <span class="card-img-top">
                                    <img class="img-course" alt="Illustration <?= $cours["cours_title"] ?>" src="/erp/public/formation/imgs/<?= (file_exists('/var/www/html/erp/public/formation/imgs/' . $cours['cours_module_illustration']) ? $cours['cours_module_illustration'] : 'no_data.svg') ?>" loading="lazy">
                                </span>
                                <div class="card-body">
                                    <p class="card-title h5 text-decoration-underline"><?= ucfirst($cours['cours_title']) ?></p>
                                    <p class="card-text"><?= $cours['cours_synopsis'] ?></p>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>
            <?php } else { ?>
                <p>Aucun cours suivi récemment, réessayez plus tard...</p>
            <?php } ?>
        </div>
    <?php } ?>
    <div class="row pt-5 pb-5">
        <h2>Les cours les plus populaires</h2>
        <div class="col-12">
            <?php if (isset($cours_populaires) && !empty($cours_populaires)) { ?>
                <section class="splide splide01" aria-label="Les cours les plus populaires actuellement">
                    <ul class="splide__pagination"></ul>
                    <div class="splide__track">
                        <ul class="splide__list">
                            <?php foreach ($cours_populaires as $cours) { ?>
                                <li class="splide__slide">
                                    <a title="Cours fait par <?= ucwords($cours['formateur_prenom']) . " " . strtoupper($cours['formateur_nom']) ?>" href="<?= '//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/embed.php?slide=' . $cours['cours_link'] ?>" class="text-black text-decoration-none">
                                        <div class="splide__slide__container">
                                            <img class="img-course" alt="Illustration <?= $cours["cours_title"] ?>" src="/erp/public/formation/imgs/<?= (file_exists('/var/www/html/erp/public/formation/imgs/' . $cours['cours_module_illustration']) ? $cours['cours_module_illustration'] : 'no_data.svg') ?>" loading="lazy">
                                            <?= ucfirst($cours['cours_title']) ?>
                                        </div>
                                    </a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </section>
            <?php } else { ?>
                <p>Aucun cours populaire pour le moment, réessayez plus tard...</p>
            <?php } ?>
        </div>
    </div>
    <div class="row pt-5 pb-5">
        <h2>Ils sont passés par chez nous...</h2>
        <div class="col-12">
            <?php if (isset($avis_stagiaires) && !empty($avis_stagiaires)) { ?>
                <section class="splide splide02" aria-label="Les avis des anciens stagiaires">
                    <ul class="splide__pagination"></ul>
                    <div class="splide__track">
                        <ul class="splide__list">
                            <?php foreach ($avis_stagiaires as $avis) {
                                $img = "";
                                if ($avis['stagiaire_questionnaire_note'] == 5.00) {
                                    $img = "tres_satisfait.png";
                                } elseif ($avis['stagiaire_questionnaire_note'] == 4.00) {
                                    $img = "satisfait.png";
                                } elseif ($avis['stagiaire_questionnaire_note'] == 3.00) {
                                    $img = "neutre.png";
                                } elseif ($avis['stagiaire_questionnaire_note'] == 2.00) {
                                    $img = "insatisfait.png";
                                } elseif ($avis['stagiaire_questionnaire_note'] == 1.00) {
                                    $img = "tres_insatisfait.png";
                                }
                                  ?>
                                <li class="splide__slide">
                                    <div class="splide__slide__container">
                                        <blockquote style="background-image:url('/erp/public/formation/imgs/<?= $img ?>');background-repeat: no-repeat;background-position: center;background-size: 7vw">
                                            <div class="h6 opacity-100"><?=$avis['questionnaire_question']?></div>
                                            <p class="opacity-100"><?= $avis['stagiaire_questionnaire_reponse'] ?></p>
                                            <footer class="opacity-100">—&nbsp;<img style="border-radius: 100%;border:1px lightgrey solid;width:25px;" alt="<?= $avis['avatar_nom'] ?>" src="/erp/public/formation/imgs/avatars/<?= $avis['avatar_lien'] ?>" loading="lazy">&nbsp;<?= ucfirst($avis['stagiaire_prenom']) ?></footer>
                                        </blockquote>
                                    </div>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </section>
            <?php } else { ?>
                <p>Aucun commentaire laissé pour le moment, réessayez plus tard...</p>
            <?php } ?>
        </div>
    </div>
</div>
<script>
    if (document.querySelector('.splide')) {
        var splide = new Splide('.splide01', {
            arrows: false,
            snap: true,
            perPage: 3,
            focus: 0,
            omitEnd: true,
        });

        splide.mount();
        var splide = new Splide('.splide02', {
            gap: "1em", 
            perPage: 2,
            focus: 0,
        });

        splide.mount();
    }
</script>

<script>
    sessionStorage.setItem("stagiaire_username", "<?= (!isset($_SESSION) ? "" : (array_key_exists("stagiaire_pseudo", $_SESSION['utilisateur']) ? $_SESSION["utilisateur"]["stagiaire_pseudo"] : $_SESSION["utilisateur"]["formateur_mail"])) ?>");
    sessionStorage.setItem("SERVER_NAME", "<?= $_SERVER["SERVER_NAME"] ?>");
</script>
<?php
include_once("./js.php"); ?>
<?php
include_once("./footer.php");
die(ob_get_clean());
?>