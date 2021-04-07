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
public class Media {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String nomMedia;

    @NonNull
    private String descriptionContenu;

    @Enumerated(EnumType.STRING)
    @NonNull
    private TypeMedia typeMedia;

    @NonNull
    private Integer duree;

    @Column(unique=true)
    @NonNull
    private String source;

    @ManyToMany (mappedBy = "medias")
    private List<Chapitre> enseignements = new LinkedList<>();
    
}