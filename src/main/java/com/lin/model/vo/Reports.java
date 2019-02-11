package com.lin.model.vo;

import java.util.Date;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 举报信息
 */
public class Reports {
    private String id; // 举报id
    private String title; // 标题
    private String content; // 详情
    private Date createDate; // 创建日期

    private String dealUsername; // 被处理用户名

    private String dealVideoId; // 被处理的视频id
    private String videoDesc; // 视频描述
    private String videoPath; // 视频路径
    private Integer status; // 视频状态

    private String submitUsername; // 举报者用户名

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getDealUsername() {
        return dealUsername;
    }

    public void setDealUsername(String dealUsername) {
        this.dealUsername = dealUsername;
    }

    public String getDealVideoId() {
        return dealVideoId;
    }

    public void setDealVideoId(String dealVideoId) {
        this.dealVideoId = dealVideoId;
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

    public String getSubmitUsername() {
        return submitUsername;
    }

    public void setSubmitUsername(String submitUsername) {
        this.submitUsername = submitUsername;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
