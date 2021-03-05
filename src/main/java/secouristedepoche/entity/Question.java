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
public class Question {
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String resumeQuestion;

    @Column(unique=true)
    @NonNull
    private String texteQuestion;
    
    @OneToMany(mappedBy = "questionPosee")
    List<Reponse> reponsePossible = new LinkedList<>();

    @ManyToOne
    Fiche aideComprehension;
}