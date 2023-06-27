<?php

include_once __DIR__ . '/../src/m/connect.php';


?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/b478fcca05.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/_reset.css">
    <link rel="stylesheet" href="css/_style.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/mon_compte.css">
    <title>Mon compte - ERP</title>
</head>

<body>
    <div class="container">
        <div class="sidenav">
            <aside>
                <div>
                    <img src="./img/logo_adrar.png" alt="Logo de l'ADRAR" style="width: 3em;">
                    &nbsp;<h1>erp adrar</h1>
                </div>
                <div>
                    <hr class="separator">
                    <nav>
                        <ul>
                            <li><a href="./"><i class="fa-solid fa-house fa-sm">&nbsp;</i><span>Accueil</span></a></li>
                            <li><a href="#" id="nav-administration"><i class="fa-solid fa-hammer fa-sm">&nbsp;</i><span>Administration</span></a></li>
                            <li><a href="#" id="nav-formation"><i class="fa-solid fa-book fa-sm">&nbsp;</i><span>Formation</span></a></li>
                            <li><a href="#" id="nav-stages"><i class="fa-solid fa-industry fa-sm">&nbsp;</i><span>Stages</span></a></li>
                            <li><a href="#" id="nav-titres"><i class="fa-solid fa-certificate fa-sm">&nbsp;</i><span>Titres</span></a></li>
                            <li><a href="#" id="nav-personal-folder"><i class="fa-solid fa-folder-open fa-sm">&nbsp;</i><span>Documents remis</span></a></li>
                        </ul>
                    </nav>
                </div>
                <div>
                    <hr class="separator">
                    <h2 class="d-block">Pages de comptes</h2>
                    <nav>
                        <ul>
                            <li><a href="./mon-compte.php"><i class="fa-solid fa-user fa-sm">&nbsp;</i><span>Mon compte</span></a></li>
                            <li><a href="./deconnexion.php"><i class="fa-solid fa-arrow-right-from-bracket fa-sm">&nbsp;</i><span>Me déconnecter</span></a></li>
                        </ul>
                    </nav>
                </div>
                <div>
                    <small>&copy; ADRAR - Fait par Marceau RODRIGUES</small>
                </div>
            </aside>

        </div>
        <div class="main">
            <div class="formulaire">
                <div class="contenu">
                    <div class="card-title">
                        <div>
                            <h2>Mise à jour des informations</h2>
                            <input type="submit" value="Mettre à jour" form="form_update_formateur" class="btn btn-success">
                        </div>
                        <hr class="small-separator">
                    </div>
                    <div class="card-content">
                        <form action="../src/c/c_requetes.php" method="post" id="form_update_formateur">
                            <div>
                                <div>
                                    <label for="form_update_formateur_nom">NOM:</label>
                                    <input type="text" name="form_update_formateur_nom">
                                </div>
                                <div>
                                    <label for="form_update_formateur_prenom">Prénom:</label>
                                    <input type="text" name="form_update_formateur_prenom">
                                </div>
                                <div>
                                    <label for="form_update_formateur_mail">Mail (sans le nom de domaine):</label>
                                    <input type="text" name="form_update_formateur_mail">
                                </div>
                                <div>
                                    <label for="form_update_formateur_role">Rôle:</label>
                                    <input type="text" name="form_update_formateur_role">
                                </div>
                                <div>
                                    <label for="form_update_formateur_liens">Liens:</label>
                                    <input type="text" name="form_update_formateur_liens">
                                </div>
                            </div>
                            <div>
                                <div>
                                    <label for="form_update_formateur_telephone">Téléphone:</label>
                                    <input type="text" name="form_update_formateur_telephone">
                                </div>
                                <div>
                                    <label for="form_update_formateur_portable">Portable:</label>
                                    <input type="text" name="form_update_formateur_portable">
                                </div>
                                <div>
                                    <label for="form_update_formateur_site">Site:</label>
                                    <select name="form_update_formateur_site"></select>
                                </div>
                                <div>
                                    <label for="form_update_formateur_secteur">Secteur:</label>
                                    <select name="form_update_formateur_secteur"></select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>