package com.lin.dao;

import com.lin.model.User;
import com.lin.utils.MyMapper;

public interface UserMapper extends MyMapper<User> {
    /**
     * 增加用户受喜欢数
     * @param userId 用户id
     */
    void addReceiveLikeCount(String userId);

    /**
     * 减少用户受喜欢数
     * @param userId 用户id
     */
    void reduceReceiveLikeCount(String userId);

    /**
     * 添加粉丝数
     * @param userId 用户id
     */
    void addFansCount(String userId);

    /**
     * 减少粉丝数
     * @param userId 用户id
     */
    void reduceFansCount(String userId);

    /**
     * 添加关注人数
     * @param userId 用户id
     */
    void addFollowersCount(String userId);

    /**
     * 减少关注人数
     * @param userId 用户id
     */
    void reduceFollowersCount(String userId);

}