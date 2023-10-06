<?php
include_once("../../src/m/connect.php");

$title = " | Mon profil";

ob_start();
include_once("./header.php");

if ($_SERVER['REMOTE_ADDR'] === "78.242.21.100") { ?>
    <div class="container">
        <div class="row">
            <div class="col-12 mt-2 mb-2">
                <a role="button" class="btn btn-info text-white"><i class="fa-solid fa-floppy-disk fa-2x"></i></a>
            </div>
        </div>
        <div class="row">
            <form action="" enctype="multipart/form-data">
                <div class="row">
                    <div class="col">
                        <img src="" alt="Image de l'utilisateur">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="form_badge_user">Badges</label>
                        <img src="+" alt="Image de l'utilisateur" name="form_badge_user" id="form_badge_user">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="form_nom_user">NOM</label>
                            <input type="text" class="form-control" name="form_nom_user" id="form_nom_user" placeholder="Nom utilisateur" value="">
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="form_prenom_user">Prénom</label>
                            <input type="text" class="form-control" name="form_prenom_user" id="form_prenom_user" placeholder="Prénom d'utilisateur" value="">
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="form_tel_user">Téléphone</label>
                            <input type="tel" class="form-control" name="form_tel_user" id="form_tel_user" placeholder="0612345678" value="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="form_pseudo_user">Pseudo</label>
                            <input type="text" class="form-control" name="form_pseudo_user" id="form_pseudo_user" placeholder="Pseudo unique d'utilisateur" value="" disabled>
                        </div>
                        <div class="form-group">
                            <label for="form_email_user">Email</label>
                            <input type="email" class="form-control" name="form_email_user" id="form_email_user" placeholder="stagiaire@adrar.com" value="">
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
    include_once("./error404.php");
}
// if ($_SESSION["utilisateur"]["id_stagiaire"] > 0)
// if ($_SESSION["utilisateur"]["id_formateur"] > 0)

include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>