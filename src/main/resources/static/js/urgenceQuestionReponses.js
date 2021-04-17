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

/* document.querySelectorAll("boutonReponse").forEach(item => {
    item.addEventListener('click', event => {
        let idBouton = event.target.id;
        console.log(idBouton);
        let noeudFilsId = idBouton.split("_")[1];
        console.log(noeudFilsId);
        questionId = noeudFilsId;
        doRequestQuestion();
        doRequestResponse();
    })
}) */


/* let boutonsReponse = document.getElementsByClassName("boutonReponse")
boutonsReponse.forEach(item => item.addEventListener('click', changeIdQuestion)); */

// Revoir à partir d'ici pour le passge d'un noeud à l'autre

/* let boutonsReponse = document.querySelectorAll(".boutonReponse");

boutonsReponse.forEach(function(elem) {
    console.log("étape 1");
    elem.addEventListener("input", changeIdQuestion);
}); */


/* function changeIdQuestion(event) {
    console.log("click")
    let idBouton = event.target.id;
    //let noeudFilsId = idBouton.split("_")[1];;
    questionId = idBouton; //noeudFilsId;
    doRequestQuestion();
    doRequestResponse();
} */