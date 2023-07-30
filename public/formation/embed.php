<?php
include_once("../../src/m/connect.php");

$title = " | Cours";

$req = $db->prepare("SELECT * FROM cours_ressources WHERE id_cours= (SELECT cours_id FROM cours WHERE cours_link=:cours_link) AND cours_ressource_type = 'autre';");
$req->bindValue(':cours_link', filter_var(@$_GET['slide'], FILTER_SANITIZE_SPECIAL_CHARS));
$req->execute();
$ressources = $req->fetchAll(PDO::FETCH_ASSOC);

$req = $db->prepare("SELECT * FROM cours_ressources WHERE id_cours= (SELECT cours_id FROM cours WHERE cours_link=:cours_link) AND cours_ressource_type = 'exercice';");
$req->bindValue(':cours_link', filter_var(@$_GET['slide'], FILTER_SANITIZE_SPECIAL_CHARS));
$req->execute();
$exercices = $req->fetchAll(PDO::FETCH_ASSOC);

$sql = "SELECT * 
        FROM cours_ressources ";
if ($_SESSION['utilisateur']['id_stagiaire'] > 0) {
    $sql .= " LEFT JOIN stagiaires_ressources ON (id_stagiaire=:id_stagiaire AND id_ressource=cours_ressource_id) ";
}
$sql .= " WHERE id_cours= (SELECT cours_id 
                        FROM cours 
                        WHERE cours_link=:cours_link) 
        AND cours_ressource_type = 'tp';";
$req = $db->prepare($sql);
if ($_SESSION['utilisateur']['id_stagiaire'] > 0) {
    $req->bindValue(':id_stagiaire', filter_var($_SESSION['utilisateur']['id_stagiaire'], FILTER_VALIDATE_INT));
}
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
                <button role="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAjouterRessource">Ajouter une ressource</button>
            </div>
        </div>
    </div>
<?php } ?>
<iframe src="https://docs.google.com/presentation/d/e/<?= @$_GET['slide'] ?>/embed?start=true&loop=true&delayms=60000" frameborder="0" width="1280" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<div class="container">
    <div class="row">
        <?php if (!empty($ressources)) { ?>
            <div class="col-12">
                <h2>Les ressources</h2>
                <?php foreach ($ressources as $ressource) { ?>
                    <a target="_blank" href="download.php?q=<?= $ressource['cours_ressource_archive_lien'] ?>" class="w-25 d-block text-black text-decoration-none">
                        <div class="card">
                            <div class="card-body">
                                <p class="card-title text-decoration-underline"><?= $ressource['cours_ressource_titre'] ?></p>
                                <i class="fa-solid fa-circle-down text-black" style="position: absolute;right: 1vw;bottom: 0.5vh;font-size: 3rem;opacity: 0.5;"></i>
                            </div>
                        </div>
                    </a>
                <?php } ?>
            </div>
            <hr>
        <?php } ?>
        <?php if (!empty($exercices)) { ?>
            <div class="col-12">
                <h2>Les exercices</h2>
                <?php foreach ($exercices as $exercice) { ?>
                    <a target="_blank" href="<?= $exercice['cours_ressource_lien'] ?>" class="w-25 d-block text-black text-decoration-none">
                        <div class="card">
                            <span class="card-img-top" alt="Illustration devoirs à la maison">
                                <?php include("./imgs/homeworks.svg"); ?>
                            </span>
                            <div class="card-body">
                                <p class="card-title text-decoration-underline"><?= $exercice['cours_ressource_titre'] ?></p>
                                <small><?= $exercice['cours_ressource_resume'] ?></small>
                            </div>
                        </div>
                    </a>
                <?php } ?>
            </div>
            <hr>
        <?php } ?>
        <?php if (!empty($tps)) { ?>
            <div class="col-12">
                <h2>Les TPs</h2>
                <?php foreach ($tps as $tp) { ?>
                    <div class="card w-25">
                        <span class="card-img-top" alt="Illustration devoirs à la maison">
                            <?php if ($_SESSION['utilisateur']['id_stagiaire'] > 0) {
                                if (empty($tp['lien_ressource_rendue'])) { ?>
                                    <i class="fa-solid fa-arrow-up-from-bracket text-grey upload-file" title="Rendre le TP" onclick="document.querySelector('#file_input_tp_<?= $tp['cours_ressource_id'] ?>').click();"></i>
                                    <input type="file" name="file_input_tp_<?= $tp['cours_ressource_id'] ?>" id="file_input_tp_<?= $tp['cours_ressource_id'] ?>" class="hidden" onchange="sendTp(<?= $tp['cours_ressource_id'] ?>, this.name);">
                            <?php } else { ?>
                                <i class="fa-solid fa-check-to-slot text-green upload-file"></i>
                            <?php }} ?>
                            <?php include("./imgs/homeworks.svg"); ?>
                        </span>
                        <div class="card-body">
                            <a target="_blank" href="<?= $tp['cours_ressource_lien'] ?>" class="text-black text-decoration-none">
                                <p class="card-title text-decoration-underline"><?= $tp['cours_ressource_titre'] ?></p>
                                <small><?= $tp['cours_ressource_resume'] ?></small>
                            </a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        <?php } ?>
    </div>
</div>

<div class="modal fade" id="modalAjouterRessource" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalAjouterRessourceTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAjouterRessourceTitle">Ajouter une ressource</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="../../src/c/requests.php" method="post" id="form_ressource_add" enctype="multipart/form-data">
                    <input type="hidden" name="form_ressource_cours_id" value="<?= $_GET['slide'] ?>">
                    <div class="mb-3">
                        <label for="form_ressource_titre" class="form-label">Titre de la ressource:</label>
                        <input type="text" class="form-control" name="form_ressource_titre" id="form_ressource_titre" placeholder="TP sur... / Exercice sur...">
                    </div>
                    <div class="mb-3">
                        <label for="form_ressource_synopsis" class="form-label">Synopsis de la ressource:</label>
                        <input type="text" class="form-control" name="form_ressource_synopsis" id="form_ressource_synopsis" placeholder="Cette ressource va vous permettre de pouvoir être évalués sur...">
                    </div>
                    <div class="mb-3">
                        <label for="form_ressource_lien" class="form-label">Lien de la ressource:</label>
                        <input type="text" class="form-control" name="form_ressource_lien" id="form_ressource_lien" placeholder="https://lien/vers/ma/ressource">
                    </div>
                    <div class="mb-3">
                        <label for="form_ressource_type" class="form-label">Type de ressource:</label>
                        <select name="form_ressource_type" id="form_ressource_type" class="form-control" onchange="majInputRessource();">
                            <option value="autre">Autre</option>
                            <option value="exercice">Exercice</option>
                            <option value="tp">TP</option>
                        </select>
                    </div>
                    <div class="mb-3" id="div_form_ressource_file">
                        <label for="form_ressource_file" class="form-label">Archive à joindre:</label>
                        <input type="file" name="form_ressource_file" id="form_ressource_file" class="form-control" accept=".gz,.tar,.zip,.rar">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Fermer</button>
                <button type="submit" class="btn btn-success" name="form_ressource_add" value="1" form="form_ressource_add">Ajouter</button>
            </div>
        </div>
    </div>
</div>

<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>