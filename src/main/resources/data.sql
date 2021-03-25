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
INSERT INTO NouedDecisionnel VALUES
    (1, 'Respire'),
    (2, 'Conscient'),
    (3, 'OBVA'),
    (4, 'Hemo'),
    (5, 'Trauma'),
    (6, 'Plaie'),
    (7, 'Brulure'),
    (8, 'Malaise'),
    (9, 'Type OBVA'),
    (10, 'Type Hemo'),
    (11, 'Localisation Trauma'),
    (12, 'Type Plaie'),
    (13, 'Localisation Plaie Grave'),
    (14, 'Type Brulure'),
    (15, 'Cause Brulure');
/*
--Questions
INSERT INTO Question VALUES();

--Réponses
INSERT INTO Chapitre VALUES();

--Illustrations
INSERT INTO Chapitre VALUES();

--Fiches
INSERT INTO Chapitre VALUES();

--Media
INSERT INTO Chapitre VALUES();
*/
