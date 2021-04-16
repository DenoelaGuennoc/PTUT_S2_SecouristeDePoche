package secouristedepoche.config;

import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.stereotype.Component;

/* import secouristedepoche.entity.Chapitre;
import secouristedepoche.entity.Fiche;
import secouristedepoche.entity.Illustration; */
import secouristedepoche.entity.*;




@Component
/**
 * Configuration pour que les clés primaires soient automatiquement exposées
 * par l'API REST (pas obligatoire, mais commode).
 * Par défaut, l'API expose seulement le lien 'self'
 */
public class RestConfiguration implements RepositoryRestConfigurer {

	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
		// Lister les classes dont on veut exposer les clés dans l'API REST
		config.exposeIdsFor(Chapitre.class, Fiche.class, Illustration.class, Media.class, NoeudDecisionnel.class, Question.class, Quizz.class, Reponse.class, Theme.class);
	}
}