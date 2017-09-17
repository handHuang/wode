package cn.haha.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by BIG on 2017/9/15.
 */
@Controller
public class BaseController {
    @RequestMapping("base")
    public String base(){
        return "base";
    }
    @RequestMapping("/")
    public String index(){
        return "redirect:/index.jsp";
    }
//   @RequestMapping("/{moduleName}/Foot")
//    public String foot(@PathVariable(value="moduleName")String moduleName){
//       return "pages/"+moduleName;
//   }



}
