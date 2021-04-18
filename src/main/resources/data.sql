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
    (11, 'Fiches Techniques');

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

--Quizz      
INSERT INTO Quizz (id, intitule, reponseA, reponseB, reponseC, reponseD, reponse_Vraie,sujets_id) VALUES
    (1,'Quand peut on dire qu une personne a perdu connaissance?','ne respire pas','ne répond pas mais réagit','ne répond pas, ne réagit pas mais respire','ne répond pas, ne réagit pas et ne respire plus','C: ne répond pas, ne réagit pas mais respire',5),
    (2,'Quelles sont les causes d une perte de connaissance?','médicale, traumatique ou toxique','médicale et traumatique','médicale ou traumatique','médicale, traumatique et toxique','A: traumatique, médicale ou toxique',5),
    (3,'Vers quoi risque d évoluer une perte de connaissance?','arrêt respiratoire, arrêt cardiaque et malaise','arrêt cardiaque et arrêt respiratoire','arrêt cardiaque','arrêt respiratoire','B: arrêt cardiaque et arrêt respiratoire',5), 
    (4,'La chute de la langue en arrière est-elle un problème dans ce cas?','Oui','Non','Seulement si la victime est adulte','Seulement si la victime a des antécédents de MCV (Maladie Cardio Vasculaire)','A: Oui',5),
    (5,'Quel est le but principal du sauveteur dans ce cas la ?','Faire un massage cardiaque','Tenter de reveiller la victime','Assurer la liberté des voies aériennes de la victime','Prendre son poul en attendant les secours','C: Assurer la liberté des voies aériennes de la victime',5),
    (6,'Quel est la différence entre un malaise et une perte de connaissance','Il n y en a pas: ce sont des synonymes','Lors d un malaise, la victime a de la fièvre en plus','Une perte de connaissance s accompagne généralement d une convalescence de 1 à  2 semaines','Lors d un malaise, la victime est consciente','D: Lors d un malaise, la victime est consciente',5),
    (7,'Quelle est la conduite à  tenir?','Rechercher une absence de réponse, demander de l aide, l allonger sur le dos, libérer les voies aériennes, apprécier la respiration sur environ 10 secondes, la placer en PLS, alerter les secours, surveiller en permanence la respiration de la victime jusqu à  l arrivée des secours, protéger contre la chaleur, le froid ou les intempéries','Alerter les secours, rechercher une absence de réponse, demander de l aide, l allonger sur le dos, libérer les voies aériennes, apprécier la respiration sur environ 10 secondes, la placer en PLS, surveiller en permanence la respiration de la victime jusqu à  l arrivée des secours, protéger contre la chaleur, le froid ou les intempéries','Alerter les secours, rechercher une absence de réponse, demander de l aide, l allonger sur le dos, libérer les voies aériennes, apprécier la respiration sur environ 10 secondes, surveiller en permanence la respiration de la victime jusqu à  l arrivée des secours, protéger contre la chaleur, le froid ou les intempéries','Rechercher une absence de réponse, l allonger sur le dos, libérer les voies aériennes, apprécier la respiration sur environ 10 secondes, la placer en PLS, alerter les secours, surveiller en permanence la respiration de la victime jusqu à  l arrivée des secours','A: Rechercher une absence de réponse, demander de l aide, l allonger sur le dos, libérer les voies aériennes, apprécier la respiration sur environ 10 secondes, la placer en PLS, alerter les secours, surveiller en permanence la respiration de la victime jusqu à  l arrivée des secours, protéger contre la chaleur, le froid ou les intempéries.',5),
    (8,'Comment surveiller la respiration de la victime?','Regarder si le ventre et la poitrine se soulèvent, écouter d éventuels sons provoqués par la respiration et sentir un éventuel flux d air à  l expiration','Regarder si le ventre et la poitrine se soulèvent, écouter d éventuels sons provoqués par la respiration et sentir, avec le plat de la main, le soulèvement du thorax','Regarder si le ventre et la poitrine se soulèvent et sentir un éventuel flux d air à  l expiration','Regarder si le ventre et la poitrine se soulèvent est suffisant','B: Regarder si le ventre et la poitrine se soulèvent, écouter d éventuels sons provoqués par la respiration et sentir, avec le plat de la main, le soulèvement du thorax',5),
    (9,'A quelles conditions faut-il adopter la conduite à  tenir d un arrêt cardiaque?','La victime tremble et arrête de respirer','La victime convulse et à  de plus en plus de mal à  respirer','La respiration devient anormale ou s arrête','La victime commence à  saigner du nez','C: La respiration devient anormale ou s arrête',5),
    (10,'La victime est-elle la seule personne à  protéger?','Oui','Non','Seulement si elle est très gravement blessée','Cela dépend de la zone (rurale ou citadine)','B: Non',1),
    (11,'Comment délimiter la zone de danger?','A l aide d un ruban de signalement, obligatoire dans toutes les voitures depuis 2017','Ne pas la délimiter: seule la police est abilitée à  la faire','A l aide des personnes présentes, en attendant les autorités compétentes','Avec n importe quel matériel présent sur place','D: Avec n importe quel matériel présent sur place',1),
    (12,'Quand doit-on effectuer un dégagement d urgence d une victime?','Lorsque le danger est réel et immédiat','Lorsque le sauveteur a été formé pour cela','Lorsque le danger est réel, immédiat et non contrôlable','Lorsque la victime panique','C: Lorsque le danger est réel, immédiat et non contrôlable',1),
    (13,'Le dégagement d urgence est : ','Commun','Peu fréquent','Assez rare','Exceptionnel','D: Exeptionnel',1),
    (14,'Lors d un dégagement d urgence, la victime doit être:','Rapidement et facilement atteignable','Facilement atteignable et visible','Visible et pouvant être dégagé facilement','Facilement atteignable, visible et pouvant être dégagé facilement','D: Facilement atteignable, visible et pouvant être dégagé facilement',1),
    (15,'Le dégagement d urgence permet de placer la victime:','Loin du danger et prêt des secours','Loin du danger et de ses conséquences','Loin du danger, de ces conséquences et proche des secours','Loin du danger, de ces conséquences et dans un endroit fermé','B: Loin du danger et de ces conséquences',1),
    (16,'Ou trouver les consignes nationales éditées lors d un cas d attaque terroriste ou une situation de violence extrême? ','Sur n importe quel site gouvernemental','Seulement sur le site du ministère des armées, dans la rubrique Vous et la Défense','Seulement sur le site du ministère de l intérieur dans la rubrique réagir en cas d attaque terroriste','Sur les sites du ministère de l intérieur et du ministère des armées','C: Seulement sur le site du ministère de l intérieur dans la rubrique réagir en cas d attaque terroriste',1),
    (17,'Quelle est la conduite à  tenir avant l arrivée des forces de l ordre?','S échapper ou se cacher, alerter et obéir aux forces de l ordre, réaliser les gestes de premiers secours et rester vigilant','S échapper ou se cacher, alerter et obéir aux forces de l ordre et rester vigilant','S échapper ou se cacher puis alerter et obéir aux forces de l ordres','Alerter et obéir aux forces de l ordre, s échapper ou se cacher et rester vigilant','A: S échapper ou se cacher, alerter et obéir aux forces de l ordre, réaliser les gestes de premiers secours et rester vigilant.',1),
    (18,'Que veut dire OAVA?','Obstruction avancée des voies aériennes','Obstruction et Arrêt de la Ventillation Aérienne','Obstruction aiguë des voies aériennes','Observation avancée de virus aérien','C: Obstruction aiguë des voies aériennes',3),
    (19,'Combien de type de d obstruction existe-t-il?','1','2','3','4','B: 2',3),
    (20,'Laquelle de ces affirmations est fausse concernant l obstruction partielle?','La victime commence à  devenir bleue','La victime peut parler ou crier','La victime tousse vigoureusement','La victime respire, parfois avec un bruit surajouté','A: La victime commence à  devenir bleue',3),
    (21,'Laquelle de ces affirmations est fausse concernant l obstruction grave?','La victime porte ses mains à  sa gorge','La victime garde la bouche ouverte','La victime peut seulement émettre des petits bruits','La victime s agite, devient rapidement bleue puis perd connaissance','C : La victime peut seulement émettre des petits bruits',3),
    (22,'Est-ce qu une OAVA peut être mortelle?','Oui, tout le temps','Oui, en l absence de gestes de secours efficaces','Oui, en l absence d une équipe médicale compétente','Non, cela risque juste d entraîner des complications respiratoires assez graves','B: Oui, en l absence de gestes de secours efficaces',3),
    (23,'Laquelle des ces affirmations est fausse concernant une obstruction partielle?','Encourager la victime à  tousser','Installer la victime dans la position qu elle désire','Demander un avis médical et appliquer les consignes','Pratiquer les techniques de désobstruction','D: Pratiquer les techniques de désobstruction',3),
    (24,'Que faut-il faire en cas d obstruction grave?','Donner par tranche de 10 des claques dans le dos','Réaliser des compressions seulement','Répeter un cycle claques dans le dos et compressions','Faire du bouche à  bouche afin d essayer de déloger le corps étranger par aspiration','C: Répeter un cycle claques dans le dos et compressions',3),
    (25,'Laquelle de ces affirmations est fausse concernant la réalisation des compressions?','Au niveau abdominal s il s agit d un adulte ou d un enfant','Au niveau thoracique s il s agit d un nourrisson','Au niveau thoracique s il s agit d un adulte obèse ou d une femme enceinte lorsqu il est impossible d encercler l abdomen','Aucune de ces affirmations est vraie','D: Aucune de ces affirmations est vraie',3),
    (26,'Quand interrompre les manoeuvres lors d une obstruction grave?','Lors de l apparition d une toux, de cris ou de pleurs','Lors de l apparition d une toux, de cris ou de pleurs et lors de la reprise de la respiration','Lors de l apparition d une toux, de cris ou de pleurs, la reprise de la respiration et le rejet du corps étranger','Lors de l arrivée des secours','C: Lors de l apparition d une toux, de cris ou de pleurs, la reprise de la respiration et le rejet du corps étranger',3),
    (27,'Que ne faut-il pas faire si les manoeuvres de désobstruction sont efficaces?','Réconforter la victime en lui parlant réguliérement','Installer la victime dans la position où elle se sent le mieux','Desserer les vêtements','La faire manger','D: La faire manger',3),
    (28,'Que faut-il faire si la victime perd connaissance?','La mettre en PLS','Réaliser une réanimation cardio-pulmonaire','Réveiller la victime à  tout pris','Mettre la victime sur le ventre et lui donner des claques dans le dos','B: Réaliser une réanimation cardio-pulmonaire',3),
    (29,'Comment peut-on définir une plaie?','Lésion de la peau','Lésion de la peau avec atteinte possible des tissus situés dessous','Lésion de la peau avec atteinte des tissus situés en dessous','Lésion de tout type de tissus entraînant, ou non, un saignement','B: Lésion de la peau avec une atteinte possible des tissus situés dessous.',9),
    (30,'Combien de type de plaies existe-t-il?','4','3','2','1','C: 2 (plaie simple et plaie grave)',9),
    (31,'Quel symptôme n a rien à  voir avec la caractérisation d une plaie grave ?','Mécanisme pénétrant','Sa localisation','La douleur associée','Son aspect','C: La douleur associée',9),
    (32,'Quelles sont les causes d une plaies?','Coupure ou morsure','Coupure, éraflure ou morsure','Coupure, morsure ou piqure','Coupure, morsure, éraflure ou piqûre','D: Coupure, morsure, éraflure ou piqûre',9),
    (33,'Quelle est l affirmation fausse?','Une plaie peut-être à  l origine d une aggravation immédiate de l état de la victime par hémorragie','Une plaie peut-être à  l origine d une aggravation immédiate de l état de la victime par défaillance cardiaque','Une plaie peut-être à  l origine d une aggravation immédiate de l état de la victime par défaillance de la respiration','Une plaie peut-être à  l origine d une infection secondaire dont le tétanos','B: Une plaie peut-être à  l origine d une aggravation immédiate de l état de la victime par défaillance cardiaque',9),
    (34,'La conduite à  tenir pour les différents types de plaies est la même :','Vrai','Faux','Cela depend de la localisation de la plaie','Cela dépend de la localisation de la plaie et de la douleur associée','B: Faux',9),
    (35,'Laquelle de ces affirmations est fausse concernant les plaies graves?','Retirer le corps étranger afin d avoir une meilleure visibilité de la plaie','En cas d hémorragie, arrêter le saignement','Si la plaie est située au niveau du thorax, la laisser à  l air libre','Installer confortablement et sans attendre la victime en position d attente','A: Retirer le corps étranger afin d avoir une meilleure visibilité de la plaie',9),
    (36,'Laquelle de ces affirmations est fausse concernant la position d attente?','Mettre la victime en position allongée, yeux fermés en demandant de ne pas bouger la tête en présence d une plaie à  l oeil','La position allongée permet de prévenir les détresses et d éviter les complications','Mettre la victime en position assise en présence d une plaie au thorax et à  l abdomen','La position assise facilite la respiration lorsqu on est en présence d une plaie au thorax','C: Mettre la victime en position assise en présence d une plaie au thorax et à  l abdomen',9),
    (37,'Laquelle de ces affirmations est fausse concernant les plaies simples?','Se laver les mains à  l eau et au savon','Nettoyer la plaie en rinçant abondamment à  l eau chaude courante, avec ou sans savon, en s aidant d une compresse si besoin pour enlever les souillures','Désinfecter à  l aide d un antiseptique','Protéger par un pansement adhésif','B: nettoyer la plaie en rinçant abondamment à  l eau chaude courante, avec ou sans savon, en s aidant d une compresse si besoin pour enlever les souillures',9),
    (38,'Pourquoi est-il conseillé de consulter un medecin ou un autre professionnel de santé suite à  une plaie simple?','Pour vérifier la validité de la vaccination antitétanique','Pour éviter la fièvre','Pour éviter des rougeurs','Pour avoir un arrêt de travail','A: Pour vérifier la validité de la vaccination antitétanique',9),
    (39,'Que sont les atteintes traumatiques?','Lésions des os, des articulations ou des organes','Lésion des articulations, des organes ou de la peau','Lésion des os, des articulations, des organes, de la peau ou des muscles','Lésion des os, des articulations, des organes ou de la peau','D: Lésion des os, des articulations, des organes ou de la peau',10),
    (40,'Quels sont les symptômes généraux de ces atteintes traumatiques?','Douleur vive, difficulté ou impossibilité de bouger, éventuellement accompagnées de fièvre ou d un gonflement ou d une déformation de la zone atteinte','Douleur vive, difficulté ou impossibilité de bouger, éventuellement accompagnées d un gonflement ou d une déformation de la zone atteinte','Difficulté ou impossibilité de bouger, éventuellement accompagnées d un gonflement ou d une déformation de la zone atteinte','Douleur vive et difficulté ou impossibilité de bouger','B: Douleur vive, difficulté ou impossibilité de bouger, éventuellement accompagnées d un gonflement ou d une déformation de la zone atteinte',10),
    (41,'Quels chocs peuvent conduire à  une atteinte des organes sous-jacents et peuvent se révéler secondairement par d autres signes?','Au niveau de la tête','Au niveau de la tête ou du thorax','Au niveau de la tête, du thorax ou de l abdomen','Au niveau de la tête, du thorax, de l abdomen ou de la colonne vertébrale','C: Au niveau de la tête, du thorax ou de l abdomen',10),
    (42,'Quels sont les causes de ces traumatismes?','Résultat d un choc, d un coup ou d un faux mouvement','Résultat d un choc (physique ou psychique), d un coup ou d un faux mouvement','Résultat d un choc, d un coup, d un faux mouvement ou d un manque de vitamine B12','Résultat d un choc ou d un faux mouvement','A: Résultat d un choc, d un coup ou d un faux mouvement',10),
    (43,'Quels sont les risques lors d une atteinte traumatique?','Complications physiques future, neurologiques ou respiratoires','Complications physiques future, respiratoires ou circulatoires','Complications neurologiques et circulatoires','Complications neurologiques, respiratoires ou circulatoires','D: Complications neurologiques, respiratoires ou circulatoires.',10),
    (44,'Que faire si la victime a perdu connaissance?','Adopter la conduite à  tenir face à  un malaise ','Adopter la conduite à  tenir face à  une perte de connaissance','Adopter la conduite à  tenir face à  un malaise en adaptant la mise en PLS selon la fiche technique 3','Adopter la conduite à  tenir face à  une perte de connaissance en adaptant la mise en PLS selon la fiche technique 3','B: Adopter la conduite à  tenir face à  une perte de connaissance',10),
    (45,'Que faire si la victime est consciente et présente immédiatement des signes?','Conseiller de ne pas mobiliser la partie atteinte, alerter les secours, protéger de la chaleur, du froid ou des intempéries et surveiller la victime en lui parlant régulièrement','Conseiller de ne pas mobiliser la partie atteinte, alerter les secours, protéger de la chaleur, du froid ou des intempéries, la mettre en PLS et surveiller la victime en lui parlant régulièrement','Conseiller de ne pas mobiliser la partie atteinte, alerter les secours, protéger de la chaleur, du froid ou des intempéries, la mettre en PLS, lui donner des antidouleurs et surveiller la victime en lui parlant régulièrement','Rien de tout cela','A: Conseiller de ne pas mobiliser la partie atteinte, alerter les secours, protéger de la chaleur, du froid ou des intempéries et surveiller la victime en lui parlant régulièrement.',10),
    (46,'Si la victime présente un douleur au cou, qu est ce que cela veut laisser penser?','Suspicion de traumatisme du rachis cervical','Suspicion de traumatisme du rachis dorsal','Suspicion de traumatisme du rachis lombaire','Rien de plus que pour les autres douleurs','A: Suspicion de traumatisme du rachis cervical',10),
    (47,'Que faire si la victime présente une douleur au cou?','Demander à  la victime de ne pas bouger la tête, alerter les secours et stabiliser le rachis cervical dans la position où il se trouve en maintenant sa tête à  deux mains','Alerter les secours, stabiliser le rachis cervical dans sa position initiale en bougeant sa tête à  deux mains, surveiller la victime et lui parler régulièrement','Demander à  la victime de ne pas bouger la tête, alerter les secours, stabiliser le rachis cervical dans sa position initiale en bougeant sa tête à  deux mains, surveiller la victime et lui parler régulièrement','Demander à  la victime de ne pas bouger la tête, alerter les secours, stabiliser le rachis cervical dans la position où il se trouve en maintenant sa tête à  deux mains, surveiller la victime et lui parler régulièrement','D: Demander à  la victime de ne pas bouger la tête, alerter les secours, stabiliser le rachis cervical dans la position où il se trouve en maintenant sa tête à  deux mains, surveiller la victime et lui parler régulièrement.',10),
    (48,'Que faire si la victime présente une fracture de membre déplacée?','Ne pas tenter de la réaligner','Tenter de la réaligner','Mise en PLS','Ce type de fracture n existe pas','A: Ne pas tenter de la réaligner',10),
    (49,'Quelle est la différence entre un malaise et une perte de connaissance','Il n y en a pas: ce sont des synonymes','Lors d un malaise, la victime a de la fièvre en plus','Une perte de connaissance s accompagne généralement d une convalescence de 1 à  2 semaines','Lors d un malaise, la victime est consciente','D: Lors d un malaise, la victime est consciente',7),
    (50,'Un malaise est une sensation: ','avec une survenue toujours brutale','toujours durable','toujours progessive','parfois répétitive','D: parfois répétitive',7),
    (51,'Quelle cause ne peut pas provoquer un malaise?','Coups','Maladies','Intoxications','Allergies','A: Coups',7),
    (52,'Est-ce qu un malaise peut être mortel?','Oui, tout le temps','Oui, en l absence de gestes de secours efficaces','Oui, en l absence d une équipe médicale spécialisée','Non, cela risque juste d entraîner des complications respiratoires assez graves','C: Oui, en l absence d une équipe médicale spécialisée',7),
    (53,'Quel signe peut orienter le medecin vers un accident cardiaque?','Douleur dans la poitrine','Déformation de la face','Perte d équilibre','Mal de tête sévère, inhabituel','A: Douleur dans la poitrine',7),
    (54,'Quel symptôme n a rien à  voir avec un malaise ?','Douleur abdominale intense','Difficulté à  respirer ou à  parler','Perte odorat','Sensation de froid, sueurs abondantes ou pà¢leur intense','C: Perte de l odorat',7),
    (55,'Comment faut-il mettre la victime si elle a des difficultés à  respirer?','Assise','Allongée','Allongée avec jambes fléchies','Comme elle le souhaite','A: Assise',7),
    (56,'Quelle est l information non utile à  demander dans le cas d un malaise?','Son à¢ge','Son nom et prénom','Son état de santé actuel','Les traitements médicamenteux qu elle prend','B: Son nom et prénom',7),
    (57,'Faut-il donner du sucre à  la victime?','Oui, toujours','Oui, mais seulement si elle le demande','Non, préférer les cachets anti-malaises','Non, cela ne sert à  rien','B: Oui, si elle le demande',7),
    (58,'Laquelle de ces affirmations est fausse, concernant le malaise?','faire manger la victime afin qu elle retrouve ces forces','desserrer les vêtements de la victime, en cas de gène','rassurer la victime en lui parlant régulièrement','protéger contre la chaleur, le froid ou les intempéries','A: faire manger la victime afin qu elle retrouve ces forces',7),
    (59,'Quelle affirmation est correcte ?','Une hémorragie est une perte de sang prolongée qui provient uniquement d une plaie','Il est souvent difficile de constater une hémorragie','Une hémorragie imbibe de sang un mouchoir de tissu ou de papier en quelques minutes','Un saignement qui s arrête spontanément n est pas une hémorragie','D: Un saignement qui s arrête spontanément n est pas une hémorragie',4),
    (60,'Le sauveteur court-il un risque?','Oui, tout le temps','Non, jamais','Seulement s il présente des effractions cutanées ou en cas de projection sur les muqueuses','Seulement si la victime est sous dialyse','C: Seulement s il présente des effractions cutanées ou en cas de projection sur les muqueuses',4),
    (61,'Dans quelle position faut il mettre la victime?','Assise','Allongée','Allongée avec jambes fléchies','Comme elle le souhaite','B: Allongée',4),
    (62,'Quelle affirmation sur le garot est fausse?','Il faut placer le garot au niveau de la plaie','Il faut faire un garot quand la compression directe d une hémorragie d un membre est inefficace','Il faut faire un garot quand la compression directe d un membre est impossible','Un garot sert à  arrêter un saignement','A:Il faut placer le garot au niveau de la plaie',4),
    (63,'Comment voir que l état de la victime s aggrave?','Sueurs abondantes','Sueurs abondantes ou sensation de froid','Sueurs abondantes, sensation de froid ou pà¢leur intense','Sueurs abondantes, sensation de froid, pà¢leur intense ou perte de connaissance','D: Sueurs abondantes, sensation de froid, pà¢leur intense ou perte de connaissance',4),
    (64,'Que ne faut-il pas faire si la victime saigne du nez?','Lui demander de se moucher vigoureusement','Lui demander de comprimer les deux narines avec les doigts','L allonger','Demander un avis médical','C: L allonger',4),
    (65,'Que ne faut-il pas faire si la victime vomit ou crache du sang?','Mise de la victime en position assise si elle a perdu connaissance','Mise de la victime dans la position qu elle préfere si elle est encore consciente','Alerter les secours','Surveiller intensement la victime','A: Mise de la victime en position assise si elle a perdu connaissance',4),
    (66,'Faut-il que le sauveteur se protège du sang de la victime?','Oui, exclusivement avec des gants adaptés','Oui, avec des gants ou un sac plastique','Non, sauf si la victime possède des signes de rougeurs','Non, c est inutile','B: Oui, avec des gants ou un sac plastique',4),
    (67,'Qu est ce qu il est inutile de faire en cas de contact avec le sang de la victime?','Se laver les mains ou toutes zones souillée par le sang de la victime','Prendre des antibiotiques spécialisés','Retirer les vêtements souillés de sang le plus vite possible','Demander un avis médical si présence d une plaie','B: Prendre des antibiotiques spécialisés',4),
    (68,'Que faut-il faire en cas de contact avec le sang de la victime?','Demander un avis médical si le sauveteur a subi une projection au visage','Manger sans être laver les mains','Essuyer le sang présent sur le visage avec ses mains','Utiliser seulement du dakin pour désinfecter','A: Demander un avis médical si le sauveteur a subi une projection au visage',4),
    (69,'Quelle est la définition précise d une brûlure?','La brûlure est une lésion de la peau','La brûlure est une lésion de la peau et des voies aériennes','La brûlure est une lésion de la peau, des voies aériennes ou digestives','La brûlure est une lésion de la peau, des voies aériennes, des muscles ou des voies digestives','C: La brûlure est une lésion de la peau, des voies aériennes ou digestives',8),
    (70,'Combien il y a de type de brûlure?','2','3','4','5','A: 2',8),
    (71,'Dans quel cas est-on en présence de brûlure simple?','Brûlure est sur le visage','Brûlure est sur les articulations','Brûlure est sur les mains','Brûlure est sur les pieds','D: Brûlure est sur les pieds',8),
    (72,'Qu est ce qui ne caractérise pas une brûlure grave?','Présence de cloques','Brûlure d origine chimique','Rougeur étendue','Brûlure au niveau du cou','A: Présence de cloques',8),
    (73,'Une brûlure peut entraîner :','Défaillance circulatoire','Douleur sévère','Défaillances cardiaques','Infection','C: Défaillances cardiaques',8),
    (74,'Ou est l erreur dans la conduite à  tenir en cas de brûlure?','Mettre la surface brûlée sous l eau tempérée','Mettre la surface brûlée sous faible pression','Retirer les vêtements, même s ils adhèrent à  la peau','Débuter l arrosage immédiatement','C: Retirer les vêtements, même s ils adhèrent à  la peau',8),
    (75,'Laquelle de ces affirmations est fausse en cas de brûlure grave?','Appliquer une crème pour brûlures telles que Silvedern ou Solcoseryl juste après avoir passer la brûlure sous l eau','Alerter les secours le plus vite possible, ne pas attendre la fin du refroidissement','Laisser la partir brûlée visible si possible','Installer la victime en position allongée sauf en cas de gène respiratoire: la mettre assise','A: Appliquer une crème pour brûlures telles que Silvedern ou Solcoseryl juste après avoir passer la brûlure sous l eau',8),
    (76,'Laquelle de ces affirmations est fausse en cas de brûlure simple?','Protéger les cloques par un pansement stérile','Percer les cloques après le refroidissement de la brûlure','Poursuivre le refroidissement jusqu à  disparition de la douleur','Demander systématiquement un avis médical si c est un enfant','B: Percer les cloques après le refroidissement de la brûlure',8),
    (77,'Que ne faut-il surtout pas faire suite à  une brûlure par produit chimique?','à”ter les vêtements imbibés de produits, en se protégeant','Se faire vomir, afin d évacuer les substances nocives','Conserver l emballage du produit','Rincer immédiatement et abondamment à  l eau courante tempére','B: Se faire vomir, afin d évacuer les substances nocives',8),
    (78,'Que faut-il faire en cas de brûlure électrique?','Ne surtout pas arroser la zone brûlée à  l eau courante','Appliquer du jus de citron sur la zone brûlée','Ne jamais toucher la victime avant la suppression du risque','Placer immédiatement la victime en position assise','C: Ne jamais toucher la victime avant la suppression du risque',8),
    (79,'Quelle est la définition précise d un arrêt cardiaque?','Une personne est en arrêt cardiaque lorsque son coeur de fonctionne plus','Une personne est en arrêt cardiaque lorsque son coeur de fonctionne plus ou fonctionne de manière anarchique','Une personne est en arrêt cardiaque lorsque son coeur de fonctionne plus ne permettant plus d assurer l oxygénation du cerveau','Une personne est en arrêt cardiaque lorsque son coeur de fonctionne plus ou fonctionne de manière anarchique, ne permettant plus d assurer l oxygénation du cerveau ','D: Une personne est en arrêt cardiaque lorsque son coeur de fonctionne plus ou fonctionne de manière anarchique, ne permettant plus d assurer l oxygénation du cerveau',6),
    (80,'Quel est le signe n ayant pas de rapport avec un arrêt cardiaque?','Apparition de plaques rouges au niveau du cou','Ne réagit plus','Ne respire plus','Respiration anormale (gasp)','A: Apparition de plaques rouges au niveau du cou',6),
    (81,'Quelle est la bonne série d action que le sauveteur doit réaliser?','Alerter/Masser/Defibriller','Alerter/Defibriller','Alerter/Insuffler/Défibriller','Alerter/Masser/Insuffler/Défibriller','D: Alerter/Masser/Insuffler/Défibriller',6),
    (82,'Que faire si la victime est consciente?','Appliquer la conduite à  tenir pour une perte de connaissance','Appliquer la conduite à  tenir pour le malaise','Appliquer la conduite à  tenir pour l arrêt cardiaque inconsciente: pas de changement','Lui taper dans le dos afin de libérer les voies aériennes','B:Appliquer la conduite à  tenir pour le malaise',6),
    (83,'Quelle affirmation est correcte si un tiers est présent?','Demander à  la tierce personne de pratiquer une RCP pendant que vous contacter les secours','Le DAE n est plus indispensable','La RCP sera des cycles de 30 compressions thoraciques suivies de 2 insufflations','Le service de secours est inutile jusqu à  ce qu il arrive sur place','C: La RCP sera des cycles de 30 compressions thoraciques suivies de 2 insufflations',6),
    (84,'Chaque minute gagnée dans la mise en place d une RCP efficace peut augmenter de X% les chances de survie de la victime.','5%','10%','12%','15%','B: 10%',6),
    (85,'Les électrodes adultes d un défibrillateur peuvent êter utilisés sur un nourrisson?','Tout le temps, il n y a pas de différence','Exceptionnellement, s il n y a pas d électrodes pour nourrisson','Jamais, il risquerait de mourir sans électrodes adaptées','Ne jamais utiliser un défibrillateur sur un nourrisson','B: Exceptionnellement, s il n y a pas d électrodes pour nourrisson',6),
    (86,'Que signifie RCP?','Réanimation Coeur-Poumons','Rechargement cardiopulmonaire','Réanimation cardiopulmonaire','Real Clear Politics','C: Réanimation cardioPulmonaire',6),
    (87,'Quelle affirmation est fausse si aucun tiers n est présent?','Alerter les secours puis commencer la RCP','La RCP sera des cycles de 30 compressions thoraciques suivies de 2 insufflations','Si le DAE est suffisamment proche afin de ne pas arrêter la RCP plus de 10s, le sauveteur s en empare','Poursuivre la RCP jusqu à  l arrivée des secours','A: Alerter les secours puis commencer la RCP',6),
    (88,'Si les insufflations ne peuvent pas être effectuées (répulsion, vomissements,...) ou si le sauveteur ne se sent pas capable, que doit-il faire?','Réalise uniquement des compressions thoraciques en faisant un pause à  la place des insufflations','Réalise uniquement des compressions thoraciques en faisant une accélération des compressions à  la place des insufflations','Réalise uniquement des compressions thoraciques en continu à  un rythme de 100 à  120 compressions/min','Doit faire les insufflations coute que coute','C: Réalise uniquement des compressions thoraciques en continu à  un rythme de 100 à  120 compressions/min',6),
    (89,'Quel est le numéro des pompiers?','17','112','15','18','D: 18',2),
    (90,'Quel est le numéro des SAMU?','17','112','15','18','C: 15',2),
    (91,'Quel est le numéro valable dans l ensemble de l Union Européenne?','114','112','15','18','B: 112',2),
    (92,'Quel service a t-on quand on compose le 114?','La police Européenne','Une ligne réservée aux déficients auditifs','Le SAMU de notre département','Les pompiers','B: Une ligne réservée aux déficients auditifs',2),
    (93,'Quelle information n est pas indispensable à  donner?','Le numéro de téléphone ou de la borne à  partir duquel l appel est passé','La nature du problème: maladie, accident,..','La localisation la plus précise possible de l évènement','Les informations personnelles de la victime: nom, prénom, à¢ge,...','D: Les informations personnelles de la victime: nom, prénom, âge,...',2),
    (94,'Quel outil ne sert pas à  alerter la population de la survenance d une crise?','Sirènes','Médias','Panneaux publicitaires','Réseaux sociaux','C: Panneaux publicitaires',2),
    (95,'Combien de temps dure le SNA?','Variation du signal sur 3 cycles successifs d une durée de 1minutes et 21 secondes','Variation du signal sur 2 cycles successifs d une durée de 1minutes et 30 secondes','Variation du signal sur 2 cycles successifs d une durée de 1minutes et 21 secondes','Variation du signal sur 3 cycles successifs d une durée de 1minutes et 41 secondes','D: Variation du signal sur 3 cycles successifs d une durée de 1minutes et 41 secondes',2);


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
    -- conscient ? id 2
    (1, 'OUI', 2, 3),
    (2, 'NON', 2, 1),
    -- OBVA ? id 3
    (3, 'OUI', 3, 9),
    (4, 'NON', 3, 4),
    -- Hémorragie ? id 4
    (5, 'OUI', 4, 10),
    (6, 'NON', 4, 5),
    -- Trauma ? 5
    (7, 'OUI', 5, 11),
    (8, 'NON', 5, 6),
    -- Plaie ? 6
    (9, 'OUI', 6, 12),
    (10, 'NON', 6, 7),
    (13, 'Grave', 12, 13),
    --(14, 'Simple', 12, ), --ajouter ici l'id de la fiche plaie simple
    -- Brûlure ? 7
    (11, 'OUI', 7, 14),
    (12, 'NON', 7, 8),
    (15, 'Grave', 14, 15),
    --(16, 'Simple', 14, ), --ajouter l'id de la fiche brulure simple

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
