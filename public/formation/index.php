<?php
include_once("../../src/m/connect.php");

$title = " | Accueil";

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
}


ob_start();
include_once("./header.php");
?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Bienvenue sur la plateforme pour valider vos acquis</h1>
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

    <div class="row pt-5">
        <input type="search" class="form-control" id="module-search-kw" onkeyup="getModules(this.value);" placeholder="Votre recherche...">
    </div>

    <div class="row pt-5">
        <h2>Les modules</h2>
        <div class="col-12">
            <div class="row pb-5" id="liste_modules"></div>
        </div>
    </div>
</div>

<script>
    sessionStorage.setItem("stagiaire_username", "<?= (!isset($_SESSION) ? "" : (array_key_exists("stagiaire_pseudo", $_SESSION['utilisateur']) ? $_SESSION["utilisateur"]["stagiaire_pseudo"] : $_SESSION["utilisateur"]["formateur_mail"])) ?>");
    sessionStorage.setItem("SERVER_NAME", "<?= $_SERVER["SERVER_NAME"] ?>");
</script>
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>