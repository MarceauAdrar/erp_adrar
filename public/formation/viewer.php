<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);
// Permet de générer un PDF des acquis des stagiaires
include_once __DIR__ . '/../../src/m/connect.php';
include_once __DIR__ . '/../../src/vendor/autoload.php';

$req = $db->prepare("SELECT *
                    FROM stagiaires_acquisitions_acquis 
                    INNER JOIN cours_modules ON (cours_module_id = id_module) 
                    GROUP BY acquisition_categorie, id_module 
                    ORDER BY acquisition_id;");
$req->execute();
$acquisition_categories = $req->fetchAll(PDO::FETCH_ASSOC);

$sql = "SELECT stagiaire_nom, stagiaire_prenom   
        FROM stagiaires 
        WHERE stagiaire_id=:id_stagiaire;";
$req = $db->prepare($sql);
$id_stagiaire = (isset($_SESSION["utilisateur"]["stagiaire_id"]) && $_SESSION["utilisateur"]["stagiaire_id"] !== -1 ? $_SESSION["utilisateur"]["stagiaire_id"] : @$_GET['id_stagiaire']);
$req->bindParam(":id_stagiaire", $id_stagiaire);
$req->execute();
$stagiaire = $req->fetch(PDO::FETCH_ASSOC);

if (isset($_GET['mode']) && !empty($_GET['mode']) && $_GET['mode'] === "edit" && $_SESSION["utilisateur"]["formateur_id"] > 0) {
    $th_supp = '<th class="bg-info text-white" align="center"><b>Mettre à jour</b></th>';
} elseif (isset($id_stagiaire) && !empty($id_stagiaire) && $id_stagiaire > 0) {
    $th_supp = '';
}
$tbody = '';
$acquisition_categorie = null;
$acquisition_module = null;
$acquis = null;
$cours_module_libelle = null;
foreach ($acquisition_categories as $categorie) {
    if ($categorie['acquisition_categorie'] !== $acquisition_categorie) {
        $acquisition_categorie = $categorie['acquisition_categorie'];
        $tbody .= '<tr>';
        $tbody .= ' <td colspan="' . (isset($_GET['mode']) && !empty($_GET['mode']) && $_GET['mode'] === "edit" && $_SESSION["utilisateur"]["formateur_id"] > 0 ? 5 : 4) . '" rowspan="1" style="background-color:#d9d9d9;color:#000;font-weight:bold;">' . $acquisition_categorie . '</td>';
        $tbody .= '</tr>';
    }
    if ($categorie['id_module'] !== $acquisition_module) {
        $acquisition_module = $categorie['id_module'];
    }
    $sql = "SELECT acquisition_id, acquisition_libelle, acquisition_niveau, ids_formateurs 
            FROM stagiaires_acquisitions_acquis 
            LEFT JOIN stagiaires_acquisitions ON (acquisition_id = id_acquis AND id_stagiaire=:id_stagiaire) 
            WHERE acquisition_categorie=:acquisition_categorie 
            AND id_module=:id_module 
            ORDER BY acquisition_id;";
    $req = $db->prepare($sql);
    $req->bindParam(":acquisition_categorie", $acquisition_categorie);
    $req->bindParam(":id_module", $acquisition_module);
    $req->bindParam(":id_stagiaire", $id_stagiaire);
    $req->execute();
    $acquis = $req->fetchAll(PDO::FETCH_ASSOC);
    $cours_module_libelle .= ' <td rowspan="' . sizeof($acquis) . '">' . $categorie['cours_module_libelle'] . '</td>';

    foreach ($acquis as $key => $unAcquis) {
        $noms_prenoms_formateurs = null;
        if (isset($unAcquis['ids_formateurs']) && !empty($unAcquis['ids_formateurs']) && $unAcquis['ids_formateurs'] != "-1") {
            $sql = "SELECT GROUP_CONCAT(formateur_prenom, ' ', formateur_nom) AS prenom_nom_formateur 
                    FROM formateurs  
                    WHERE formateur_id IN(" . $unAcquis['ids_formateurs'] . ");";
            $req = $db->prepare($sql);
            $req->execute();
            $noms_prenoms_formateurs = $req->fetch(PDO::FETCH_COLUMN);
        } else if ($unAcquis['ids_formateurs'] == "-1") {
            $noms_prenoms_formateurs = -1;
        }

        if (isset($_GET['mode']) && !empty($_GET['mode']) && $_GET['mode'] === "edit" && $_SESSION["utilisateur"]["formateur_id"] > 0) {
            $tbody .= '<tr>';
            $tbody .=   $cours_module_libelle;
            $tbody .= ' <td>' . $unAcquis['acquisition_libelle'] . '</td>';
            $tbody .= ' <td align="center">
                            <input class="form-control" value="' . $unAcquis['ids_formateurs'] . '" id="form_maj_eval_ids_formateurs_' . $unAcquis['acquisition_id'] . '" type="hidden"/>
                            <input class="form-control form-autocomplete-formateurs" data-acquis="' . $unAcquis['acquisition_id'] . '" id="form_maj_eval_select_formateurs_' . $unAcquis['acquisition_id'] . '" type="text" />' . (isset($noms_prenoms_formateurs) && $noms_prenoms_formateurs > 0 ? str_replace(array(',', ' '), array('<br>&<br>', '<br>'), $noms_prenoms_formateurs) : (isset($noms_prenoms_formateurs) && $noms_prenoms_formateurs < 0 ? "Prestataire externe" : "A définir")) .
                '</td>';
            $niveau = " <select id='form_maj_eval_niveau_" . $unAcquis['acquisition_id'] . "' class='form-select'>";
            foreach (["A", "PR A", "PE A", "NA", "NE"] as $value) {
                $niveau .= '<option value="' . $value . '" ' . ($value === $unAcquis['acquisition_niveau'] ? "selected" : "") . '>' . $value . '</option>';
            }
            $niveau .= '    <option value="non_renseigne" ' . (empty($unAcquis['acquisition_niveau']) ? "selected" : "") . ' disabled>Non renseigné</option>';
            $niveau .= "</select>";
            $tbody .= ' <td align="center" style="background-color:' . ($unAcquis['acquisition_niveau'] === 'A' ? '#A8D08D' : ($unAcquis['acquisition_niveau'] === 'PR A' ? '#FFEB9C' : ($unAcquis['acquisition_niveau'] === 'PE A' ? '#ED7D31' : ($unAcquis['acquisition_niveau'] === 'NA' ? '#FFC7CE' : 'white')))) . '">' . $niveau . '</td>';
            $tbody .= ' <td align="center"><button onclick="majEval(' . $unAcquis['acquisition_id'] . ', ' . $id_stagiaire . ');" class="btn btn-outline-primary">Enregistrer</button></td>';
            $tbody .= '</tr>';
        } else {
            $tbody .= '<tr>';
            $tbody .= $cours_module_libelle;
            $tbody .= ' <td>' . $unAcquis['acquisition_libelle'] . '</td>';
            $tbody .= ' <td align="center">' . (isset($noms_prenoms_formateurs) && $noms_prenoms_formateurs > 0 ? str_replace(array(',', ' '), array('<br>&<br>', '<br>'), $noms_prenoms_formateurs) : (isset($noms_prenoms_formateurs) && $noms_prenoms_formateurs < 0 ? "Prestataire externe" : "A définir")) . '</td>';
            $tbody .= ' <td align="center" style="background-color:' . ($unAcquis['acquisition_niveau'] === 'A' ? '#A8D08D' : ($unAcquis['acquisition_niveau'] === 'PR A' ? '#FFEB9C' : ($unAcquis['acquisition_niveau'] === 'PE A' ? '#ED7D31' : ($unAcquis['acquisition_niveau'] === 'NA' ? '#FFC7CE' : '')))) . '">' . (!empty($unAcquis['acquisition_niveau']) ? $unAcquis['acquisition_niveau'] : "Non évalué·e") . '</td>';
            $tbody .= '</tr>';
        }
        $cours_module_libelle = null;
    }
}

class MYPDF extends TCPDF
{

    //Page header
    public function Header()
    {
        // Logo
        $this->Image('/var/www/html/erp/public/img/logo_adrar.png', 16, 10, 10, 15, 'PNG', '', 'T', false, 300, '', false, false, 0, false, "Logo de l'ADRAR Formation", false);
        $this->writeHTMLCell(0, 25, 50, 5, '<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Suivi <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;des<br>&nbsp;&nbsp;&nbsp;Acquisitions</h2>', 0, 1, false, true, '', true);
        $this->Image('/var/www/html/erp/public/img/logo_numerique.png', 120, 5, 75, 22, 'PNG', '', 'T', false, 300, '', false, false, 0, false, "Logo du Pôle Numérique", false);
        $this->SetAutoPageBreak($this->AutoPageBreak, $this->getBreakMargin());

        $this->setPageMark();
    }

    // Page footer
    public function Footer()
    {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'Page ' . $this->getAliasNumPage() . '/' . $this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}
$tbl = <<<EOD
    <div style="text-align:center;">
        <span><b>A</b>&nbsp;pour Acquis<span>
        <span><b>PR A</b>&nbsp;pour PReque Acquis<span>
        <span><b>PE A</b>&nbsp;pour PEu Acquis<span>
        <span><b>NA</b>&nbsp;pour Non Acquis<span>
        <span><b>NE</b>&nbsp;pour Non Évalué·e<span>
    </div>
    
    <table border="1" class="table table-bordered table-responsive table-striped">
        <thead>
            <tr style="background-color:#72A0C1;color:#FFFFFF;">
                <th class="bg-info text-white" align="center"><b>Modules</b></th>
                <th class="bg-info text-white" align="center"><b>Compétences</b></th>
                <th class="bg-info text-white" align="center"><b>Formateur en charge</b></th>
                <th class="bg-info text-white" align="center"><b>Acquisition</b></th>
                $th_supp
            </tr>
        </thead>
        <tbody>
            $tbody
        </tbody>
    </table>
    <br>
EOD;
// echo "<pre>";
// var_dump($tbl);
// echo "</pre>";
// die;
if (!$stagiaire) {
    $title = " | Évaluation de stagiaire introuvable";
    include_once('./header.php');
    include_once('./error404.php');
    include_once('./footer.php');
} else {
    if (isset($_GET['mode']) && !empty($_GET['mode']) && $_GET['mode'] === "edit" && $_SESSION["utilisateur"]["formateur_id"] > 0) {
        // var_dump($stagiaire, $id_stagiaire, $tbody);
        $title = " | Évaluation par stagiaire";
        include_once('./header.php');
        echo '<h1 class="text-center">Évaluation du stagiaire: ' . $stagiaire['stagiaire_prenom'] . "&nbsp;" . $stagiaire['stagiaire_nom'] . ' </h1>
            ' . $tbl;
        include_once('./js.php'); ?>
        <script>
            function split(val) {
                return val.split(/,\s*/);
            }

            function extractLast(term) {
                return split(term).pop();
            }
            document.addEventListener("DOMContentLoaded", (event) => {
                let formateurs = [];

                $.ajax({
                    url: "//<?= $_SERVER["SERVER_NAME"] ?>/erp/src/c/requests.php",
                    method: "post",
                    dataType: "json",
                    data: {
                        search_trainers: 1
                    },
                    success: function(r) {
                        if (r.success) {
                            formateurs = r.formateurs;
                            formateurs.push({
                                id: -1,
                                value: 'Externe'
                            });
                        }
                    }
                });

                $(".form-autocomplete-formateurs").autocomplete({
                    minLength: 3,
                    source: function(request, response) {
                        response($.ui.autocomplete.filter(
                            formateurs, extractLast(request.term)));
                    },
                    focus: function() {
                        return false;
                    },
                    select: function(event, ui) {
                        var terms = split(this.value);
                        terms.pop();
                        terms.push(ui.item.value);
                        terms.push("");
                        this.value = terms.join(",");
                        if (!$('#form_maj_eval_ids_formateurs_' + this.dataset.acquis).val()) { // Permet de ne pas se retrouver avec une virgule si un seul formateur
                            $('#form_maj_eval_ids_formateurs_' + this.dataset.acquis).val(ui.item.id);
                        } else {
                            $('#form_maj_eval_ids_formateurs_' + this.dataset.acquis).val($('#form_maj_eval_ids_formateurs_' + this.dataset.acquis).val() + "," + ui.item.id);
                        }
                        return false;
                    }
                });
            });
        </script>
<?php include_once('./footer.php');
    } else {
        $html2pdf = new MYPDF('P', 'mm', 'A4', true, 'UTF-8');
        $html2pdf->SetCreator("Marceau RODRIGUES");
        $html2pdf->SetAuthor("Marceau RODRIGUES");
        $html2pdf->SetTitle("Acquis en cours de formation");
        $html2pdf->SetSubject("Acquis en cours de formation");

        $html2pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE . ' 006', PDF_HEADER_STRING);

        $html2pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $html2pdf->SetHeaderMargin(10);
        $html2pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

        // set auto page breaks
        $html2pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

        // set image scale factor
        // $html2pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

        $html2pdf->SetFont('times', '', 9);
        $html2pdf->AddPage();

        $html2pdf->writeHTMLCell(0, 0, '', '', $tbl, 0, 1, 0, true, '', true);

        $html2pdf->Output(__DIR__ . '/Mon suivi des acquis.pdf', 'I');
    }
}
// $html2pdf->Output('viewer.pdf');
