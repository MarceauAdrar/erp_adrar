async function genererPDF() {
    var formData = new FormData();
    formData.append('genererPDF', 1);
    formData.append('document', document.querySelector('#document').value);
    formData.append('stagiaire', document.querySelector('#stagiaire').value);
    formData.append('date_production', document.querySelector('#date_production').value);

    await fetch("../../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    });
}