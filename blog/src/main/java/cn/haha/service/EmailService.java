package cn.haha.service;

import cn.haha.exception.ServiceException;
import cn.haha.pojo.Friend;

/**
 * Created by BIG on 2017/9/16.
 */
public interface EmailService {
    //判断对方的邮箱地址是否存在，若存在则发送邮件，若不存在则不发送邮件.
    public void postEamil(Friend friend) throws ServiceException;
}
