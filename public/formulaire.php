<?php
include_once '../src/m/connect.php';

$js = '';
$nom_formulaire = '';

if(isset($_GET['form']) && !empty($_GET['form'])) {
    switch ($_GET['form']) {
        case 'mon-compte':
            $req = $db->prepare("SELECT * FROM formateurs WHERE formateur_id=:formateur_id;");
            $req->bindValue(':formateur_id', filter_var($_SESSION['utilisateur']['formateur_id'], FILTER_VALIDATE_INT));
            $req->execute();
            $utilisateur = $req->fetch(PDO::FETCH_ASSOC);
            $req->closeCursor();
    
            $js = '<script src="js/index.js"></script>
            <script src="js/mon-compte.js"></script>';
    
            $sites = $db->query("SELECT * FROM sites ORDER BY site_libelle;")->fetchAll(PDO::FETCH_ASSOC);
            $secteurs = $db->query("SELECT * FROM secteurs ORDER BY secteur_nom;")->fetchAll(PDO::FETCH_ASSOC);
            $nom_formulaire = 'form_update_formateur';
            $label_btn = "Mettre à jour";
            $options_sites = "";
            foreach ($sites as $site) {
                $options_sites .= '<option value="' . $site['site_id'] . '" ' . ($utilisateur['id_site'] == $site['site_id'] ? " selected" : "") . '>' . $site['site_libelle'] . '</option>';
            }
            $options_secteurs = "";
            foreach ($secteurs as $secteur) {
                $options_secteurs .= '<option value="' . $secteur['secteur_id'] . '" ' . ($utilisateur['id_secteur'] == $secteur['secteur_id'] ? " selected" : "") . '>' . $secteur['secteur_nom'] . '</option>';
            }
    
            $title = "Mon compte";
            $card_title = "Mise à jour des informations";
            $card_content = '<form action="../src/c/c_requetes.php" method="post" id="' . $nom_formulaire . '">
                                <div class="' . (isset($_GET['type']) ? "" : "hidden") . (isset($_GET['type']) && $_GET['type'] == "info" ? "alert-info" : "alert-danger") . '">' . @$_GET['message'] . '</div>
                                <div>
                                    <div>
                                        <label for="form_update_formateur_nom">NOM:*</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_nom" value="' . $utilisateur['formateur_nom'] . '">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_prenom">Prénom:*</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_prenom" value="' . $utilisateur['formateur_prenom'] . '">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_mail">Mail (sans le nom de domaine):*</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_mail" value="' . $utilisateur['formateur_mail'] . '" disabled>
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_pass">Mot de passe:</label>
                                        <input type="password" autocomplete="new-password" name="form_update_formateur_pass">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_role">Rôle:*</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_role" value="' . $utilisateur['carte_formateur_role'] . '">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_liens">Liens:</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_liens" value="' . $utilisateur['carte_formateur_liens'] . '">
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <label for="form_update_formateur_telephone">Téléphone:*</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_telephone" value="' . $utilisateur['carte_formateur_tel'] . '">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_portable">Portable:</label>
                                        <input autocomplete="none" type="text" name="form_update_formateur_portable" value="' . $utilisateur['carte_formateur_portable'] . '">
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_site">Site:*</label>
                                        <select name="form_update_formateur_site">
                                            ' . $options_sites . '
                                        </select>
                                    </div>
                                    <div>
                                        <label for="form_update_formateur_secteur">Secteur:*</label>
                                        <select name="form_update_formateur_secteur">
                                            ' . $options_secteurs . '
                                        </select>
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <label for="form_update_formateur_signature">Signature:</label>
                                        <input type="hidden" name="form_update_formateur_signature">
                                        <canvas class="box-signature" id="signature-pad" width="400" height="200"></canvas>
                                        <span>
                                            <button id="approve-signature" type="button">Approuver</button>
                                            <button id="clear-signature" type="button">Effacer</button>
                                        </span>
                                    </div>
                                    <div>
                                        <label>Signature actuelle:</label>
                                        <img class="box-signature" src="../src/' . $utilisateur['formateur_signature'] . '" alt="Signature du formateur" width="250" height="125">
                                    </div>
                                </div>
                            </form>';
            break;
        case 'ajouter-referent';
            $sites = $db->query("SELECT * FROM sites ORDER BY site_libelle;")->fetchAll(PDO::FETCH_ASSOC);
            $secteurs = $db->query("SELECT * FROM secteurs ORDER BY secteur_nom;")->fetchAll(PDO::FETCH_ASSOC);
            $options_sites = "";
            foreach ($sites as $site) {
                $options_sites .= '<option value="' . $site['site_id'] . '">' . $site['site_libelle'] . '</option>';
            }
            $options_secteurs = "";
            foreach ($secteurs as $secteur) {
                $options_secteurs .= '<option value="' . $secteur['secteur_id'] . '">' . $secteur['secteur_nom'] . '</option>';
            }
    
            $nom_formulaire = 'form_add_formateur';
            $label_btn = "Ajouter";
            $title = "Ajouter un référent";
            $card_title = "Ajouter un référent";
            $card_content = '<form action="../src/c/c_requetes.php" method="post" id="' . $nom_formulaire . '">
                                <div class="' . (isset($_GET['type']) ? "" : "hidden") . (isset($_GET['type']) && $_GET['type'] == "info" ? "alert-info" : "alert-danger") . '">' . @$_GET['message'] . '</div>
                                <div>
                                    <div>
                                        <label for="form_add_formateur_nom">NOM:*</label>
                                        <input autocomplete="none" type="text" name="form_add_formateur_nom">
                                    </div>
                                    <div>
                                        <label for="form_add_formateur_prenom">Prénom:*</label>
                                        <input autocomplete="none" type="text" name="form_add_formateur_prenom">
                                    </div>
                                    <div>
                                        <label for="form_add_formateur_mail">Nom d\'utilisateur:*</label>
                                        <input autocomplete="none" type="text" name="form_add_formateur_mail">
                                    </div>
                                    <div>
                                        <label for="form_add_formateur_role">Rôle:*</label>
                                        <input autocomplete="none" type="text" name="form_add_formateur_role">
                                    </div>
                                    <div>
                                        <label for="form_add_formateur_telephone">Téléphone:*</label>
                                        <input autocomplete="none" type="text" name="form_add_formateur_telephone">
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <label for="form_add_formateur_site">Site:*</label>
                                        <select name="form_add_formateur_site">
                                            ' . $options_sites . '
                                        </select>
                                    </div>
                                    <div>
                                        <label for="form_add_formateur_secteur">Secteur:*</label>
                                        <select name="form_add_formateur_secteur">
                                            ' . $options_secteurs . '
                                        </select>
                                    </div>
                                </div>
                            </form>';
            break;
        case 'ajouter-stagiaire';
            $options_sessions = "";
            foreach (recupererSessions($_SESSION['utilisateur']['formateur_id']) as $session) {
                $options_sessions .= '<option value="' . $session['session_id'] . '">' . $session['session_nom'] . '</option>';
            }
            $options_stages = "";
            foreach (recupererStages($_SESSION['utilisateur']['formateur_id']) as $stage) {
                $options_stages .= '<option value="' . $stage['stage_id'] . '">[' . $stage['stage_nom_tuteur'] . " " . $stage['stage_prenom_tuteur'] . '] ' . $stage['stage_adresse_rue'] . " " . $stage['stage_adresse_cp'] . " - " . $stage['stage_adresse_ville'] . '</option>';
            }
    
            $nom_formulaire = 'form_add_stagiaire';
            $label_btn = "Ajouter";
            $title = "Ajouter un stagiaire";
            $card_title = "Ajouter un stagiaire";
            $card_content = '<form action="../src/c/c_requetes.php" method="post" id="' . $nom_formulaire . '">
                                    <div class="' . (isset($_GET['type']) ? "" : "hidden") . (isset($_GET['type']) && $_GET['type'] == "info" ? "alert-info" : "alert-danger") . '">' . @$_GET['message'] . '</div>
                                    <div>
                                        <div>
                                            <label for="form_add_stagiaire_nom">NOM:*</label>
                                            <input autocomplete="none" type="text" name="form_add_stagiaire_nom">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_prenom">Prénom:*</label>
                                            <input autocomplete="none" type="text" name="form_add_stagiaire_prenom">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_mail">Mail:*</label>
                                            <input autocomplete="none" type="text" name="form_add_stagiaire_mail">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_pseudo">Nom d\'utilisateur:*</label>
                                            <input autocomplete="none" type="text" name="form_add_stagiaire_pseudo">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_telephone">Téléphone:*</label>
                                            <input autocomplete="none" type="text" name="form_add_stagiaire_telephone">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_date_naissance">Date de naissance:*</label>
                                            <input autocomplete="none" type="date" name="form_add_stagiaire_date_naissance">
                                        </div>
                                        <div>
                                            <label for="form_add_stagiaire_session">Session:*</label>
                                            <select name="form_add_stagiaire_session">
                                                ' . $options_sessions . '
                                            </select>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <label for="form_add_stagiaire_stage">Stage:*</label>
                                            <select name="form_add_stagiaire_stage">
                                                <option value="0">Pas de stage</option>
                                                ' . $options_stages . '
                                            </select>
                                        </div>
                                    </div>
                                </form>';
            break;
        case 'ajouter-tuteur';
            $js = '<script src="js/formulaire-tuteur.js"></script>';
            
            $nom_formulaire = 'form_add_tuteur';
            $label_btn = "Ajouter";
            $title = "Ajouter un tuteur";
            $card_title = "Ajouter un tuteur";
            $card_content = '<form action="../src/c/c_requetes.php" method="post" id="' . $nom_formulaire . '">
                                    <div class="' . (isset($_GET['type']) ? "" : "hidden") . (isset($_GET['type']) && $_GET['type'] == "info" ? "alert-info" : "alert-danger") . '">' . @$_GET['message'] . '</div>
                                    <div>
                                        <div>
                                            <label for="form_add_tuteur_nom">NOM:*</label>
                                            <input autocomplete="none" type="text" name="form_add_tuteur_nom">
                                        </div>
                                        <div>
                                            <label for="form_add_tuteur_prenom">Prénom:*</label>
                                            <input autocomplete="none" type="text" name="form_add_tuteur_prenom">
                                        </div>
                                        <div>
                                            <label for="form_add_tuteur_mail">Mail:*</label>
                                            <input autocomplete="none" type="text" name="form_add_tuteur_mail">
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                            <label for="form_add_tuteur_address">Adresse:*</label>
                                            <input autocomplete="none" type="text" name="form_add_tuteur_address_search">
                                            <div id="address_suggestions">
                                            </div>
                                            <input type="hidden" name="form_add_tuteur_address">
                                        </div>
                                    </div>
                                </form>';
            break;
        case 'ajouter-document':
            $nom_formulaire = 'form_add_document';
            $title = 'Ajouter un template de document';
            $card_title = 'Ajouter un template de document';
            $label_btn = 'Ajouter';
            $card_content = '<form action="../src/c/c_requetes.php" method="post" id="' . $nom_formulaire . '" enctype="multipart/form-data">
                                <div class="' . (isset($_GET['type']) ? "" : "hidden") . (isset($_GET['type']) && $_GET['type'] == "info" ? "alert-info" : "alert-danger") . '">' . @$_GET['message'] . '</div>
                                <div>
                                    <div>
                                        <label for="form_add_document_nom">Nom du document:*</label>
                                        <input autocomplete="none" type="text" name="form_add_document_nom">
                                    </div>
                                    <div>
                                        <label for="form_add_document_fichier">Fichier:*</label>
                                        <input type="file" name="form_add_document_fichier">
                                    </div>
                                </div>
                            </form>';
            $js = '';

            break;
    }
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/formulaire.css">
    <title><?= $title ?> - ERP</title>
</head>

<body>
    <div class="container">
        <div class="sidenav">
            <?= file_get_contents('./sidenav.php') ?>
        </div>
        <div class="main">
            <div class="formulaire">
                <div class="contenu">
                    <div class="card-title">
                        <div>
                            <h2><?= $card_title ?></h2>
                            <input type="submit" value="<?= $label_btn ?>" name="<?= $nom_formulaire ?>" form="<?= $nom_formulaire ?>" class="btn btn-success">
                        </div>
                        <hr class="small-separator">
                    </div>
                    <div class="card-content">
                        <?= $card_content ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="//cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js"></script>
    <?= $js ?>
</body>

</html>