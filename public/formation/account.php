<?php
include_once("../../src/m/connect.php");

$title = " | Mon profil";

if (isset($_SESSION['utilisateur']['id_formateur']) && $_SESSION['utilisateur']['id_formateur'] > 0) {
    $sql = "SELECT nom_formateur AS nom_utilisateur, prenom_formateur AS prenom_utilisateur, mail_formateur AS mail_utilisateur, mail_formateur AS pseudo_utilisateur, carte_formateur_tel AS tel_utilisateur
            FROM formateurs 
            WHERE id_formateur=:id_formateur;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_formateur', $_SESSION['utilisateur']['id_formateur']);
    $req->execute();
    $utilisateur = $req->fetch(PDO::FETCH_ASSOC);
} elseif (isset($_SESSION['utilisateur']['id_stagiaire']) && $_SESSION['utilisateur']['id_stagiaire'] > 0) {
    $sql = "SELECT nom_stagiaire AS nom_utilisateur, prenom_stagiaire AS prenom_utilisateur, mail_stagiaire AS mail_utilisateur, pseudo_stagiaire AS pseudo_utilisateur, tel_stagiaire AS tel_utilisateur, date_naissance_stagiaire  
            FROM stagiaires 
            WHERE id_stagiaire=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_stagiaire', $_SESSION['utilisateur']['id_stagiaire']);
    $req->execute();
    $utilisateur = $req->fetch(PDO::FETCH_ASSOC);
}

ob_start();
include_once("./header.php");
// TODO
if ($_SERVER['REMOTE_ADDR'] === "88.169.229.35") { ?>
    <div class="container">
        <div class="row">
            <div class="col-12 mt-2 mb-2">
                <a role="button" class="btn btn-info text-white"><i class="fa-solid fa-floppy-disk fa-2x"></i></a>
            </div>
        </div>
        <div class="row">
            <form action="//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/request.php" enctype="multipart/form-data">
                <input type="hidden" name="">
                <?php if (false) { ?>
                    <div class="row">
                        <div class="col text-center">
                            <img src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/default_user.gif" alt="Image de l'utilisateur" style="width: 10vw; height: 10vw;">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <b>Badges:</b>
                            <div class="row">
                                <div class="col-1">
                                    <img class="badges" src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/badge.png" alt="Badge 1 de l'utilisateur">
                                </div>
                                <div class="col-1">
                                    <img class="badges" src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/badge.png" alt="Badge 2 de l'utilisateur">
                                </div>
                                <div class="col-1">
                                    <img class="badges" src="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/imgs/badge.png" alt="Badge 3 de l'utilisateur">
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="form_nom_user">NOM</label>
                            <input type="text" class="form-control" name="form_nom_user" id="form_nom_user" placeholder="Nom utilisateur" value="<?= $utilisateur['nom_utilisateur'] ?>">
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="form_prenom_user">Prénom</label>
                            <input type="text" class="form-control" name="form_prenom_user" id="form_prenom_user" placeholder="Prénom d'utilisateur" value="<?= $utilisateur['prenom_utilisateur'] ?>">
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="form_tel_user">Téléphone</label>
                            <input type="tel" class="form-control" name="form_tel_user" id="form_tel_user" placeholder="0612345678" value="<?= strrev(trim(chunk_split(strrev($utilisateur['tel_utilisateur']), 2, ' '))) ?>">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="form_pseudo_user">Pseudo</label>
                            <input type="text" class="form-control" name="form_pseudo_user" id="form_pseudo_user" placeholder="Pseudo unique d'utilisateur" value="<?= preg_replace(array('/@adrar-formation.com/', '/@adrar-numerique.com/'), '', $utilisateur['pseudo_utilisateur']) ?>" disabled>
                        </div>
                        <div class="form-group">
                            <label for="form_email_user">Email</label>
                            <input type="email" class="form-control" name="form_email_user" id="form_email_user" placeholder="mail@domain.ext" value="<?= $utilisateur['mail_utilisateur'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="form_pseudo_user">Pseudo</label>
                            <input type="text" class="form-control" name="form_pseudo_user" id="form_pseudo_user" placeholder="Pseudo unique d'utilisateur" value="">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php } else {
    header('HTTP/1.1 404 Not Found');
    include_once("./error404.php");
}

include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>