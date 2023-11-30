function updateForm() {
    var documents = ["document_convention", "document_attestation", "document_evaluation", "document_presence", "document_livret_evaluation"];
    documents.forEach(doc => {
        document.querySelector('#' + doc).classList.add('hidden');
    });
    switch (document.querySelector('#document').value) {
        case "convention_no_logo":
        case "convention_region":
        case "convention_pe":
        case "convention_region_fse":
        case "convention_region_investir":
            document.querySelector('#document_convention').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_convention");
            break;
        case "attestation":
            document.querySelector('#document_attestation').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_attestation");
            break;
        case "evaluation":
            document.querySelector('#document_evaluation').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_evaluation");
            break;
        case "presence":
            document.querySelector('#document_presence').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_presence");
            break;
        case "livret_evaluation/dwwm":
            document.querySelector('#document_livret_evaluation').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_livret_evaluation/dwwm");
            break;
        case "livret_evaluation/cda":
            document.querySelector('#document_livret_evaluation').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_livret_evaluation/cda");
            break;
    }
}

function loadNextInput(doc, input, tache_suivante) {
    if (input.value.trim() !== '') {
        document.querySelector('#' + doc + parseInt(tache_suivante)).parentElement.classList.remove('hidden');
    } else {
        document.querySelectorAll('.' + doc).forEach(element => {
            document.querySelector('#' + doc + parseInt(tache_suivante)).parentElement.classList.add('hidden');
        });
    }
}