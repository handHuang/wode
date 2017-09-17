package cn.haha.mapper;

import cn.haha.pojo.Answer;

import java.util.List;

/**
 * Created by chenwei on 2017/9/17.
 */
public interface AnswerMapper {
    public void saveAnswer(Answer answer) ;

    List<Answer> findAll();
}
