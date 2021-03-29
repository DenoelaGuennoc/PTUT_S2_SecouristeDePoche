package secouristedepoche.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import secouristedepoche.dao.ThemeRepository;
import secouristedepoche.entity.Theme;

import lombok.extern.slf4j.Slf4j;

/**
 * Edition des catégories, sans gestion des erreurs
 */
@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class ThemeController {

    @Autowired
    private ThemeRepository dao;

    /**
     * Affiche toutes les catégories dans la base
     *
     * @param model pour transmettre les informations à la vue
     * @return le nom de la vue à afficher ('afficheGaleries.html')
     */
    

    @GetMapping(path = "themes")
    public String afficheThemes(Model model) {
        List<Theme> themes = dao.findAll();
        model.addAttribute("themes", themes );
        return "afficheTheme";
    }
}
