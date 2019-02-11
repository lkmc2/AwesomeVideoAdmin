package com.lin.controller;

import com.lin.model.Bgm;
import com.lin.service.VideoService;
import com.lin.utils.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频控制器
 */
@Controller
@RequestMapping("video")
public class VideoController {

    @Autowired
    private VideoService videoService;

    @GetMapping("/showAddBgm")
    public String showAddBgm() {
        // 跳转到添加背景乐页面
        return "video/addBgm";
    }

    @PostMapping("/addBgm")
    @ResponseBody
    public JsonResult addBgm(Bgm bgm) {
        // 添加背景乐到数据库
        videoService.addBgm(bgm);
        return JsonResult.ok();
    }

    /**
     * 上传背景乐
     * @param file 背景乐文件
     * @return json结果
     */
    @PostMapping("/bgmUpload")
    @ResponseBody
    public JsonResult bgmUpload(MultipartFile file) {
        // 数据库保存头像的路径
        String uploadPathDB = null;

        FileOutputStream out = null;
        InputStream in = null;
        try {
            // 上传文件数组不为空
            if (file != null) {
                String fileName = file.getOriginalFilename();
                if (StringUtils.isNoneBlank(fileName)) {
                    // 文件上传的最终保存路径
                    String finalFacePath = String.format("F:/AwesomeVideoUpload/bgm/%s", fileName);
                    // 设置数据库保存的路径
                    uploadPathDB = String.format("/bgm/%s", fileName);

                    File outFile = new File(finalFacePath);
                    if (outFile.getParentFile() != null && !outFile.getParentFile().isDirectory()) {
                        // 创建父文件夹
                        //noinspection ResultOfMethodCallIgnored
                        outFile.getParentFile().mkdirs();
                    }

                    out = new FileOutputStream(outFile);
                    in = file.getInputStream();

                    // 将上传文件的输入流写入服务器上传文件夹
                    IOUtils.copy(in, out);
                }
            } else {
                JsonResult.errorMsg("上传文件不能为空，上传失败！");
            }
        } catch (IOException e) {
            return JsonResult.errorMsg("上传文件失败！");
        } finally {
            // 关闭输入输出流
            IOUtils.closeQuietly(in);
            IOUtils.closeQuietly(out);
        }

        return JsonResult.ok(uploadPathDB);
    }

}
