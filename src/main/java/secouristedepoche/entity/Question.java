package secouristedepoche.entity;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.*;

import org.springframework.context.annotation.Bean;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;

import lombok.*;
import java.util.LinkedList;
import java.util.List;

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
public class Question extends NoeudDecisionnel{
    
    //@Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    //private Integer id;

    @Column
    @NonNull
    private String texteQuestion;

    public Question (String texteQuestion, Integer idNoeud, String nomNoeud){
        super(idNoeud, nomNoeud);
        this.texteQuestion = texteQuestion;
    }

    public Question (Boolean noeudRacine, String texteQuestion, Integer idNoeud, String nomNoeud){
        super(idNoeud, nomNoeud, noeudRacine);
        this.texteQuestion = texteQuestion;
    }
    
    @OneToMany(mappedBy = "questionPosee")
    List<Reponse> reponsePossible = new LinkedList<>();

    @ManyToOne
    @JoinColumn(nullable = true)
    Fiche aideComprehension;

}