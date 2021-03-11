-- Initialisation spécifiques pour un jeu de test
INSERT INTO Theme(id, titreTheme) VALUES (1, 'testTheme');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (2, 'testChapitre1', 'testTheme');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (3, 'testChapitre2', 'testTheme');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (4, 'testChapitre3', 'testTheme');

INSERT INTO Theme(id, titreTheme) VALUES (1, 'testTheme1000');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (2, 'testChapitre10000', 'testTheme1000');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (3, 'testChapitre20000', 'testTheme1000');
INSERT INTO Chapitre(id, titreChapitre, theme) VALUES (4, 'testChapitre20000', 'testTheme1000');