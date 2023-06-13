function updateForm() {
    var documents = ["document_convention", "document_attestation", "document_evaluation", "document_presence", "document_livret_evaluation"];
    documents.forEach(doc => {
        document.querySelector('#' + doc).classList.add('hidden');
    });
    switch(document.querySelector('#document').value) {
        case "convention":
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
        case "livret_evaluation":
            document.querySelector('#document_livret_evaluation').classList.toggle('hidden');
            document.querySelector('#document_informations').setAttribute('name', "document_livret_evaluation");
            break;
    }
}

function loadNextInput(doc, input, tache_suivante) {
    if(input.value.trim() !== '') { 
        document.querySelector('#' + doc + parseInt(tache_suivante)).parentElement.classList.remove('hidden'); 
    } else { 
        document.querySelectorAll('.' + doc).forEach(element => {
            document.querySelector('#' + doc + parseInt(tache_suivante)).parentElement.classList.add('hidden');
        });
    }
}