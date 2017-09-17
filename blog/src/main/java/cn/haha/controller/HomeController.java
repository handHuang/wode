package cn.haha.controller;

import cn.haha.pojo.Answer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by BIG on 2017/9/15.
 */

@Controller

public class HomeController {

    @RequestMapping("/fhome")
    public String home() {
        return "pages/fmain";
    }

    @RequestMapping("/home/Main")
    public String toModule( Model model)
    {
//        List<Answer> answerList=answerService.findAll();
//        model.addAttribute("answerList",answerList);
        return "pages/home";
    }
    @RequestMapping("/title")
    public  String toTitle() {
        return "pages/title";
    }



}
