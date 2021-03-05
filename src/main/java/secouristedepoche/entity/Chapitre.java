package secouristedepoche.entity;
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
    private String titreChapitre;

    //Il faut trouver un moyen de mettre du contenu dans chaque chapitre également
    
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