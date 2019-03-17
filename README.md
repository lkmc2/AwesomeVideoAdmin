# AwesomeVideoAdmin
基于Spring Boot的《倾心短视频》小程序的**后台管理系统**

## 项目使用的技术

- 框架：Spring Boot 2.0.5.RELEASE、Mybatis
- 模板：Thymeleaf
- 数据库：MySQL
- 插件：Druid连接池、Mybatis Generator、通用Mapper、PageHelper分页插件、Lombok、Spring Boot Devtools热部署



## 配套项目

本**后台管理系统**项目需要与以下两个项目配套使用。

<a href="https://github.com/lkmc2/AwesomeVideoWxApp">《倾心短视频》微信小程序</a>

<a href="https://github.com/lkmc2/AwesomeVideo">后端API服务</a>



## 项目运行方式

1. 创建数据库awesome_video。
2. 在数据库中运行src/main/resources下的awesome_video.sql文件。
3. 修改src/main/resources的application.properties配置文件中的的数据库用户名和密码。
4. AwesomeVideoAdminApplication.java启动项目。
5. 在浏览器中访问http://localhost:8085/user/login ，输入用户名admin，密码123456，即可进入系统。

**项目截图如下**：
<img src="https://raw.githubusercontent.com/lkmc2/AwesomeVideoAdmin/master/picture/%E9%A6%96%E9%A1%B5.png"/>
<img src="https://raw.githubusercontent.com/lkmc2/AwesomeVideoAdmin/master/picture/%E8%A7%86%E9%A2%91%E7%AE%A1%E7%90%86%E9%A1%B5.png"/>
<img src="https://raw.githubusercontent.com/lkmc2/AwesomeVideoAdmin/master/picture/%E8%83%8C%E6%99%AF%E4%B9%90%E7%AE%A1%E7%90%86%E9%A1%B5.png"/>
<img src="https://raw.githubusercontent.com/lkmc2/AwesomeVideoAdmin/master/picture/%E4%B8%BE%E6%8A%A5%E7%AE%A1%E7%90%86%E9%A1%B5.png"/>