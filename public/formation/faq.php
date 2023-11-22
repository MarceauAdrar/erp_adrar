<?php
include_once("../../src/m/connect.php");

$title = " | FAQ";

$sql = "SELECT faq_theme  
        FROM faqs 
        WHERE faq_visible IS TRUE ";
if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
    $sql .= " AND id_secteur=:id_secteur OR id_secteur IS NULL ";
}
$sql .= " GROUP BY faq_theme;";
$req = $db->prepare($sql);
if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
    $req->bindValue(":id_secteur", $_SESSION["utilisateur"]["id_secteur"]);
}
$req->execute();
$themes = $req->fetchAll(PDO::FETCH_COLUMN);

ob_start();
include_once("./header.php"); ?>

<div class="container-fluid">
    <div class="row p-5 bg-primary">
        <div class="col-12">
            <h1 class="text-white">Foire aux Questions</h1>
        </div>
    </div>
</div>
<div class="container pt-5">
    <?php if (!empty($themes)) { ?>
        <div class="row">
            <div class="col-3 position-fixed">
                <div>
                    <a href="#<?= str_replace(" ", "-", "global") ?>">Global</a>
                </div>
                <?php foreach ($themes as $theme) if ($theme !== "global") { ?>
                    <div>
                        <a href="#<?= str_replace(" ", "-", $theme) ?>"><?= ucfirst($theme) ?></a>
                    </div>
                <?php } ?>
            </div>
        </div>
        <div class="row">
            <div class="col-7 offset-5">
                <?php
                $sql = "SELECT faq_theme, faq_title, faq_content 
                            FROM faqs 
                            WHERE faq_visible IS TRUE 
                            AND faq_theme = 'global' ";
                if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
                    $sql .= " AND (id_secteur=:id_secteur OR id_secteur IS NULL) ";
                }
                $sql .= " ORDER BY id_secteur, faq_title;";
                $req = $db->prepare($sql);
                if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
                    $req->bindValue(":id_secteur", $_SESSION["utilisateur"]["id_secteur"]);
                }
                $req->execute();
                $faqs = $req->fetchAll(PDO::FETCH_ASSOC); ?>
                <h2 id="<?= str_replace(" ", "-", $theme) ?>" class="text-primary"><?= ucfirst($theme) ?></h2>
                <?php if (!empty($faqs)) {
                    foreach ($faqs as $faq) { ?>
                        <div class="ms-5">
                            <h3 id="<?= str_replace(" ", "-", $theme) ?>"><?= $faq['faq_title'] ?></h3>
                            <p><?= html_entity_decode($faq['faq_content']) ?></p>
                        </div>
                <?php }
                } ?>
                <?php foreach ($themes as $theme) if ($theme !== "global") {
                    $sql = "SELECT faq_theme, faq_title, faq_content 
                            FROM faqs 
                            WHERE faq_visible IS TRUE 
                            AND faq_theme = '" . $theme . "' ";
                    if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
                        $sql .= " AND (id_secteur=:id_secteur OR id_secteur IS NULL) ";
                    }
                    $sql .= " ORDER BY id_secteur, faq_title;";
                    $req = $db->prepare($sql);
                    if ($_SESSION["utilisateur"]["id_secteur"] > 0) {
                        $req->bindValue(":id_secteur", $_SESSION["utilisateur"]["id_secteur"]);
                    }
                    $req->execute();
                    $faqs = $req->fetchAll(PDO::FETCH_ASSOC); ?>
                    <h2 id="<?= str_replace(" ", "-", $theme) ?>" class="text-primary"><?= ucfirst($theme) ?></h2>
                    <?php if (!empty($faqs)) {
                        foreach ($faqs as $faq) { ?>
                            <div class="ms-5">
                                <h3 id="<?= str_replace(" ", "-", $theme) ?>"><?= $faq['faq_title'] ?></h3>
                                <p><?= html_entity_decode($faq['faq_content']) ?></p>
                            </div>
                <?php }
                    }
                } ?>
            </div>
        </div>
    <?php } else { ?>
        <h2>Retrouvez la réponse à vos questions les plus génériques ici bientôt !</h2>
        <?=include_once("./error404.php") ?>
    <?php } ?>
</div>
<?php
include_once("./footer.php");
die(ob_get_clean());
?>