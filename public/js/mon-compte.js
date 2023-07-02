var signaturePad = new SignaturePad(document.querySelector('#signature-pad'), {
    backgroundColor: 'rgba(255, 255, 255, 0)',
    penColor: 'rgb(0, 0, 0)',
    velocityFilterWeight: .7,
    minWidth: 0.5,
    maxWidth: 2.5,
    throttle: 16, // max x milli seconds on event update, OBS! this introduces lag for event update
    minPointDistance: 3,
});

var approveButton = document.querySelector('#approve-signature');
var clearButton = document.querySelector('#clear-signature');

approveButton.addEventListener('click', function (event) {
    document.querySelector('input[name="form_update_formateur_signature"]').value = document.querySelector('#signature-pad').toDataURL('image/png');
});

clearButton.addEventListener('click', function (event) {
    signaturePad.clear();
});