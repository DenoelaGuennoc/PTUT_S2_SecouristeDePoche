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

    @GetMapping(path = "themes")
    public String afficheThemes(Model model) {
        model.addAttribute("themes", dao.findAll());
        return "afficheTheme";
    }
}
