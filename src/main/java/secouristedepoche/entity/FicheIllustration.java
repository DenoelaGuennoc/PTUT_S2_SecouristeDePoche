package secouristedepoche.entity;
import javax.persistence.*;
import lombok.*;
import java.util.LinkedList;
import java.util.List;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor /* @RequiredArgsConstructor */ @ToString
@Entity // Une entité JPA
/* @IdClass(FicheIllustrationId.class) */
public class FicheIllustration {


    @EmbeddedId
    private FicheIllustrationId id;

    /* @Id */
    @NonNull
    @ManyToOne
    @MapsId("guide")
    @JoinColumn(/* name = "guide_id", */ referencedColumnName = "id")
    private Fiche guide;

    /* @Id */
    @NonNull
    @ManyToOne
    @MapsId("dessin")
    @JoinColumn(/* name = "dessin_id", */ referencedColumnName = "id")
    private Illustration dessin;

    @Column
    @NonNull
    private int position_dessin;

    public FicheIllustration(Fiche guide, Illustration dessin, int position_dessin){
        this.id = new FicheIllustrationId(guide.getId(), dessin.getId());
        this.guide = guide;
        this.dessin = dessin;
        this.position_dessin = position_dessin;
    }
}
