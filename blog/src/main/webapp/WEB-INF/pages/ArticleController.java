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
        Article article = articleService.findAarticleById(articleId);
        model.addAttribute("article", article);
        return "pages/blog";
    }
    @RequestMapping("/type")
    public String findArticleByType(int articleTypeId,Model model){
        List<Article> articleList =articleService.findAarticleByType(articleTypeId);
        model.addAttribute("articleList",articleList);
        return "pages/blogInfo";
    }

}