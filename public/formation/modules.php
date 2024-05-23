<?php
include_once("../../src/m/connect.php");

$title = " | Accueil";

ob_start();
include_once("./header.php");
?>
<div class="container">
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
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>