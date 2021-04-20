let noeudId = 0; //noeudRacine dans notre base
let reponseId = 0;

// A l'ouverture de la page
$(document).ready(
    function() {
        findNoeudRacine();
    }
);

// Fonction permettant de trouver le premier noeud à afficher
function findNoeudRacine(){
    const url = "../api/noeudDecisionnels";
    let myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");
    const fetchOptions = {
        method: "GET"
    }
    fetch(url, fetchOptions)
        .then((response) => {
            return response.json();
        })
        .then((dataJSON) => {
            noeuds = dataJSON.content;
            for(let i=0; i<noeuds.length; i++){
                if(noeuds[i].noeudRacine == true){
                    noeudId = noeuds[i].id;
                    break;
                }
            }
            doRequestNoeud();
            doRequestResponse();
        })
        .catch((error) => console.log(error));
}


/* Affichage des réponses aux questions */

// Fonction qui traite les résultats de la requête
function showResultResponse(resultJson) {
    // Le code source du template est dans la page
    var template = $('#reponsesTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#contenuNoeud').html(processedTemplate);

    // On récupère les id de tous les boutons créés pour y mettre des event listeners
    let boutonsReponse = document.getElementsByClassName("boutonReponse");

    for (let i = 0; i < boutonsReponse.length; i++) {
        let idBouton = boutonsReponse[i].id; 
        document.getElementById(idBouton).addEventListener("click", changeIdNoeud);
    }
}

// Fonction qui traite les erreurs de la requête
function showErrorResponse(xhr, status, message) {
    $("#contenuNoeud").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequestResponse() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + noeudId + "/reponsePossible",
        dataType: "json",
        success: showResultResponse,
        error: showErrorResponse
    });
}


/* Affichage de la question ou de la fiche */

// Fonction qui traite les résultats de la requête
function showResultNoeud(resultJson) {
    // si c'est une question
    if(resultJson.nomFiche == null){
        // Le code source du template est dans la page
        var template = $('#questionTemplate').html();
        // On combine le template avec le résultat de la requête
        var processedTemplate = Mustache.to_html(template, resultJson);
        // On affiche le résultat dans la page
        $('#titreNoeud').html(processedTemplate);

        doRequestResponse();
        // vérifier si la question a une aide-compréhension
        findAideComprehension();
    }
    // si c'est une fiche
    else {
        // Le code source du template est dans la page
        var template = $('#ficheTitreTemplate').html();
        // On combine le template avec le résultat de la requête
        var processedTemplate = Mustache.to_html(template, resultJson);
        // On affiche le résultat dans la page
        $('#titreNoeud').html(processedTemplate);
        
        doRequestIllustrations();
    }
}

// Fonction qui traite les erreurs de la requête
function showErrorNoeud(xhr, status, message) {
    $("#titreNoeud").html("Erreur: " + status + " : " + message);
}


/* Changement de noeud décisionnel */

//Fonction pour faire l'appel AJAX
function doRequestNoeud() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/noeudDecisionnels/" + noeudId,
        dataType: "json",
        success: showResultNoeud,
        error: showErrorNoeud
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

//Fonction pour changer de noeud sur la page en fonction de la réponse de l'utilisateur
async function changeIdNoeud() {
    let idBouton = event.target.id;
    reponseId = idBouton.split("_")[1];
    let noeudFilsId = await doRequestNoeudFils();
    noeudId = noeudFilsId;
    doRequestNoeud();
}


/* Affichage des illustrations */

// Fonction qui traite les résultats de la requête
function showResultIllustrations(resultJson) {
    // Le code source du template est dans la page
    var template = $('#ficheIllustrationsTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#contenuNoeud').html(processedTemplate);
}

// Fonction qui traite les erreurs de la requête
function showErrorIllustrations(xhr, status, message) {
    $("#contenuNoeud").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequestIllustrations() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + noeudId + "/dessins",
        dataType: "json",
        success: showResultIllustrations,
        error: showErrorIllustrations
    });
}


/* Affichage des aides à la compréhension */

// Fonction qui traite les résultats de la requête
function showResultACIllustrations(resultJson) {
    // Le code source du template est dans la page
    var template = $('#ficheIllustrationsTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#aide_comprehension_illustrations').html(processedTemplate);
}

// Fonction qui traite les erreurs de la requête
function showErrorACIllustrations(xhr, status, message) {
    $("#aide_comprehension_illustrations").html("Erreur: " + status + " : " + message);
}

// Fonction pour faire l'appel AJAX
function doRequestACIllustrations(aideId) {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + aideId + "/dessins",
        dataType: "json",
        success: showResultACIllustrations,
        error: showErrorACIllustrations
    });
}

// Fonction qui traite les résultats de la requête
function showResultAideComprehension(resultJson) {
    // Le code source du template est dans la page
    var template = $('#ficheTitreTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#aide_comprehension_titre').html(processedTemplate);
    doRequestACIllustrations(resultJson.id);
}

// Fonction qui traite les erreurs de la requête
function showErrorAideComprehension(xhr, status, message) {
    $("#aide_comprehension_titre").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX
function doRequestAideComprehension(resultJson) {
    aideId = resultJson.id;
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + aideId,
        dataType: "json",
        success: showResultAideComprehension,
        error: showErrorAideComprehension
    });
}

function gestionAbsenceAideComprehension(xhr, status, message){
    if(xhr.status==404) {
        // s'il n'y a pas d'aide compréhension associée à cette question, vider les espaces prévus pour son affichage
        $("#aide_comprehension_titre").html("");
        $("#aide_comprehension_illustrations").html("");
        console.log("pas d'aide comprehension ici");
    }
    else {
        $("#aide_comprehension_titre").html("Erreur: " + status + " : " + message);
    }
}

// Fonction pour vérifier l'existence d'une aide compréhension à question
function findAideComprehension(){
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + noeudId + "/aideComprehension",
        dataType: "json",
        success: doRequestAideComprehension,
        error: gestionAbsenceAideComprehension
    });
}