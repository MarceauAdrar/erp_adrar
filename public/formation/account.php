<?php
include_once("../../src/m/connect.php");

$title = " | Mon profil";
$form = "";

if (isset($_SESSION['utilisateur']['id_formateur']) && $_SESSION['utilisateur']['id_formateur'] > 0) {
    $sql = "SELECT nom_formateur, prenom_formateur, mail_formateur, carte_formateur_tel
            FROM formateurs 
            WHERE id_formateur=:id_formateur;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_formateur', $_SESSION['utilisateur']['id_formateur']);
    $req->execute();
    $formateur = $req->fetch(PDO::FETCH_ASSOC);
    $form = '
        <div class="container">
            <div class="row">
                <form action="//' . $_SERVER["SERVER_NAME"] . '/erp/src/c/requests.php" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="form_nom_formateur">NOM<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_nom_formateur" id="form_nom_formateur" placeholder="Nom utilisateur" value="' . $formateur['nom_formateur'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_prenom_formateur">Prénom<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_prenom_formateur" id="form_prenom_formateur" placeholder="Prénom d\'utilisateur" value="' . $formateur['prenom_formateur'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <label for="form_email_formateur">Email<span class="required">*</span></label>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="form_email_formateur" id="form_email_formateur" disabled placeholder="Prénom d\'utilisateur" value="' . explode('@adrar-', $formateur['mail_formateur'])[0] . '">
                                    <input type="text" class="form-control" disabled value="@' . explode('@', $formateur['mail_formateur'])[1] . '">
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_mdp_formateur">Mot de passe</label>
                                <input type="password" autocomplete="new-password" class="form-control" name="form_mdp_formateur" id="form_mdp_formateur" placeholder="Mot de passe utilisateur">
                            </div>
                        </div>
                    </div>
                    <div class="row pt-2">
                        <div class="col-12 text-end">
                            <input type="submit" class="btn btn-dark" name="form_update_trainer" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    ';
} elseif (isset($_SESSION['utilisateur']['id_stagiaire']) && $_SESSION['utilisateur']['id_stagiaire'] > 0) {
    $sql = "SELECT nom_stagiaire, prenom_stagiaire, mail_stagiaire, pseudo_stagiaire, tel_stagiaire, date_naissance_stagiaire  
            FROM stagiaires 
            WHERE id_stagiaire=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_stagiaire', $_SESSION['utilisateur']['id_stagiaire']);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);
    $form = '
        <div class="container">
            <div class="row">
                <form action="//' . $_SERVER["SERVER_NAME"] . '/erp/src/c/requests.php" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="form_nom_stagiaire">NOM<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_nom_stagiaire" id="form_nom_stagiaire" placeholder="Nom utilisateur" required value="' . $stagiaire['nom_stagiaire'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_prenom_stagiaire">Prénom<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_prenom_stagiaire" id="form_prenom_stagiaire" placeholder="Prénom d\'utilisateur" required value="' . $stagiaire['prenom_stagiaire'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_pseudo_stagiaire">Pseudo<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_pseudo_stagiaire" id="form_pseudo_stagiaire" placeholder="Pseudo unique d\'utilisateur" disabled required value="' . $stagiaire['pseudo_stagiaire'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_mdp_stagiaire">Mot de passe</label>
                                <input type="password" autocomplete="new-password" class="form-control" name="form_mdp_stagiaire" id="form_mdp_stagiaire" placeholder="Mot de passe de l\'utilisateur" value="">
                            </div>
                        </div>
                    </div>
                    <div class="row pt-2">
                        <div class="col-12 text-end">
                            <input type="submit" class="btn btn-dark" name="form_update_trainee" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    ';
}

ob_start();
include_once("./header.php");
echo $form;

include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
