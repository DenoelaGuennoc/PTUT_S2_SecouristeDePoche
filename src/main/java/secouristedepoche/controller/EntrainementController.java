package secouristedepoche.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.slf4j.Slf4j;

/**
 * Edition des catégories, sans gestion des erreurs
 */
@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class EntrainementController {

    @GetMapping(path = "entrainement")
    public String afficheEntrainement() {
        return "afficheEntrainement";
    }
}
