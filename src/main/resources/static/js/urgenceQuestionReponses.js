let questionId = 2;

$(document).ready(
    function() {
        $("#doAjax").click(doRequest);
    }
);

// Fonction qui traite les résultats de la requête
function showResult(resultJson) {
    // Le code source du template est dans la page
    var template = $('#reponsesTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#reponses').html(processedTemplate);
}

// Fonction qui traite les erreurs de la requête
function showError(xhr, status, message) {
    $("#reponses").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequest() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + questionId + "/reponsePossible",
        dataType: "json",
        success: showResult,
        error: showError
    });
}

