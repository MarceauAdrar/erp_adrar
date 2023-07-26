$(document).ready(function () {
    function loadNewNotifications() {
        $.ajax({
            url: "http://" + SERVER_NAME + "/erp/src/c/requests.php",
            method: "POST",
            dataType: "json",
            data: { 
                load_new_notifications: 1
            },
            success: function (data) {
                if(data.notifications_count > 0) {
                    data.notifications.forEach(notification => {
                        document.querySelector('#notifications div').innerHTML = document.querySelector('#notifications div').outerHTML + "<p>Il vous reste le TP {{TP}} à compléter !</p>";
                    });
                    document.querySelector('.notifications_count').innerHTML = data.notifications_count;
                }
            }
        });
    }
    loadNewNotifications();

    // Charger les nouvelles notifications // TODO: supprimer ou modifier le code ci-dessous
    // $(document).on('click', '.dropdown-toggle', function () {
    //     $('.count').html('');
    //     load_new_notification('yes');
    // });

    setInterval(function () {
        loadNewNotifications();;
    }, 4000);
});

function showInformationsModal() {
    $(".help-resource").toggleClass("fade-in");
    if (!$(".help-resource").hasClass("fade-in")) {
        $(".help-resource").toggleClass("fade-out");
    }
}

function showCourse(cours_id) {
    $.ajax({
        url: "http://" + SERVER_NAME + "/erp/src/c/requests.php",
        method: "post",
        dataType: "json",
        data: {
            show_cours: 1,
            cours_id: cours_id
        },
        success: function (r) {
            if (r.success == "ok") {
                $("#modalCourse .modal-content").html(r.modal_content);
                $("#modalCourse").modal("show");
            }
        }
    });
}
