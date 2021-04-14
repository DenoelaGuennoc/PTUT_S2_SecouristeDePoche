--Thèmes
INSERT INTO Theme(id, titre) VALUES
    (1, 'Protection'),
    (2, 'Alerte'),
    (3, 'Obstruction des voies aériennes'),
    (4, 'Hémorragie'),
    (5, 'Perte de connaissance'),
    (6, 'Arrêt cardio-respiratoire'),
    (7, 'Malaise'),
    (8, 'Brûlures'),
    (9, 'Plaies'),
    (10, 'Traumatismes'), 
    (11, 'Fiche Technique');

--Chapitres sans contenu
INSERT INTO Chapitre(id, titre, theme_id) VALUES
    (1,'Protection', 1), 
    (2, 'Alerte', 2), 
    (3, 'Alerte et Protection', 2), 
    (4, 'Obstruction aiguë des voies aériennes', 3), 
    (5, 'Hémorragie externe', 4), 
    (6, 'Perte de connaissance', 5), 
    (7, 'Arrêt cardio-respiratoire', 6), 
    (8, 'Malaise', 7), 
    (9, 'Brûlure', 8), 
    (10, 'Plaie', 9), 
    (11, 'Traumatisme', 10), 
    (12, 'Compression Locale', 11), 
    (13, 'Compression Thoracique', 11), 
    (14, 'Défibrillateur Automatisé Externe', 11), 
    (15, 'Défibrillation', 11), 
    (16, 'Désobstruction par la methode des claques dans le dos', 11), 
    (17, 'Désobstruction par la méthode des compressions abdominales', 11), 
    (18, 'Désobstruction par la méthode des compressions thoraciques', 11), 
    (19, 'Garrot', 11), 
    (20, 'Insufflations', 11), 
    (21, 'Libération des voies aériennes',11), 
    (22, 'Maintien de la tête', 11), 
    (23, 'Position Latérale de Séurité', 11); 

/*Problème pour mettre le fichier Txt dans la table Chapitre
    Première technique: 
        LOAD DATA INFILE mais je pense que c'est pas ça
    Deuxième technique: 
    'Alerte',*[*] FROM OPENROWSET(BULK N'\Alerte.txt', SINGLE_BLOB), 2)"; 
        Problème : "attendu "DEFAULT, NOT, EXISTS, INTERSECTS, UNIQUE" " 
*/

--Illustrations
--INSERT INTO Illustration(id, nomIllustration, descriptionIllustration, dessinIllustration) VALUES 

-- Chapitre_images
--INSERT INTO Chapitre_images(Chapitre_id, images_id) VALUES

--Fiche 
--INSERT INTO Fiche(idFiche, nomFiche, idNoeud, nomNoeud) VALUES 

--Fiche_dessins
--INSERT INTO Fiche_dessins(Fiche_id, dessins_id) VALUES

--Chapitre_conduiteATenir
--INSERT INTO Chapitre_conduiteATenir(Chapitre_id, conduiteATenir_id) VALUES 

--Quizz     (id, intitule, reponse_A, reponse_B, reponse_C, reponse_D, reponse_Vraie) 
/*LOAD DATA INFILE '/src/main/resources/ChapitresTxt/Quizz.txt' INTO TABLE Quizz 
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '/n'; => Erreur de syntaxe */

--Quizz_sujets
--INSERT INTO Quizz_sujets(Quizz_id, sujets_id) VALUES

--Pas sûre
--Questions
--INSERT INTO Question(idQuestion,resumeQuestion,texteQuestion,idNoeud,nomNoeud, idFiche) VALUES

--Réponse


INSERT INTO Noeud_Decisionnel(DTYPE, id, nom_Noeud, texte_Question) VALUES
    ('Question', 1, 'Respire', 'La victime respire-t-elle ?'),
    ('Question', 3, 'OBVA', 'La victime a-t-elle avalé un objet de travers ?'),
    ('Question', 4, 'Hemo', 'La victime saigne-t-elle abondamment ?'),
    ('Question', 5, 'Trauma', 'La victime a-t-elle subit un traumatisme physique ?'),
    ('Question', 6, 'Plaie', 'La victime a-t-elle une plaie ?'),
    ('Question', 7, 'Brulure', 'La victime s''est-elle brûlée ?'),
    ('Question', 8, 'Malaise', 'La victime se sent-elle mal ?'),
    ('Question', 9, 'Type OBVA', 'La victime peut-elle parler ou tousser ?'),
    ('Question', 10, 'Type Hemo', 'De quelle partie du corps saigne la victime ?'),
    ('Question', 11, 'Localisation Trauma', 'Où la victime a-t-elle subit un traumatisme ?'),
    ('Question', 12, 'Type Plaie', 'La plaie est-elle simple ou grave ?'),
    ('Question', 13, 'Localisation Plaie Grave', 'Où se situe la plaie ?'),
    ('Question', 14, 'Type Brulure', 'La brûlure est-elle simple ou grave ?'),
    ('Question', 15, 'Cause Brulure', 'Quelle est la cause de la brûlure ?');
    --('Question', 16, 'Type de victime', 'La victime est-elle :');
INSERT INTO Noeud_Decisionnel(DTYPE, id,nom_Noeud, noeud_Racine, texte_Question) VALUES
    ('Question', 2, 'Conscient', TRUE, 'La victime est-elle consciente ?');

--Réponses
INSERT INTO Reponse(id, libelle_reponse, question_posee_id, noeud_fils_id) VALUES
    (1, 'OUI', 2, 3),
    (2, 'NON', 2, 1),
    (3, 'OUI', 3, 4),
    (4, 'NON', 3, 9);
    --(3, 'OUI', 1, 16),
    --(4, 'NON', 1, 16); --voir comment demander le type de victime sachant un OneToOne entre réponse et noeud fils

/*
--Illustrations
INSERT INTO Chapitre VALUES();

--Fiches
INSERT INTO Chapitre VALUES();

--Media
INSERT INTO Chapitre VALUES();
*/
