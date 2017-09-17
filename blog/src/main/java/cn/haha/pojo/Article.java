package cn.haha.pojo;

/**
 * Created by chenwei on 2017/9/17.
 */
public class Article {
    private Integer articleId;
    private String  articleTitle;
    private String articleBody;
    private Integer articleTypeId;
    private int readTime;
    private String articleIntro;

    public String getArticleIntro() {
        return articleIntro;
    }

    public void setArticleIntro(String articleIntro) {
        this.articleIntro = articleIntro;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleBody() {
        return articleBody;
    }

    public void setArticleBody(String articleBody) {
        this.articleBody = articleBody;
    }

    public Integer getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(Integer articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    public int getReadTime() {
        return readTime;
    }

    public void setReadTime(int readTime) {
        this.readTime = readTime;
    }

    @Override
    public String toString() {
        return "Article{" +
                "articleId=" + articleId +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleBody='" + articleBody + '\'' +
                ", articleTypeId=" + articleTypeId +
                ", readTime=" + readTime +
                ", articleIntro='" + articleIntro + '\'' +
                '}';
    }
}
