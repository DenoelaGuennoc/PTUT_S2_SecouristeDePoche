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
public class Media {
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
    private String nomMedia;

    @NonNull
    private String descriptionContenu;

    @Enumerated(EnumType.String)
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