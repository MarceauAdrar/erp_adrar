<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);
// Permet de générer un PDF des acquis des stagiaires
include_once __DIR__ . '/../../src/m/connect.php';
include_once __DIR__ . '/../../src/vendor/autoload.php';

$req = $db->prepare("SELECT *
                    FROM stagiaires_acquisitions_acquis;");
$req->execute();
$acquis = $req->fetchAll(PDO::FETCH_ASSOC);

// $req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, nom_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, GROUP_CONCAT(adresse_num_site, ' ', adresse_rue_site, ' ', adresse_cp_site, ' ', adresse_ville_site) AS carte_formateur_adresse_site
//                     FROM formateurs 
//                     INNER JOIN sites ON sites.id_site = formateurs.id_site  
//                     INNER JOIN secteurs ON secteurs.id_secteur = formateurs.id_secteur 
//                     WHERE id_formateur=:id_formateur;");
// $req->bindParam(":id_formateur", $_POST['formateur']);
// $req->execute();
// $formateur = $req->fetch(PDO::FETCH_ASSOC);

// $req = $db->prepare("SELECT nom_formateur, prenom_formateur, mail_formateur, signature_formateur, nom_secteur, carte_formateur_role, carte_formateur_liens, carte_formateur_tel, carte_formateur_portable, GROUP_CONCAT(adresse_num_site, ' ', adresse_rue_site, ' ', adresse_cp_site, ' ', adresse_ville_site) AS carte_formateur_adresse_site
//                     FROM formateurs 
//                     INNER JOIN sites ON sites.id_site = formateurs.id_site  
//                     INNER JOIN secteurs ON secteurs.id_secteur = formateurs.id_secteur 
//                     WHERE id_formateur=:id_formateur;");
// $req->bindParam(":id_formateur", $_POST['formateur']);
// $req->execute();
// $formateur = $req->fetch(PDO::FETCH_ASSOC);

class MYPDF extends TCPDF
{

    //Page header
    public function Header()
    {
        // Logo
        $this->Image('/var/www/html/erp/public/img/logo_adrar.png', 10, 10, 20, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        $this->writeHTMLCell(0, 50, 50, 5, '<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Suivi <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;des<br>&nbsp;&nbsp;&nbsp;Acquisitions</h1>', 0, 1, false, true, '', true);
        $this->Image('/var/www/html/erp/public/img/logo_numerique.png', 120, 5, 75, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
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

$html2pdf->AddPage();
$tbl = <<<EOD
<table border="1" cellpadding="2" cellspacing="2">
<thead>
 <tr style="background-color:#FFFF00;color:#0000FF;">
  <td width="30" align="center"><b>A</b></td>
  <td width="140" align="center"><b>XXXX</b></td>
  <td width="140" align="center"><b>XXXX</b></td>
  <td width="80" align="center"> <b>XXXX</b></td>
  <td width="80" align="center"><b>XXXX</b></td>
  <td width="45" align="center"><b>XXXX</b></td>
 </tr>
 <tr style="background-color:#FF0000;color:#FFFF00;">
  <td width="30" align="center"><b>B</b></td>
  <td width="140" align="center"><b>XXXX</b></td>
  <td width="140" align="center"><b>XXXX</b></td>
  <td width="80" align="center"> <b>XXXX</b></td>
  <td width="80" align="center"><b>XXXX</b></td>
  <td width="45" align="center"><b>XXXX</b></td>
 </tr>
</thead>
 <tr>
  <td width="30" align="center">1.</td>
  <td width="140" rowspan="6">XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX</td>
  <td width="140">XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td width="80">XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
 <tr>
  <td width="30" align="center" rowspan="3">2.</td>
  <td width="140" rowspan="3">XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
 <tr>
  <td width="80">XXXX<br />XXXX<br />XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
 <tr>
  <td width="80" rowspan="2" >RRRRRR<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
 <tr>
  <td width="30" align="center">3.</td>
  <td width="140">XXXX1<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
 <tr>
  <td width="30" align="center">4.</td>
  <td width="140">XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td width="80">XXXX<br />XXXX</td>
  <td align="center" width="45">XXXX<br />XXXX</td>
 </tr>
</table>
EOD;
$html2pdf->writeHTMLCell(0, 0, '', 50, $tbl, 0, 1, 0, true, '', true);

$html2pdf->Output(__DIR__ . '/Mon suivi des acquis.pdf', 'I');
// $html2pdf->Output('viewer.pdf');
