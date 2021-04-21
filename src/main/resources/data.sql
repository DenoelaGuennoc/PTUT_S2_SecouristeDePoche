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
INSERT INTO Chapitre(id, titre, contenu, theme_id) VALUES
    (1,'Protection', 'Version : 1.2.2 Mise à jour : - Juillet 2019 -

~Protection d’une personne exposée à un danger%

Une victime ou toute autre personne menacée par un danger doit en être protégée, notamment du sur-accident. Pour cela, le sauveteur, lorsqu’il peut agir sans risque pour sa propre sécurité doit immédiatement supprimer ou écarter le danger de façon permanente.
Si nécessaire, cette première mesure est complétée en délimitant clairement et largement la zone de danger, de façon visible, afin d’éviter toute intrusion dans la zone. Cette délimitation se fait en utilisant tous les moyens matériels à disposition ainsi que le concours des personnes aptes aux alentours.

~Dégagement d’urgence d’une victime%

Lorsque la victime ne peut se soustraire d’elle-même à un danger réel, immédiat et non contrôlable, un dégagement d’urgence peut être alors réalisé par le sauveteur. Cette manœuvre peut être dangereuse pour la victime ou lui-même. Elle doit donc rester exceptionnelle.
µLe dégagement d’urgence de la victime doit alors permettre de placer celle-ci dans un endroit suffisamment éloigné du danger et de ses conséquences.
Aucune technique n’est imposée lors de la réalisation d’un dégagement d’urgence.
Toutefois, lors de sa réalisation, le sauveteur s’engage par le cheminement le plus sûr et le plus rapide seulement si la victime est visible, facile à atteindre et que rien ne gêne son dégagement. Il assure son extraction en fonction de ses capacités.

~Devant une attaque terroriste ou une situation de violence%

Devant une attaque terroriste ou une situation de violence, le sauveteur tentera d’appliquer les consignes nationales éditées par le ministère de l’intérieur et disponibles en ligne « réagir en cas d’attaque terroriste ».
µAinsi, la conduite à tenir pour le sauveteur avant l’arrivée des forces de l’ordre pourrait être la suivante : s’échapper, si c’est impossible se cacher, alerter et obéir aux forces de l’ordre, réaliser les gestes de premiers secours, rester vigilant.', 1), 
    (2, 'Alerte', ' Version : 1.2.3 Mise à jour : - Juillet 2019 - 

~Présentation % 

L’alerte est l’action qui consiste à informer un service d’urgence de la présence d’une ou plusieurs victimes affectées par une ou plusieurs détresses ainsi que de la nature de l’assistance qui leur est apportée.
µL’absence d’information d’un service d’urgence peut compromettre la vie ou la santé d’une victime malgré les gestes de premiers secours assurés par un sauveteur. Le rôle du sauveteur dans l’alerte est donc essentiel.
µL’alerte doit être transmise, par le sauveteur ou un témoin, par les moyens disponibles les plus appropriés. Elle doit être rapide et précise afin de diminuer au maximum les délais de mise en œuvre de la chaîne de secours et de soins.
µL’alerte doit être réalisée, après une évaluation rapide de la situation, des risques et une éventuelle mise en sécurité des personnes, auprès d’un numéro d’urgence gratuit : 
§ le 18, numéro d’appel des sapeurs-pompiers, en charge notamment des secours d’urgence aux personnes, des secours sur accidents, incendies ;
§ le 15, numéro d’appel des SAMU, en charge de la réponse médicale, des problèmes urgents de santé et du conseil médical ;
§ le 112, numéro de téléphone réservé aux appels d’urgence et valide dans l’ensemble de l’Union Européenne ;
§ le 114, numéro d’appel accessible par SMS , fax, visio et tchat, réservé aux déficients auditifs (réception et orientation des personnes malentendantes vers les autres numéros d’urgence).
µLes secours peuvent conserver l’appelant au téléphone pour le conseiller ou le guider dans l’exécution de gestes, jusqu’à leur arrivée.

~Conduite à tenir %

Contacter un service d’urgence à l’aide d’un téléphone portable ou à défaut d’un téléphone fixe ou d’une borne d’appel :
§ transmettre les informations ;
§ répondre aux questions posées par les services de secours ;
§ appliquer les consignes données ;
§ raccrocher, sur les instructions de l’opérateur.
µLes informations minimales à transmettre sont :
§ le numéro de téléphone ou de la borne à partir duquel l’appel est passé ;
§ la nature du problème : maladie, accident… ;
§ la localisation la plus précise possible de l’évènement.
µLorsque le sauveteur demande à une autre personne de donner l’alerte, il convient :
§ avant l’alerte, de s’assurer qu’elle possède tous les éléments ;
§ après l’alerte, de vérifier qu’elle a correctement exécuté l’action.
µSi possible, envoyer une personne pour accueillir les secours et organiser leur accès sur le lieu de l’accident, au plus près de la victime', 2), 
    (3, 'Alerte et Protection', ' Version : 1.3.2 Mise à jour :  - Juillet 2019 - 

~Principes d’organisation%

L’alerte aux populations est une mesure exceptionnelle dont l’efficacité repose sur une connaissance préalable des risques particuliers auxquels les populations sont exposées. L’alerte est diffusée par un ensemble d’outils permettant d’alerter la population de la
survenance d’une crise grâce aux sirènes, aux médias, aux réseaux sociaux ou encore grâce aux sociétés.
µD’autres outils permettent également de diffuser de l’information ou d’alerter la population comme les panneaux à messages variables des communes, des autoroutes…
§ Le premier volet est l’alerte des populations qui consiste à diffuser un signal destiné à avertir les individus d un danger imminent ou d’un évènement grave, en train de produire ses effets et susceptible de porter atteinte à leur intégrité physique. Il se compose de deux codes distincts :
 # le Signal National d Alerte (SNA) : variation du signal sur trois cycles successifs d une durée de 1 minute et 41 secondes ;
 # le signal de fin d alerte : signal continu de 30 secondes.
µLa diffusion de ces signaux repose sur un réseau d’environ 5 300 sirènes permettant, de jour comme de nuit, d attirer rapidement l attention des populations pour les appeler à réagir.
µDes essais de ce réseau se déroulent le premier mercredi de chaque mois, à midi. Ils permettent à la population d’être capable d’identifier clairement le signal. Lors de ces essais mensuels, le signal émis est une variation sur un seul cycle de 1 minute et 41 secondes, pour ne pas être confondu avec le SNA.
µPar ailleurs, lorsqu’il existe des risques particuliers (chimiques, radioactifs…) et afin de prévenir les populations concernées, des systèmes d’alerte adaptés sont mis en place afin de pouvoir diffuser un signal.
µLe déclenchement du SNA appelle une réaction immédiate de la population afin d’assurer sa mise à l’abri, son information ainsi que son confinement ou son évacuation.
§ Le deuxième volet est l’information qui est primordial pour que les populations adoptent les comportements de sauvegarde adéquats. Le ministère peut compter sur des acteurs majeurs et particulièrement connectés pour prévenir la population si la situation l’exige. Les messages d’alerte et de prévention du ministère sont diffusés de façon prioritaire sur Twitter, Facebook et Google mais aussi par certains canaux de communication de la RATP, Vinci autoroutes, Radio-France et France Télévisions. Parallèlement, le ministère de l’intérieur invite l’ensemble des utilisateurs de Twitter à s’abonner et activer les notifications du compte @Beauvau_alerte qui permet à chacun d’être notifié sur son téléphone en cas d’évènement grave: 
 # Facebook offre la possibilité au ministère de l’intérieur de communiquer via un dispositif de communication lié à son outil « Safety Check ». Cette fonctionnalité se déclenche lorsqu’un évènement met en danger la population et permet aux utilisateurs de Facebook d’indiquer à leurs proches qu’ils se trouvent en sécurité. Les messages du ministère trouvent une visibilité rapide et forte.
 # De son côté, Google relaie sur le moteur de recherche, au travers de son outil « Posts on Google », les messages du ministère pour les utilisateurs effectuant des recherches dans la zone impactée ou lorsque les mots clés tapés par un utilisateur sont en rapport avec l’évènement en cours (attentat, ouragan, fusillade, lieu,..).
 # Enfin, les sociétés RATP, Vinci autoroutes, France Télévisions et Radio France relaient aussi via leurs applications, réseaux sociaux ou panneaux d’information les messages du ministère si la situation l’exige.
µCes dispositifs s’ajoutent à ceux déjà existants : les prises de parole des autorités ainsi que les messages d’alerte et de prévention sur les comptes Twitter et des pages Facebook de la place Beauvau, des préfectures et des différentes directions du ministère de l’intérieur.

~Cas particulier%

Seuls les dispositifs d’alerte propres aux aménagements hydrauliques émettent un signal distinct en cas de danger (corne de brume). Il s’agit alors d’un signal d’évacuation.

~Conduite à tenir%

La population doit être sensibilisée aux bons comportements en amont afin d’avoir la réaction adaptée dès le déclenchement du signal national d’alerte et jusqu’au signal de fin d’alerte. Ainsi, « toute personne concourt par son comportement à la sécurité civile » conformément à l’article L721-1 du code de la sécurité intérieure.
µLes comportements de sauvegarde sont les suivants :
§ se mettre en sécurité, rejoindre sans délai un bâtiment ;
§ s’informer sur France Bleu, France Info, radios locales, France Télévisions, les sites et comptes des réseaux sociaux du gouvernement, du ministère de l’intérieur et des préfectures ;
§ respecter les consignes des autorités et en fonction du type de risque, il peut être demandé de se confiner ou d’évacuer.
µPour se confiner, il convient :
§ de fermer les portes et fenêtres ;
§ de calfeutrer les portes, les fenêtres et les bouches d’aération ;
§ d’arrêter les systèmes de ventilation ou de climatisation.
µEn cas d’évacuation, emportez votre kit d’urgence préparé à l’avance.
µDans tous les cas :
§ restez en sécurité et n’allez pas chercher vos enfants à l’école car ils y sont protégés par leurs enseignants ;
§ ne téléphonez qu’en cas d’urgence vitale pour laisser les réseaux disponibles pour les services de secours.
µPour en savoir plus et compléter votre kit :
§ http://www.interieur.gouv.fr/Alerte/Alerte-ORSEC
§ http://www.gouvernement.fr/risques', 2), 
    (4, 'Obstruction aiguë des voies aériennes', ' Version : 1.3.2 Mise à jour :  - Juillet 2019 -

~Définition - Signes%

L’obstruction des voies aériennes est la gêne ou l empêchement brutal des mouvements de l’air entre l’extérieur et les poumons. Elle est qualifiée :
§ d’obstruction partielle, lorsque la respiration reste efficace. La victime :
 # peut parler ou crier ;
 # tousse vigoureusement ;
 # respire, parfois avec un bruit surajouté.
§ d’obstruction grave, lorsque la respiration n’est plus efficace, voire impossible. La victime :
 # porte les mains à sa gorge ;
 # ne peut plus parler, crier, tousser ou émettre un son ;
 # garde la bouche ouverte ;
 # s’agite, devient rapidement bleue puis perd connaissance.

~Causes%

Les corps étrangers qui sont le plus souvent à l’origine d’une obstruction aiguë des voies aériennes sont les aliments (noix, cacahuètes, carottes) ou des objets (aimants de magnets, jouets).
µL’obstruction, particulièrement fréquente chez l’enfant, se produit le plus souvent lorsque la personne est en train de manger, de boire ou de porter un objet à la bouche.

~Risques%

En l’absence de gestes de secours efficaces, le risque d’une obstruction des voies aériennes par un corps étranger est de mettre en jeu immédiatement la vie de la victime, ou d’entraîner des complications respiratoires graves.

~Principes d’action%

L’action du sauveteur doit permettre :
§ de désobstruer les voies aériennes en cas d’obstruction grave ;
§ d’empêcher toute aggravation en cas d’obstruction partielle.

~Conduite à tenir%

En présence d’une victime présentant une obstruction partielle :
§ ne jamais pratiquer de technique de désobstruction ;
§ installer la victime dans la position où elle se sent le mieux ;
§ l’encourager à tousser (1);
§ demander un avis médical et appliquer les consignes ;
§ surveiller attentivement la victime.
µSi l’obstruction devient grave, il convient d’appliquer la conduite à tenir devant une
obstruction grave.
µEn présence d’une victime présentant une obstruction grave :
§ donner des claques dans le dos ;
§ réaliser des compressions en cas d’inefficacité des « claques dans le dos » :
 # au niveau abdominal s’il s’agit d’un adulte ou d’un enfant ;
 # au niveau thoracique s’il s’agit d’un nourrisson ;
 # au niveau thoracique s il s’agit d’un adulte obèse ou d’une femme enceinte lorsqu il est impossible d’encercler l’abdomen ;
§ répéter le cycle « claques dans le dos » et « compressions » ;
§ interrompre les manœuvres dès :
 # l’apparition d’une toux, de cris ou de pleurs ;
 # la reprise de la respiration ;
 # le rejet du corps étranger.
µSi les manœuvres de désobstruction sont efficaces :
§ installer la victime dans la position où elle se sent le mieux ;
§ la réconforter en lui parlant régulièrement ;
§ desserrer les vêtements ;
§ faire alerter ou alerter les secours et appliquer leurs consignes ;
§ surveiller la victime.
µSi la victime perd connaissance :
§ l’accompagner au sol ;
§ faire alerter ou alerter les secours ;
§ réaliser une réanimation cardio-pulmonaire ;
§ vérifier la présence du corps étranger dans la bouche à la fin de chaque cycle de
compressions thoraciques. Le retirer prudemment s’il est accessible.

~JUSTIFICATIONS PARTICULIERES%

(1) Le fait d’encourager à tousser aide au rejet du corps étranger', 3), 
    (5, 'Hémorragie externe',  '
Version : 2.2.2 Mise à jour : - Juillet 2019 -

~Définition - Signes %

Une hémorragie est une perte de sang prolongée qui provient d’une plaie ou d’un orifice naturel et qui ne s’arrête pas spontanément. Elle imbibe de sang un mouchoir de tissu ou de papier en quelques secondes.
µUn saignement dû à une écorchure, une éraflure ou une abrasion cutanée, qui s’arrête spontanément n’est pas une hémorragie.
µLe plus souvent, il est facile de constater une hémorragie. Toutefois, celle-ci peut temporairement être masquée par la position de la victime ou un vêtement particulièrement absorbant (manteau, blouson…).

~Causes %

L’hémorragie est généralement secondaire à un traumatisme comme un coup, une chute, une plaie par un objet tranchant (couteau), un projectile (une balle) ou une maladie comme la rupture de varice chez la personne âgée.

~Risques %

Les risques d’une perte abondante ou prolongée de sang sont :
§ pour la victime : d’entraîner une détresse circulatoire ou un arrêt cardiaque par une diminution importante de la quantité de sang dans l’organisme ;
§ pour le sauveteur : d’être infecté par une maladie transmissible s’il présente des effractions cutanées (plaies, piqûres) ou en cas de projection sur les muqueuses (bouche, yeux).

~Principes d’action %

Le sauveteur doit arrêter ou limiter la perte de sang de la victime et retarder l’installation d’une détresse qui peut entraîner la mort.

~Conduite à tenir %

§ constater l’hémorragie, si nécessaire en écartant les vêtements ;
§ demander à la victime de comprimer immédiatement l’endroit qui saigne ou à défaut, le faire à sa place ;
§ allonger confortablement la victime, par exemple sur un lit, un canapé ou à défaut sur le sol (1);
§ alerter les secours. L’alerte est réalisée par :
 # un témoin s’il est présent ;
 # le sauveteur si la victime comprime elle-même la plaie ;
 # le sauveteur, après avoir relayé la compression directe (réalisée par lui-même) si nécessaire par un pansement compressif (le haut-parleur du téléphone portable peut parfois permettre de maintenir la compression directe pendant l’alerte par le sauveteur) ;
§ si le saignement se poursuit, reprendre la compression directe par-dessus l’éventuel pansement compressif ;
§ si la compression directe d’une hémorragie d’un membre est inefficace (le saignement persiste malgré tout) ou impossible (nombreuses victimes, catastrophes,situations de violence collective ou de guerre, nombreuses lésions, plaie inaccessible, corps étranger), mettre en place un garrot au-dessus de la plaie pour arrêter le saignement (entre le cœur et la plaie) ;
§ rassurer la victime, en lui parlant régulièrement et en lui expliquant ce qui se passe ;
§ protéger la victime contre la chaleur, le froid ou les intempéries, la réchauffer si nécessaire ;
§ surveiller l’apparition de signes d’aggravation.
µDans tous les cas, si l’état de la victime s’aggrave (sueurs abondantes, sensation de froid,
pâleur intense, perte de connaissance) :
§ contacter à nouveau les secours pour signaler l’aggravation ;
§ pratiquer les gestes qui s’imposent si la victime a perdu connaissance ou présente un arrêt cardiaque.

~Conduites à tenir particulières %

En présence d’une victime qui saigne du nez :
§ l’asseoir, tête penchée en avant (ne jamais l’allonger) ;
§ lui demander de se moucher vigoureusement ;
§ lui demander de comprimer les deux narines avec les doigts, durant 10 minutes sans relâcher ;
§ demander un avis médical si :
 # le saignement ne s’arrête pas ou se reproduit ;
 # le saignement survient après une chute ou un coup ;
 # la victime prend des médicaments, en particulier ceux qui augmentent les saignements.
µEn présence d’une victime qui vomit ou crache du sang :
µIl s’agit d’un signe pouvant traduire une maladie grave nécessitant une prise en charge
médicale.
§ Installer la victime dans la position :
 # où elle se sent le mieux si elle est consciente ;
 # allongée, en position stable sur le côté si elle a perdu connaissance ;
§ faire alerter ou alerter les secours et appliquer les consignes ;
§ surveiller en permanence.
µEn présence d’une victime qui perd du sang par un orifice naturel (sauf le nez) et de façon inhabituelle :
§ allonger la victime ;
§ faire alerter ou alerter les secours et appliquer les consignes.
µEn cas d’aggravation :
§ contacter à nouveau les secours pour signaler l’aggravation ;
§ pratiquer les gestes qui s’imposent si la victime a perdu connaissance.

~Contact du sauveteur avec le sang de la victime %

Si le sauveteur risque d’entrer en contact avec le sang de la victime, il doit si possible :
§ se protéger par le port de gants ;
§ à défaut glisser sa main dans un sac plastique.
µEn cas de contact avec le sang d’une victime :
§ ne pas porter les mains à la bouche, au nez ou aux yeux ;
§ ne pas manger avant de s’être lavé les mains et de s’être changé ;
§ retirer les vêtements souillés de sang le plus tôt possible après la fin de l’action de secours 
§ se laver les mains ou toute zone souillée par le sang de la victime ;
§ se désinfecter (gel hydro-alcoolique, dakin…)
§ demander un avis médical, sans délai si le sauveteur :
 # présente une plaie, même minime, ayant été souillée ;
 # a subi une projection sur le visage.

~Justifications particulières %

(1) La position allongée retarde ou empêche l’installation d’une détresse liée à la perte importante de sang',4), 
    (6, 'Perte de connaissance', '
Version : 1.1.3 Mise à jour : - Septembre 2018 - 

~Définition - Signes%

Une personne a perdu connaissance lorsqu’elle ne répond et ne réagit à aucune sollicitation verbale ou physique et respire.

~Causes%

Les causes de cette perte de connaissance peuvent être d’origine traumatique, médicale ou toxique.

~Risques%

Le risque de la perte de connaissance est d’évoluer vers l’arrêt respiratoire et l’arrêt cardiaque. En effet, la respiration n’est possible que si les voies aériennes permettent le passage de l’air sans encombre.
µUne personne qui a perdu connaissance, laissée sur le dos, est toujours exposée à des difficultés respiratoires, du fait de l’encombrement ou de l’obstruction des voies aériennes par :
§ des liquides présents dans la gorge (salive, sang, liquide gastrique) ;
§ la chute de la langue en arrière.

~Principes d’action%

Le sauveteur doit assurer la liberté des voies aériennes de la victime afin de permettre l’écoulement des liquides vers l’extérieur en attendant l’arrivée des secours.

~Conduite à tenir%

§ Rechercher l’absence de réponse et pour cela :
 # poser des questions simples (« Comment ça va ? », « Vous m’entendez ? ») ;
 # secouer doucement les épaules ou lui prendre la main et demander d’exécuter un ordre simple (« Serrez-moi la main »...) ;
µSi la victime répond ou réagit : elle est consciente. Il convient d’adopter la conduite à tenir adaptée au malaise.
µSi la victime ne répond pas et ne réagit pas, il convient de :
§ demander de l’aide, si vous êtes seul ;
§ l’allonger sur le dos ;
§ libérer les voies aériennes ;
§ apprécier la respiration sur 10 secondes au plus. µPour cela :
 # maintenir la libération des voies aériennes ;
 # se pencher sur la victime, oreille et joue du sauveteur au-dessus de la bouche et du nez de la victime puis :
  ° regarder si le ventre et la poitrine se soulèvent ;
  ° écouter d’éventuels sons provoqués par la respiration ;
  ° sentir un éventuel flux d’air à l’expiration.
µEn présence d’une victime qui ne répond pas, ne réagit pas et respire (perte de connaissance) :
§ la placer en position stable sur le côté (Position latérale de sécurité) ;
§ faire alerter ou alerter les secours ;
§ surveiller en permanence la respiration de la victime, jusqu’à l’arrivée des secours.
µPour cela :
 # regarder si le ventre et la poitrine se soulèvent ;
 # écouter d’éventuels sons provoqués par la respiration ;
 # sentir, avec le plat de la main, le soulèvement du thorax.
§ protéger contre la chaleur, le froid ou les intempéries.
µSi la victime ne respire pas ou si sa respiration s’arrête ou devient anormale, il convient d’adopter la conduite à tenir face à un arrêt cardiaque et de prévenir les secours de l’évolution.', 5), 
    (7, 'Arrêt cardio-respiratoire', ' Version : 1.3.2 Mise à jour : - Juillet 2019 -

~Définition %

Une personne est en arrêt cardiaque lorsque son cœur ne fonctionne plus ou fonctionne d’une façon anarchique, ne permettant plus d’assurer l’oxygénation du cerveau.

~Signes%

Une victime est considérée comme étant en arrêt cardiaque lorsqu’elle ne répond pas, ne réagit pas, et :
§ ne respire pas : aucun mouvement de la poitrine n’est visible et aucun bruit ou souffle n’est perçu ;
§ ou présente une respiration anormale avec des mouvements respiratoires inefficaces, lents, irréguliers et bruyants (gasps).

~Causes%

L’arrêt cardiaque peut être causé par certaines maladies du cœur, la principale est l’infarctus du myocarde. Chez l’adulte, dans près de 50 % des cas, cet arrêt cardiaque survient brutalement, en dehors de l’hôpital et est souvent lié à une anomalie de fonctionnement électrique du cœur : la fibrillation ventriculaire.
µL’arrêt cardiaque peut aussi être consécutif à une détresse circulatoire (hémorragie, brûlure grave), à une obstruction totale des voies aériennes, une intoxication, un traumatisme ou une noyade.

~Risques%

Le risque d’un arrêt cardiaque est la mort de la victime en quelques minutes. En effet, l’apport d’oxygène est indispensable, en particulier au niveau du cerveau et du cœur, pour assurer sa survie. Au cours d’un arrêt cardiaque, les lésions du cerveau, consécutives au manque d’oxygène, surviennent dès la première minute.

~Principes d’action%

Le sauveteur doit réaliser une série d’actions pour augmenter les chances de survie de la victime :
§ ALERTER : alerter de façon précoce les secours ;
§ MASSER / INSUFFLER : pratiquer une réanimation cardio-pulmonaire (RCP) précoce ;
§ DEFIBRILLER : assurer la mise en œuvre d’une défibrillation précoce.
µCes différentes étapes constituent une chaîne de survie susceptible d’augmenter de 4 à 40 pourcents le taux de survie des victimes. Chaque minute gagnée dans la mise en place d’une RCP efficace peut augmenter de 10 pourcents les chances de survie de la victime.

~Conduite à tenir%

Rechercher l’absence de réponse et pour cela :
§ poser des questions simples (« Comment ça va ? », « Vous m’entendez ? ») ;
§ secouer doucement les épaules ou lui prendre la main et demander d’exécuter un ordre simple (« serrez-moi la main » …).
µSi la victime répond ou réagit : elle est consciente. Il convient d’appliquer la CAT adaptée au malaise.
µSi la victime ne répond pas et ne réagit pas, il convient de:
§ demander de l’aide, si vous êtes seul ;
§ l’allonger sur le dos ;
§ libérer les voies aériennes ;
§ apprécier la respiration sur 10 secondes au plus. Pour cela :
 # maintenir la libération des voies aériennes ;
  ° se pencher sur la victime, oreille et joue du sauveteur au-dessus de la bouche et du nez de la victime puis :
   $ regarder si le ventre et la poitrine se soulèvent ;
   $ écouter d’éventuels sons provoqués par la respiration ;
   $ sentir un éventuel flux d’air à l’expiration.
µEn l’absence de respiration, en présence d’une respiration anormale (gasps) ou en cas de
doute :
µ… un tiers est présent :
 # faire alerter les secours et réclamer un DAE ;
 # débuter immédiatement une RCP en répétant des cycles de 30 compressions thoraciques suivies de 2 insufflations. Le service de secours appelé pourra aider le sauveteur à la réalisation de la RCP, en donnant des instructions téléphoniques ;
 # faire mettre en œuvre ou mettre en œuvre un DAE le plus tôt possible et suivre ses indications
 # poursuivre la réanimation entreprise jusqu’au relais par les services de secours.
µ… aucun tiers n’est présent :
 # alerter les secours (1) de préférence avec son téléphone portable. Le mettre sur lemode haut-parleur et débuter immédiatement la RCP en attendant que les services de secours répondent ;
 # pratiquer la RCP en répétant des cycles de 30 compressions thoraciques suivies de 2 insufflations. Le service de secours appelé pourra aider le sauveteur à la réalisation de la RCP, en donnant des instructions téléphoniques ;
 # si un DAE est proche (2) , le mettre en œuvre le plus tôt possible et suivre ses indications vocales en interrompant le massage cardiaque le moins possible ;
 # poursuivre la RCP entreprise jusqu’au relais par les services de secours.
µDans tous les cas :
 # si les insufflations ne peuvent pas être effectuées (répulsion, vomissements…) ou si le sauveteur ne se sent pas capable, il doit réaliser uniquement les compressions thoraciques en continu à un rythme de 100 à 120 compressions / min ;
 # en présence de plusieurs sauveteurs, relayer le sauveteur qui réalise les compressions thoraciques toutes les 2 minutes en interrompant le moins possible les compressions thoraciques (en cas d’utilisation d’un DAE, le relai sera réalisé pendant l’analyse) ;
 # le DAE ne doit jamais être éteint et les électrodes ne doivent jamais être décollées jusqu’à l’arrivée des secours (même en cas d’amélioration de l’état de la victime).

~Justifications particulières%

(1) A l’époque des téléphones portables, la transmission de l’alerte ne pose plus guère de problème. Dans le cas contraire, un sauveteur seul face à une personne en arrêt cardiaque est en grande difficulté. Il doit appeler très tôt pour donner un maximum de chance de survie à la victime.
(2) Le sauveteur récupère lui-même le DAE s’il est à proximité, facilement accessible et qu’il peut se le procurer immédiatement sans interrompre la RCP plus de 10 secondes. Dans le cas contraire, le sauveteur réalise la RCP jusqu’à ce qu’on lui apporte le DAE.', 6), 
    (8, 'Malaise', ' Version : 1.2.1 Mise à jour : - Janvier 2017 -

~Définition  Signes%

Le malaise est une sensation pénible traduisant un trouble du fonctionnement de l’organisme, sans pouvoir en identifier obligatoirement l’origine. Cette sensation, parfois répétitive, peut être fugace ou durable, de survenue brutale ou progressive.
µLa victime, consciente, ne se sent pas bien et présente des signes inhabituels.

~Causes%

Le malaise peut avoir diverses origines : maladies, intoxications, allergies…

~Risques%

Certains signes doivent être rapidement reconnus car la prise en charge de la victime est urgente en service spécialisé pour éviter des séquelles définitives ou une évolution fatale. Certains signes, apparemment sans gravité, peuvent être révélateurs d’une situation
pouvant à tout moment entraîner une détresse vitale.

~Principes d’action%

Le sauveteur, après avoir mis la victime au repos, doit recueillir en écoutant et en observant, les informations à transmettre pour obtenir un avis médical.

~Conduite à tenir%

§ observer les signes d’apparition soudaine, isolés ou associés, même de très courte durée, qui peuvent orienter le médecin vers :
 # un accident cardiaque : douleur dans la poitrine ;
 # un accident vasculaire cérébral (AVC) :
  ° faiblesse ou paralysie d’un bras ;
  ° déformation de la face ;
  ° perte de la vision d un oeil ou des deux ;
  ° difficulté de langage (incohérence de la parole) ou de compréhension ;
  ° mal de tête sévère, inhabituel ;
  ° perte d’équilibre, instabilité de la marche ou chute inexpliquée.
µCes deux pathologies imposent une prise en charge urgente.
§ un autre type de malaise, la victime se plaint :
 # d’une douleur abdominale intense ;
 # d’une difficulté à respirer ou à parler ;
 # d’une sensation de froid et présente des sueurs abondantes ou une pâleur intense.
§ mettre au repos en position :
 # allongée confortablement par exemple sur un lit ou un canapé, ou à défaut sur le sol ;
 # assise en cas de difficultés à respirer ;
 # sinon, dans la position où elle se sent le mieux.
§ desserrer les vêtements, en cas de gêne.
§ rassurer la victime en lui parlant régulièrement.
§ protéger contre la chaleur, le froid ou les intempéries.
§ se renseigner auprès de la victime ou de son entourage sur :
 # son âge ;
 # la durée du malaise ;
 # son état de santé actuel (maladies, hospitalisations ou traumatisme récents) ;
 # les traitements médicamenteux qu’elle prend ;
 # la survenue d’un malaise identique par le passé.
§ à sa demande, lui donner :
 # son traitement habituel pour ce malaise ;
 # du sucre en morceaux.
§ demander un avis médical et transmettre les informations recueillies (souvent le médecin régulateur demande à parler directement à la victime) puis appliquer les consignes.
µEn cas d’aggravation en attendant les secours :
§ contacter à nouveau les services de secours pour signaler l’aggravation ;
§ pratiquer les gestes qui s’imposent, si elle est a perdu connaissance', 7), 
    (9, 'Brûlure', ' Version : 1.2.2 Mise à jour : - Juillet 2019 -

~Définition  Signes%

La brûlure est une lésion de la peau, des voies aériennes ou digestives. Elle est qualifiée de :
§ brûlure simple, lorsqu’il s’agit de rougeurs de la peau chez l’adulte ou d’une cloque dont la surface est inférieure à celle de la moitié de la paume de la main de la victime ;
§ brûlure grave, dès lors que l’on est en présence :
 # d’une ou plusieurs cloques dont la surface totale est supérieure à celle de la moitié de la paume de la main de la victime ;
 # d’une destruction plus profonde (aspect blanchâtre ou noirâtre parfois indolore) associée souvent à des cloques et à une rougeur plus ou moins étendue ;
 # d’une brûlure dont la localisation est sur le visage ou le cou, les mains, les articulations ou au voisinage des orifices naturels ;
 # d’une rougeur étendue (un coup de soleil généralisé par exemple) de la peau chez l’enfant ;
 # d’une brûlure d’origine chimique, électrique ou radiologique.

~Causes%

La brûlure peut être provoquée par la chaleur, des substances chimiques, l’électricité, le frottement ou des radiations.

~Risques%

Suivant l’étendue, la profondeur et la localisation, la brûlure peut entraîner :
§ un danger immédiat comme une défaillance circulatoire (en cas de brûlure étendue) ou respiratoire (lors d’une brûlure au visage, au cou ou consécutive à l inhalation de fumée) ; 
§ une douleur sévère ;
§ des conséquences retardées comme l’infection, les séquelles fonctionnelles ou esthétiques.

~Principes d’action%

Le sauveteur doit identifier la gravité et la nature de la brûlure afin d’adopter la conduite à tenir adaptée.

~Conduite à tenir%

§ refroidir immédiatement (1) la surface brûlée par ruissellement d’eau du robinet tempérée et à faible pression. Débuter l’arrosage après 30 minutes n’a pas d’intérêt ;
§ en parallèle, retirer les vêtements, s’ils n’adhèrent pas à la peau ;
§ évaluer la gravité de la brûlure, puis…
µ… face à une brûlure grave :
§ faire alerter ou alerter les secours dès le début de l’arrosage ;
§ poursuivre le refroidissement, selon les consignes données ;
§ installer en position adaptée, après refroidissement :
 # allongée confortablement (lit, canapé ou à défaut sur le sol) ;
 # assise en cas de gêne respiratoire ;
 # en laissant la partie brûlée visible si possible ;
 # surveiller continuellement.
µNB : Aucun produit ne doit être appliqué sur une brûlure grave sans avis médical.
µ… face à une brûlure simple :
§ poursuivre le refroidissement jusqu’à disparition de la douleur ;
§ ne jamais percer les cloques ;
§ protéger les cloques par un pansement stérile ;
§ demander un avis médical ou d’un autre professionnel de santé :
 # pour vérifier la validité de la vaccination antitétanique ;
 # s’il s’agit d’un enfant ou d’un nourrisson ;
 # en cas d’apparition dans les jours qui suivent de fièvre, d’une zone chaude, rouge, gonflée ou douloureuse.

~Conduites à tenir particulières%

En présence d’une brûlure par produits chimiques :
§ rincer immédiatement et abondamment à l’eau courante tempérée, suivant les consignes données lors de l’alerte des secours :
 # l’ensemble du corps en cas de projection sur les vêtements ou la peau ;
 # l’œil, s’il est atteint, en veillant à ce que l’eau de lavage ne coule pas sur l’autre œil.
§ ôter les vêtements imbibés de produits, en se protégeant ;
§ ne jamais faire vomir ou boire, en cas d’ingestion de produit chimique ;
§ conserver l’emballage du produit en cause ;
§ se laver les mains après avoir réalisé les gestes de secours.
µEn présence d’une brûlure électrique :
§ ne jamais toucher la victime avant la suppression du risque ;
§ arroser la zone visiblement brûlée à l’eau courante tempérée ;
§ faire alerter ou alerter les secours et appliquer les consignes.
µEn présence d’une brûlure interne par inhalation de vapeurs chaudes ou caustiques :
§ en cas de difficultés respiratoires, placer la victime en position assise ;
§ faire alerter ou alerter les secours et appliquer les consignes.

~Justifications particulières%

(1) Le refroidissement immédiat d’une brûlure limite son extension, ses conséquences et la douleur', 8),
    (10, 'Plaie', ' Version : 1.2.1 Mise à jour : - Janvier 2017 -

~Définition  Signes%

La plaie est une lésion de la peau, revêtement protecteur du corps, avec une atteinte possible des tissus situés dessous. Elle est qualifiée de :
§ plaie simple, lorsqu’il s’agit d’une petite coupure superficielle, d’une éraflure saignant peu ;
§ plaie grave du fait :
 # d’une hémorragie associée ;
 # d’un mécanisme pénétrant : objet tranchant ou perforant, morsures, projectiles ;
 # de sa localisation : thoracique, abdominale, oculaire ou proche d’un orifice naturel ;
 # de son aspect : déchiqueté, écrasé.

~Causes%

La plaie est généralement secondaire à un traumatisme, elle est provoquée par une coupure, une éraflure, une morsure ou une piqûre.

~Risques%

Une plaie, suivant son importance et sa localisation, peut être à l’origine d’une aggravation immédiate de l’état de la victime par hémorragie ou par défaillance de la respiration.
µElle peut être aussi à l’origine d’une infection secondaire dont le tétanos. Le tétanos est une maladie très grave, parfois mortelle. Seule la vaccination antitétanique protège de cette maladie.

~Principes d’action%

Le sauveteur doit identifier la gravité de la plaie afin d’adopter une conduite à tenir adaptée.

~Conduite à tenir%

§ Evaluer la gravité de la plaie, puis…
µ… face à une plaie grave :
§ ne jamais retirer le corps étranger (couteau, morceau de verre…) (1);
§ en cas d’hémorragie, arrêter le saignement (cf. hémorragies externes) ;
§ si la plaie est située au niveau du thorax, la laisser à l’air libre ;
§ installer confortablement et sans délai la victime en position d’attente, par exemple sur un lit ou un canapé, ou à défaut sur le sol :
 # assise (2) en présence d’une plaie au thorax ;
 # allongée (3), jambes fléchies (4) en présence d’une plaie de l’abdomen ;
 # allongée, yeux fermés (5) en demandant de ne pas bouger la tête en présence d’une plaie à l’œil et si possible en maintenant sa tête à deux mains ;
 # allongée (6) dans tous les autres cas.
§ protéger contre la chaleur, le froid ou les intempéries ;
§ faire alerter ou alerter les secours et appliquer les consignes ;
§ réconforter la victime en lui parlant régulièrement et en lui expliquant ce qui se passe ;
§ surveiller la victime.
µ… face à une plaie simple :
§ se laver les mains à l’eau et au savon ;
§ nettoyer la plaie en rinçant abondamment à l’eau courante, avec ou sans savon (7), en s’aidant d’une compresse si besoin pour enlever les souillures ;
§ désinfecter à l’aide d’un antiseptique, éventuellement ;
§ protéger par un pansement adhésif ;
§ conseiller de consulter un médecin ou un autre professionnel de santé :
 # pour vérifier la validité de la vaccination antitétanique ;
 # en cas d’apparition dans les jours qui suivent de fièvre, d’une zone chaude, rouge, gonflée ou douloureuse.

~Justifications particulières%

(1) L’interdiction de retirer un corps étranger d’une plaie évite toute aggravation de la lésion ou du saignement.
(2) La position assise facilite la respiration lorsque l’on est en présence d’une plaie au thorax.
(3) La position allongée permet de prévenir les détresses et d’éviter les complications.
(4) La flexion des jambes d’une victime préalablement allongée permet, par le relâchement des muscles de l’abdomen, de diminuer la douleur.
(5) La fermeture des yeux et l’immobilité de la tête permettent de limiter les risques d’aggravation de la lésion de l’œil.
(6) La position allongée permet de prévenir les détresses et d’éviter les complications.
(7) Le lavage à l’eau, avec ou sans savon, permet d’éliminer les germes qui pourraient provoquer une infection', 9), 
    (11, 'Traumatisme', ' Version : 2.1.2 Mise à jour : - Juillet 2019 -

~Définition  Signes%

Les atteintes traumatiques sont des lésions des os (fractures), des articulations (entorses ou luxations), des organes ou de la peau. Pour une meilleure compréhension, ce dernier type d’atteinte fait l’objet d’un traitement spécifique (Cf. Brûlures et Plaies).
Elles peuvent provoquer immédiatement une douleur vive, une difficulté ou une impossibilité de bouger, éventuellement accompagnées d’un gonflement ou d’une déformation de la zone atteinte.
µLorsque le choc se situe au niveau de la tête, du thorax ou de l’abdomen, une atteinte des organes sous-jacents est toujours possible et peut se révéler secondairement par d’autres signes (perte de connaissance, maux de tête persistants, vomissements, agitation, somnolence, douleur abdominale…).
µLorsque le traumatisme se situe au niveau de la colonne vertébrale (douleur du dos ou de la nuque), une atteinte de la moelle épinière est possible.

~Causes%

Les traumatismes peuvent être le résultat d’un choc, d’un coup, d’une chute ou d’un faux mouvement et peuvent atteindre toutes les parties du corps.

~Risques%

Les risques, lors d’une atteinte traumatique, sont d’entrainer des complications neurologiques (paralysie, trouble de la conscience ou perte de connaissance), respiratoires (gêne ou détresse) ou circulatoires (détresse).

~Principes d’action%

Le sauveteur ne doit pas mobiliser la victime.

~Conduite à tenir%

Si la victime a perdu connaissance :
§ adopter la conduite à tenir face à une perte de connaissance.
µSi la victime est consciente et présente immédiatement des signes :
§ conseiller fermement de ne pas mobiliser la partie atteinte ;
§ faire alerter ou alerter les secours et appliquer leurs consignes ;
§ protéger de la chaleur, du froid ou des intempéries ;
§ surveiller la victime et lui parler régulièrement.
µSi la victime présente une douleur du cou à la suite d un traumatisme (suspicion de traumatisme du rachis cervical) :
§ demander à la victime de ne pas bouger la tête ;
§ faire alerter ou alerter les secours et appliquer leurs consignes ;
§ si possible stabiliser le rachis cervical dans la position où il se trouve en maintenant sa tête à deux mains ;
§ surveiller la victime et lui parler régulièrement.
µSi la victime présente une fracture de membre déplacée, ne pas tenter de la réaligner', 10), 
    (12, 'Compression Locale', 'FICHE TECHNIQUE N 1
COMPRESSION LOCALE
Version : 1.2.1 Mise à jour : - Janvier 2017 -

~INDICATION%
La compression locale est indiquée sur toute plaie qui saigne abondamment.

~JUSTIFICATION%
La compression des vaisseaux sanguins, au niveau d’une plaie arrête le saignement.

~Par compression directe%

Appuyer fortement sur l’endroit qui saigne avec les doigts ou la paume de la main, en interposant une épaisseur de tissu propre recouvrant complètement la plaie (mouchoirs, torchons, vêtements…) et ce jusqu’à l’arrivée des secours.
µEn l’absence de tissu, la victime si elle le peut ou le sauveteur, appuie directement avec sa main.

~Par pansement compressif%

Si le sauveteur doit se libérer et que la victime ne peut pas appuyer elle-même sur la plaie qui saigne, il remplace la compression directe qu’il réalise par une épaisseur de tissu propre
recouvrant complètement la plaie (mouchoirs, torchons, vêtements…) fixée par une bande élastique ou un lien large assez long pour serrer suffisamment et arrêter ainsi le saignement.
Le remplacement de cette compression est impossible lorsque l’endroit qui saigne est situé au niveau du cou, de la tête, du thorax ou de l’abdomen.

~POINTS CLEFS%

La compression locale doit être :
§ suffisante pour arrêter le saignement ;
§ permanente', 11), 
    (13, 'Compression Thoracique', 'FICHE TECHNIQUE N 2
COMPRESSIONS THORACIQUES
Version : 1.2.2 Mise à jour : - Juillet 2019 -

~INDICATION%
Cette technique est indiquée en présence d’une victime en arrêt cardiaque.

~JUSTIFICATION%
Cette technique permet d’oxygéner les organes d’une victime en arrêt cardiaque en rétablissant une circulation artificielle.
µQuel que soit l’âge de la victime, il convient de :
§ l’installer en position horizontale, sur le dos, préférentiellement sur une surface
rigide ;
§ se placer auprès d’elle, le plus souvent à genoux ;
§ dénuder la poitrine de la victime, dans la mesure du possible.

~Chez l’adulte%

§ placer le talon d’une main au centre de la poitrine, sur la ligne médiane, sur la moitié inférieure du sternum ;
§ placer l’autre main au-dessus de la première en entrecroisant les doigts des deux mains pour éviter d appuyer sur les côtes ;
§ réaliser des compressions sternales d environ 5 cm sans dépasser 6 cm tout en veillant à :
 # conserver les bras parfaitement verticaux ;
 # tendre les bras ;
 # verrouiller les coudes ;
 # maintenir une fréquence comprise entre 100 et 120 compressions par minute.
 # assurer un temps de compression égal à celui du relâchement (1) ;
 # entre chaque compression, laisser le thorax reprendre sa forme initiale, sans décoller les mains.

~Chez l’enfant%

§ placer le talon d’une main à une largeur de doigt au-dessus d’un repère constitué par le bas du sternum à la jonction des dernières côtes ;
§ relever les doigts pour ne pas appuyer sur les côtes ;
§ réaliser les compressions sternales comme chez l’adulte en veillant à enfoncer le thorax sur le tiers de son épaisseur soit environ 5 cm.
µSi la victime (enfant) est grande ou si le sauveteur est petit et n a pas suffisamment de force, il peut être utile d’utiliser la même technique que chez l’adulte.

~Chez le nourrisson%

§ Placer la pulpe de deux doigts d’une main dans l’axe du sternum, à une largeur de doigt au-dessus d’un repère constitué par le bas du sternum à la jonction des dernières côtes ;
§ réaliser les compressions sternales à l aide de la pulpe des deux doigts en veillant à enfoncer le thorax sur le tiers de l’épaisseur soit environ 4 cm.

~POINTS CLEFS%

Les compressions thoraciques doivent :
§ comprimer fortement le sternum ;
§ avoir une fréquence comprise entre 100 et 120 par minute.

~Justification particulières%

(1) Cette technique offre une efficacité maximale. Elle permet au thorax de reprendre sa dimension initiale
après chaque compression thoracique, afin que le cœur se remplisse bien de sang', 11), 
    (14, 'Défibrillateur Automatisé Externe', 'FICHE MATERIEL 
DEFIBRILLATEUR AUTOMATISE EXTERNE
Version : 1.2.3 Mise à jour : - Juillet 2019 -

~But%

Le défibrillateur automatisé externe (DAE) est un appareil qui permet :
§ d’analyser l’activité électrique du cœur de la victime ;
§ de reconnaître une anomalie du fonctionnement électrique du cœur à l’origine de l’arrêt cardiaque ;
§ de délivrer ou d’inviter le sauveteur à délivrer un choc électrique (information vocale et visuelle), afin d’arrêter l’activité électrique anarchique du cœur.

~Composition%

Le défibrillateur automatisé externe est composé :
§ d’un haut-parleur qui donne des messages sonores et guide le sauveteur dans son action ;
§ d’un métronome qui rythme les compressions thoraciques du sauveteur (en option) ;
§ d’un accumulateur d’énergie qui permet de réaliser des chocs électriques ;
§ éventuellement, d’un bouton qui permet de délivrer le choc électrique lorsqu’il est indiqué par l’appareil.
µLe DAE est toujours accompagné d’une paire d’électrodes de défibrillation pré-gélifiées autocollantes avec câble intégré. Ces électrodes, à usage unique, sont contenues dans un emballage hermétique. Une seconde paire doit être disponible en cas de défaillance de la première.
µUne fois collées sur la peau du thorax de la victime, les électrodes permettent :
§ de capter et transmettre l’activité électrique cardiaque au défibrillateur ;
§ de délivrer le choc électrique lorsqu’il est indiqué. Plusieurs accessoires peuvent être joints au défibrillateur dont :
 # une paire de ciseaux, pour couper les vêtements et dénuder la poitrine de la
victime ;
 # des compresses ou du papier absorbant, pour sécher la peau de la poitrine de
la victime si elle est mouillée ou humide ;
 # d’un rasoir jetable pour raser les poils de la victime, s’ils sont particulièrement
abondants, à l’endroit où l’on colle les électrodes.

~Localisation%

Actuellement, les DAE mis à disposition du public sont de plus en plus nombreux, on les trouve notamment dans :
§ les halls d’aéroports et les avions des grandes compagnies aériennes ;
§ les grands magasins, les centres commerciaux ;
§ les halls de gares, les trains ;
§ les lieux de travail ;
§ certains immeubles d’habitation…
µDans ces cas, les appareils sont parfois placés dans des armoires murales repérées par un logo facilement identifiable.
µD’ici 2022, la plupart des Etablissements Recevant du Public (ERP) seront équipés de DAE (décret n°201-1186 du 19 décembre 2018 relatif aux défibrillateurs automatisés externes).

~Risques et contraintes%

Si la victime présente un timbre autocollant médicamenteux sur la zone de pose des électrodes, le sauveteur retire le timbre et essuie la zone avant de coller l’électrode.
µSi la victime présente un stimulateur cardiaque (le plus souvent le sauveteur constate une cicatrice et perçoit un boîtier sous la peau, sous la clavicule droite ou est informé par la famille) à l’endroit de pose de l’électrode, le sauveteur colle l’électrode à une largeur de main de l’appareil (environ 8 cm de la bosse perçue).
µSi la victime est allongée sur un sol mouillé (bord de piscine, pluie…) ou si son thorax est mouillé, le sauveteur, si possible, déplace la victime pour l’allonger sur une surface sèche et, si possible, sèche son thorax avant de débuter la défibrillation (1).
µSi la victime est allongée sur une surface en métal : si c’est possible et en se faisant aider si besoin, le sauveteur déplace la victime ou glisse un tissu sous elle (couverture…) avant de débuter la défibrillation (2).
µSi le DAE détecte un mouvement au cours de l’analyse, le sauveteur doit s’assurer de ne pas toucher la victime au cours de l’analyse. En l’absence de contact avec la victime, il vérifie la respiration de celle-ci.
µSi le DAE demande toujours de connecter les électrodes alors que cette opération a déjà été effectuée, le sauveteur, vérifie que :
§ les électrodes sont bien collées et le câble de connexion correctement connecté au
DAE ;
§ si le problème n’est pas résolu et qu’une seconde paire d’électrodes est disponible,
remplacer les électrodes.

~Justifications particulières %
(1) L’efficacité d’un choc électrique sur une victime allongée sur un sol mouillé est diminuée. Il n’existe pas de risque réel pour le sauveteur.
(2) L’efficacité d’un choc électrique sur une victime allongée sur une surface métallique est diminuée. Il n’existe pas de risque réel pour le sauveteur.', 11),
    (15, 'Défibrillation',  'FICHE TECHNIQUE N 3 
DEFIBRILLATION
Version : 1.2.3 Mise à jour : - Juillet 2019 -

~INDICATION%
Cette technique est indiquée en présence d’une victime en arrêt cardiaque.

~JUSTIFICATION%
Cette technique peut permettre de retrouver une activité cardiaque normale. Elle est sûre et sans risque même si elle est utilisée par des personnes qui sont peu ou pas formées.
µLe DAE doit être utilisé en suivant toutes les indications de l’appareil (schéma, messages vocaux).
µSi plus d un sauveteur est présent, la RCP doit être poursuivie durant l’installation du DAE.
µLes compressions thoraciques doivent être interrompues seulement lorsque le DAE indique de ne plus toucher à la victime.

~Chez l’adulte%

§ Mettre en fonction le défibrillateur ;
§ suivre les indications de l’appareil (1);
Ces indications précisent, dans un premier temps, de mettre en place les électrodes. Pour cela :
§ enlever ou couper les vêtements recouvrant la poitrine de la victime, si nécessaire ;
§ sécher le thorax de la victime s’il est humide ;
§ déballer et appliquer les électrodes, sur la poitrine nue de la victime, dans la position indiquée sur le schéma figurant sur l’emballage ou sur les électrodes ;
§ connecter les électrodes au défibrillateur, si nécessaire.
µLorsque le DAE l’indique, ne plus toucher la victime et s’assurer que les personnes aux alentours fassent de même (2).
µSi le défibrillateur annonce que le choc est nécessaire :
§ demander aux personnes aux alentours de s’écarter ;
§ laisser le DAE déclencher le choc électrique (défibrillateur entièrement automatique) ou appuyer sur le bouton «choc» lorsque l’appareil le demande (défibrillateur semiautomatique) ;
§ reprendre immédiatement les compressions thoraciques après la délivrance du choc.
µSi le défibrillateur annonce que le choc n’est pas nécessaire :
§ reprendre immédiatement les compressions thoraciques.

~Chez l’enfant ou le nourrisson%

La défibrillation doit être réalisée avec des appareils adaptés (électrodes enfants, réducteur d’énergie…). La position des électrodes collées sur la poitrine de la victime doit être conforme aux schémas du fabricant.
µEn leur absence, les électrodes adultes sont alors positionnées au milieu du thorax pour l’une et au milieu du dos pour l’autre.

~POINTS CLEFS%

La mise en œuvre du défibrillateur doit :
§ être la plus précoce possible ;
§ interrompre le moins possible la pratique des compressions thoraciques.

~Justifications particulières%

(1) Ces indications peuvent être vocales ou visuelles. Leur suivi strict permet de réaliser les différentes opérations plus rapidement et en sécurité.
(2) Tout mouvement de la victime durant la phase d’analyse du rythme cardiaque est susceptible de la fausser ',11), 
    (16, 'Désobstruction par la methode des claques dans le dos', 'FICHE TECHNIQUE N 4
DESOBSTRUCTION PAR LA METHODE DES CLAQUES DANS LE DOS 
Version : 1.3.2 Mise à jour : - Juillet 2019 -

~INDICATION %
Cette technique est indiquée en cas d’obstruction grave des voies aériennes par un corps étranger

~JUSTIFICATION%
Le but de la claque dans le dos est de provoquer un mouvement de toux pour débloquer et expulser le corps étranger qui obstrue les voies aériennes.
µLa technique de désobstruction des voies aériennes varie en fonction du gabarit de la victime.

~Chez l’adulte et le grand enfant%

§ laisser la victime debout ou assise ;
§ se placer sur le côté et légèrement en arrière de la victime ;
§ soutenir le thorax avec une main ;
§ pencher la victime vers l’avant ;
§ donner de 1 à 5 claques vigoureuses dans le dos, entre les deux omoplates, avec le talon de la main ouverte.

~Chez la victime qui peut tenir sur la cuisse du sauveteur%

§ s’asseoir ;
§ basculer la victime sur sa cuisse, la face vers le bas ;
§ donner de 1 à 5 claques vigoureuses dans le dos, entre les deux omoplates, avec le talon de la main ouverte.

~Chez la victime qui peut tenir sur l’avant-bras du sauveteur (nourrisson, petit enfant)%

§ coucher la victime à califourchon sur l’avant-bras, la face vers le sol ;
§ Maintenir sa tête avec les doigts, de part et d’autre de la bouche : le pouce d’un côté et un ou deux doigts de la même main de l’autre côté placés au niveau de l’angle de la mâchoire inférieure sans appuyer sur la gorge ;
§ incliner la victime afin que la tête soit plus basse que le thorax ;
§ donner 1 à 5 claques, entre les deux omoplates, avec le talon de la main ouverte.

~POINTS CLEFS%

La claque doit être donnée :
§ entre les 2 omoplates ;
§ avec le talon de la main ouverte ;
§ de façon vigoureuse.', 11), 
    (17, 'Désobstruction par la méthode des compressions abdominales', 'FICHE TECHNIQUE N 5
DESOBSTRUCTION PAR LA METHODE DES COMPRESSIONS ABDOMINALES 
Version : 1.2.3 Mise à jour : - Juillet 2019 -

~INDICATION %
Cette technique est indiquée en cas d’obstruction grave des voies aériennes par un corps étranger chez un adulte ou un enfant après une série de 5 claques dans le dos inefficaces, et si le sauveteur peut se tenir debout ou à genou derrière elle.

~JUSTIFICATION%
Le but de cette technique est de comprimer l’air contenu dans les poumons de la victime afin d’expulser le corps étranger par un effet de « piston ». Suivant l’importance et la position du corps étranger, plusieurs pressions successives peuvent être nécessaires pour l’expulser.

~Chez l’adulte ou l’enfant%

§ Se placer debout ou à genoux (enfant) derrière la victime, contre son dos ;
§ passer ses bras, sous ceux de la victime, de part et d’autre de la partie supérieure de son abdomen ;
§ pencher la victime vers l’avant ;
§ Placer le point fermé (dos de la main vers le ciel) juste au-dessus du nombril
§ placer la seconde main sur la première, les avant-bras n’appuyant pas sur les côtes ;
§ tirer franchement en exerçant une pression vers l’arrière et vers le haut ;
§ effectuer de 1 à 5 compressions, en relâchant entre chacune. 

~POINTS CLEFS%

La compression doit être faite :
§ au creux de l estomac ;
§ sans appuyer sur les côtes ;
§ vers l’arrière et vers le haut', 11), 
    (18, 'Désobstruction par la méthode des compressions thoraciques', 'FICHE TECHNIQUE N 6
DESOBSTRUCTION PAR LA METHODE DES COMPRESSIONS THORACIQUES 
Version : 1.3.2 Mise à jour : - Juillet 2019 -

~INDICATION %
Cette technique est indiquée en cas d’obstruction grave des voies aériennes par un corps étranger, lorsqu’il est impossible d’encercler l’abdomen de la victime (obèse, femme enceinte dans les derniers mois de grossesse…) et après une série de 5 claques dans le dos inefficaces. 

~JUSTIFICATION%
Le but de cette technique est de comprimer l’air contenu dans les poumons de la victime et d’expulser le corps étranger par un effet de « piston ». Suivant l’importance et la position du corps étranger, plusieurs pressions successives peuvent être nécessaires pour l’expulser.

~Impossibilité d’encercler l abdomen de la victime%

§ Se positionner derrière la victime ;
§ placer ses avant-bras sous les bras de la victime et encercler la poitrine de la victime ;
§ Placer le point fermé (dos de la main vers le ciel) au milieu du sternum, sans appuyer sur la pointe inférieure du sternum ;
§ placer l’autre main sur la première sans appuyer les avant-bras sur les côtes ;
§ tirer franchement en exerçant une pression vers l’arrière ;
§ effectuer de 1 à 5 compressions, en relâchant entre chacune. 
µCas particuliers : chez la victime consciente et alitée qui présente une obstruction grave des voies aériennes, le sauveteur peut réaliser des compressions thoraciques comme pour le massage cardiaque.

~POINTS CLEFS%

Les compressions thoraciques doivent être réalisées :
§ au milieu du sternum ;
§ sans appuyer sur les côtes ;
§ vers l’arrière.

~Chez le nourrisson%

~INDICATION%
Cette technique est indiquée en cas d’obstruction grave des voies aériennes par un corps étranger, chez une victime qui peut tenir sur l’avant-bras du sauveteur, et immédiatement après une série de 5 claques dans le dos inefficaces.

~JUSTIFICATION%
Le but de cette technique est de comprimer l’air contenu dans les poumons de la victime afin d’expulser le corps étranger par un effet de « piston ». Suivant l’importance et la position du corps étranger, plusieurs pressions successives peuvent être nécessaires pour l’expulser.

§ placer l’avant-bras contre le dos du nourrisson, la main soutenant sa tête ;
§ tourner le nourrisson pour que sa face soit côté ciel ;
§ placer l’avant-bras, sur lequel repose le nourrisson, sur la cuisse du sauveteur. La tête du nourrisson doit être plus basse que le reste du corps ;
§ placer la pulpe de deux doigts d’une main dans l’axe du sternum, une largeur de doigt au-dessus d’un repère constitué par le bas du sternum à la jonction des dernières côtes ;
§ effectuer de 1 à 5 compressions profondes et successives en relâchant entre chacune. 

~POINTS CLEFS%

Les compressions thoraciques doivent être :
§ pratiquées au milieu de la poitrine ;
§ profondes', 11),
    (19, 'Garrot', 'FICHE TECHNIQUE N 7
GARROT 
Version : 2.2.2 Mise à jour : - Juillet 2019 -

~INDICATION %
Cette technique est indiquée en cas d hémorragie d’un membre lorsque la compression directe est inefficace ou impossible. 

~JUSTIFICATION%
Le but de cette technique est d arrêter une hémorragie externe en interrompant totalement la circulation du sang du membre, en aval de l endroit où il est posé.

~Matériel :%

§ Lien de toile, solide, non élastique, improvisé de 3 à 5 cm de large et d au moins 1,50 m de longueur ;
§ Barre, pièce longue de 10 à 20 cm environ en bois solide, PVC dur ou métal rigide pour permettre le serrage.
µNB : il existe dans le commerce des garrots spécialement conçus qui peuvent faire éventuellement partie d une trousse de secours. Les garrots équipés d une barre de serrage, d un lien large et d un dispositif de sécurité ont montré une meilleure efficacité. Il ne faut pas utiliser les garrots élastiques prévus pour les prises de sang.

~Réalisation :%

Le garrot est mis en place à quelques centimètres au-dessus de la plaie (entre le cœur et la plaie), jamais sur une articulation :
µ1. faire deux tours autour du membre avec le lien large à l endroit où le garrot doit être
placé ;
µ2. faire un nœud ;
µ3. placer au-dessus du nœud la barre et faire deux nœuds par-dessus pour la maintenir ;
µ4. tourner la barre de façon à serrer le garrot jusqu à l arrêt du saignement et maintenir le serrage par le sauveteur même si la douleur provoquée est intense. Il est toutefois
possible de maintenir le serrage en bloquant la position du bâton avec un second lien par exemple ou en bloquant la position de la barre par quelque moyen que ce soit si le sauveteur doit se libérer.
µNB : En l absence de barre, faire le garrot uniquement avec le lien large. Réaliser une boucle en glissant le lien au niveau de l hémorragie. Glisser une partie du lien dans la boucle afin que le garrot entoure le membre. Serrer le nœud du garrot le plus fortement possible en tirant sur chaque extrémité du lien et réaliser un double nœud de maintien.
µUne fois mis en place, le garrot doit toujours rester visible (ne pas le recouvrir) et ne jamais être retiré sans avis médical.

~POINTS CLEFS%

Le garrot doit :
§ être situé en amont de la plaie qui saigne (entre le cœur et la plaie);
§ être serré pour arrêter le saignement', 11),
    (20, 'Insufflations', 'FICHE TECHNIQUE N 8 INSUFFLATIONS
Version : 1.1.2 Mise à jour : - Janvier 2017 -

~INDICATION%
Cette technique est indiquée en présence d’une victime en arrêt cardiaque.

~JUSTIFICATION%
Cette technique permet d’apporter de l’air aux poumons d’une victime en arrêt cardiaque
~%
La victime étant préalablement installée en position horizontale et sur le dos :

~Chez l’adulte et l’enfant%

§ basculer la tête de la victime en arrière comme pour la technique de libération des voies aériennes ;
§ pincer le nez de la victime entre le pouce et l’index, tout en maintenant la bascule en arrière de la tête (1) avec la main qui est placée sur le front ;
§ ouvrir légèrement la bouche de la victime en utilisant l’autre main et maintenir le menton élevé ;
§ inspirer, sans excès ;
§ appliquer la bouche largement ouverte autour de la bouche de la victime en appuyant fermement (2);
§ insuffler progressivement jusqu’à ce que la poitrine de la victime commence à se soulever (durant 1 seconde environ) ;
§ se redresser légèrement tout en maintenant la bascule de la tête en arrière afin de :
 # reprendre son souffle ;
 # vérifier l’affaissement de la poitrine de la victime ;
§ insuffler une seconde fois dans les mêmes conditions.
µLa durée de réalisation de ces deux insufflations successives ne doit pas exéder  5 secondes (3).
µSi le ventre ou la poitrine de la victime ne se soulève pas lors des insufflations :
§ s’assurer que la tête de la victime est en bonne position et que son menton est élevé ;
§ s’assurer qu’il y a une bonne étanchéité et pas de fuite d’air lors de l’insufflation ;
§ rechercher la présence d’un corps étranger dans la bouche. Le retirer avec les doigts, si nécessaire.

~Chez le nourrisson%

La technique est sensiblement la même que pour l’adulte ou l’enfant. Toutefois, il convient de :
§ placer la tête du nourrisson en position neutre, menton élevé ;
§ englober avec la bouche à la fois la bouche et le nez de la victime ;
§ insuffler progressivement jusqu à ce que la poitrine du nourrisson commence à se soulever (durant 1 seconde environ) ;
§ se redresser légèrement tout en maintenant la tête en position neutre afin de :
 # reprendre son souffle ;
 # vérifier l’affaissement de la poitrine de la victime ;
§ insuffler une seconde fois dans les mêmes conditions.

~POINTS CLEFS%

Les deux insufflations doivent :
§ être lentes et progressives ;
§ cesser dès le début de soulèvement de la poitrine ;
§ être réalisées en 5 secondes au maximum.

~JUSTIFICATIONS PARTICULIERES%

(1) Le pincement du nez empêchera toute fuite d’air par le nez lors des insufflations.
(2) La pression ferme autour de la bouche de la victime empêchera toute fuite d’air durant les insufflations.
(3) La réalisation rapide des manœuvres d’insufflation permet de ne pas retarder la reprise des compressions thoraciques ', 11), 
    (21, 'Libération des voies aériennes', 'FICHE TECHNIQUE N 9 LIBERATION DES VOIES AERIENNES 
Version : 1.1.2 Mise à jour : - Janvier 2017 -

~INDICATION %
Cette technique doit être réalisée systématiquement avant de pouvoir apprécier la respiration chez une victime qui ne répond ou ne réagit à aucune sollicitation verbale ou physique.

~JUSTIFICATION%
La bascule de la tête en arrière (chez l’adulte ou l’enfant) ou la mise en position neutre (chez le nourrisson) et l’élévation du menton entraînent la langue qui, en se décollant du fond de la gorge, permet le passage de l’air.
~%
§ placer la paume d’une main sur le front de la victime ;
§ placer 2 ou 3 doigts de l’autre main, juste sous la pointe du menton en prenant appui sur l’os. Eventuellement s’aider du pouce pour saisir le menton ;

~Chez l’adulte ou l’enfant%

§ basculer doucement la tête de la victime en arrière en appuyant sur le front et élever le menton.

~Chez le nourrisson%

§ amener doucement la tête du nourrisson en position neutre dans l’alignement du torse et élever le menton tout en évitant une bascule excessive susceptible de provoquer une extension du rachis et une gêne de la ventilation.

~POINTS CLEFS%

La liberté des voies aériennes est assurée lorsque :
§ le menton est élevé ;
§ la tête est maintenue dans cette position.',11), 
    (22, 'Maintien de la tête', 'FICHE TECHNIQUE N 10 
MAINTIEN DE LA TETE
Version : 2.1.2 Mise à jour : - Juillet 2019 -

~INDICATION %
Cette technique est indiquée chez la victime qui présente une douleur du cou à la suite d’un traumatisme (suspicion de traumatisme du rachis cervical), ou une plaie à l’œil.

~JUSTIFICATION%
Le maintien de la tête du blessé à deux mains permet de la stabiliser et de limiter les mouvements intempestifs du cou.
~%
§ se placer en position stable à genou ou en trépied dans l axe de la victime, au niveau de
sa tête ;
§ placer les deux mains de chaque côté de sa tête pour la maintenir dans la position où elle
se trouve.
µPour diminuer la fatigue, il est possible de prendre appui avec les coudes sur le sol ou sur
les genoux.

~POINTS CLEFS%

Le maintien de la tête est efficace lorsque :
§ le sauveteur est en position stable ;
§ le maintien de la tête limite ses mouvements', 11), 
    (23, 'Position Latérale de Séurité', 'FICHE TECHNIQUE N 11 POSITION LATERALE DE SECURITE
Version : 1.2.2 Mise à jour : - Juillet 2019 -

~INDICATION%
Cette technique est indiquée chez la victime qui ne répond ou ne réagit à aucune sollicitation verbale ou physique et respire.

~JUSTIFICATION%
La position latérale de sécurité permet de maintenir libres les voies aériennes supérieures de la victime en permettant l’écoulement des liquides vers l’extérieur et en évitant que la langue ne chute dans le fond de la gorge.

~Chez l’adulte ou l’enfant%

1er temps : Préparer le retournement de la victime. Pour cela :
§ retirer les lunettes de la victime si elle en porte ;
§ rapprocher délicatement les membres inférieurs de l’axe du corps ;
§ placer le bras de la victime, situé du côté sauveteur, à angle droit de son corps ;
§ plier le coude de ce même bras en gardant la paume de la main de la victime tournée vers le haut (1);
§ se placer à genoux ou en trépied à côté de la victime, au niveau de son thorax ;
§ saisir le bras opposé de la victime et amener le dos de la main de la victime sur son oreille, côté sauveteur ;
§ maintenir le dos de la main de la victime pressée contre son oreille, paume contre paume (2);
§ attraper la jambe opposée de la victime, avec l’autre main, juste derrière le genou ;
§ relever la jambe de la victime, tout en gardant le pied au sol (3);
§ s’éloigner du thorax de la victime afin de pouvoir la retourner sans avoir à reculer, si nécessaire ;
µ2ème temps : Retourner la victime. Pour cela :
§ tirer sur la jambe relevée de la victime afin de la faire pivoter vers le sauveteur, jusqu’à ce que le genou touche le sol, sans brusquerie et en un seul temps ;
§ dégager doucement la main du sauveteur située sous la tête de la victime, tout en préservant la bascule de la tête en arrière, en maintenant le coude de la victime à l’aide de la main du sauveteur précédemment située au genou (4).
µ3ème temps : Stabiliser la victime. Pour cela :
§ ajuster la jambe de la victime située au-dessus de telle sorte que la hanche et le genou soient à angle droit (5);
§ ouvrir la bouche de la victime sans mobiliser la tête et sans rabattre le menton sur le sternum (6);
§ contrôler en permanence la respiration.

~Chez le nourrisson%

§ Placer le nourrisson sur le côté, dans les bras du sauveteur le plus souvent.

~POINTS CLEFS%

La mise en position latérale de sécurité doit :
§ limiter au maximum les mouvements de la colonne vertébrale ;
§ aboutir à une position stable, la plus latérale possible ;
§ permettre de contrôler la respiration de la victime ;
§ permettre l’écoulement des liquides vers l’extérieur (bouche ouverte).

~Justifications particulières%

(1) L’alignement des jambes et la position du membre supérieur anticipent la position finale.
(2) Lors du retournement, le maintien de la main de la victime contre son oreille permet d’accompagner le mouvement de la tête et de diminuer la flexion de la colonne cervicale qui pourrait aggraver un  traumatisme éventuel.
(3) La saisie de la jambe de la victime au niveau du genou permet de l’utiliser comme « bras de levier » pour le retournement.
(4) Le maintien de la main sous la tête de la victime limite les mouvements de la colonne cervicale.
(5) La position de la jambe permet de stabiliser la PLS.
(6) L’ouverture de la bouche de la victime facilite l’écoulement des liquides vers l’extérieur', 11); 

--Quizz      
INSERT INTO Quizz (id, intitule, reponseA, reponseB, reponseC, reponseD, reponse_Vraie, sujets_id) VALUES
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

--Fiches
INSERT INTO Noeud_Decisionnel(DTYPE, id, nom_Noeud, nom_Fiche) VALUES
    ('Fiche', 19, 'PLS_adulte_enfant', 'Position Latérale de Sécurité'),
    ('Fiche', 20, 'ACR_adulte', 'Arrêt Cardiorespiratoire chez un adulte'),
    ('Fiche', 21, 'OBVA_Totale_adulte', 'Obstruction totale des voies aérienne chez un adulte'),
    ('Fiche', 22, 'OBVA_Partielle', 'Obstruction partielle des voies aérienne'),
    ('Fiche', 23, 'LVA', 'Libération des voies aériennes'),
    ('Fiche', 24, 'Inconscience', 'Reconnaitre inconscience'),
    ('Fiche', 25, 'ACR_enfant', 'Arrêt Cardiorespiratoire chez un enfant'),
    ('Fiche', 26, 'ACR_nourrisson', 'Arrêt Cardiorespiratoire chez un nourrisson'),
    ('Fiche', 27, 'PLS_nourrisson', 'Position Latérale de Sécurité chez le nourrisson'),
    ('Fiche', 28, 'Brulure_simple', 'Brûlure simple'),
    ('Fiche', 29, 'Brulure_grave', 'Brulure grave'),
    ('Fiche', 30, 'Brulure_chimique_oeil', 'Brûlure par produit chimique aux yeux'),
    ('Fiche', 31, 'Brulure_chimique', 'Brûlure par produit chimique'),
    ('Fiche', 32, 'Brulure_électrique', 'Brûlure par un courant électrique'),
    ('Fiche', 33, 'Brulure_interne', 'Brûlure par inhalation de vapeurs chaudes ou caustiques'),
    ('Fiche', 34, 'Hemorragie_nez', 'Hémorragie par le nez'),
    ('Fiche', 35, 'Hemorragie_crachats', 'Hémorragie par crachats ou vomissements de sang'),
    ('Fiche', 36, 'Hemorragie_orifice_naturel', 'Hémorragie par un orifice naturel'),
    ('Fiche', 37, 'Hemorragie', 'Hémorragie'),
    ('Fiche', 38, 'Malaise_signes', 'Malaise : les signes à rechercher'),
    ('Fiche', 39, 'OBVA_Totale_enfant', 'Obstruction totale des voies aérienne chez un enfant'),
    ('Fiche', 40, 'OBVA_Totale_nourrisson', 'Obstruction totale des voies aérienne chez un nourrisson'),
    ('Fiche', 41, 'Plaie_grave', 'Plaie grave'),
    ('Fiche', 42, 'Plaie_simple', 'Plaie simple'),
    ('Fiche', 43, 'Trauma_signes_immediats', 'Traumatisme avec signes immédiats'),
    ('Fiche', 44, 'Trauma_rachis', 'Traumatisme avec douleur au cou (suspicion de traumatisme du rachis cervical)'); 


--Questions
INSERT INTO Noeud_Decisionnel(DTYPE, id, nom_Noeud, texte_Question, aide_comprehension_id) VALUES
    ('Question', 1, 'Respire', 'La victime respire-t-elle ?', 23), --mettre à 23
    ('Question', 3, 'OBVA', 'La victime a-t-elle avalé un objet de travers ?', null),
    ('Question', 4, 'Hemo', 'La victime saigne-t-elle abondamment ?', null),
    ('Question', 5, 'Trauma', 'La victime a-t-elle subit un traumatisme physique ?', null),
    ('Question', 6, 'Plaie', 'La victime a-t-elle une plaie ?', null),
    ('Question', 7, 'Brulure', 'La victime s''est-elle brûlée ?', null),
    ('Question', 8, 'Malaise', 'La victime se sent-elle mal ?', null),
    ('Question', 9, 'Type OBVA', 'La victime peut-elle parler ou tousser ?', null),
    ('Question', 10, 'Type Hemo', 'De quelle partie du corps saigne la victime ?', null),
    ('Question', 11, 'Localisation Trauma', 'Où la victime a-t-elle des douleurs ?', null),
    ('Question', 12, 'Type Plaie', 'La plaie est-elle simple ou grave ?', null),
    ('Question', 13, 'Localisation Brulure Chimique', 'Où la victime a-t-elle été brûlée ?', null),
    ('Question', 14, 'Type Brulure', 'La brûlure est-elle simple ou grave ?', null),
    ('Question', 15, 'Cause Brulure', 'Quelle est la cause de la brûlure ?', null),
    ('Question', 16, 'Type de victime PLS', 'La victime est-elle :', null),
    ('Question', 17, 'Type de victime ACR', 'La victime est-elle :', null),
    ('Question', 18, 'Type de victime OBVA totale', 'La victime est-elle :', null);
INSERT INTO Noeud_Decisionnel(DTYPE, id, nom_Noeud, noeud_Racine, texte_Question, aide_comprehension_id) VALUES
    ('Question', 2, 'Conscient', 1, 'La victime est-elle consciente ?', 24); --mettre à 24



--Réponses
INSERT INTO Reponse(id, libelle_reponse, question_posee_id, noeud_fils_id) VALUES
    --conscient ? id 2
    (1, 'OUI', 2, 3),
    (2, 'NON', 2, 1),
    --OBVA ? id 3
    (3, 'OUI', 3, 9),
    (4, 'NON', 3, 4),
    --Hémorragie ? id 4
    (5, 'OUI', 4, 10),
    (6, 'NON', 4, 5),
    --Trauma ? 5
    (7, 'OUI', 5, 11),
    (8, 'NON', 5, 6),
    --Plaie ? 6
    (9, 'OUI', 6, 12),
    (10, 'NON', 6, 7),
    (13, 'Grave', 12, 41),
    (14, 'Simple', 12, 42),
    --Brûlure ? 7
    (11, 'OUI', 7, 14),
    (12, 'NON', 7, 8),
    --respire ? 1
    (17, 'OUI', 1, 19),
    (18, 'NON', 1, 17),
    (24, 'un Adulte', 17, 20),
    (25, 'un Enfant', 17, 25),
    (26, 'un Bébé', 17, 26),
    --Type OBVA ? 9
    (19, 'OUI', 9, 22),
    (20, 'NON', 9, 18),
    (21, 'un Adulte', 18, 21),
    (22, 'un Enfant', 18, 39),
    (23, 'un Bébé', 18, 40),
    --Type hémo ? 10
    (27, 'du nez', 10, 34),
    (28, 'crache ou vomit du sang', 10, 35),
    (29, 'depuis un orifice naturel', 10, 36),
    (30, 'autre', 10, 37),
    --Type trauma ? 11
    (31, 'au cou', 11, 44),
    (32, 'ailleurs', 11, 43),
    --Type brulure ? 14
    (15, 'Grave', 14, 15),
    (16, 'Simple', 14, 28),
    (33, 'électrique', 15, 32),
    (34, 'par produit chimique', 15, 13),
    (35, 'par inhalation de vapeurs', 15, 33),
    (36, 'autre', 15, 29),
    (37, 'aux yeux', 13, 30),
    (38, 'ailleurs', 13, 31),
    --Malaise ? 8
    (39, 'OUI', 8, 38),
    (40, 'NON - revenir au début', 8, 2);
    


--Illustrations
INSERT INTO Illustration(id, description_illustration, nom_illustration, url_illustration) VALUES
    (1, 'brûlure chimique aux yeux', 'Brulure_ChimiqueOeil_T_1', 'static/Images/Illustrations/Brulure_ChimiqueOeil_T_1.png'),
    (2, 'rincer une brûlure grave', 'Brulure_grave_T_1', 'static/Images/Illustrations/Brulure_grave_T_1.png'),
    (3, '', 'Brulure_Simple_AEN_1', 'static/Images/Illustrations/Brulure_Simple_AEN_1.png'),
    (4, '', 'Brulure_Simple_AEN_2', 'static/Images/Illustrations/Brulure_Simple_AEN_2.png'),
    (5, '', 'Brulure_Simple_AEN_3', 'static/Images/Illustrations/Brulure_Simple_AEN_3.png'),
    (6, '', 'Brulure_Simple_AEN_4', 'static/Images/Illustrations/Brulure_Simple_AEN_4.png'),
    (7, '', 'Hemorragie_Nez_T_1', 'static/Images/Illustrations/Hemorragie_Nez_T_1.png'),
    (8, '', 'Hemorragie_Nez_T_2', 'static/Images/Illustrations/Hemorragie_Nez_T_2.png'),
    (9, '', 'Hemorragie_Nez_T_3', 'static/Images/Illustrations/Hemorragie_Nez_T_3.png'),
    (10, '', 'Hemorragie_Nez_T_4', 'static/Images/Illustrations/Hemorragie_Nez_T_4.png'),
    (11, '', 'Inconscient_ACR_A_1', 'static/Images/Illustrations/Inconscient_ACR_A_1.png'),
    (12, '', 'Inconscient_ACR_A_2', 'static/Images/Illustrations/Inconscient_ACR_A_2.png'),
    (13, '', 'Inconscient_ACR_A_3', 'static/Images/Illustrations/Inconscient_ACR_A_3.png'),
    (14, '', 'Inconscient_ACR_A_4', 'static/Images/Illustrations/Inconscient_ACR_A_4.png'),
    (15, '', 'Inconscient_ACR_A_5', 'static/Images/Illustrations/Inconscient_ACR_A_5.png'),
    (16, '', 'Inconscient_ACR_Defibrillateur_T_1', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_1.png'),
    (17, '', 'Inconscient_ACR_Defibrillateur_T_2', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_2.png'),
    (18, '', 'Inconscient_ACR_Defibrillateur_T_3', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_3.png'),
    (19, '', 'Inconscient_ACR_Defibrillateur_T_4', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_4.png'),
    (20, '', 'Inconscient_ACR_Defibrillateur_T_5', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_5.png'),
    (21, '', 'Inconscient_ACR_Defibrillateur_T_6', 'static/Images/Illustrations/Inconscient_ACR_Defibrillateur_T_6.png'),
    (22, '', 'Inconscient_ACR_E_1', 'static/Images/Illustrations/Inconscient_ACR_E_1.png'),
    (23, '', 'Inconscient_ACR_E_2', 'static/Images/Illustrations/Inconscient_ACR_E_2.png'),
    (24, '', 'Inconscient_ACR_E_3', 'static/Images/Illustrations/Inconscient_ACR_E_3.png'),
    (25, '', 'Inconscient_ACR_Insuflations_AE_1', 'static/Images/Illustrations/Inconscient_ACR_Insuflations_AE_1.png'),
    (26, '', 'Inconscient_ACR_Insuflations_AE_2', 'static/Images/Illustrations/Inconscient_ACR_Insuflations_AE_2.png'),
    (27, '', 'Inconscient_ACR_Insuflations_AE_3', 'static/Images/Illustrations/Inconscient_ACR_Insuflations_AE_3.png'),
    (28, '', 'Inconscient_ACR_Insuflations_AE_4', 'static/Images/Illustrations/Inconscient_ACR_Insuflations_AE_4.png'),
    (29, '', 'Inconscient_ACR_N_1', 'static/Images/Illustrations/Inconscient_ACR_N_1.png'),
    (30, '', 'Inconscient_ACR_N_2', 'static/Images/Illustrations/Inconscient_ACR_N_2.png'),
    (31, '', 'Inconscient_ACR_N_3', 'static/Images/Illustrations/Inconscient_ACR_N_3.png'),
    (32, '', 'Inconscient_Constat_AE_1', 'static/Images/Illustrations/Inconscient_Constat_AE_1.png'),
    (33, '', 'Inconscient_Constat_AE_2', 'static/Images/Illustrations/Inconscient_Constat_AE_2.png'),
    (34, '', 'Inconscient_LVA_AE_1', 'static/Images/Illustrations/Inconscient_LVA_AE_1.png'),
    (35, '', 'Inconscient_LVA_AE_2', 'static/Images/Illustrations/Inconscient_LVA_AE_2.png'),
    (36, '', 'Inconscient_LVA_AE_3', 'static/Images/Illustrations/Inconscient_LVA_AE_3.png'),
    (37, '', 'Inconscient_LVA_AE_4', 'static/Images/Illustrations/Inconscient_LVA_AE_4.png'),
    (38, '', 'Inconscient_LVA_AE_5', 'static/Images/Illustrations/Inconscient_LVA_AE_5.png'),
    (39, '', 'Inconscient_LVA_AE_6', 'static/Images/Illustrations/Inconscient_LVA_AE_6.png'),
    (40, '', 'Inconscient_PLS_AE_1', 'static/Images/Illustrations/Inconscient_PLS_AE_1.png'),
    (41, '', 'Inconscient_PLS_AE_2', 'static/Images/Illustrations/Inconscient_PLS_AE_2.png'),
    (42, '', 'Inconscient_PLS_AE_3', 'static/Images/Illustrations/Inconscient_PLS_AE_3.png'),
    (43, '', 'Inconscient_PLS_AE_4', 'static/Images/Illustrations/Inconscient_PLS_AE_4.png'),
    (44, '', 'Inconscient_PLS_AE_5', 'static/Images/Illustrations/Inconscient_PLS_AE_5.png'),
    (45, '', 'Inconscient_PLS_AE_6', 'static/Images/Illustrations/Inconscient_PLS_AE_6.png'),
    (46, '', 'Inconscient_PLS_AE_7', 'static/Images/Illustrations/Inconscient_PLS_AE_7.png'),
    (47, '', 'Inconscient_PLS_AE_8', 'static/Images/Illustrations/Inconscient_PLS_AE_8.png'),
    (48, '', 'Inconscient_PLS_AE_9', 'static/Images/Illustrations/Inconscient_PLS_AE_9.png'),
    (49, '', 'Inconscient_PLS_AE_10', 'static/Images/Illustrations/Inconscient_PLS_AE_10.png'),
    (50, '', 'Inconscient_PLS_AE_11', 'static/Images/Illustrations/Inconscient_PLS_AE_11.png'),
    (51, '', 'Inconscient_PLS_AE_12', 'static/Images/Illustrations/Inconscient_PLS_AE_12.png'),
    (52, '', 'Inconscient_PLS_AE_13', 'static/Images/Illustrations/Inconscient_PLS_AE_13.png'),
    (53, '', 'Inconscient_PLS_AE_14', 'static/Images/Illustrations/Inconscient_PLS_AE_14.png'),
    (54, '', 'Inconscient_PLS_AE_15', 'static/Images/Illustrations/Inconscient_PLS_AE_15.png'),
    (55, '', 'Inconscient_PLS_AE_16', 'static/Images/Illustrations/Inconscient_PLS_AE_16.png'),
    (56, '', 'Inconscient_PLS_AE_17', 'static/Images/Illustrations/Inconscient_PLS_AE_17.png'),
    (57, '', 'Inconscient_PLS_N_1', 'static/Images/Illustrations/Inconscient_PLS_N_1.png'),
    (58, '', 'OBVA_AEN_1', 'static/Images/Illustrations/OBVA_AEN_1.png'),
    (59, '', 'OBVA_Partielle_AEN_1', 'static/Images/Illustrations/OBVA_Partielle_AEN_1.png'),
    (60, '', 'OBVA_Partielle_AEN_2', 'static/Images/Illustrations/OBVA_Partielle_AEN_2.png'),
    (61, '', 'OBVA_Totale_A_2', 'static/Images/Illustrations/OBVA_Totale_A_2.png'),
    (62, '', 'OBVA_Totale_A_3', 'static/Images/Illustrations/OBVA_Totale_A_3.png'),
    (63, '', 'OBVA_Totale_A_4', 'static/Images/Illustrations/OBVA_Totale_A_4.png'),
    (64, '', 'OBVA_Totale_A_5', 'static/Images/Illustrations/OBVA_Totale_A_5.png'),
    (65, '', 'OBVA_Totale_A_6', 'static/Images/Illustrations/OBVA_Totale_A_6.png'),
    (66, '', 'OBVA_Totale_A_7', 'static/Images/Illustrations/OBVA_Totale_A_7.png'),
    (67, '', 'OBVA_Totale_A_8', 'static/Images/Illustrations/OBVA_Totale_A_8.png'),
    (68, '', 'OBVA_Totale_A_9', 'static/Images/Illustrations/OBVA_Totale_A_9.png'),
    (69, '', 'OBVA_Totale_A_10', 'static/Images/Illustrations/OBVA_Totale_A_10.png'),
    (70, '', 'OBVA_Totale_A_11', 'static/Images/Illustrations/OBVA_Totale_A_11.png'),
    (71, '', 'OBVA_Totale_A_12', 'static/Images/Illustrations/OBVA_Totale_A_12.png'),
    (72, '', 'OBVA_Totale_AE_1', 'static/Images/Illustrations/OBVA_Totale_AE_1.png'),
    (73, '', 'OBVA_Totale_Aenceinteobese_1', 'static/Images/Illustrations/OBVA_Totale_Aenceinteobese_1.png'),
    (74, '', 'OBVA_Totale_Aenceinteobese_2', 'static/Images/Illustrations/OBVA_Totale_Aenceinteobese_2.png'),
    (75, '', 'Traumatisme_Membre_T_1', 'static/Images/Illustrations/Traumatisme_Membre_T_1.png'),
    (76, '', 'Traumatisme_Membre_T_2', 'static/Images/Illustrations/Traumatisme_Membre_T_2.png'),
    (77, '', 'Traumatisme_Rachis_T_1', 'static/Images/Illustrations/Traumatisme_Rachis_T_1.png'),
    (78, '', 'Traumatisme_Rachis_T_2', 'static/Images/Illustrations/Traumatisme_Rachis_T_2.png'),
    (79, '', 'Traumatisme_Rachis_T_3', 'static/Images/Illustrations/Traumatisme_Rachis_T_3.png');
    /* (80, '', '', 'static/Images/Illustrations/.png'),
    (81, '', '', 'static/Images/Illustrations/.png'),
    (82, '', '', 'static/Images/Illustrations/.png'),
    (83, '', '', 'static/Images/Illustrations/.png'),
    (84, '', '', 'static/Images/Illustrations/.png'),
    (85, '', '', 'static/Images/Illustrations/.png'), */

--Liens Illustrations -> Fiches
INSERT INTO FICHE_ILLUSTRATION(guide_id, dessin_id, position_dessin) VALUES
    --PLS
    (19, 40, 1), (19, 41, 2), (19, 42, 3), (19, 43, 4), (19, 44, 5), (19, 45, 6), (19, 46, 7), (19, 47, 8), (19, 48, 9), (19, 49, 10),
    (19, 50, 11), (19, 51, 12), (19, 52, 13), (19, 53, 14), (19, 54, 15), (19, 55, 16), (19, 56, 17),
    --Reconnaître l'inconscience
    (24, 32, 1), (24, 33, 2),
    --LVA
    (23, 34, 1), (23, 35, 2), (23, 36, 3), (23, 37, 4), (23, 38, 5), (23, 39, 6);


/* ALTER TABLE NOEUD_DECISIONNEL_DESSINS
ADD position_dessin INT;

INSERT INTO NOEUD_DECISIONNEL_DESSINS(guides_id, dessins_id, position_dessin) VALUES
    --PLS
    (19, 40, 1), (19, 41, 2), (19, 42, 3), (19, 43, 4), (19, 44, 5), (19, 45, 6), (19, 46, 7), (19, 47, 8), (19, 48, 9), (19, 49, 10),
    (19, 50, 11), (19, 51, 12), (19, 52, 13), (19, 53, 14), (19, 54, 15), (19, 55, 16), (19, 56, 17),
    --Reconnaître l'inconscience
    (24, 32, 1), (24, 33, 2),
    --LVA
    (23, 34, 1), (23, 35, 2), (23, 36, 3), (23, 37, 4), (23, 38, 5), (23, 39, 6);
 */
    /* (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), 
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), */

