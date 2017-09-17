package cn.haha.service;

import cn.haha.pojo.Answer;

import java.util.List;

/**
 * Created by chenwei on 2017/9/17.
 */
public interface AnswerService {

    void saveAnswer(Answer answer);

    List<Answer> findAll();
}
