document.querySelector('#module-administration').addEventListener('click', () => { window.location.href = '?page=admin'; });
document.querySelector('#module-formation').addEventListener('click', () => { window.location.href = 'formation'; });
document.querySelector('#module-stages').addEventListener('click', () => { window.location.href = '?page=stage'; });
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
    getRatioReussite();
    getRatioSatisfaction();
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
            document.querySelector("#ratio_convention_de_stage").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_convention_de_stage").textContent = result.value + "%";
                document.querySelector("#ratio_convention_de_stage").classList.add(result.color);
            } else {
                document.querySelector("#ratio_convention_de_stage").textContent = "Aucune donnée";
            }

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
            document.querySelector("#ratio_attestation_de_stage").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_attestation_de_stage").textContent = result.value + "%";
                document.querySelector("#ratio_attestation_de_stage").classList.add(result.color);
            } else {
                document.querySelector("#ratio_attestation_de_stage").textContent = "Aucune donnée";
            }
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
            document.querySelector("#ratio_evaluation_de_stage").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_evaluation_de_stage").textContent = result.value + "%";
                document.querySelector("#ratio_evaluation_de_stage").classList.add(result.color);
            } else {
                document.querySelector("#ratio_evaluation_de_stage").textContent = "Aucune donnée";
            }
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
            document.querySelector("#ratio_presence_en_entreprise").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_presence_en_entreprise").textContent = result.value + "%";
                document.querySelector("#ratio_presence_en_entreprise").classList.add(result.color);
            } else {
                document.querySelector("#ratio_presence_en_entreprise").textContent = "Aucune donnée";
            }
        });
}
async function getRatioReussite() {
    var formData = new FormData();
    formData.append('get_ratio_reussite', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#ratio_reussite_stagiaire").classList.remove("col-bad", "col-medium", "col-good");
            document.querySelector("#ratio_reussite_stagiaire_bis").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_reussite_stagiaire").textContent = result.value + "%";
                document.querySelector("#ratio_reussite_stagiaire").classList.add(result.color);
                document.querySelector("#ratio_reussite_stagiaire_bis").textContent = result.valueFaussee + "%";
                document.querySelector("#ratio_reussite_stagiaire_bis").classList.add(result.colorBis);
            } else {
                document.querySelector("#ratio_reussite_stagiaire").textContent = "Aucune donnée";
                document.querySelector("#ratio_reussite_stagiaire_bis").textContent = "Aucune donnée";
            }
        });
}
async function getRatioSatisfaction() {
    var formData = new FormData();
    formData.append('get_ratio_satisfaction', 1);
    formData.append('filtre_session', document.querySelector('select[name="form_filter_session"]').value);

    await fetch("../src/c/c_requetes.php", {
        method: "POST",
        body: formData
    })
        .then((response) => response.json())
        .then((result) => {
            document.querySelector("#ratio_satisfaction_stagiaire").classList.remove("col-bad", "col-medium", "col-good");
            if (result.success == true) {
                document.querySelector("#ratio_satisfaction_stagiaire").textContent = result.value + "/5";
                document.querySelector("#ratio_satisfaction_stagiaire").classList.add(result.color);
            } else {
                document.querySelector("#ratio_satisfaction_stagiaire").textContent = "Aucune donnée";
            }
        });
}