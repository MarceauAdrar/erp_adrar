        </div>

        <?php if (!array_key_exists("pseudo_stagiaire", $_SESSION["utilisateur"])) { ?>
            <div class="modal modal-lg fade" id="modalConnectAs" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalConnectAsTitle" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="container">
                                <div class="row">
                                    <h5 class="modal-title w-auto" id="modalConnectAsTitle">Se connecter en tant que...</h5>
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
                                            <label for="form_username_connect_as">Nom d'utilisateur:</label>
                                            <select id="form_username_connect_as" class="w-auto"></select>

                                            <button type="button" class="btn btn-sm btn-outline-primary" data-bs-dismiss="modal" aria-label="Envoyer" onclick="connectAsTrainee();">Envoyer</button>
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
            <script src="//cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
            <script>
                // $(function() {
                //     $('nav a[href^="//' + SERVER_NAME + '/' + location.pathname + '"]').addClass('active');
                // });

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
                                option = document.createElement("option");
                                option.text = r.trainees[i];
                                option.value = r.trainees[i];
                                document.querySelector('#form_username_connect_as').appendChild(option);
                            }
                            $('#form_username_connect_as').select2();
                        }
                    });
                }

                function connectAsTrainee() {
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        dataType: "JSON",
                        data: {
                            connect_as_trainee: 1,
                            username_trainee: document.querySelector('#form_username_connect_as').value
                        },
                        success: function(r) {
                            window.location.reload();
                        }
                    });
                }
            </script>
        <?php } ?>

        <footer class="border-top border-light bg-light fixed-bottom">
            <p class="text-center">&copy; <?= date("Y") ?> ADRAR - Site développé par Marceau RODRIGUES&nbsp;-&nbsp;<a href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/mentions-legales.php">Mentions légales</a>&nbsp;<a href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/politique-confidentialite.php">Politique de confidentialité</a></p>
        </footer>
        </body>

        </html>