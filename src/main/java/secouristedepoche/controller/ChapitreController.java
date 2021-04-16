package secouristedepoche.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import secouristedepoche.dao.ChapitreRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class ChapitreController {
     
    @Autowired
    private ChapitreRepository dao; 

    @GetMapping(path = "chapitres")
    public String afficheChapitre(Model model) {
        model.addAttribute("chapitres", dao.findAll());
        return "afficheChapitre";
    }
    
}
