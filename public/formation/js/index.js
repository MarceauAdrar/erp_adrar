$(document).ready(function () {
    if (document.querySelector('#notifications div') !== null) {
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
            load_new_notifications: 1,
            opened: opened
        },
        success: function (data) {
            if (data.notifications_count > 0) {
                if (opened) {
                    var notifications = "";
                    data.notifications.forEach(notification => {
                        notifications += "<a href=\"" + notification.notification_lien + "\"><p>" + notification.notification_titre + "</p></a>";
                    });
                    document.querySelector('#notifications div').innerHTML = notifications;
                    document.querySelector('#notifications').classList.remove('hidden');
                } else {
                    document.querySelector('.notifications-count').setAttribute("data-count", data.notifications_count);
                }
            } else {
                document.querySelector('.notifications-count').removeAttribute("data-count");
                if (opened) {
                    document.querySelector('#notifications').classList.add('hidden');
                }
            }
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
