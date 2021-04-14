let questionId = 2;

/* Affichage des réponses */

$(document).ready(
    function() {
        $("#doAjax").click(doRequestResponse);
    }
);

// Fonction qui traite les résultats de la requête
function showResultResponse(resultJson) {
    // Le code source du template est dans la page
    var template = $('#reponsesTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#reponses').html(processedTemplate);
}

// Fonction qui traite les erreurs de la requête
function showErrorResponse(xhr, status, message) {
    $("#reponses").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequestResponse() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + questionId + "/reponsePossible",
        dataType: "json",
        success: showResultResponse,
        error: showErrorResponse
    });
}



/* Affichage de la question */

// Fonction qui traite les résultats de la requête
function showResultQuestion(resultJson) {
    // Le code source du template est dans la page
    var template = $('#questionTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#question').html(processedTemplate);
}

// Fonction qui traite les erreurs de la requête
function showErrorQuestion(xhr, status, message) {
    $("#question").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequestQuestion() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + questionId,
        dataType: "json",
        success: showResult,
        error: showError
    });
}

// compléter l'id dans l'EventListener en fonction de l'HTML
document.getElementById("boutonReponse_").addEventListener("click", changeIdQuestion);

function changeIdQuestion(event) {
    let idBouton = event.target.id;
    let noeudFilsId = idBouton.split("_")[1];;
    questionId = noeudFilsId;
    doRequestQuestion();
    doRequestResponse();
}