package cn.haha.controller;

import cn.haha.pojo.Article;
import cn.haha.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by BIG on 2017/9/17.
 */
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @RequestMapping("/blog/Main")
    public String toBlog(Model model) {
        List<Article> articleList = articleService.findAll();

        model.addAttribute("articleList", articleList);
        return "pages/blogInfo";
    }
    
    @RequestMapping("/blogMain")
    public String toMain(int articleId, Model model) {
    	//查询单篇文章内容
        Article article = articleService.findAarticleById(articleId);
        
        model.addAttribute("article", article);
        //查询点击量排行
        List<Article> articles = articleService.findAllByOrder();
        
        model.addAttribute("articles", articles);
        return "pages/blog";
    }
    //按类型查
    @RequestMapping("/order")
    public String findArticleByType(int articleTypeId,Model model){
        List<Article> articleList =articleService.findAarticleByType(articleTypeId);
        model.addAttribute("articleList",articleList);
        return "pages/blogInfo";
    }
    @RequestMapping("/sort")
    public String sort(Model model){
    	  List<Article> list= articleService.findSort();
    	  model.addAttribute("list", list);
    	 return "pages/sort";
    }
   

}






















