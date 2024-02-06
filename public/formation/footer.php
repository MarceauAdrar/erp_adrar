        </div>

        <?php if (!array_key_exists("pseudo_stagiaire", $_SESSION["utilisateur"])) { ?>
            <div class="modal modal-lg fade" id="modalTrainees" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalTraineesTitle" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="container">
                                <div class="row">
                                    <h5 class="modal-title w-auto" id="modalTraineesTitle">Se connecter en tant que...</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div>
                                            <label for="form_trainee_filter" class="form-label">Nom d'utilisateur:
                                                <input type="text" name="form_trainee_filter" id="form_trainee_filter" class="form-control" placeholder="Chercher un stagiaire...">
                                            </label>
                                            <table class="table table-responsive table-bordered" id="form_trainee_table">
                                                <thead>
                                                    <tr>
                                                        <th>Stagiaire (pseudo) - Prénom NOM</th>
                                                        <th>Se connecter</th>
                                                        <th>Réinitialiser le MDP</th>
                                                        <th>Éval. stagiaire</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="form_trainee_table_tbody">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="//code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
            <script src="//code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
            <script>
                // $(function() {
                //     $('nav a[href^="//' + SERVER_NAME + '/' + location.pathname + '"]').addClass('active');
                // });
                let trainees = [];

                const input = document.querySelector('#form_trainee_filter');
                input.addEventListener('keyup', () => {
                    document.querySelector('#form_trainee_table_tbody').innerHTML = "";
                    trainees.forEach((trainee) => {
                        if (input.value.length > 0) {
                            if (trainee.nom_stagiaire.trim().toLowerCase().match(input.value) || trainee.prenom_stagiaire.trim().toLowerCase().match(input.value) || trainee.pseudo_stagiaire.trim().toLowerCase().match(input.value)) {
                                document.querySelector('#form_trainee_table_tbody').innerHTML = document.querySelector('#form_trainee_table_tbody').outerHTML + "<tr><td>(" + trainee.pseudo_stagiaire + ") " + trainee.prenom_stagiaire + " " + trainee.nom_stagiaire + "</td><td align='center'><a href='#' class='btn btn-warning' onclick='connectAsTrainee(`" + trainee.pseudo_stagiaire + "`);'><i class='fa-solid fa-plug'></i></a></td><td align='center'><a href='#' class='btn btn-danger' onclick='resetPassTrainee(`" + trainee.pseudo_stagiaire + "`);'><i class='fa-solid fa-rotate-right'></i></a></td><td align='center'><a target='_blank' href='viewer.php?id_stagiaire=" + trainee.id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-eye'></i></a>&nbsp;&nbsp;<a href='viewer.php?mode=edit&id_stagiaire=" + trainee.id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-edit'></i></a></td>";
                            }
                        } else {
                            document.querySelector('#form_trainee_table_tbody').innerHTML = document.querySelector('#form_trainee_table_tbody').outerHTML + "<tr><td>(" + trainee.pseudo_stagiaire + ") " + trainee.prenom_stagiaire + " " + trainee.nom_stagiaire + "</td><td align='center'><a href='#' class='btn btn-warning' onclick='connectAsTrainee(`" + trainee.pseudo_stagiaire + "`);'><i class='fa-solid fa-plug'></i></a></td><td align='center'><a href='#' class='btn btn-danger' onclick='resetPassTrainee(`" + trainee.pseudo_stagiaire + "`)'><i class='fa-solid fa-rotate-right'></i></a></td><td align='center'><a target='_blank' href='viewer.php?id_stagiaire=" + trainee.id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-eye'></i></a>&nbsp;&nbsp;<a href='viewer.php?mode=edit&id_stagiaire=" + trainee.id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-edit'></i></a></td>";
                        }
                    });
                });

                function loadTrainees() {
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        dataType: "JSON",
                        data: {
                            load_trainees: 1
                        },
                        success: function(r) {
                            for (i = 0; i < r.nb_trainees; i++) {
                                option = document.createElement("li");
                                trainees.push(r.trainees[i]);
                                document.querySelector('#form_trainee_table_tbody').innerHTML = document.querySelector('#form_trainee_table_tbody').outerHTML + "<tr><td>(" + r.trainees[i].pseudo_stagiaire + ") " + r.trainees[i].prenom_stagiaire + " " + r.trainees[i].nom_stagiaire + "</td><td align='center'><a href='#' class='btn btn-warning' onclick='connectAsTrainee(`" + r.trainees[i].pseudo_stagiaire + "`);'><i class='fa-solid fa-plug'></i></a></td><td align='center'><a href='#' class='btn btn-danger' onclick='resetPassTrainee(`" + r.trainees[i].pseudo_stagiaire + "`)'><i class='fa-solid fa-rotate-right'></i></a></td><td align='center'><a target='_blank' href='viewer.php?id_stagiaire=" + r.trainees[i].id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-eye'></i></a>&nbsp;&nbsp;<a href='viewer.php?mode=edit&id_stagiaire=" + r.trainees[i].id_stagiaire + "' class='btn btn-primary'><i class='fa-solid fa-edit'></i></a></td>";
                            }
                        }
                    });
                }

                function connectAsTrainee(username_trainee) {
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        dataType: "JSON",
                        data: {
                            connect_as_trainee: 1,
                            username_trainee: username_trainee
                        },
                        success: function(r) {
                            window.location.reload();
                        }
                    });
                }

                function resetPassTrainee(username_trainee) {
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        dataType: "JSON",
                        data: {
                            reset_pass_trainee: 1,
                            username_trainee: username_trainee
                        },
                        success: function(r) {

                        }
                    });
                }

                function majEval(id_acquis, id_stagiaire) {
                    let formateurs = document.querySelector("#form_maj_eval_ids_formateurs_"+id_acquis).value;
                    let niveau = document.querySelector("#form_maj_eval_niveau_"+id_acquis).value;
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        dataType: "JSON",
                        data: {
                            maj_eval: 1, 
                            id_acquis: id_acquis, 
                            id_stagiaire: id_stagiaire, 
                            formateurs: formateurs, 
                            niveau: niveau 
                        },
                        success: function(r) {

                        }
                    });
                }
            </script>
        <?php } ?>

        <footer class="border-top border-light bg-light fixed-bottom">
            <p class="text-center">&copy; 2022 - <?= date("Y") ?> ADRAR - Site développé par Marceau RODRIGUES&nbsp;-&nbsp;<a href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/mentions-legales.php">Mentions légales</a>&nbsp;|&nbsp;<a href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/politique-confidentialite.php">Politique de confidentialité</a></p>
        </footer>
        </body>

        </html>