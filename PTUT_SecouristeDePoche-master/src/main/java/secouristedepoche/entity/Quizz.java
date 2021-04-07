package secouristedepoche.entity;
import javax.persistence.*;
import lombok.*;
import java.util.LinkedList;
import java.util.List;
// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/

// Erreur
//Couldn't find PersistentEntity for type class javax.print.attribute.standard.Media!


@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Quizz {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String intitule;

    @NonNull
    private String reponseA;

    @Column(nullable = true)
    private String reponseB;
    
    @Column(nullable = true)
    private String reponseC;

    @Column(nullable = true)
    private String reponseD;

    @NonNull
    private String reponseVraie;

    @ManyToMany
    List<Theme> sujets = new LinkedList<>();
    
}
