document.querySelector('#nav-administration').addEventListener('click', () => { window.location.href = '?page=admin'; });
document.querySelector('#module-administration').addEventListener('click', () => { window.location.href = '?page=admin'; });

document.querySelector('#nav-formation').addEventListener('click', () => { window.location.href = '?page=formation'; });
document.querySelector('#module-formation').addEventListener('click', () => { window.location.href = '?page=formation'; });

document.querySelector('#nav-stages').addEventListener('click', () => { window.location.href = '?page=stage'; });
document.querySelector('#module-stages').addEventListener('click', () => { window.location.href = '?page=stage'; });

document.querySelector('#nav-titres').addEventListener('click', () => { window.location.href = '?page=titre'; });
document.querySelector('#module-titres').addEventListener('click', () => { window.location.href = '?page=titre'; });

document.querySelector("input[name='search']").addEventListener('keyup', function (e) {
    if (e.keyCode === 13) {
        window.location.href = 'search.php?q=' + this.value;
    }
});

function getRatios() {
    getRatioAttestation();
    getRatioConvention();
    getRatioEvaluation();
    getRatioPresence();
}
getRatios();

async function getRatioConvention() {
    var formData = new FormData();
    formData.append('get_ratio_convention', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
    .then((response) => response.json())
    .then((result) => {
        document.querySelector("#ratio_convention_de_stage").textContent = result.value + "%";
        document.querySelector("#ratio_convention_de_stage").classList.add(result.color);
    });
}
async function getRatioAttestation() {
    var formData = new FormData();
    formData.append('get_ratio_attestation', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
    .then((response) => response.json())
    .then((result) => {
        document.querySelector("#ratio_attestation_de_stage").textContent = result.value + "%";
        document.querySelector("#ratio_attestation_de_stage").classList.add(result.color);
    });
}
async function getRatioEvaluation() {
    var formData = new FormData();
    formData.append('get_ratio_evaluation', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
    .then((response) => response.json())
    .then((result) => {
        document.querySelector("#ratio_evaluation_de_stage").textContent = result.value + "%";
        document.querySelector("#ratio_evaluation_de_stage").classList.add(result.color);
    });
}
async function getRatioPresence() {
    var formData = new FormData();
    formData.append('get_ratio_presence', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
    .then((response) => response.json())
    .then((result) => {
        document.querySelector("#ratio_presence_en_entreprise").textContent = result.value + "%";
        document.querySelector("#ratio_presence_en_entreprise").classList.add(result.color);
    });
}