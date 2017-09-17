package cn.haha.controller;

import cn.haha.exception.ServiceException;
import cn.haha.pojo.Friend;
import cn.haha.service.EmailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by BIG on 2017/9/16.
 */
@Controller
public class EmailController {

    @Autowired
    EmailService emailService;
    //获取到对象的姓名和邮箱地址
    @RequestMapping("/postEmail")
    public String postEmail(Friend friend, Model model) {
        try {
            emailService.postEamil(friend);
            model.addAttribute("msg","我已经接收到你的邮箱");
            return "pages/contact";


        }  catch(ServiceException msg ){
           model.addAttribute("msg",msg.getMessage());
           return "pages/contact";
        }

    }
}
