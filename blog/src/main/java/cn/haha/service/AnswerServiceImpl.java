package cn.haha.service;

import cn.haha.mapper.AnswerMapper;
import cn.haha.pojo.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by chenwei on 2017/9/17.
 */
@Service
public class AnswerServiceImpl implements  AnswerService{
    @Autowired
    private AnswerMapper answerMapper;
    
    public void saveAnswer(Answer answer) {
        answer.setCreateTime(new Date());
      answerMapper.saveAnswer(answer);
    }

   
    public List<Answer> findAll() {
        return answerMapper.findAll();
    }
}
