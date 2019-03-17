package com.lin.model;

import lombok.Data;

import javax.persistence.Id;
import java.io.Serializable;

@Data
public class Bgm implements Serializable {
    @Id
    private String id;

    /*** 作者 ***/
    private String author;
    /*** 背景乐名称 ***/
    private String name;
    /*** 播放地址 ***/
    private String path;
}