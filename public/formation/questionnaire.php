<?php
include_once("../../src/m/connect.php");

$title = " | Questionnaire satisfaction";

$sql = "SELECT id_stagiaire FROM stagiaires_questionnaires WHERE id_stagiaire=:id_stagiaire;";
$req = $db->prepare($sql);
$req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['stagiaire_id'], FILTER_VALIDATE_INT));
$req->execute();
$questionnaire_stagiaire = $req->rowCount();

$sql = "SELECT questionnaire_id, questionnaire_question FROM questionnaires ORDER BY questionnaire_question;";
$req = $db->prepare($sql);
$req->execute();
$questions = $req->fetchAll(PDO::FETCH_ASSOC);

if (isset($_SESSION['utilisateur']['stagiaire_id']) && $_SESSION['utilisateur']['stagiaire_id'] > 0 && empty($questionnaire_stagiaire)) {
    if (
        isset($_POST['satisfaction_0']) && !empty($_POST['satisfaction_0']) &&
        isset($_POST['satisfaction_1']) && !empty($_POST['satisfaction_1']) &&
        isset($_POST['satisfaction_2']) && !empty($_POST['satisfaction_2']) &&
        isset($_POST['satisfaction_3']) && !empty($_POST['satisfaction_3'])
    ) {
        $sql = "INSERT INTO stagiaires_questionnaires(id_questionnaire, id_stagiaire, stagiaire_questionnaire_note, stagiaire_questionnaire_reponse) 
                VALUES
                    (:id_questionnaire_1, :id_stagiaire, :stagiaire_questionnaire_note_1, :stagiaire_questionnaire_reponse_1), 
                    (:id_questionnaire_2, :id_stagiaire, :stagiaire_questionnaire_note_2, :stagiaire_questionnaire_reponse_2), 
                    (:id_questionnaire_3, :id_stagiaire, :stagiaire_questionnaire_note_3, :stagiaire_questionnaire_reponse_3), 
                    (:id_questionnaire_4, :id_stagiaire, :stagiaire_questionnaire_note_4, :stagiaire_questionnaire_reponse_4);";
        $req = $db->prepare($sql);
        $req->bindValue(":id_questionnaire_1", filter_var($_POST['questionnaire_id_0'], FILTER_VALIDATE_INT));
        $req->bindValue(":id_questionnaire_2", filter_var($_POST['questionnaire_id_1'], FILTER_VALIDATE_INT));
        $req->bindValue(":id_questionnaire_3", filter_var($_POST['questionnaire_id_2'], FILTER_VALIDATE_INT));
        $req->bindValue(":id_questionnaire_4", filter_var($_POST['questionnaire_id_3'], FILTER_VALIDATE_INT));
        $req->bindValue(":id_stagiaire", filter_var($_SESSION['utilisateur']['stagiaire_id'], FILTER_VALIDATE_INT));
        $req->bindValue(":stagiaire_questionnaire_note_1", filter_var($_POST['satisfaction_0'], FILTER_VALIDATE_INT));
        $req->bindValue(":stagiaire_questionnaire_note_2", filter_var($_POST['satisfaction_1'], FILTER_VALIDATE_INT));
        $req->bindValue(":stagiaire_questionnaire_note_3", filter_var($_POST['satisfaction_2'], FILTER_VALIDATE_INT));
        $req->bindValue(":stagiaire_questionnaire_note_4", filter_var($_POST['satisfaction_3'], FILTER_VALIDATE_INT));
        $req->bindValue(":stagiaire_questionnaire_reponse_1", filter_var($_POST['commentaires_0'], FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":stagiaire_questionnaire_reponse_2", filter_var($_POST['commentaires_1'], FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":stagiaire_questionnaire_reponse_3", filter_var($_POST['commentaires_2'], FILTER_SANITIZE_SPECIAL_CHARS));
        $req->bindValue(":stagiaire_questionnaire_reponse_4", filter_var($_POST['commentaires_3'], FILTER_SANITIZE_SPECIAL_CHARS));
        if ($req->execute()) {
            header("Location: /erp/public/formation/account.php");
        } else {
            header("Location: /erp/public/formation/");
        }
    }
} elseif (isset($_SESSION['utilisateur']['stagiaire_id']) && $_SESSION['utilisateur']['stagiaire_id'] > 0 && !empty($questionnaire_stagiaire)) {
    header("Location: /erp/public/formation/account.php");
} else {
    header("Location: /erp/public/formation/");
}

ob_start();
include_once("./header.php"); ?>
<style>
    .form-check-input:checked~img {
        border: 1px solid beige;
        border-radius: 20px;
        background-color: #d9d9d9;
    }
</style>
<div class="container">
    <div class="row">
        <h1>Questionnaire satisfaction</h1>
        <p>Merci de prendre quelques minutes pour nous donner votre avis.<br><small>Les champs marqués par (<span class="required">*</span>) sont obligatoires.</small></p>
        <form action="#" class="mb-3" method="POST">
            <?php foreach ($questions as $key => $question) { ?>
                <input type="hidden" name="questionnaire_id_<?= $key ?>" value="<?= $question['questionnaire_id'] ?>">
                <div class="col-12">
                    <p><?= $question['questionnaire_question'] ?><span class="required">*</span></p>
                    <div class="emojis">
                        <label class="form-check-label" for="tres_satisfait_<?= $question['questionnaire_id'] ?>">
                            <input type="radio" class="form-check-input hidden" id="tres_satisfait_<?= $question['questionnaire_id'] ?>" name="satisfaction_<?= $key ?>" value="5" <?= (!empty($questionnaire_stagiaire) ? "disabled" : "") ?>>
                            <img src="./imgs/tres_satisfait.png" alt="Très satisfait">
                        </label>
                        <label class="form-check-label" for="satisfait_<?= $question['questionnaire_id'] ?>">
                            <input type="radio" class="form-check-input hidden" id="satisfait_<?= $question['questionnaire_id'] ?>" name="satisfaction_<?= $key ?>" value="4" <?= (!empty($questionnaire_stagiaire) ? "disabled" : "") ?>>
                            <img src="./imgs/satisfait.png" alt="Satisfait">
                        </label>
                        <label class="form-check-label" for="neutre_<?= $question['questionnaire_id'] ?>">
                            <input type="radio" class="form-check-input hidden" id="neutre_<?= $question['questionnaire_id'] ?>" name="satisfaction_<?= $key ?>" value="3" <?= (!empty($questionnaire_stagiaire) ? "disabled" : "") ?>>
                            <img src="./imgs/neutre.png" alt="Neutre">
                        </label>
                        <label class="form-check-label" for="insatisfait_<?= $question['questionnaire_id'] ?>">
                            <input type="radio" class="form-check-input hidden" id="insatisfait_<?= $question['questionnaire_id'] ?>" name="satisfaction_<?= $key ?>" value="2" <?= (!empty($questionnaire_stagiaire) ? "disabled" : "") ?>>
                            <img src="./imgs/insatisfait.png" alt="Insatisfait">
                        </label>
                        <label class="form-check-label" for="tres_insatisfait_<?= $question['questionnaire_id'] ?>">
                            <input type="radio" class="form-check-input hidden" id="tres_insatisfait_<?= $question['questionnaire_id'] ?>" name="satisfaction_<?= $key ?>" value="1" <?= (!empty($questionnaire_stagiaire) ? "disabled" : "") ?>>
                            <img src="./imgs/tres_insatisfait.png" alt="Très insatisfait">
                        </label>
                    </div>
                    <div>
                        <label for="commentaires_<?= $question['questionnaire_id'] ?>">Commentaires</label>
                        <textarea id="commentaires_<?= $question['questionnaire_id'] ?>" name="commentaires_<?= $key ?>" rows="5" cols="50" class="form-control"></textarea>
                    </div>
                </div>
            <?php } ?>
            <br>
            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>
    </div>
</div>
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>