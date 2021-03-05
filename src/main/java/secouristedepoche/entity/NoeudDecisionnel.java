package secouristedepoche.entity;
import javax.persistence.*;
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
    
    public NoeudDecisionnel(Integer idNoeud, String nomNoeud){
        this id = idNoeud;
        this nomNoeud = nomNoeud;
    }
}