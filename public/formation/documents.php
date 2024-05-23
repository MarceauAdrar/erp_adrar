<?php

include_once __DIR__ . '/../../src/m/connect.php';

$sql = "SELECT stagiaire_id, stagiaire_nom, stagiaire_prenom, stagiaire_documents, session_stage
        FROM stagiaires 
        INNER JOIN sessions ON (session_id = id_session) 
        WHERE stagiaire_id=:id_stagiaire;";
$req = $db->prepare($sql);
$id_stagiaire = (isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["stagiaire_id"] !== -1 ? $_SESSION["utilisateur"]["stagiaire_id"] : @$_GET['id_stagiaire']);
$req->bindParam(":id_stagiaire", $id_stagiaire);
$req->execute();
$stagiaire = $req->fetch(PDO::FETCH_ASSOC);

$documents = json_decode($stagiaire['stagiaire_documents'], true);
$stages = json_decode($stagiaire['session_stage'], true);

$title = " | Documents du stagiaire";
include_once('./header.php'); ?>
<h1 class="text-center mb-5">Documents du stagiaire <?= $stagiaire['stagiaire_prenom'] ?>&nbsp;<?= $stagiaire['stagiaire_nom'] ?></h1>

<h4>Documents de stage</h4>
<table class="table table-bordered table-striped">
        <thead>
                <tr>
                        <th scope="col">Stage</th>
                        <th scope="col">Période</th>
                        <th scope="col">Convention</th>
                        <th scope="col">Attestation</th>
                        <th scope="col">Evaluation</th>
                </tr>
        </thead>
        <tbody>
                <?php foreach ($stages['stages'] as $stage_num => $stage) {
                        foreach ($documents['documents']['stages'] as $key => $document) if ($stage_num === $key)/* if (isset($stage[$stage_num]) && isset($document[$key])) */ {
                                $sql = "SELECT stages.*  
                                        FROM stages 
                                        WHERE stage_id=:id_stage";
                                $req = $db->prepare($sql);
                                $req->bindValue(':id_stage', filter_var($document['id'], FILTER_VALIDATE_INT), PDO::PARAM_INT);
                                $req->execute();
                                $leStage = $req->fetch(PDO::FETCH_ASSOC); ?>
                                <tr>
                                        <td><?= $stage['libelle'] ?> chez <?= $leStage['stage_nom'] ?></td>
                                        <td>Du <?= date("d/m/Y", strtotime($stage['date_debut'])) ?> au <?= date("d/m/Y", strtotime($stage['date_fin'])) ?></td>
                                        <td class="<?= (empty($document['convention']) ? "bg-alert" : (!empty($document['convention']) && $document['convention'] === true ? "bg-info" : "bg-success")) ?>"><?= (empty($document['convention']) ? '<a href="viewer.php?id_stagiaire=' . $stagiaire['stagiaire_id'] . '&document=convention_region" target="_blank">Générer</a>' : (!empty($document['convention']) && $document['convention'] === true ? '<input type="file" class="input-file" value="Enregistrer">' : '<a class="link-light" href="'.$document['convention'].'" target="_blank">Consulter</a>')) ?></td>
                                        <td class="<?= (empty($document['attestation']) ? "bg-alert" : (!empty($document['attestation']) && $document['attestation'] === true ? "bg-info" : "bg-success")) ?>"><?= (empty($document['attestation']) ? '<a href="viewer.php?id_stagiaire=' . $stagiaire['stagiaire_id'] . '&document=attestation" target="_blank">Générer</a>' : (!empty($document['attestation']) && $document['attestation'] === true ? '<input type="file" class="input-file" value="Enregistrer">' : '<a class="link-light" href="'.$document['attestation'].'" target="_blank">Consulter</a>')) ?></td>
                                        <td class="<?= (empty($document['evaluation']) ? "bg-alert" : (!empty($document['evaluation']) && $document['evaluation'] === true ? "bg-info" : "bg-success")) ?>"><?= (empty($document['evaluation']) ? '<a href="viewer.php?id_stagiaire=' . $stagiaire['stagiaire_id'] . '&document=evaluation" target="_blank">Générer</a>' : (!empty($document['evaluation']) && $document['evaluation'] === true ? '<input type="file" class="input-file" value="Enregistrer">' : '<a class="link-light" href="'.$document['evaluation'].'" target="_blank">Consulter</a>')) ?></td>
                                </tr>
                <?php }
                } ?>
        </tbody>
</table>

<h4>Documents de session</h4>
<table class="table table-bordered table-striped">
        <thead>
                <tr>
                        <th scope="col">Intitulé</th>
                        <th scope="col">Date de réception</th>
                        <th scope="col">Lien</th>
                </tr>
        </thead>
        <tbody>
                <?php
                if(isset($documents['documents']['session']) && !empty($documents['documents']['session'])) {
                        foreach ($documents['documents']['session'] as $document) { ?>
                                <tr>
                                        <td><?= $stage['libelle'] ?></td>
                                        <td><?= date("d/m/Y", strtotime($stage['date_reception'])) ?></td>
                                        <td><a href="<?= $stage['lien'] ?>" target="_blank">Consulter</a></td>
                                </tr>
                <?php   }
                } else { ?>
                        <tr>
                                <td colspan="3">TODO: remplir cette zone</td>
                        </tr>
                <?php } ?>
        </tbody>
</table>
<?php include_once('./js.php');
include_once('./footer.php');
