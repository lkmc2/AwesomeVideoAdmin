package com.lin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.lin.dao")
@EnableCaching  // 开启缓存
public class AwesomeVideoAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(AwesomeVideoAdminApplication.class, args);
    }

}

