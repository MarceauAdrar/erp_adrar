async function recupererListeFormateurs(id_formateur = 0) {
    var formData = new FormData();
    formData.append('recupererListeFormateurs', 1);
    formData.append('id_formateur', id_formateur);

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

async function recupererListeSessions() {
    var formData = new FormData();
    formData.append('recupererListeSessions', 1);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#tbody_sessions").innerHTML = result;
        });
}

async function recupererListeSecteurs() {
    var formData = new FormData();
    formData.append('recupererListeSecteurs', 1);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#tbody_secteurs").innerHTML = result;
        });
}

function recupererListes() {
    recupererListeFormateurs();
    recupererListeStagiaires();
    recupererListeStages();
    recupererListeSessions();
    recupererListeSecteurs();
}

recupererListes();

function afficherCanvasSignature(id) {
    var signaturePad = new SignaturePad(document.querySelector('#signature-pad-' + id), {
        backgroundColor: 'rgba(255, 255, 255, 0)',
        penColor: 'rgb(0, 0, 0)',
        velocityFilterWeight: .7,
        minWidth: 0.5,
        maxWidth: 2.5,
        throttle: 16, // max x milli seconds on event update, OBS! this introduces lag for event update
        minPointDistance: 3,
    });

    document.querySelector('#signature-pad-' + id).parentElement.classList.toggle('hidden');

    var clearButton = document.querySelector('#clear-' + id);

    clearButton.addEventListener('click', function (event) {
        signaturePad.clear();
    });
}

async function majFormateur(id_formateur) {
    var formData = new FormData();
    formData.append('form_formateur_editer', 1);
    formData.append('id_formateur', id_formateur);
    formData.append('nom_formateur', document.querySelector('input[name="form_formateur_editer_nom"]').value);
    formData.append('prenom_formateur', document.querySelector('input[name="form_formateur_editer_prenom"]').value);
    formData.append('mail_formateur', document.querySelector('input[name="form_formateur_editer_mail"]').value);
    formData.append('signature_televersee', document.querySelector('input[name="form_formateur_editer_signature"]').files[0]);
    formData.append('signature', document.querySelector('#signature-pad-' + id_formateur).toDataURL('image/png'));
    formData.append('id_secteur', document.querySelector('select[name="form_formateur_editer_secteur"]').value);
    formData.append('role_formateur', document.querySelector('input[name="form_formateur_editer_role"]').value);
    formData.append('liens_formateur', document.querySelector('textarea[name="form_formateur_editer_liens"]').value);
    formData.append('tel_formateur', document.querySelector('input[name="form_formateur_editer_tel"]').value);
    formData.append('portable_formateur', document.querySelector('input[name="form_formateur_editer_portable"]').value);
    formData.append('site_formateur', document.querySelector('input[name="form_formateur_editer_adresse_site"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then(() => {
            document.querySelector('#signature-pad-' + id_formateur).off();
            window.location.reload();
        });
}