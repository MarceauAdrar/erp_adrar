<?php
include_once("../../src/m/connect.php");

$title = " | Mon profil";
$form = "";



if (isset($_SESSION['utilisateur']['formateur_id']) && $_SESSION['utilisateur']['formateur_id'] > 0) {
    $sql = "SELECT formateur_nom, formateur_prenom, formateur_mail, carte_formateur_tel, avatar_id, avatar_nom, avatar_lien
            FROM formateurs 
            JOIN avatars ON (avatar_id = id_avatar)
            WHERE formateur_id=:id_formateur;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_formateur', $_SESSION['utilisateur']['formateur_id']);
    $req->execute();
    $formateur = $req->fetch(PDO::FETCH_ASSOC);
    $sql = "SELECT avatar_id, avatar_nom, avatar_lien
            FROM avatars 
            ORDER BY avatar_nom;";
    $req = $db->prepare($sql);
    $req->execute();
    $avatars = "";
    foreach ($req->fetchAll(PDO::FETCH_ASSOC) as $avatar) {
        $avatars .= '<img onclick="changerAvatar(this);"  data-id="' . $avatar['avatar_id'] . '" class="img-fluid rounded me-2 mb-5 img-preview' . ($avatar['avatar_id'] == $formateur['avatar_id'] ? ' img-selected' : '') . '" src="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/imgs/avatars/' . $avatar['avatar_lien'] . '" alt="Avatar de type ' . $avatar['avatar_nom'] . '" >';
    }
    $form = '
        <div class="container">
            <div class="row">
                <form action="//' . $_SERVER["SERVER_NAME"] . '/erp/src/c/requests.php" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col-12 text-center">
                            <input type="hidden" name="form_avatar_formateur" value="' . $formateur['avatar_id'] . '">
                            <img class="img-fluid rounded m-5 img-profile" src="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/imgs/avatars/' . $formateur['avatar_lien'] . '" alt="Avatar de type ' . $formateur['avatar_nom'] . '" >
                        </div>
                        <div class="col-12 text-center">
                        ' . $avatars . '
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="form_nom_formateur">NOM<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_nom_formateur" id="form_nom_formateur" placeholder="Nom utilisateur" value="' . $formateur['formateur_nom'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_prenom_formateur">Prénom<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_prenom_formateur" id="form_prenom_formateur" placeholder="Prénom d\'utilisateur" value="' . $formateur['formateur_prenom'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <label for="form_email_formateur">Email<span class="required">*</span></label>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="form_email_formateur" id="form_email_formateur" disabled placeholder="Prénom d\'utilisateur" value="' . explode('@adrar-', $formateur['formateur_mail'])[0] . '">
                                    <input type="text" class="form-control" disabled value="@' . explode('@', $formateur['formateur_mail'])[1] . '">
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
                            <input type="submit" class="btn btn-dark" name="form_update_trainer" >
                        </div>
                    </div>
                </form>
            </div>
        </div>
    ';
} elseif (isset($_SESSION['utilisateur']['stagiaire_id']) && $_SESSION['utilisateur']['stagiaire_id'] > 0) {
    $sql = "SELECT stagiaire_nom, stagiaire_prenom, stagiaire_mail, stagiaire_pseudo, stagiaire_tel, stagiaire_date_naissance, avatar_id, avatar_nom, avatar_lien 
            FROM stagiaires 
            JOIN avatars ON (avatar_id = id_avatar)
            WHERE stagiaire_id=:id_stagiaire;";
    $req = $db->prepare($sql);
    $req->bindValue(':id_stagiaire', $_SESSION['utilisateur']['stagiaire_id']);
    $req->execute();
    $stagiaire = $req->fetch(PDO::FETCH_ASSOC);
    $sql = "SELECT avatar_id, avatar_nom, avatar_lien
            FROM avatars 
            ORDER BY avatar_nom;";
    $req = $db->prepare($sql);
    $req->execute();
    $avatars = "";
    foreach ($req->fetchAll(PDO::FETCH_ASSOC) as $avatar) {
        $avatars .= '<img onclick="changerAvatar(this);"  data-id="' . $avatar['avatar_id'] . '" class="img-fluid rounded me-2 mb-5 img-preview' . ($avatar['avatar_id'] == $stagiaire['avatar_id'] ? ' img-selected' : '') . '" src="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/imgs/avatars/' . $avatar['avatar_lien'] . '" alt="Avatar de type ' . $avatar['avatar_nom'] . '" >';
    }
    $form = '
        <div class="container">
            <div class="row">
                <form action="//' . $_SERVER["SERVER_NAME"] . '/erp/src/c/requests.php" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col-12 text-center">
                            <input type="hidden" name="form_avatar_stagiaire" value="' . $stagiaire['avatar_id'] . '">
                            <img class="img-fluid rounded m-5 img-profile" src="//' . $_SERVER["SERVER_NAME"] . '/erp/public/formation/imgs/avatars/' . $stagiaire['avatar_lien'] . '" alt="Avatar de type ' . $stagiaire['avatar_nom'] . '" >
                        </div>
                        <div class="col-12 text-center">
                        ' . $avatars . '
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="form_nom_stagiaire">NOM<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_nom_stagiaire" id="form_nom_stagiaire" placeholder="Nom utilisateur" required value="' . $stagiaire['stagiaire_nom'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_prenom_stagiaire">Prénom<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_prenom_stagiaire" id="form_prenom_stagiaire" placeholder="Prénom d\'utilisateur" required value="' . $stagiaire['stagiaire_prenom'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_pseudo_stagiaire">Pseudo<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_pseudo_stagiaire" id="form_pseudo_stagiaire" placeholder="Pseudo unique d\'utilisateur" disabled required value="' . $stagiaire['stagiaire_pseudo'] . '">
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="form_mail_stagiaire">Mail<span class="required">*</span></label>
                                <input type="text" class="form-control" name="form_mail_stagiaire" id="form_mail_stagiaire" placeholder="Mail unique d\'utilisateur" required value="' . $stagiaire['stagiaire_mail'] . '">
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
                            <input type="submit" class="btn btn-dark" name="form_update_trainee" >
                        </div>
                    </div>
                </form>
            </div>
        </div>
    ';
}

ob_start();
include_once("./header.php");
echo $form; ?>
<script>
    function changerAvatar(img) {
        var avatars = document.querySelectorAll('.img-preview');
        avatars.forEach(avatar => {
            avatar.classList.remove('img-selected');
        });
        document.querySelector('.img-profile').src = img.src;
        if (document.querySelector('input[name="form_avatar_formateur"]')) {
            document.querySelector('input[name="form_avatar_formateur"]').value = img.dataset.id;
        } else {
            document.querySelector('input[name="form_avatar_stagiaire"]').value = img.dataset.id;
        }
        img.classList.add('img-selected');
    }
</script>
<?php include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
