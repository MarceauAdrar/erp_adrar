<?php
include_once("../../src/m/connect.php");

$title = " | Accueil";

ob_start();
include_once("./header.php");
?>
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Bienvenue sur la plateforme pour valider vos acquis</h1>
        </div>
    </div>

    <div class="row pt-5">
        <input type="search" class="form-control" onkeyup="getModules(this.value);" placeholder="Votre recherche...">
    </div>

    <div class="row pt-5">
        <h3>Les modules</h3>
        <div class="col-12">
            <div class="row" id="liste_modules"></div>
        </div>

    </div>
</div>

<script>
    sessionStorage.setItem("stagiaire_username", "<?= (!isset($_SESSION) ? "" : (array_key_exists("pseudo_stagiaire", $_SESSION['utilisateur']) ? $_SESSION["utilisateur"]["pseudo_stagiaire"] : $_SESSION["utilisateur"]["mail_formateur"])) ?>");
    sessionStorage.setItem("SERVER_NAME", "<?= $_SERVER["SERVER_NAME"] ?>");
</script>
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>