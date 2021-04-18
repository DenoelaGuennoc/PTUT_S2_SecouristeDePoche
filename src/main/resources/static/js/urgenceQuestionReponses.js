let questionId = 2;
let reponseId = 0;
//let noeudFilsId = 0;

/* Affichage des réponses */

$(document).ready(
    function() {
        /* $("#doAjax").click(doRequestResponse); */
        doRequestResponse();
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

    // On récupère les id de tous les boutons créés pour y mettre des event listeners
    let boutonsReponse = document.getElementsByClassName("boutonReponse");

    for (let i = 0; i < boutonsReponse.length; i++) {
        let idBouton = boutonsReponse[i].id; 
        document.getElementById(idBouton).addEventListener("click", changeIdQuestion);
    }
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
        success: showResultQuestion,
        error: showErrorQuestion
    });
}

//Fonction pour récupérer l'id du noeud fils
function doRequestNoeudFils(){
    const url = "../api/reponses/" + reponseId + "/noeudFils";
    let myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");
    let noeudFilsId = 0;
    const fetchOptions = {
        method: "GET"
    }
    return fetch(url, fetchOptions)
        .then((response) => {
            return response.json();
        })
        .then((dataJSON) => {
            noeudFilsId = dataJSON.id;
            return noeudFilsId;
        })
        .catch((error) => console.log(error));
}

//Fonction pour changer les questions et réponses sur la page en fonction de la réponse de l'utilisateur
async function changeIdQuestion() {
    console.log("click")
    let idBouton = event.target.id;
    console.log("id bouton = " + idBouton);
    reponseId = idBouton.split("_")[1];
    console.log("id réponse = " + reponseId);
    let noeudFilsId = await doRequestNoeudFils();
    console.log("id noeud fils = " + noeudFilsId);
    questionId = noeudFilsId;
    console.log("id question fille = " + questionId);
    doRequestQuestion();
    doRequestResponse();
}