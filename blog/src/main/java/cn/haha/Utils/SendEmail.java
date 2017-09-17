package cn.haha.Utils;

import cn.haha.pojo.Friend;

import java.util.Date;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * /**
 * Created by BIG on 2017/9/16.
 */
public class SendEmail {
    //    public static boolean sendMail(String to, String code) {
//
//        try {
//            Properties props = new Properties();
//            props.put("username", "woshicwwpashui22@163.com");
//            props.put("password", "tianxia1");
//            props.put("mail.transport.protocol", "smtp" );
//            props.put("mail.smtp.host", "smtp.163.com");
//            props.put("mail.smtp.port", "25" );
//
//            Session mailSession = Session.getDefaultInstance(props);
//
//            Message msg = new MimeMessage(mailSession);
//            msg.setFrom(new InternetAddress("woshicwwopashui22@163.com"));
//            msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
//            msg.setSubject("激活邮件");
//            msg.setContent("<h1>此邮件为官方激活邮件</h1>","text/html;charset=UTF-8");
//
//            msg.saveChanges();
//
//            Transport transport = mailSession.getTransport("smtp");
//            transport.connect(props.getProperty("mail.smtp.port"), props
//                    .getProperty("username"), props.getProperty("password"));
//            transport.sendMessage(msg, msg.getAllRecipients());
//            transport.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println(e);
//            return false;
//        }
//        return true;
//    }
    public static void main(String[] args) {
        Friend friend = new Friend();
        friend.setUserName("aaa");
        friend.setEmail("1090921428@qq.com");
        try {
            send(friend);
            System.out.println("发送成功");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    public static void send(Friend friend) throws MessagingException {
        Properties props = new Properties();
        // 开启debug调试
        props.setProperty("mail.debug", "true");
        // 发送服务器需要身份验证
        props.setProperty("mail.smtp.auth", "true");
        // 设置邮件服务器主机名
        props.setProperty("mail.host", "smtp.163.com");
        // 发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");

        // 设置环境信息

        Session session = Session.getInstance(props);

        // 创建邮件对象
        Message msg = new MimeMessage(session);
        msg.setSubject("感谢您的来信");
        // 设置邮件内容

        ///邮件的内容
        //http://localhost:8090/activeUser?userId="+userId+"&activecode="+activecode
        StringBuffer sb = new StringBuffer("我已经收到您的邮箱");
        sb.append("," + friend.getUserName());
        msg.setSentDate(new Date());
        msg.setContent(sb.toString(), "text/html;charset=utf-8");
        // 设置发件人
        msg.setFrom(new InternetAddress("woshicwwopashui22@163.com"));

        Transport transport = session.getTransport();
        // 连接邮件服务器
        transport.connect("woshicwwopashui22", "tianxia1");
        // 发送邮件
        transport.sendMessage(msg, new Address[]{new InternetAddress(friend.getEmail())});
        // 关闭连接
        transport.close() ;
    }
}
