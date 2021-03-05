package secouristedepoche.entity;
import javax.persistence.*;
import lombok.*;
import java.util.LinkedList;
import java.util.List;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Fiche extends NoeudDecisionnel {

    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String nomFiche;
    
    @ManyToMany (mappedBy = "consuiteATenir")
    private List<Chapitre> situations = new LinkedList<>();

    @ManyToMany
    List<Illustration> dessins = new LinkedList<>();

    @OneToMany(mappedBy = "aideComprehension")
    private List<Question> information = new LinkedList<>();

}