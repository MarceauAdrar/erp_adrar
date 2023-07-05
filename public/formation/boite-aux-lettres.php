<?php
include_once("../../src/m/connect.php");

$title = " | Boîte aux lettres";

ob_start();
include_once("./header.php");
?> 
<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center">Bienvenue dans votre <em>boîte aux lettres</em></h1>      
        </div>
    </div>
    
    <div class="row pt-5">
        <h3>Déposer un fichier</h3>
        <form action="http://<?=$_SERVER["SERVER_NAME"]?>/erp/src/c/requests.php" method="post">
            <input type="file" name="form_formation_fichier" multiple>
        </form>
    </div>
</div>

<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?> 
