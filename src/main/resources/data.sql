--Thèmes
INSERT INTO Theme(id, titreTheme) VALUES
    (1, 'Protection'),
    (2, 'Alerte'),
    (3, 'Obstruction des voies aériennes'),
    (4, 'Hémorragie'),
    (5, 'Perte de connaissance'),
    (6, 'Arrêt cardio-respiratoire'),
    (7, 'Malaise'),
    (8, 'Brûlures'),
    (9, 'Plaies'),
    (10, 'Traumatismes');

--Chapitres
INSERT INTO Chapitre(id, titreChapitre, theme_id) VALUES
    (1, "L'Obstruction partielle", 3),
    (1, "L'Obstruction totale", 3);

--Noeuds décisionnels
INSERT INTO NouedDecisionnel(id, nomNoeud, texteQuestion) VALUES
    (1, 'Respire', 'La victime respire-t-elle ?'),
    (2, 'Conscient', 'La victime est-elle consciente ?'),
    (3, 'OBVA', 'La victime a-t-elle avalé un objet de travers ?'),
    (4, 'Hemo', 'La victime saigne-t-elle abondamment ?'),
    (5, 'Trauma', 'La victime a-t-elle subit un traumatisme physique ?'),
    (6, 'Plaie', 'La victime a-t-elle une plaie ?'),
    (7, 'Brulure', "La victime s'est-elle brûlée ?"),
    (8, 'Malaise', 'La victime se sent-elle mal ?'),
    (9, 'Type OBVA', 'La victime peut-elle parler ou tousser ?'),
    (10, 'Type Hemo', 'De quelle partie du corps saigne la victime ?'),
    (11, 'Localisation Trauma', 'Où la victime a-t-elle subit un traumatisme ?'),
    (12, 'Type Plaie', 'La plaie est-elle simple ou grave ?'),
    (13, 'Localisation Plaie Grave', 'Où se situe la plaie ?'),
    (14, 'Type Brulure', 'La brûlure est-elle simple ou grave ?'),
    (15, 'Cause Brulure', 'Quelle est la cause de la brûlure ?');
/*
--Réponses
INSERT INTO Chapitre VALUES();

--Illustrations
INSERT INTO Chapitre VALUES();

--Fiches
INSERT INTO Chapitre VALUES();

--Media
INSERT INTO Chapitre VALUES();
*/
