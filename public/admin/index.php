<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration des CRUD</title>
    <link rel="stylesheet" href="css/_style.css?v=<?= uniqid() ?>">
    <link rel="stylesheet" href="css/admin.css?v=<?= uniqid() ?>">
</head>
<body>
    <fieldset>
        <legend>Formateurs</legend>
        <form action="../src/c/c_requetes.php" method="post">
            <input type="hidden" name="form_formateurs_ajout" value="1">
            <input type="text" placeholder="NOM" name="form_formateurs_ajout_nom">
            <input type="text" placeholder="Prénom" name="form_formateurs_ajout_prenom">
            <input type="text" placeholder="Mail" name="form_formateurs_ajout_mail">
            <input type="text" placeholder="Signature" name="form_formateurs_ajout_signature">
            <input type="text" placeholder="Rôle" name="form_formateurs_ajout_role">
            <input type="text" placeholder="Liens (à séparer par avec ;)" name="form_formateurs_ajout_liens">
            <input type="text" placeholder="Téléphone" name="form_formateurs_ajout_telephone">
            <input type="text" placeholder="Portable" name="form_formateurs_ajout_portable">
            <input type="text" placeholder="Adresse" name="form_formateurs_ajout_adresse">
            <select name="form_formateurs_ajout_secteur"></select>
            <select name="form_formateurs_ajout_site"></select>
            <input type="submit" value="Ajouter">
        </form>
        <table>
            <thead>
                <tr>
                    <th>NOM</th>
                    <th>Prénom</th>
                    <th>Mail</th>
                    <th>Signature</th>
                    <th>Secteur</th>
                    <th>Rôle</th>
                    <th>Liens</th>
                    <th>Téléphone</th>
                    <th>Portable</th>
                    <th>Adresse</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_formateurs">
            </tbody>
        </table>
    </fieldset>
    <fieldset>
        <legend>Stagiaires</legend>
        <form action="../src/c/c_requetes.php" method="post">
            <input type="hidden" name="form_stagiaires_ajout" value="1">
            <input type="submit" value="Ajouter">
        </form>
        <table>
            <thead>
                <tr>
                    <th>NOM</th>
                    <th>Prénom</th>
                    <th>DOB</th>
                    <th>Lien serveur</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_stagiaires">
            </tbody>
        </table>
    </fieldset>
    <fieldset>
        <legend>Stages</legend>
        <form action="../src/c/c_requetes.php" method="post">
            <input type="hidden" name="form_stages_ajout" value="1">
            <input type="submit" value="Ajouter">
        </form>
        <table>
            <thead>
                <tr>
                    <th>NOM</th>
                    <th>Prénom</th>
                    <th>Adresse</th>
                    <th>E-mail</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_stages">
            </tbody>
        </table>
    </fieldset>
    <fieldset>
        <legend>Sessions</legend>
        <form action="../src/c/c_requetes.php" method="post">
            <input type="hidden" name="form_sessions_ajout" value="1">
            <input type="submit" value="Ajouter">
        </form>
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Durée (en h)</th>
                    <th>Sigle</th>
                    <th>Date de début</th>
                    <th>Date de fin</th>
                    <th>Période stage début</th>
                    <th>Période stage fin</th>
                    <th>Formateur associé</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_sessions">
            </tbody>
        </table>
    </fieldset>
    <fieldset>
        <legend>Secteurs</legend>
        <form action="../src/c/c_requetes.php" method="post">
            <input type="hidden" name="form_secteurs_ajout" value="1">
            <input type="text" placeholder="Nom" name="form_secteurs_ajout_nom">
            <input type="file" title="Image du secteur" name="form_secteurs_ajout_image">
            <input type="submit" value="Ajouter">
        </form>
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_secteurs">
            </tbody>
        </table>
    </fieldset>
    <script src="//cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js"></script>
    <script src="js/admin.js?v=<?= uniqid() ?>"></script>
</body>
</html>