package com.lin.dao;

import com.lin.model.SearchRecords;
import com.lin.utils.MyMapper;

import java.util.List;

public interface SearchRecordsMapper extends MyMapper<SearchRecords> {
    /**
     * 获取热搜词
     * @return 热搜词列表
     */
    List<String> getHotWords();
}