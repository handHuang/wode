package cn.haha.mapper;

import cn.haha.pojo.Article;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * Created by BIG on 2017/9/17.
 */
public interface ArticleMapper {

    public List<Article> findAll();

    public List<Article> findAarticleByType(int articleTypeId);

    public Article findArticleById(int articleId);

	public void updateReadTime(@Param("id")int id,@Param("count")int count);

	public List<Article> findAllByOrder();

	public List<Article> findSort();
}
