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
    (10, 'Traumatismes');

--Chapitres
INSERT INTO Chapitre(id, titre, theme_id) VALUES
    (1, 'Obstruction partielle', 3),
    (2, 'Obstruction totale', 3);

--Noeuds décisionnels
INSERT INTO Noeud_Decisionnel(DTYPE, id, nom_Noeud, texte_Question) VALUES
    ('Question', 1, 'Respire', 'La victime respire-t-elle ?'),
    ('Question', 2, 'Conscient', 'La victime est-elle consciente ?'),
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
