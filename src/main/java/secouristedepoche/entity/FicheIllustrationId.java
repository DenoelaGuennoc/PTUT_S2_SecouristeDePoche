package secouristedepoche.entity;

import java.io.Serializable;
import lombok.*;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;

@Getter @Setter /* @NoArgsConstructor @RequiredArgsConstructor */ @ToString
@Embeddable
public class FicheIllustrationId implements Serializable{

    @Column
    private int guide;

    @Column
    private int dessin;

    public FicheIllustrationId(){   }
    
    public FicheIllustrationId(int guide, int dessin){
        this.guide = guide;
        this.dessin = dessin;
    }

    /* public int getGuide() {
    return guide;
    }
    
    // Setter
    public void setGuide(int guide) {
    this.guide = guide;
    }

    public int getDessin() {
    return dessin;
    }
    
    // Setter
    public void setDessin(int dessin) {
    this.dessin = dessin;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 67 * hash + this.guide;
        hash = 67 * hash + this.dessin;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final FicheIllustrationId other = (FicheIllustrationId) obj;
        if (this.guide != other.guide) {
            return false;
        }
        if (this.dessin != other.dessin) {
            return false;
        }
        return true;
    } */
}