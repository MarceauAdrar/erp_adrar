
async function recupererDonnees() {
  var formData = new FormData();
  formData.append('recupererDonnees', 1);
  
  await fetch("../src/c/c_requetes.php", {
    method: "POST",
    body: formData
  })
  .then((response) => response.json())
  .then((result) => {
    document.getElementById("tables-stages").innerHTML = result;

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
              envoyerMail();
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

function attribuerId(id, relance) {
  document.getElementById("id_stagiaire").value = id;
  if(relance) {
    document.getElementById("relance").value = 1;
  } else {
    document.getElementById("relance").value = 0;
  }
}

async function envoyerMail() {
    var formData = new FormData();
    formData.append('envoyerMail', 1);
    formData.append('id_stagiaire', document.getElementById("id_stagiaire").value);
    formData.append('convention_de_stage', document.getElementById("convention_de_stage").checked);
    formData.append('horaires_mois_1', document.getElementById("horaires_mois_1").checked);
    formData.append('horaires_mois_2', document.getElementById("horaires_mois_2").checked);
    formData.append('horaires_mois_3', document.getElementById("horaires_mois_3").checked);
    formData.append('attestation_de_stage', document.getElementById("attestation_de_stage").checked);
    formData.append('evaluation_de_stage', document.getElementById("evaluation_de_stage").checked);
    formData.append('relance', document.getElementById("relance").value);
    
    await fetch("../src/c/c_requetes.php", {
      method: "POST",
      body: formData
    })
    .then((response) => response.json())
    .then((result) => {
      window.location.reload();
    });
}