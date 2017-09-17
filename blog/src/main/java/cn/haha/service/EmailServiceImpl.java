package cn.haha.service;

import cn.haha.Utils.SendEmail;
import cn.haha.exception.ServiceException;
import cn.haha.mapper.FriendMapper;
import cn.haha.pojo.Friend;
import org.hibernate.validator.constraints.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.util.UUID;

/**
 * Created by BIG on 2017/9/16.
 */
@Service
public class EmailServiceImpl implements EmailService{
     @Autowired
    private FriendMapper friendMapper;
    
    //判断对方的邮箱地址是否存在，若存在则发送邮件，若不存在则不发送邮件.
    public void postEamil(Friend friend) throws ServiceException {
        if(friendMapper.findEmailByName(friend.getUserName())!=null){
         throw new ServiceException("谢谢您，您已经发送过信息");
        }else{
            friend.setFriendId(UUID.randomUUID().toString());
            try {
                SendEmail.send(friend);
                friendMapper.saveFriend(friend);
            } catch (MessagingException e) {
                e.printStackTrace();
            }


        }

    }
}
