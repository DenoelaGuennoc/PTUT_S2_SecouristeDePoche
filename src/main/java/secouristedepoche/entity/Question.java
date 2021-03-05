package secouristedepoche.entity;
import javax.persistence.*;
import lombok.*;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Question extends NoeudDecisionnel{
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String resumeQuestion;

    @Column(unique=true)
    @NonNull
    private String texteQuestion;

    public Question (Integer idQuestion, String resumeQuestion, String texteQuestion, Integer idNoeud, String nomNoeud){
        this.id = idQuestion;
        this.resumeQuestion = resumeQuestion;
        this.texteQuestion = texteQuestion;
        super(idNoeud, nomNoeud);
    }
    
    @OneToMany(mappedBy = "questionPosee")
    List<Reponse> reponsePossible = new LinkedList<>();

    @ManyToOne
    Fiche aideComprehension;
}