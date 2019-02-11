package com.lin.service.impl;

import com.lin.dao.BgmMapper;
import com.lin.model.Bgm;
import com.lin.service.VideoService;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author lkmc2
 * @date 2019/2/11
 * @description 视频服务实现
 */
@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private BgmMapper bgmMapper;

    @Autowired
    private Sid sid;

    @Override
    public void addBgm(Bgm bgm) {
        String bgmId = sid.nextShort();

        bgm.setId(bgmId);
        // 将bgm插入数据库中
        bgmMapper.insert(bgm);
    }

}
