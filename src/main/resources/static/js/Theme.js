//cacher bouton Retour aux themes
document.getElementById("goBack").style.display ='none'; 

//Cliquer sur un chapitre vous envoie sur la bonne page
var chapitre = document.getElementsByClassName("titreChapitre"); 
for (var i=0; i<chapitre.length; i++){
    chapitre[i].addEventListener("click",afficheChapitre); 
}

function afficheChapitre(event){
    const headers = {
          "Content-Type": "application/json"
        };
        const fetchOptions = { headers: headers, method:"GET" };
        //empecher le rechargement de la page
        event.preventDefault();
        //ici, les id des thèmes correspondent à leurs id dans la table
        var titreChapitre = this.innerText;
        let url = "../api/chapitres/" ; 
        // la req AJAX
        fetch(url, fetchOptions)
          .then((response) => {
            return response.json();
          })
          .then((dataJSON) => {
              console.log(dataJSON.content);
              for (var i=0; i<dataJSON.content.length; i++){
                  if (titreChapitre === dataJSON.content[i].titre){
                      document.getElementById("tableau").style.display = 'none' ; 
                      document.getElementById("titre").innerHTML = titreChapitre ; 
                      document.getElementById("information").style.display ='none'; 
                      //bouton retour aux themes est visible
                      document.getElementById("goBack").style.display ='block';
                      //Un peu de mise en forme
                      contenu = dataJSON.content[i].contenu ; 
                      var premierchgmt = contenu.replace (/-/gi , "<br> &nbsp &nbsp &nbsp -").replace(/#/gi , "<br>&nbsp &nbsp &nbsp &nbsp &nbsp-").replace(/°/gi, "<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp-").replace(/$/gi, "<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp-"); 
                      var secondchgmt = premierchgmt.replace (/~/gi, "<br></br><h4>").replace(/%/gi, "</h4><br>"); 
                      document.getElementById("contenuChap").innerHTML = secondchgmt ; 
                     
                     } }
   
              
          })
          .catch((error) => console.log(error));

}

//Fonction pour revenir au menu principal 
document.getElementById("goBack").addEventListener("click", goBack); 
function goBack(event){
    document.getElementById("tableau").style.display = 'block';
    document.getElementById("information").style.display ='block'; 
    document.getElementById("titre").innerHTML ="Les thèmes"; 
    document.getElementById("contenuChap").innerHTML = " " ; 
    document.getElementById("goBack").style.display ='none'; 
}





/*var chapitre = document.getElementsByClassName("titreTheme");
    for (var i = 0; i < chapitre.length; i++) {
    chapitre[i].addEventListener("click",afficheChapitre);
    }
    function afficheChapitre(event){
         const headers = {
          "Content-Type": "application/json"
        };
        const fetchOptions = { headers: headers, method:"GET" };
        //empecher le rechargement de la page
        event.preventDefault();
        //ici, les id des thèmes correspondent à leurs id dans la table
        var titreTheme = this.innerText;
        let url = "../api/themes/" ; 
        // la req AJAX
        fetch(url, fetchOptions)
          .then((response) => {
            return response.json();
          })
          .then((dataJSON) => { 
              for (var i=0; i<dataJSON.content.length;i++) {
                  if (titreTheme === dataJSON.content[i].titre){
                      var idTheme = dataJSON.content[i].id;
                      //chercher les chapitres correspondants
                      let url2 = "../api/themes/" + idTheme + "/chapitres";
                       // la req AJAX
                        fetch(url2, fetchOptions)
                             .then((response) => {
                                 return response.json();
                        })
                                .then((dataJSON) => { 
                                    for (i=0; i< dataJSON.content.length; i++){
                                        document.getElementsByClassName("titreChapitre").innerHTML = dataJSON.content[i].titre; 
                                    
                                    console.log(dataJSON.content[i].titre);}
                                    })
                                .catch((error) => console.log(error));
                  }
              }
              
          })
          .catch((error) => console.log(error));
}*/

