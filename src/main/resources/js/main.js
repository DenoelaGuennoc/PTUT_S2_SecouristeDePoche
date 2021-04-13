var content = document.querySelector('#hamburger-content');
var sidebarBody = document.querySelector('#hamburger-sidebar-body');
var button = document.querySelector('#hamburger-button');
var overlay = document.querySelector('#hamburger-overlay');
var activatedClass = 'hamburger-activated';


sidebarBody.innerHTML = content.innerHTML;


button.addEventListener('click', function(e){
    e.preventDefault();

    this.parentNode.classList.add(activatedClass);

});

button.addEventListener('keydown', function(e) {
    if (this.perentNode.classList.contains(activatedClass))
    {
        if(e.repeat === false && e.which === 27)  /* éviter les appuis longs    */
            this.parentNode.classList.remove(activatedClass);
    }
})

overlay.addEventListener('click', function(e) {
    e.preventDefault();

    this.parentNode.classList.remove(activatedClass);
});


//Fonction pour récupérer les réponses associées à la question posée
// voir pour récupérer les données des réponses possibles
function afficheReponse(){
    let noeudId = document.getElementById("noeudId");
    resHTML = "";
    array.forEach(reponse => {
        if(noeudId == reponse.questionPosee_id)
    });
}
