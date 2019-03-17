package com.lin.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "users_report")
public class UserReport implements Serializable {
    @Id
    private String id;

    /*** 被举报用户id ***/
    @Column(name = "deal_user_id")
    private String dealUserId;

    @Column(name = "deal_video_id")
    private String dealVideoId;

    /*** 类型标题，让用户选择，详情见 枚举 ***/
    private String title;

    /*** 内容 ***/
    private String content;

    /*** 举报人的id ***/
    @Column(name = "userid")
    private String userId;

    /*** 举报时间 ***/
    @Column(name = "create_date")
    private Date createDate;
}