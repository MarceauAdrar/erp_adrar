        </div>

        <?php if (!array_key_exists("pseudo_stagiaire", $_SESSION["utilisateur"])) { ?>
            <style>
                #autocomplete-container {
                    width: 300px;
                    margin: 50px auto;
                }

                #autocomplete-container #autocomplete-input {
                    background: transparent;
                    appearance: none;
                    -moz-appearance: none;
                    -webkit-appearance: none;
                    width: 100%;
                    padding: 20px 15px;
                    border: 2px solid rgba(255, 255, 255, 0.6);
                    outline: none;
                    color: #FFFFFF;
                    font-size: 20px;
                }

                #autocomplete-container #autocomplete-input:-moz-placeholder {
                    color: #FFFFFF;
                }

                #autocomplete-container #autocomplete-input::-moz-placeholder {
                    color: #FFFFFF;
                }

                #autocomplete-container #autocomplete-input:-ms-input-placeholder {
                    color: #FFFFFF;
                }

                #autocomplete-container #autocomplete-input::-webkit-input-placeholder {
                    color: #FFFFFF;
                }

                #autocomplete-container #autocomplete-input:focus {
                    background: rgba(0, 0, 0, 0.1);
                }

                #autocomplete-results {
                    display: none;
                    width: 100%;
                    margin-top: -2px;
                    color: #FFFFFF;
                }

                #autocomplete-results li {
                    width: 100%;
                    padding: 20px 15px;
                    border-right: 2px solid rgba(255, 255, 255, 0.6);
                    border-bottom: 2px solid rgba(255, 255, 255, 0.6);
                    border-left: 2px solid rgba(255, 255, 255, 0.6);
                }

                #autocomplete-results li:hover {
                    background: rgba(0, 0, 0, 0.1);
                }
            </style>
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
                                        <div id="autocomplete-container">
                                            <label for="form_username">
                                                Nom d'utilisateur:
                                                <input type="text" autofocus="true" name="form_username" placeholder="search people" id="autocomplete-input"></input>
                                            </label>
                                            <ul id="autocomplete-results"></ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
            <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
            <script>
                // variables
                var input = document.querySelector('#autocomplete-input');
                let people;
                var results;

                // functions
                function autocomplete(val) {
                    var people_return = [];

                    for (i = 0; i < people.length; i++) {
                        if (val === people[i].slice(0, val.length)) {
                            people_return.push(people[i]);
                        }
                    }

                    return people_return;
                }

                function loadTrainees() {
                    $.ajax({
                        url: "//" + SERVER_NAME + "/erp/src/c/requests.php",
                        method: "post",
                        data: {
                            load_trainees: 1
                        },
                        success: function(r) {
                            people = r.trainees;
                            // events
                            input.onkeyup = function(e) {
                                input_val = this.value; // updates the variable on each ocurrence

                                if (input_val.length > 0) {
                                    var people_to_show = [];

                                    autocomplete_results = document.querySelector("#autocomplete-results");
                                    autocomplete_results.innerHTML = '';
                                    people_to_show = autocomplete(input_val);

                                    for (i = 0; i < people_to_show.length; i++) {
                                        autocomplete_results.innerHTML += '<li><a href="#" data-trainee-username="' + people_to_show[i] + '">' + people_to_show[i] + '</a></li>';
                                    }
                                    autocomplete_results.style.display = 'block';
                                } else {
                                    people_to_show = [];
                                    autocomplete_results.innerHTML = '';
                                }
                            }
                        }
                    });
                }
            </script>
        <?php } ?>

        <footer class="bg-light">
            <p class="text-center">&copy; <?= date("Y") ?> ADRAR - Site développé par Marceau RODRIGUES&nbsp;-&nbsp;<a href="//<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/mentions-legales.php">Mentions légales</a></p>
        </footer>
        </body>

        </html>