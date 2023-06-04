
async function recupererDonnees() {
  var formData = new FormData();
  formData.append('recupererDonnees', 1);

  await fetch("../src/c/c_requetes.php", {
    method: "POST",
    body: formData
  })
    .then((response) => response.json())
    .then((result) => {
      document.getElementById("id_formateur").innerHTML = result.formateurs;
      document.getElementById("nom_session").innerHTML = result.sessions;
      document.getElementById("tables-stages").innerHTML = result.stages;

      // Permet de mettre le trigger sur les nouveaux boutons

      const modals = document.querySelectorAll('[data-modal]');
      modals.forEach(function (trigger) {
        trigger.addEventListener('click', function (event) {
          event.preventDefault();
          const modal = document.getElementById(trigger.dataset.modal);
          modal.classList.add('open');
          const sends = modal.querySelectorAll('.modal-send');
          sends.forEach(function (send) {
            send.addEventListener('click', function (event) {
              event.preventDefault();
              modal.classList.remove('open');
            });
          });

          const exits = modal.querySelectorAll('.modal-exit');
          exits.forEach(function (exit) {
            exit.addEventListener('click', function (event) {
              event.preventDefault();
              modal.classList.remove('open');
              document.getElementById("id_stagiaire").value = "0";
              document.getElementById("relance").value = "0";
            });
          });

        });
      });
    });
}

recupererDonnees();

async function recupererDocumentsManquants(id_stagiaire) {
  var formData = new FormData();
  formData.append('recupererDocumentsManquants', 1);
  formData.append('id_stagiaire', id_stagiaire);

  await fetch("../src/c/c_requetes.php", {
    method: "POST",
    body: formData
  })
    .then((response) => response.text())
    .then((result) => {
      document.getElementById("liste_documents").innerHTML = result;
    });
}

async function envoyerMail() {
  var formData = new FormData();
  formData.append('envoyerMail', 1);
  formData.append('id_stagiaire', document.getElementById("id_stagiaire").value);
  formData.append('id_formateur', document.getElementById("id_formateur").value);
  if (document.getElementById("convention")) formData.append('convention', document.getElementById("convention").checked);
  if (document.getElementById("horaires_mois_1")) formData.append('horaires_mois_1', document.getElementById("horaires_mois_1").checked);
  if (document.getElementById("horaires_mois_2")) formData.append('horaires_mois_2', document.getElementById("horaires_mois_2").checked);
  if (document.getElementById("horaires_mois_3")) formData.append('horaires_mois_3', document.getElementById("horaires_mois_3").checked);
  if (document.getElementById("attestation")) formData.append('attestation', document.getElementById("attestation").checked);
  if (document.getElementById("evaluation")) formData.append('evaluation', document.getElementById("evaluation").checked);
  formData.append('relance', document.getElementById("relance").value);

  await fetch("../src/c/c_requetes.php", {
    method: "POST",
    body: formData
  })
    .then((response) => response.json())
    .then((result) => {
      // window.location.reload();
    });
}

function exporterStages() {
  if (document.getElementById("nom_session").value == 0) {
    window.open('export.php', '_blank');
  } else {
    window.open('export.php?nom_session=' + document.getElementById("nom_session").value, '_blank');
  }
}