package com.lin.service;

import com.lin.model.Bgm;
import com.lin.utils.PagedResult;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频服务
 */
public interface VideoService {
    /**
     * 添加背景乐
     * @param bgm 背景乐
     */
    void addBgm(Bgm bgm);

    /**
     * 分页查询背景乐列表
     * @param page 当前页数
     * @param pageSize 每页条数
     * @return 分页结果
     */
    PagedResult queryBgmList(Integer page, Integer pageSize);

    /**
     * 删除背景乐
     * @param bgmId 背景乐id
     */
    void delBgm(String bgmId);

    /**
     * 分页查询举报视频列表
     * @param page 当前页数
     * @param pageSize 每页条数
     * @return 分页结果
     */
    PagedResult queryReportList(Integer page, int pageSize);
}
