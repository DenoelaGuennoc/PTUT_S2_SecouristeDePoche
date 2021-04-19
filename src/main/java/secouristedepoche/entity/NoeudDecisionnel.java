package secouristedepoche.entity;
import javax.persistence.*;

import org.springframework.context.annotation.Bean;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;

import lombok.*;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class NoeudDecisionnel {
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String nomNoeud;

    @Column(columnDefinition="Integer default 0")
    @NonNull
    private Boolean noeudRacine;
    
    public NoeudDecisionnel(Integer idNoeud, String nomNoeud){
        this.id = idNoeud;
        this.nomNoeud = nomNoeud;
    }

    public NoeudDecisionnel(Integer idNoeud, String nomNoeud, Boolean noeudRacine){
        this.id = idNoeud;
        this.nomNoeud = nomNoeud;
        this.noeudRacine = noeudRacine;
    }

}