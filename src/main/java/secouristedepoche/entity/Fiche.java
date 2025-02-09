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

    /*
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;
    */

    @Column(unique=true)
    @NonNull
    private String nomFiche;
    
    public Fiche(String nomFiche, Integer idNoeud, String nomNoeud){
        super(idNoeud, nomNoeud);
        this.nomFiche = nomFiche;
    }


    @ManyToMany (mappedBy = "conduiteATenir")
    private List<Chapitre> situations = new LinkedList<>();

    /* @ManyToMany
    List<Illustration> dessins = new LinkedList<>(); */

    @OneToMany(mappedBy = "guide")
    private List<FicheIllustration> relationGuideDessin = new LinkedList<>();


    @OneToMany(mappedBy = "aideComprehension")
    private List<Question> information = new LinkedList<>();

    public int getId(){
        return super.getId();
    }
}