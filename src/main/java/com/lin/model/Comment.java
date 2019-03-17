package com.lin.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "comments")
public class Comment implements Serializable {
    @Id
    private String id;

    /*** 父评论id ***/
    @Column(name = "father_comment_id")
    private String fatherCommentId;

    /*** 被评论的用户id ***/
    @Column(name = "to_user_id")
    private String toUserId;

    /*** 视频id ***/
    @Column(name = "video_id")
    private String videoId;

    /*** 留言者，评论的用户id ***/
    @Column(name = "from_user_id")
    private String fromUserId;

    @Column(name = "create_time")
    private Date createTime;

    /*** 评论内容 ***/
    private String comment;
}