let noeudId = 5; //noeudRacine dans notre base
let reponseId = 0;
let aideComprehensionId = 0;
let illustrationsPositionFiche = new Map();
let illustrationsFiche = new Array();
let illustrationsPositionAC = new Map();
let illustrationsAC = new Array();

// A l'ouverture de la page
$(document).ready(
    function() {
        console.log("ready");
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
                    console.log("nouveau noeud racine = ", noeudId);
                    break;
                }
            }
            doRequestNoeud();
            doRequestResponse();
        })
        .catch((error) => console.log(error, "l'erreur se situe ici"));
}


/* Affichage des réponses aux questions */

// Fonction qui traite les résultats de la requête doRequestReponse()
// Elle affiche les réponses des noeuds question
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

// Fonction qui traite les erreurs de la requête doRequestReponse()
function showErrorResponse(xhr, status, message) {
    $("#contenuNoeud").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX et récupérer les réponses possibles au noeud actuel
function  doRequestResponse() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/questions/" + noeudId + "/reponsePossible",
        dataType: "json",
        success: showResultResponse,
        error: showErrorResponse
    });
}


/* Affichage de la question ou de la fiche */

// Fonction qui traite les résultats de la requête doRequestNoeud()
// Elle affiche les question ou titre des fiches et appelle les fonction nécessaires aux requêtes des autres attributs du noeud
function showResultNoeud(resultJson) {
    // si c'est une question
    if(resultJson.nomFiche == null){
        // Le code source du template est dans la page
        var template = $('#questionTemplate').html();
        // On combine le template avec le résultat de la requête
        var processedTemplate = Mustache.to_html(template, resultJson);
        // On affiche le résultat dans la page
        $('#titreNoeud').html(processedTemplate);
        // récupérer les réponses associées à la question
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
        // récupérer les illustrations de la fiche
        doRequestIllustrations();
    }
}

// Fonction qui traite les erreurs de la requête doRequestNoeud()
function showErrorNoeud(xhr, status, message) {
    $("#titreNoeud").html("Erreur: " + status + " : " + message);
}


/* Changement de noeud décisionnel */

//Fonction pour faire l'appel AJAX et récupérer les information du noeud sur lequel on se trouve
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
    //vider les espaces d'affichage des aides entre deux noeuds
    $("#aide_comprehension_titre").html("");
    $("#aide_comprehension_illustrations").html("");
    //requêter le noeud suivant
    doRequestNoeud();
}


/* Affichage des illustrations */


// Fonction qui trie les illustrations des fiches par position puis les affiche dans l'ordre
function showResultIllustrations() {
    // Récupération des illustrations de la fiche
    var illustrations = illustrationsFiche;
    // Tri des illustrations selon leur valeur de positionDessin quand l'id du guide associé à la position est égal à l'id du noeud souhaité
    illustrations.sort(function compare(a, b) {
        let i = 0;
        let j = 0;
        while(a.relationDessinGuide[i].id.guide != noeudId && i < a.relationDessinGuide.length){
            a.relationDessinGuide.shift(); //on élimine cette position puisqu'elle ne correspond pas à la bonne fiche
        }
        a.relationDessinGuide.length = 1; // on élimine toutes les positions après celle qui correspond à notre fiche
        while(b.relationDessinGuide[j].id.guide != noeudId && j < b.relationDessinGuide.length){
            b.relationDessinGuide.shift(); //on élimine cette position puisqu'elle ne correspond pas à la bonne fiche
        }
        b.relationDessinGuide.length = 1; // on élimine toutes les positions après celle qui correspond à notre fiche
        if (a.relationDessinGuide[i].positionDessin < b.relationDessinGuide[j].positionDessin)
        return -1;
        if (a.relationDessinGuide[i].positionDessin > b.relationDessinGuide[j].positionDessin)
        return 1;
        return 0;
    });
    // Le code source du template est dans la page
    var template = $('#ficheIllustrationsTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, illustrations);
    // On affiche le résultat dans la page
    $('#contenuNoeud').html(processedTemplate);
}


// Fonction pour récupérer les id et positions des illustrations de la fiche
function getIdPositionIllustrations(resultJson){
    //vider la map des potentielles illustrations qui y serait restées de la dernière requête
    illustrationsPositionFiche.clear();
    let nbIllustrations = resultJson.relationGuideDessin.length;
    if(nbIllustrations == 0){
        $('#contenuNoeud').html("Toutes nos excuses ces illustrations ne sont pas encore disponibles");
    }
    else{
        for(let i = 0; i<nbIllustrations; i++){
            let positionIllustration = resultJson.relationGuideDessin[i].positionDessin;
            let idIllustration = resultJson.relationGuideDessin[i].id.dessin;
            illustrationsPositionFiche.set(positionIllustration, idIllustration);
        }
        afficheIllustrations();
    }
}


// Fonction qui traite les erreurs de la requête doRequestIllustrations()
function showErrorgetIdPositionIllustrations(xhr, status, message) {
    console.log("erreur de récupération des id et position d'illustration dans la fiche");
}


//Fonction pour faire l'appel AJAX des informations sur une fiche
function doRequestIllustrations() {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + noeudId,
        dataType: "json",
        success: getIdPositionIllustrations,
        error: showErrorgetIdPositionIllustrations
    });
}


// Fonction pour la requête des illustrations d'une fiche
function afficheIllustrations(){
    //vider l'array pour supprimer les illustrations de la dernière requête
    illustrationsFiche.length = 0;
    for(let i = 1; i<illustrationsPositionFiche.size +1; i++){
        // récupération des id des illustrations de la fiche
        let idIllustration = illustrationsPositionFiche.get(i);
        // fetch des illustrations
        const url = "../api/illustrations/" + idIllustration;
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
                //on met toutes les illustrations de la fiche dans une Array pour faire l'affichage en une fois et n'avoir qu'une template
                illustrationsFiche.push(dataJSON);
            })
            .catch((error) => console.log(error));
    }
    //après un temps donné (quand les n fetch ont été réalisés) déclencher showResultIllustrations()        
    setTimeout(
        ()=>{
            showResultIllustrations();
        }, 700
    );
}


/* Affichage des aides à la compréhension */

// Fonction qui trie les illustrations dans l'array en fonction de leur valeur de position puis les affiche
function showResultACIllustrations() {
    // Récupération des illustrations de la fiche d'aide
    let illustrations = illustrationsAC;
    // Tri des illustrations selon leur valeur de positionDessin
    illustrations.sort(function compare(a, b) {
        let i = 0;
        let j = 0;
        while(a.relationDessinGuide[i].id.guide != aideComprehensionId && i < a.relationDessinGuide.length){
            a.relationDessinGuide.shift(); //on élimine cette position puisqu'elle ne correspond pas à la bonne fiche
        }
        a.relationDessinGuide.length = 1; // on élimine toutes les positions après celle qui correspond à notre fiche
        while(b.relationDessinGuide[j].id.guide != aideComprehensionId && j < b.relationDessinGuide.length){
            b.relationDessinGuide.shift(); //on élimine cette position puisqu'elle ne correspond pas à la bonne fiche
        }
        b.relationDessinGuide.length = 1; // on élimine toutes les positions après celle qui correspond à notre fiche
        if (a.relationDessinGuide[i].positionDessin < b.relationDessinGuide[j].positionDessin)
        return -1;
        if (a.relationDessinGuide[i].positionDessin > b.relationDessinGuide[j].positionDessin)
        return 1;
        return 0;
    });
    // Le code source du template est dans la page
    var template = $('#ficheIllustrationsTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, illustrations);
    // On affiche le résultat dans la page
    $('#aide_comprehension_illustrations').html(processedTemplate);
}


// Fonction pour récupérer les id et positions des illustrations de la fiche d'aide
function getIdPositionACIllustrations(resultJson){
    //vider la map des potentielles illustrations qui y serait restées de la dernière requête
    illustrationsPositionAC.clear();
    let nbIllustrations = resultJson.relationGuideDessin.length;
    if(nbIllustrations == 0){
        $('#aide_comprehension_illustrations').html("Toutes nos excuses ces illustrations ne sont pas encore disponibles");
    }
    else{
        for(let i = 0; i<nbIllustrations; i++){
            let positionIllustration = resultJson.relationGuideDessin[i].positionDessin;
            let idIllustration = resultJson.relationGuideDessin[i].id.dessin;
            illustrationsPositionAC.set(positionIllustration, idIllustration);
        }
        afficheACIllustrations();
    }
}


// Fonction qui traite les erreurs de la requête doRequestACIllustrations()
function showErrorgetIdPositionACIllustrations(xhr, status, message) {
    console.log("erreur de récupération des id et position d'illustration dans la fiche");
}


// Fonction pour la requête des illustrations de la fiche d'aide
function afficheACIllustrations(){
    //vider l'array des illustrations présentent à cause des fiches traitée plus tôt
    illustrationsAC.length = 0;
    for(let i = 1; i<illustrationsPositionAC.size +1; i++){
        let idIllustration = illustrationsPositionAC.get(i);
        //fetch des infos de chaque illustration
        const url = "../api/illustrations/" + idIllustration;
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
                //on place toutes les illustrations dans une array pour les gérer en même temps à l'affichage et au trie
                illustrationsAC.push(dataJSON);
            })
            .catch((error) => console.log(error));
    }
    //attendre avant de lancer showResultACIllustrations    
    setTimeout(
        ()=>{
            showResultACIllustrations(illustrationsAC);
        }, 500
    );
}


// Fonction pour faire l'appel AJAX des informations de la fiche
function doRequestACIllustrations(aideComprehensionId) {
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + aideComprehensionId,
        dataType: "json",
        success: getIdPositionACIllustrations,
        error: showErrorgetIdPositionACIllustrations
    });
}

// Fonction qui traite les résultats de la requête doRequestAideCompréhension() et affiche le titre de la fiche
function showResultAideComprehension(resultJson) {
    // Le code source du template est dans la page
    var template = $('#ficheTitreTemplate').html();
    // On combine le template avec le résultat de la requête
    var processedTemplate = Mustache.to_html(template, resultJson);
    // On affiche le résultat dans la page
    $('#aide_comprehension_titre').html(processedTemplate);
    doRequestACIllustrations(resultJson.id);
}

// Fonction qui traite les erreurs de la requête doRequestAideComprehension()
function showErrorAideComprehension(xhr, status, message) {
    $("#aide_comprehension_titre").html("Erreur: " + status + " : " + message);
}

//Fonction pour faire l'appel AJAX des informations de la fiche
function doRequestAideComprehension(resultJson) {
    aideComprehensionId = resultJson.id;
    $.ajax({
        //appel de l'API auto-générée
        url: "../api/fiches/" + aideComprehensionId,
        dataType: "json",
        success: showResultAideComprehension,
        error: showErrorAideComprehension
    });
}

// Fonction permettant par la gestion des erreurs de savoir si la fiche possède une aide compréhension
function gestionAbsenceAideComprehension(xhr, status, message){
    if(xhr.status==404) { //404 => la page n'existe pas => pas d'aide compréhension sur ce noeud
        // s'il n'y a pas d'aide compréhension associée à cette question
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