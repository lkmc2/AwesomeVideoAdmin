package com.lin.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lin.dao.UserMapper;
import com.lin.model.User;
import com.lin.service.UserService;
import com.lin.utils.PagedResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 用户服务
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public PagedResult queryUserList(User user, Integer page, Integer pageSize) {
        String username = "";
        String nickname = "";

        if (user != null) {
            username = user.getUsername();
            nickname = user.getNickname();
        }

        // 使用第三方插件进行分页
        PageHelper.startPage(page, pageSize);

        // 创建用户查询条件，用户名或昵称类似
        Example userExample = new Example(User.class);
        Example.Criteria userCriteria = userExample.createCriteria();

        if (StringUtils.isNotBlank(username)) {
            userCriteria.andLike("username", "%" + username + "%");
        }
        if (StringUtils.isNotBlank(nickname)) {
            userCriteria.andLike("nickname", "%" + nickname + "%");
        }

        // 根据条件查询用户列表
        List<User> userList = userMapper.selectByExample(userExample);

        // 第三方插件的分页信息
        PageInfo<User> pageInfo = new PageInfo<>(userList);

        // 创建自定义分页结果
        PagedResult pagedResult = new PagedResult();
        pagedResult.setRecords(pageInfo.getTotal()); // 总记录数
        pagedResult.setRows(userList); // 每行的数据
        pagedResult.setTotal(pageInfo.getPages()); // 总页数
        pagedResult.setPage(page); // 当前页数
        return pagedResult;
    }

}
