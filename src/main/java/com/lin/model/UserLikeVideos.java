package com.lin.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Table(name = "users_like_videos")
public class UserLikeVideos implements Serializable {
    @Id
    private String id;

    /*** 用户 ***/
    @Column(name = "user_id")
    private String userId;

    /*** 视频 ***/
    @Column(name = "video_id")
    private String videoId;
}