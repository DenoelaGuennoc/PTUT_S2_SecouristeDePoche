-- Initialisation spécifiques pour un jeu de test
INSERT INTO Theme(id, titre) VALUES (1, 'testTheme');
INSERT INTO Chapitre(id, titre, theme) VALUES (2, 'testChapitre1', 'testTheme');
INSERT INTO Chapitre(id, titre, theme) VALUES (3, 'testChapitre2', 'testTheme');
INSERT INTO Chapitre(id, titre, theme) VALUES (4, 'testChapitre3', 'testTheme');

INSERT INTO Theme(id, titre) VALUES (5, 'testTheme1000');
INSERT INTO Chapitre(id, titre, theme) VALUES (6, 'testChapitre10000', 'testTheme1000');
INSERT INTO Chapitre(id, titre, theme) VALUES (7, 'testChapitre20000', 'testTheme1000');
INSERT INTO Chapitre(id, titre, theme) VALUES (8, 'testChapitre20000', 'testTheme1000');