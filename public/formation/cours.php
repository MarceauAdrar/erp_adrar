<?php
include_once("../../src/m/connect.php");

$title = " | Cours";
ob_start();
include_once("./header.php");
?>
<div class="container">
    <div class="row pt-5">
        <input type="hidden" id="hidden_input_module" value="<?= $_GET["cours"] ?>">
        <input type="search" class="form-control" onkeyup="getCourses(document.querySelector('#hidden_input_module').value , this.value);" value="<?=@$_GET['q']?>" placeholder="Votre recherche...">
    </div>
    <div class="row pt-5 cours">
        <h3>Les cours</h3>
        <div class="col-12">
            <div class="row pb-5" id="liste_cours"></div>
        </div>
    </div>
</div>

<!-- Modale pour afficher un cours -->
<div class="modal fade" id="modalCourse" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalCourseTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
</div>

<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>