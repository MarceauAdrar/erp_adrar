$(document).ready(function () {
    if (document.querySelector('.notifications-count') !== null) {
        loadNewNotifications();

        setInterval(function () {
            loadNewNotifications();
        }, 4000);
    }
});

function loadNewNotifications(opened = false) {
    $.ajax({
        url: "http://" + SERVER_NAME + "/erp/src/c/requests.php",
        method: "POST",
        dataType: "json",
        data: {
            load_new_notifications: 1
        },
        success: function (data) {
            if (data.notifications_count > 0) {
                document.querySelector('.notifications-count').setAttribute("data-count", data.notifications_count);
            } else {
                document.querySelector('.notifications-count').removeAttribute("data-count");
            }
            document.querySelector('#notifications div').innerHTML = data.notifications;
            if (opened) {
                document.querySelector('#notifications').classList.toggle('hidden');
            }
        }
    });
}

function deleteNotification(notification_lien = "") {
    $.ajax({
        url: "http://" + SERVER_NAME + "/erp/src/c/requests.php",
        method: "POST",
        dataType: "json",
        data: {
            delete_notification: 1,
            lien_notification: notification_lien
        },
        success: function (data) {
            loadNewNotifications();
        }
    });
}

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

function sendTp(tp_id, input) {
    var formData = new FormData();
    formData.append("send_tp", 1);
    formData.append("tp_id", tp_id);
    formData.append("fichier", document.querySelector('#' + input).files[0]);
    $.ajax({
        url: "http://" + SERVER_NAME + "/erp/src/c/requests.php",
        method: "post",
        dataType: "json",
        processData: false,
        contentType: false,
        data: formData,
        success: function (r) {
            document.location.reload();
        }
    });
}