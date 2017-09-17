package cn.haha.service;

import cn.haha.mapper.ArticleMapper;
import cn.haha.pojo.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIG on 2017/9/17.
 */
@Service
public class ArticleServiceImpl implements  ArticleService{
    @Autowired
    private ArticleMapper articleMapper;
    

    public List<Article> findAll() {
        return articleMapper.findAll();
    }

    public Article findAarticleById(int articleId) {
    	Article article  =articleMapper.findArticleById(articleId);
    	//每查询一次文章 阅读量+1
    	int count = article.getReadTime()+1;
    	int id =article.getArticleId();
    	articleMapper.updateReadTime(id,count);
        return article;
    }

    
    public List<Article> findAarticleByType(int articleTypeId) {
    	
        return articleMapper.findAarticleByType(articleTypeId);
    }

	public List<Article> findAllByOrder() {
		
		return articleMapper.findAllByOrder();
	}

	@Override
	public List<Article> findSort() {
		// TODO Auto-generated method stub
		return articleMapper.findSort();
	}
}
