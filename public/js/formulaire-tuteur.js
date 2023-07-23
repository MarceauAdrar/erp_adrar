var requestOptions = {
    method: 'GET',
};

let input = document.querySelector('input[name="form_add_tuteur_address_search"]');
input.addEventListener('keyup', async function() {
    await fetch("https://api-adresse.data.gouv.fr/search/?q=" + input.value, requestOptions)
        .then(response => response.json())
        .then(result => {
            var addresses = "";
            result.features.forEach(address => {
                addresses += '<div style="border-bottom:1px solid #000;"><span style="font-weight:600;">' + address.properties.label + '</span>\n' + address.properties.context + '</div>';
            });
            document.querySelector('#address_suggestions').innerHTML = addresses;
        })
        .catch(error => console.log('error', error));
});