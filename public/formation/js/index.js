function showInformationsModal() {
    $(".help-resource").toggleClass("fade-in");
    if(!$(".help-resource").hasClass("fade-in")) {
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
        success: function(r) {
            if(r.success == "ok") {
                $("#modalCourse .modal-content").html(r.modal_content);
                $("#modalCourse").modal("show");
            }
        }
    });
}
