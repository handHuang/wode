package cn.haha.mapper;

import cn.haha.pojo.Friend;

/**
 * Created by BIG on 2017/9/16.
 */
public interface FriendMapper {
    Friend findEmailByName(String name);

    void saveFriend(Friend friend);
}
