package com.lin.model.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频视图对象
 */
@Data
public class VideoVo implements Serializable {
    private String id;           // 视频id
    private String userName;     // 发布者名
    private String videoDesc;    // 视频描述
    private String videoPath;    // 视频存放的路径
    private Float videoSeconds;  // 视频秒数
    private Integer videoWidth;  // 视频宽度
    private Integer videoHeight; // 视频高度
    private String coverPath;    // 视频封面图
    private Long likeCount;      // 赞美的数量
    private Integer status;      // 视频状态：1、发布成功 2、禁止播放，管理员操作
    private Date createTime;     // 创建时间
}
