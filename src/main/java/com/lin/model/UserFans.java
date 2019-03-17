package com.lin.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Table(name = "users_fans")
public class UserFans implements Serializable {
    @Id
    private String id;

    /*** 用户 ***/
    @Column(name = "user_id")
    private String userId;

    /*** 粉丝 ***/
    @Column(name = "fan_id")
    private String fanId;
}