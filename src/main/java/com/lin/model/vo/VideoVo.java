package com.lin.model.vo;

import javax.persistence.Column;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频视图对象
 */
public class VideoVo {
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getVideoDesc() {
        return videoDesc;
    }

    public void setVideoDesc(String videoDesc) {
        this.videoDesc = videoDesc;
    }

    public String getVideoPath() {
        return videoPath;
    }

    public void setVideoPath(String videoPath) {
        this.videoPath = videoPath;
    }

    public Float getVideoSeconds() {
        return videoSeconds;
    }

    public void setVideoSeconds(Float videoSeconds) {
        this.videoSeconds = videoSeconds;
    }

    public Integer getVideoWidth() {
        return videoWidth;
    }

    public void setVideoWidth(Integer videoWidth) {
        this.videoWidth = videoWidth;
    }

    public Integer getVideoHeight() {
        return videoHeight;
    }

    public void setVideoHeight(Integer videoHeight) {
        this.videoHeight = videoHeight;
    }

    public String getCoverPath() {
        return coverPath;
    }

    public void setCoverPath(String coverPath) {
        this.coverPath = coverPath;
    }

    public Long getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Long likeCount) {
        this.likeCount = likeCount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
