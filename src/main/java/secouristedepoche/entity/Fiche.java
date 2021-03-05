package secouristedepoche.entity;
import javax.persistence.*;
import lombok.*;
<<<<<<< HEAD
=======
import java.util.LinkedList;
import java.util.List;
>>>>>>> 95634eb9ba2e9291981e84511d08fada274a9a86

// Un exemple d'entité
// On utilise Lombok pour auto-générer getter / setter / toString...
// cf. https://examples.javacodegeeks.com/spring-boot-with-lombok/
@Getter @Setter @NoArgsConstructor @RequiredArgsConstructor @ToString
@Entity // Une entité JPA
<<<<<<< HEAD
public class Fiche {
=======
<<<<<<< HEAD:src/main/java/secouristedepoche/entity/Reponse.java
public class Reponse {
=======
public class Fiche {
>>>>>>> 95634eb9ba2e9291981e84511d08fada274a9a86:src/main/java/secouristedepoche/entity/Fiche.java
>>>>>>> 95634eb9ba2e9291981e84511d08fada274a9a86
    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Integer id;

    @Column(unique=true)
    @NonNull
<<<<<<< HEAD
    private String nomFiche;
    
    @ManyToMany (mappedBy = "consuiteATenir")
    private List<Chapitre> situations = new LinkedList<>();

    @ManyToMany
    List<Illustration> dessins = new LinkedList<>();

    @OneToMany(mappedBy = "aideComprehension")
    private List<Question> information = new LinkedList<>();

=======
<<<<<<< HEAD:src/main/java/secouristedepoche/entity/Reponse.java
    private String libelleReponse;
    
    @ManyToOne
    @NonNull
    Question questionPosee;

    @OneToOne
    @NonNull
    private NoeudDecisionnel noeudFils;
=======
    private String nomFiche;
>>>>>>> 95634eb9ba2e9291981e84511d08fada274a9a86:src/main/java/secouristedepoche/entity/Fiche.java
>>>>>>> 95634eb9ba2e9291981e84511d08fada274a9a86
}