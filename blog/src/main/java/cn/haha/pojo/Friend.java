package cn.haha.pojo;

import java.util.Date;

/**
 * Created by BIG on 2017/9/16.
 */
public class Friend {
    private String friendId;
    private String userName;
    private String email;
    private Date createTime;

    public String getUserName() {
        return userName;
    }

    @Override
    public String toString() {
        return "Friend{" +
                "friendId='" + friendId + '\'' +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", createTime=" + createTime +
                '}';
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFriendId() {
        return friendId;
    }

    public void setFriendId(String friendId) {
        this.friendId = friendId;
    }



    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
