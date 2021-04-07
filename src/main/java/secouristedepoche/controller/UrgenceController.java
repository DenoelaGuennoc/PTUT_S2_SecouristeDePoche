package secouristedepoche.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import secouristedepoche.dao.NoeudDecisionnelRepository;
import secouristedepoche.dao.ThemeRepository;

/**
 * Edition des catégories, sans gestion des erreurs
 */
@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class UrgenceController {

    /**
     * Affiche toutes les catégories dans la base
     *
     * @param model pour transmettre les informations à la vue
     * @return le nom de la vue à afficher ('afficheGaleries.html')
     */
    
        @Autowired
    private NoeudDecisionnelRepository dao;
    
    @GetMapping(path = "urgence")
    public String afficheUrgence(Model model) {
        model.addAttribute("noeuds", dao.findAll());
        return "afficheUrgence";
    }
}
