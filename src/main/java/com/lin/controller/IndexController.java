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

    @GetMapping("showInfo")
    public String showInfo(Model model) {
        model.addAttribute("name", "andy");
        System.out.println("444444444444444");
        return "index";
    }

}
