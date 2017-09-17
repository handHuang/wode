package cn.haha.controller;

import cn.haha.pojo.Answer;
import cn.haha.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by chenwei on 2017/9/17.
 */
@Controller
public class AnswerController {
    @Autowired
         private AnswerService answerService;
    @RequestMapping("/postAnswer")
    public String postAnswer(Answer answer){
           answerService.saveAnswer(answer);
        return "redirect:/contact/Main";
    }


        @RequestMapping("/contact/Main")
    public String toModule( Model model)
    {
        List<Answer> answerList=answerService.findAll();
        model.addAttribute("answerList",answerList);
        return "pages/contact";
    }

}
