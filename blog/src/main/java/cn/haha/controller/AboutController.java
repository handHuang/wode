package cn.haha.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chenwei on 2017/9/17.
 */
@Controller
public class AboutController {
    @RequestMapping("/about/Main")
    public String about(){
        return "pages/about";
    }

}

