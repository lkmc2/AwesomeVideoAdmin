package com.lin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author lkmc2
 * @date 2019/2/8
 * @description 首页控制器
 */
@Controller
public class IndexController {

    @GetMapping("index")
    public String index(Model model) {
        model.addAttribute("name", "andy");
        // 跳转到控制中心页
        return "index";
    }

}
