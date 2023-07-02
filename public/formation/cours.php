<?php
include_once("../../src/m/connect.php");

$title = " | Cours";
ob_start();
include_once("./header.php");
?>
<div class="container">
    <div class="row pt-5 cours">
        <?php
        $sql_select_cours = "SELECT cours_id, cours_title, cours_synopsis, cours_link, cours_illustration 
                            FROM cours c ";
        if (isset($_SESSION["utilisateur"]["id_session"]) && !empty($_SESSION["utilisateur"]["id_session"])) {
            $sql_select_cours .= " INNER JOIN cours_sessions cs ON (c.cours_id = cs.id_cours AND cs.id_session=:id_session) ";
        } else {
            $sql_select_cours .= " INNER JOIN cours_sessions cs ON c.cours_id = cs.id_cours ";
        }
        $sql_select_cours .= "
                            WHERE cours_session_active = 1
                            AND cours_category=:cours_category ";
        if (!isset($_SESSION["utilisateur"]["id_session"]) || empty($_SESSION["utilisateur"]["id_session"])) {
            $sql_select_cours .= " GROUP BY cours_id ";
        }
        $sql_select_cours .= " ORDER BY cours_title;";
        $req_select_cours = $db->prepare($sql_select_cours);
        $req_select_cours->bindParam(":cours_category", $_GET["cours"]);
        if (isset($_SESSION["utilisateur"]["id_session"]) && !empty($_SESSION["utilisateur"]["id_session"])) {
            $req_select_cours->bindParam(":id_session", $_SESSION["utilisateur"]["id_session"]);
        }
        $req_select_cours->execute();
        $cours = $req_select_cours->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($cours)) { ?>
            <h3>Les cours</h3>
            <?php
            foreach ($cours as $cours) { ?>
                <div class="col-3 mb-3">
                    <a href="embed.php?slide=<?= $cours['cours_link'] ?>" class="text-decoration-none text-black">
                        <div class="card">
                            <span class="card-img-top" alt="Illustration HTML/CSS/JS">
                                <?php include("./imgs/" . $cours["cours_illustration"]); ?>
                            </span>
                            <div class="card-body">
                                <h5 class="card-title text-decoration-underline"><?= $cours["cours_title"] ?></h5>
                                <p class="card-text"><?= $cours["cours_synopsis"] ?></p>
                            </div>
                        </div>
                    </a>
                </div>
            <?php }
        } else { ?>
            <div class="col-3 offset-4 mt-5 text-center">
                <?php include_once("./imgs/no_data.svg") ?>
                <h3 class="mt-3">Aucun cours trouvé...</h3>
            </div>
        <?php } ?>

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