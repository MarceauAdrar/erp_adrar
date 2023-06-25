<?php
include_once("../src/m/connect.php");

$title = " | Accueil";

ob_start();
include_once("./formation/header.php");
?> 
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Bienvenue sur la plateforme pour valider vos acquis</h1>      
        </div>
    </div>
    
    <div class="row pt-5">
        <h3>Les cours</h3>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=html" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration HTML">
                        <?php include_once("./formation/imgs/html.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">HTML</h5>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=css" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration CSS">
                        <?php include_once("./formation/imgs/css.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">CSS</h5>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=frameworks" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration Frameworks">
                        <?php include_once("./formation/imgs/frameworks.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">Frameworks</h5>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=js" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration JS">
                        <?php include_once("./formation/imgs/js.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">JS</h5>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=maquettage" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration maquettage">
                        <?php include_once("./formation/imgs/user_flow.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">Maquettage</h5>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-3 mb-3">
            <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=php" class="text-black">
                <div class="card">
                    <span class="card-img-top" alt="Illustration php">
                        <?php include_once("./formation/imgs/php.svg"); ?>
                    </span>
                    <div class="card-body">
                        <h5 class="card-title text-decoration-underline">PHP</h5>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>

<script>
    sessionStorage.setItem("stagiaire_username", "<?=(array_key_exists("pseudo_stagiaire", $_SESSION['utilisateur']) ? $_SESSION["utilisateur"]["pseudo_stagiaire"] : $_SESSION["utilisateur"]["mail_formateur"])?>");
    sessionStorage.setItem("SERVER_NAME", "<?=$_SERVER["SERVER_NAME"]?>");
</script>
<?php
include_once("./formation/js.php");
include_once("./formation/footer.php");
die(ob_get_clean());
?> 
