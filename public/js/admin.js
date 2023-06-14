async function recupererListeFormateurs() {
    var formData = new FormData();
    formData.append('recupererListeFormateurs', 1);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#tbody_formateurs").innerHTML = result;
        });
}

async function recupererListeStagiaires() {
    var formData = new FormData();
    formData.append('recupererListeStagiaires', 1);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#tbody_stagiaires").innerHTML = result;
        });
}

async function recupererListeStages() {
    var formData = new FormData();
    formData.append('recupererListeStages', 1);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#tbody_stages").innerHTML = result;
        });
}

function recupererListes() {
    recupererListeFormateurs();
    recupererListeStagiaires();
    recupererListeStages();
}

recupererListes();

function afficherCanvasSignature(id) {
    var signaturePad = new SignaturePad(document.getElementById('signature-pad-' + id), {
        backgroundColor: 'rgba(255, 255, 255, 0)',
        penColor: 'rgb(0, 0, 0)',
        velocityFilterWeight: .7,
        minWidth: 0.5,
        maxWidth: 2.5,
        throttle: 16, // max x milli seconds on event update, OBS! this introduces lag for event update
        minPointDistance: 3,
    });

    document.querySelector('#signature-pad-' + id).parentElement.classList.toggle('hidden');

    var saveButton = document.querySelector('#save-' + id),
        clearButton = document.querySelector('#clear-' + id);

    saveButton.addEventListener('click', function (event) {
        enregistrerSignatureFormateur(signaturePad, id);
    });
    clearButton.addEventListener('click', function (event) {
        signaturePad.clear();
    });
}

async function enregistrerSignatureFormateur(signature, id_formateur) {
    var formData = new FormData();
    formData.append('enregistrerSignatureFormateur', 1);
    formData.append('image', signature.toDataURL('image/png'));
    formData.append('id_formateur', id_formateur);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.text())
        .then(() => {
            signature.off();
        });
}