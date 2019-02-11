package com.lin.dao;

import com.lin.model.vo.Reports;
import com.lin.model.vo.VideoVo;

import java.util.List;

/**
 * 自定义用户举报Mapper
 */
public interface UserReportMapperCustom {
    /**
     * 获取视频举报列表
     * @return 视频举报列表
     */
    List<Reports> selectAllVideoReport();

    /**
     * 获取所有视频列表
     * @return 视频列表
     */
    List<VideoVo> selectAllVideo();
}