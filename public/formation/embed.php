<?php
include_once("../../src/m/connect.php");

$title = " | Cours";

$req = $db->prepare("SELECT * FROM cours_ressources WHERE id_cours= (SELECT cours_id FROM cours WHERE cours_link=:cours_link) AND cours_ressource_type = 'exercice';");
$req->bindValue(':cours_link', filter_var(@$_GET['slide'], FILTER_SANITIZE_SPECIAL_CHARS));
$req->execute();
$exercices = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT * FROM cours_ressources WHERE id_cours= (SELECT cours_id FROM cours WHERE cours_link=:cours_link) AND cours_ressource_type = 'tp';");
$req->bindValue(':cours_link', filter_var(@$_GET['slide'], FILTER_SANITIZE_SPECIAL_CHARS));
$req->execute();
$tps = $req->fetchAll(PDO::FETCH_ASSOC);
$req->closeCursor();

ob_start();
include_once("./header.php");

if ($_SESSION['utilisateur']['id_formateur'] > 0) { ?>
    <div class="container-fluid">
        <div class="row">
            <div class="offset-12 mt-2 mb-2">
                <button role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAjouterExercice">Ajouter un exercice</button>
                <button role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAjouterTP">Ajouter un TP</button>
            </div>
        </div>
    </div>
<?php } ?>
<iframe src="https://docs.google.com/presentation/d/e/<?= @$_GET['slide'] ?>/embed?start=true&loop=true&delayms=60000" frameborder="0" width="1280" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<div class="container">
    <div class="row">
        <?php if (!empty($exercices)) { ?>
            <div class="col-12">
                <h2>Les exercices</h2>
                <?php foreach ($exercices as $exercice) { ?>
                    <a target="_blank" href="<?= $exercice['cours_ressource_lien'] ?>">
                        <p><?= $exercice['cours_ressource_titre'] ?></p>
                        <small><?= $exercice['cours_ressource_resume'] ?></small>
                    </a>
                <?php } ?>
            </div>
            <hr>
        <?php } ?>
        <?php if (!empty($tps)) { ?>
            <div class="col-12">
                <h2>Les TPs</h2>
                <?php foreach ($tps as $tp) { ?>
                    <a target="_blank" href="<?= $tp['cours_ressource_lien'] ?>">
                        <p><?= $tp['cours_ressource_titre'] ?></p>
                        <small><?= $tp['cours_ressource_resume'] ?></small>
                    </a>
                <?php } ?>
            </div>
        <?php } ?>
    </div>
</div>
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>