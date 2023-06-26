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

function addCourse() {
    $.ajax({
        url: "http://" + SERVER_NAME + "/erp/src/c/requests.php", 
        method: "post",
        data: {
            add_cours: 1, 
            form_cours_title: form_cours_title, 
            form_cours_title: $("#form_cours_title").val(), 
            form_cours_synopsis: $("#form_cours_synopsis").val(), 
            form_cours_text: $("#form_cours_text").val(), 
            form_cours_keywords: $("#form_cours_keywords").val(), 
            form_cours_link: $("#form_cours_link").val(), 
            form_cours_active: $("#form_cours_active").is(":checked"), 
        }, 
        success: function(r) {
            if(r == "ok") {
                $("#modalCourse .modal-content").html("");
                $("#modalCourse").modal("hide");
            }
        }
    });
}
