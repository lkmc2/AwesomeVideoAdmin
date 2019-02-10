package com.lin.controller;

import com.lin.utils.AdminUser;
import com.lin.utils.JsonResult;
import org.apache.commons.lang3.StringUtils;
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

    @GetMapping("/login")
    public String login() {
        // 跳转到登录页
        return "login";
    }

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

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        // 移除session中的用户信息，跳转到登录页
        request.getSession().removeAttribute("sessionUser");
        return "redirect:login";
    }

}
