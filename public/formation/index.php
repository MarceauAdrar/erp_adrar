<?php
include_once("../src/m/connect.php");

$req = $db->prepare("SELECT * FROM cours GROUP BY cours_category ORDER BY cours_category;");
$req->execute();
$modules = $req->fetchAll(PDO::FETCH_ASSOC);

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
        <h3>Les modules</h3>

        <?php foreach($modules as $module) { ?>
            <div class="col-3 mb-3">
                <a href="http://<?=$_SERVER["SERVER_NAME"]?>/erp/public/formation/cours.php?cours=<?=$module['cours_category']?>" class="text-black">
                    <div class="card">
                        <span class="card-img-top" alt="Illustration <?=$module['cours_category']?>">
                            <?php include_once("./formation/imgs/" . $module['cours_category'] . ".svg"); ?>
                        </span>
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline"><?=strtoupper($module['cours_category'])?></h5>
                        </div>
                    </div>
                </a>
            </div>
        <?php } ?>

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
