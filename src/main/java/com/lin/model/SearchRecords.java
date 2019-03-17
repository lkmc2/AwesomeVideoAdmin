package com.lin.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Table(name = "search_records")
public class SearchRecords implements Serializable {
    @Id
    private String id;

    /*** 搜索的内容 ***/
    private String content;
}