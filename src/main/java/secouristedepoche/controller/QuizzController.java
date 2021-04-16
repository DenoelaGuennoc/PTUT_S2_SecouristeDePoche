package secouristedepoche.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import secouristedepoche.dao.QuizzRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(path = "/SecouristeDePoche")
public class QuizzController {
     
    @Autowired
    private QuizzRepository dao; 

    
    @GetMapping(path = "quizz")
    public String afficheQuizz(Model model) {
        model.addAttribute("quizz", dao.findAll());
        return "afficheQuizz";
    }
    
}
