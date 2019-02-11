package com.lin.controller;

import com.lin.model.User;
import com.lin.service.UserService;
import com.lin.utils.AdminUser;
import com.lin.utils.JsonResult;
import com.lin.utils.PagedResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

/**
 * @author lkmc2
 * @date 2019/2/10
 * @description 用户控制器
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 跳转到用户列表页
     * @return 用户列表页路径
     */
    @GetMapping("/showList")
    public String showList() {
        return "user/userList";
    }

    /**
     * 根据条件查询用户列表
     * @param user 用户信息
     * @param page 当前页数
     * @return 用户列表分页结果
     */
    @PostMapping("/list")
    @ResponseBody
    public PagedResult list(User user, Integer page) {
        return userService.queryUserList(user, (page == null ? 1 : page), 10);
    }

    /**
     * 跳转到登录页
     * @return 登录页路径
     */
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * 用户登陆
     * @param username 用户名
     * @param password 密码
     * @param request 请求
     * @param response 响应
     * @return 是否登陆成功
     */
    @PostMapping("/login")
    @ResponseBody
    public JsonResult userLogin(String username, String password,
                                HttpServletRequest request, HttpServletResponse response) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return JsonResult.errorMsg("用户名和密码不能为空");
        }
        if (!"admin".equals(username) || !"Welcome.01".equals(password)) {
            return JsonResult.errorMsg("用户名或密码错误");
        }

        // 创建管理员用户信息，并存入session
        String token = UUID.randomUUID().toString();
        AdminUser user = new AdminUser(username, password, token);
        request.getSession().setAttribute("sessionUser", user);
        return JsonResult.ok();
    }

    /**
     * 退出用户登陆
     * @param request 请求
     * @param response 响应
     * @return 重定向到登录页
     */
    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        // 移除session中的用户信息，跳转到登录页
        request.getSession().removeAttribute("sessionUser");
        return "redirect:login";
    }

}
