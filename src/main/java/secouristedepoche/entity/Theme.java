package secouristedepoche.entity;
import java.util.LinkedList;
import java.util.List;
import javax.persistence.*;
import lombok.*;


// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Theme {
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    @Column(nullable = false)
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String titre; 
    
    @OneToMany(mappedBy = "theme")
    private List<Chapitre> chapitres = new LinkedList<>();

    @ManyToMany (mappedBy = "sujets")
    private List<Quizz> interrogations = new LinkedList<>();

}
