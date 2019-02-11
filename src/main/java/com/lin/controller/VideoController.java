package com.lin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频控制器
 */
@Controller
@RequestMapping("video")
public class VideoController {

    @GetMapping("/showAddBgm")
    public String showAddBgm() {
        // 跳转到添加背景乐页面
        return "video/addBgm";
    }

}
