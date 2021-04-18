package secouristedepoche.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import secouristedepoche.dao.QuizzRepository;

/**
 * Edition des catégories, sans gestion des erreurs
 */
@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class EntrainementController {
    
    @Autowired
    private QuizzRepository dao; 


    @GetMapping(path = "entrainement")
    public String afficheEntrainement(Model model) {
        model.addAttribute("quizz", dao.findAll());

        return "afficheEntrainement";
    }
}
