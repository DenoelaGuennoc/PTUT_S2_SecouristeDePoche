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
public class Chapitre {
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String titre;

   //Il faut trouver un moyen de mettre du contenu dans chaque chapitre également
    @Column(unique=true)
    //@NonNull // ! à repasser en NonNull quand ils seront créés
    private String contenu; 
    
    @ManyToOne
    @NonNull
    Theme theme;

    @ManyToMany
    List<Illustration> images = new LinkedList<>();

    @ManyToMany
    List<Fiche> conduiteATenir = new LinkedList<>();

    @ManyToMany
    List<Media> medias = new LinkedList<>();
}