package com.lin.config;

import org.n3r.idworker.Sid;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author lkmc2
 * @date 2018/9/29
 * @description 自动计数器的配置
 */
@Configuration
public class SidConfig {

    @Bean
    public Sid sid() {
        return new Sid();
    }

}
