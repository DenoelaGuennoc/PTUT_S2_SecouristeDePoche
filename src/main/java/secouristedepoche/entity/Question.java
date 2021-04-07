package secouristedepoche.entity;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.*;
import lombok.*;
import java.util.LinkedList;
import java.util.List;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Question extends NoeudDecisionnel{

    @Column(unique=true)
    @NonNull
    private String texteQuestion;

    public Question (Integer idQuestion, String resumeQuestion, String texteQuestion, Integer idNoeud, String nomNoeud){
        super(idNoeud, nomNoeud);
        this.texteQuestion = texteQuestion;
    }

    public Question (Integer idQuestion, String resumeQuestion, Boolean noeudRacine, String texteQuestion, Integer idNoeud, String nomNoeud){
        super(idNoeud, nomNoeud, noeudRacine);
        this.texteQuestion = texteQuestion;
    }
    
    @OneToMany(mappedBy = "questionPosee")
    List<Reponse> reponsePossible = new LinkedList<>();

    @ManyToOne
    Fiche aideComprehension;
}