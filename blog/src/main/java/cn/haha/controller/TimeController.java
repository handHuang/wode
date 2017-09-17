package cn.haha.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by chenwei on 2017/9/17.
 */
public abstract class TimeController {
    @InitBinder
    public void initBinder(WebDataBinder binder){
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        dateFormat.setLenient(true);
        binder.registerCustomEditor(Date.class,new CustomDateEditor(dateFormat,true));
    }

}
