package cn.haha.service;

import cn.haha.pojo.Article;

import java.util.List;

/**
 * Created by BIG on 2017/9/17.
 */
public interface ArticleService {
    /**
     * 查找所有的文章
     * @return
     */
    public List<Article> findAll();


    public  Article findAarticleById(int articleId);

    public  List<Article>  findAarticleByType(int articleTypeId);


	public List<Article> findAllByOrder();


	public List<Article> findSort();


    }
