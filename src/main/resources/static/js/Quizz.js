//Fonction pour cacher texte
function cacheTexte (ClassName){
    var paragraphe = document.getElementsByClassName(ClassName);
    for (var i = 0; i < paragraphe.length; i++) {
    paragraphe[i].style.display = 'none';
    }
  }
 
//Cache les boutons du quizz 
cacheTexte("quizz");

//Fonction pour voir les boutons du quizz
function afficheTexte (ClassName){
    var paragraphe = document.getElementsByClassName(ClassName);
    for (var i = 0; i < paragraphe.length; i++) {
    paragraphe[i].style.display = 'block';
    }
}


//Fonction pour ouvrir les bons quizzs
var lancerQCM=document.getElementsByClassName("lancerQCM"); 
    for (var i=0; i<lancerQCM.length; i++) {
                lancerQCM[i].addEventListener("click", afficherQuizz);}
            
function afficherQuizz(event){
    const headers = {
          "Content-Type": "application/json"
        };
        const fetchOptions = { headers: headers, method:"GET" };
        //empecher le rechargement de la page
        event.preventDefault();
        //QCM aléatoire
        if (this.id === "0"){
            console.log(this.id); 
            var  nombreId= document.getElementsByClassName("lancerQCM").length -1 ;  
            var id = 1+Math.floor(Math.random()*nombreId); 
            var url = "../api/themes/" +id+ "/interrogations"; 
        }
        else {
             //ici, les id des thèmes correspondent à leurs id dans la table
            id = this.id; 
            url = "../api/themes/" +id+ "/interrogations";  
        }
        // la req AJAX
        fetch(url, fetchOptions)
          .then((response) => {
            return response.json();
          })
          .then((dataJSON) => { 
            let intitules = new Array();
            let reponsesA = new Array();
            let reponsesB = new Array(); 
            let reponsesC = new Array(); 
            let reponsesD = new Array(); 
            let reponsesVraies = new Array();
            for (let j=0; j<dataJSON.content.length; j++) {
                intitules[j]=dataJSON.content[j].intitule;
                reponsesA[j]=dataJSON.content[j].reponseA; 
                reponsesB[j]=dataJSON.content[j].reponseB; 
                reponsesC[j]=dataJSON.content[j].reponseC; 
                reponsesD[j]=dataJSON.content[j].reponseD; 
                reponsesVraies[j]=dataJSON.content[j].reponseVraie; 
            }     
            cacheTexte("QCM");
            afficheTexte("quizz");
            //Initialisation première question
            document.getElementById("question").innerHTML = intitules[0];
            document.getElementById("repA").innerHTML = reponsesA[0];
            document.getElementById("repB").innerHTML = reponsesB[0];
            document.getElementById("repC").innerHTML = reponsesC[0];
            document.getElementById("repD").innerHTML = reponsesD[0];
            document.getElementById("repVraie").innerHTML ="Bien joué, la réponse est bien => " +  reponsesVraies[0];
            document.getElementById("repFausse").innerHTML = "FAUX";
            //Cacher la réponse vraie
            document.getElementById("repVraie").style.display ='none';
            document.getElementById("repFausse").style.display = 'none';
            //Questions suivantes
            let k=0;
            document.getElementById("suivant").addEventListener("click", afficherQuestionsSuivantes);
            //Fonction pour afficher les autres questions du QCM
            //A améliorer
            function afficherQuestionsSuivantes () {              
                if (k < dataJSON.content.length - 1) {
                    document.getElementById("repVraie").style.display = 'none';
                    document.getElementById("repFausse").style.display = 'none';
                    
                    document.getElementById("question").innerHTML = intitules[k+1];
                    document.getElementById("repA").innerHTML = reponsesA[k+1];
                    document.getElementById("repB").innerHTML = reponsesB[k+1];
                    document.getElementById("repC").innerHTML = reponsesC[k+1];
                    document.getElementById("repD").innerHTML = reponsesD[k+1];
                    document.getElementById("repVraie").innerHTML ="Bien joué, la réponse est bien => " + reponsesVraies[k]; 
                    k++;       
                    document.getElementById("fin").innerHTML = " ";
                             }
                else {                    
                    k=0 ;  
                    document.getElementById("fin").innerHTML = "Il n'y a plus de question sur ce thème ";
                    return ; 
                }
            } document.getElementById("fin").innerHTML = " ";
            //Fonction pour retourner aux thèmes
            document.getElementById("retour").addEventListener("click",retourAuxThemes); 
            function retourAuxThemes () {
                cacheTexte("quizz"); 
                afficheTexte("QCM");
                k=0; //pour que les questions des autres thèmes recommencent à la première
                }
            //Fonction pour savoir si la réponse donnée est la bonne 
            var reponse=document.getElementsByClassName("buttonRep"); 
                for (var i=0; i<reponse.length; i++) {
                    reponse[i].addEventListener("click", afficherReponse);}
            function afficherReponse (event){
                    var repV = document.getElementById("repVraie").innerText ;  
                    var itemVrai = repV.substr(34,1);
                    var repChoisie = this.id.substring(this.id.length -1);
                    if (itemVrai === repChoisie) {
                        document.getElementById("repVraie").style.display = 'block';
                        document.getElementById("repFausse").style.display = 'none';
                    }
                    else {
                        document.getElementById("repVraie").style.display = 'none';
                        document.getElementById("repFausse").style.display = 'block';
                    }
                }
                
                //afficher le bon thème 
                let url2 = "../api/themes/" +id;
                // la req AJAX
                fetch(url2, fetchOptions)
                    .then((response) => {
                        return response.json();
                                        })
                    .then((dataJSON) => { 
                        let bonTheme = dataJSON.titre; 
                        document.getElementById("themeChoisi").innerHTML = "Le thème choisi est " + bonTheme;
                                        })
                    .catch((error) => console.log(error)); 
        
            })
          .catch((error) => console.log(error));
      }
    
