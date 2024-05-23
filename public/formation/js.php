        <!-- JavaScript Bundle with Popper -->
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/bootstrap.bundle.min.js"></script>
        <script src="//code.jquery.com/jquery-3.6.2.min.js" integrity="sha256-2krYZKh//PcchRtd+H+VyyQoZ/e3EcrkxhM8ycwASPA=" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js" crossorigin="anonymous"></script>
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/consts.js?v=<?= uniqid() ?>"></script>
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/index.js?v=<?= uniqid() ?>"></script>
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/tooltips.js?v=<?= uniqid() ?>"></script>
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/modals.js?v=<?= uniqid() ?>"></script>
        <script src="<?= $_SERVER["REQUEST_SCHEME"] ?>://<?= $_SERVER["SERVER_NAME"] ?>/erp/public/formation/js/admin.js?v=<?= uniqid() ?>"></script>

        <script src="https://cdn.datatables.net/2.0.5/js/dataTables.js"></script>
        <script src="https://cdn.datatables.net/2.0.5/js/dataTables.bootstrap5.js"></script>
        <script src="https://cdn.datatables.net/responsive/3.0.2/js/dataTables.responsive.js"></script>
        <script src="https://cdn.datatables.net/responsive/3.0.2/js/responsive.bootstrap5.js"></script>

        <script>
                sessionStorage.setItem("stagiaire_username", "<?= (!isset($_SESSION) ? "" : (array_key_exists("stagiaire_pseudo", $_SESSION['utilisateur']) ? $_SESSION["utilisateur"]["stagiaire_pseudo"] : $_SESSION["utilisateur"]["formateur_mail"])) ?>");
                sessionStorage.setItem("SERVER_NAME", "<?= $_SERVER["SERVER_NAME"] ?>");
        </script>