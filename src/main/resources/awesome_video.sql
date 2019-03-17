/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : awesome_video

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 08/02/2019 17:41:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bgm
-- ----------------------------
DROP TABLE IF EXISTS `bgm`;
CREATE TABLE `bgm`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '播放地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bgm
-- ----------------------------
INSERT INTO `bgm` VALUES ('18052674D26HH32P', '王强', '大气', '/bgm/大气.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH33P', '赵刚', '轻松的早晨', '/bgm/轻松的早晨.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X1', '齐悦', '温馨小屋', '/bgm/温馨小屋.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X2', '武缃', '愉快', '/bgm/愉快.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X3', '严霍霍', '追寻', '/bgm/追寻.mp3');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `father_comment_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `video_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频id',
  `from_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言者，评论的用户id',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('135240CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈1', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18034CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈2', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1803F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈3', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18052150CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈4', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50626894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈5', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50C126894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈6', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈7', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F5346894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈8', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F54CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈9', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180523F533Y0837C', NULL, NULL, '180510CD0A6K3SRP', '180425CFA4RB6T0H', 'dwdawdwa', '2018-05-23 19:52:19');
INSERT INTO `comments` VALUES ('180523FATAR6C2Y8', '180523FB1BYS43HH', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复评论', '2018-05-23 20:09:30');
INSERT INTO `comments` VALUES ('180523FB1BYS43HH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '野马~~', '2018-05-23 20:10:09');
INSERT INTO `comments` VALUES ('180523FC0MKCTS3C', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwdw', '2018-05-23 20:13:04');
INSERT INTO `comments` VALUES ('180523FCZM2CTCZC', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwqdwqdqw', '2018-05-23 20:15:58');
INSERT INTO `comments` VALUES ('180523FD1H5HG9P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '1fewdew', '2018-05-23 20:16:10');
INSERT INTO `comments` VALUES ('180523FDBT3S3C00', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '123', '2018-05-23 20:17:16');
INSERT INTO `comments` VALUES ('180523FDFX4HS5P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '43trgtew', '2018-05-23 20:17:36');
INSERT INTO `comments` VALUES ('180523H79060HNHH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '哈多好玩聊哦', '2018-05-23 22:47:06');
INSERT INTO `comments` VALUES ('180523HATXR841KP', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '大家诶哦大家欧文', '2018-05-23 22:57:42');
INSERT INTO `comments` VALUES ('180523K2DG3SGAA8', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'dwdw', '2018-05-23 23:56:38');
INSERT INTO `comments` VALUES ('180523K2YRF1WNXP', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'ddew', '2018-05-23 23:58:03');
INSERT INTO `comments` VALUES ('180523K3FH1WT7R4', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'tgergre', '2018-05-23 23:59:45');
INSERT INTO `comments` VALUES ('1805240G4G19R0PH', '180523HATXR841KP', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复测试，final', '2018-05-24 00:45:31');
INSERT INTO `comments` VALUES ('18055W46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈11', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180565016894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈22', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805650CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈33', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈44', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('190206C4CN35W46W', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:02:12');
INSERT INTO `comments` VALUES ('190206C4PDNNA51P', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:03:02');
INSERT INTO `comments` VALUES ('190206C4PXN7RFCH', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:03:05');
INSERT INTO `comments` VALUES ('190206C508XZ02Y8', NULL, NULL, '190204HD7GC9R4M8', '180930DRXM99CKKP', '我的最爱', '2019-02-06 17:03:53');
INSERT INTO `comments` VALUES ('190206C7ZHTHNXP0', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '太帅了', '2019-02-06 17:12:49');
INSERT INTO `comments` VALUES ('190206C89Y67RTHH', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '帅的无可救药', '2019-02-06 17:13:55');
INSERT INTO `comments` VALUES ('190206C8YF4B60SW', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '123', '2019-02-06 17:15:42');
INSERT INTO `comments` VALUES ('19020779ZFF5H7F8', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '太优秀了', '2019-02-07 10:18:27');
INSERT INTO `comments` VALUES ('1902077C8TCC52A8', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '一切都是虚无的', '2019-02-07 10:25:28');
INSERT INTO `comments` VALUES ('1902077H4BW080M8', '1902077C8TCC52A8', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '我不知道', '2019-02-07 10:37:00');
INSERT INTO `comments` VALUES ('1902077N3GX5AZXP', '19020779ZFF5H7F8', '180930DRXM99CKKP', '190204HD7GC9R4M8', '180930DRXM99CKKP', '你好优秀', '2019-02-07 10:45:55');
INSERT INTO `comments` VALUES ('19020871WN4NWBC0', 'undefined', 'undefined', '19020871BF8DM3R4', '180930DRXM99CKKP', '太帅了', '2019-02-08 09:54:08');
INSERT INTO `comments` VALUES ('19020871Y9TP10PH', 'undefined', 'undefined', '19020871BF8DM3R4', '180930DRXM99CKKP', '超级喜欢', '2019-02-08 09:54:19');
INSERT INTO `comments` VALUES ('19020871ZZS3HDAW', '19020871Y9TP10PH', '180930DRXM99CKKP', '19020871BF8DM3R4', '180930DRXM99CKKP', '这都是假象', '2019-02-08 09:54:29');
INSERT INTO `comments` VALUES ('1902089P2HB9N1WH', 'undefined', 'undefined', '190204HD1DZP45GC', '180930DRXM99CKKP', '好漂亮的风景', '2019-02-08 13:36:57');
INSERT INTO `comments` VALUES ('280522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈55', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('qq1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈66', '2018-05-22 19:52:02');

-- ----------------------------
-- Table structure for search_records
-- ----------------------------
DROP TABLE IF EXISTS `search_records`;
CREATE TABLE `search_records`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频搜索的记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_records
-- ----------------------------
INSERT INTO `search_records` VALUES ('1', '倾心网');
INSERT INTO `search_records` VALUES ('18051309YBCMHYRP', '风景');
INSERT INTO `search_records` VALUES ('1805130DAXX58ARP', '风景');
INSERT INTO `search_records` VALUES ('1805130DMG6P0ZC0', '风景');
INSERT INTO `search_records` VALUES ('1805130FNGHD3B0H', '倾心网');
INSERT INTO `search_records` VALUES ('180513C94W152Z7C', 'dwqdwq');
INSERT INTO `search_records` VALUES ('180513DXNT7SY04H', '风景');
INSERT INTO `search_records` VALUES ('190208938ZBZX0BC', '风景');
INSERT INTO `search_records` VALUES ('19020893SSCD5KP0', '风景');
INSERT INTO `search_records` VALUES ('19020894S5PXHF14', '风景');
INSERT INTO `search_records` VALUES ('19020894YTS49AFW', '倾心网');
INSERT INTO `search_records` VALUES ('1902089508Z0C280', 'zookeeper');
INSERT INTO `search_records` VALUES ('1902089529RCNN54', '风景');
INSERT INTO `search_records` VALUES ('2', '倾心网');
INSERT INTO `search_records` VALUES ('3', '倾心网');
INSERT INTO `search_records` VALUES ('4', '倾心网');
INSERT INTO `search_records` VALUES ('5', '倾心');
INSERT INTO `search_records` VALUES ('6', '倾心');
INSERT INTO `search_records` VALUES ('7', 'zookeeper');
INSERT INTO `search_records` VALUES ('8', 'zookeeper');
INSERT INTO `search_records` VALUES ('9', 'zookeeper');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `face_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '我的头像，如果没有默认给一张',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `fans_counts` int(11) NULL DEFAULT 0 COMMENT '我的粉丝数量',
  `follow_counts` int(11) NULL DEFAULT 0 COMMENT '我关注的人总数',
  `receive_like_counts` int(11) NULL DEFAULT 0 COMMENT '我接受到的赞美/收藏 的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1001', 'test-sea-1111', '9999', '/path000999', '倾心网好牛十分牛~', 123456, 111, 222);
INSERT INTO `users` VALUES ('180425B0B3N6B25P', 'sea11', 'wzNncBURtPYCDsYd7TUgWQ==', NULL, 'sea', 0, 0, 0);
INSERT INTO `users` VALUES ('180425BNSR1CG0H0', 'abc', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'abc', 1, 0, 1);
INSERT INTO `users` VALUES ('180425CFA4RB6T0H', 'sea', 'kU8h64TG/bK2Y91vRT9lyg==', '/180425CFA4RB6T0H/face/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.W0eLNdT6MIvD3ba01f74ba779caa63d038c3c8200b4a.jpg', 'sea1', 0, 2, 6);
INSERT INTO `users` VALUES ('180426F4D35R04X4', 'aaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426F55CZPA9YW', 'aaaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GA3SBB4DP0', '1001', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '1001', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAK87AB0X4', '10401', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10401', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAWCC17KWH', '104701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '104701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBDFKDG5D4', '10re4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10re4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBKN0YRFRP', '10rwee4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10rwee4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GH49XRZHX4', '390213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHH12WXPZC', '390ewqewq213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHHPZ7NTC0', '390ewqewq21ewqe3890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq21ewqe3890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426H0GWP0C3HH', 'jdiowqjodij', 'wEmTz54sy+StEzB+TrtGSQ==', NULL, 'jdiowqjodij', 0, 0, 0);
INSERT INTO `users` VALUES ('180518CHS7SXMCX4', 'aaaaa', 'WU+AOzgKQTlu1j3KOVA1Qg==', NULL, 'aaaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180930DRXM99CKKP', 'jack', '4QrcOUm6Wau+VuBX8g+IPg==', '/180930DRXM99CKKP/face/tmp_a05a3272ef51c3b724ab6d810b94d68c3c0d83c464f2792d.jpg', 'jack123', 11, 11, 36);
INSERT INTO `users` VALUES ('180930DTN8M0WP6W', 'Ticket', '123456', NULL, 'Luck', -1, 0, 0);
INSERT INTO `users` VALUES ('180930F65GTG1T7C', 'Luck', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930HXSB796AK4', 'Daddy', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 1, 0, 0);
INSERT INTO `users` VALUES ('180930K19MAGGZ0H', 'tt', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K2WZ49D968', 'Angle', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K33RP92F5P', 'Text', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K3D6W4B44H', 'Java', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('19010493YR0BKZ54', 'wang', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'ming', 0, 0, 0);

-- ----------------------------
-- Table structure for users_fans
-- ----------------------------
DROP TABLE IF EXISTS `users_fans`;
CREATE TABLE `users_fans`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `fan_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '粉丝',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `fan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户粉丝关联关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_fans
-- ----------------------------
INSERT INTO `users_fans` VALUES ('19020872T2CMABXP', '180425BNSR1CG0H0', '180930DRXM99CKKP');
INSERT INTO `users_fans` VALUES ('10010', '180930DRXM99CKKP', '180930DRXM99CKKP');
INSERT INTO `users_fans` VALUES ('190207DWTP066M3C', '180930HXSB796AK4', '180930DRXM99CKKP');

-- ----------------------------
-- Table structure for users_like_videos
-- ----------------------------
DROP TABLE IF EXISTS `users_like_videos`;
CREATE TABLE `users_like_videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_video_rel`(`user_id`, `video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户喜欢的/赞过的视频' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_like_videos
-- ----------------------------
INSERT INTO `users_like_videos` VALUES ('180520HSBDW6M0SW', '1001', '180510CD0A6K3SRP');
INSERT INTO `users_like_videos` VALUES ('180520HSBDW6M96', '1001', '190202GG6052NZM1');
INSERT INTO `users_like_videos` VALUES ('180520HBA054FPPH', '180518CKMAAM5TXP', '180510CCX05TABHH');
INSERT INTO `users_like_videos` VALUES ('19020893TTC3YCX4', '180930DRXM99CKKP', '190204HCWXA5N72W');
INSERT INTO `users_like_videos` VALUES ('1902088630D14940', '180930DRXM99CKKP', '190204HD1DZP45GC');
INSERT INTO `users_like_videos` VALUES ('1902057W61CM0XD4', '180930DRXM99CKKP', '1902057AAGAS0B2W');
INSERT INTO `users_like_videos` VALUES ('190208860KMYG7R4', '180930DRXM99CKKP', '19020871BF8DM3R4');

-- ----------------------------
-- Table structure for users_report
-- ----------------------------
DROP TABLE IF EXISTS `users_report`;
CREATE TABLE `users_report`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deal_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被举报用户id',
  `deal_video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型标题，让用户选择，详情见 枚举',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `userid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '举报人的id',
  `create_date` datetime(0) NOT NULL COMMENT '举报时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '举报用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_report
-- ----------------------------
INSERT INTO `users_report` VALUES ('180521FZ501ABDYW', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:58:35');
INSERT INTO `users_report` VALUES ('180521FZK44ZRWX4', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:59:53');
INSERT INTO `users_report` VALUES ('180521FZR1TYRTXP', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '辱骂谩骂', 't4t43', '180518CKMAAM5TXP', '2018-05-21 21:00:18');
INSERT INTO `users_report` VALUES ('190205BX4519AYK4', '180930DRXM99CKKP', '190204HCS3P9539P', '广告垃圾', '内容影响身心健康', '180425B0B3N6B25P', '2019-02-05 16:40:16');
INSERT INTO `users_report` VALUES ('190205BXG76P65P0', '180930DRXM99CKKP', '1902057AAGAS0B2W', '广告垃圾', '内容不适宜大众观看', '180930DRXM99CKKP', '2019-02-05 16:41:28');
INSERT INTO `users_report` VALUES ('190205BY6SFD4ZC0', '180930DRXM99CKKP', '1902057AAGAS0B2W', '诱导分享', '', '180930DRXM99CKKP', '2019-02-05 16:43:33');
INSERT INTO `users_report` VALUES ('190205BYD3NR4GMW', '180930DRXM99CKKP', '190204HD7GC9R4M8', '引人不适', '', '180930DRXM99CKKP', '2019-02-05 16:44:14');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者id',
  `audio_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户使用音频的信息',
  `video_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频描述',
  `video_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频存放的路径',
  `video_seconds` float(6, 2) NULL DEFAULT NULL COMMENT '视频秒数',
  `video_width` int(6) NULL DEFAULT NULL COMMENT '视频宽度',
  `video_height` int(6) NULL DEFAULT NULL COMMENT '视频高度',
  `cover_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频封面图',
  `like_counts` bigint(20) NOT NULL DEFAULT 0 COMMENT '喜欢/赞美的数量',
  `status` int(1) NOT NULL COMMENT '视频状态：\r\n1、发布成功\r\n2、禁止播放，管理员操作',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('190202H0HWS2MXKP', '180930DRXM99CKKP', '18052674D26HH33P', '666', '/180930DRXM99CKKP/video/aeaf247b-f45d-4f1e-b8ad-0e6e4e2754cd.mp4', 10.00, 320, 320, '/180930DRXM99CKKP/video/aeaf247b-f45d-4f1e-b8ad-0e6e4e2754cd.mp4.jpg', 0, 1, '2019-02-02 22:26:55');
INSERT INTO `videos` VALUES ('190204HCS3P9539P', '180930DRXM99CKKP', '18052674D26HH3X2', '今天好开心', '/180930DRXM99CKKP/video/a8197700-1444-4ccf-90a3-4fe0401d177d.mp4', 10.20, 272, 480, '/180930DRXM99CKKP/video/a8197700-1444-4ccf-90a3-4fe0401d177d.mp4.jpg', 0, 1, '2019-02-04 23:03:31');
INSERT INTO `videos` VALUES ('190204HCWXA5N72W', '180930DRXM99CKKP', '18052674D26HH33P', '风景好好看', '/180930DRXM99CKKP/video/1ac23cab-ffeb-45f0-81a5-d9a0400ceadf.mp4', 10.03, 272, 480, '/180930DRXM99CKKP/video/1ac23cab-ffeb-45f0-81a5-d9a0400ceadf.mp4.jpg', 1, 1, '2019-02-04 23:03:49');
INSERT INTO `videos` VALUES ('190204HD1DZP45GC', '180930DRXM99CKKP', '18052674D26HH3X3', '一切都是最好的安排', '/180930DRXM99CKKP/video/1adf2894-3b3b-4510-ba96-f4c35e0872f9.mp4', 10.45, 720, 1280, '/180930DRXM99CKKP/video/1adf2894-3b3b-4510-ba96-f4c35e0872f9.mp4.jpg', 1, 1, '2019-02-04 23:04:18');
INSERT INTO `videos` VALUES ('190204HD4H41RCDP', '180930DRXM99CKKP', '18052674D26HH3X1', '室外的风光最美', '/180930DRXM99CKKP/video/c07fd38c-67bb-49d3-a9cb-09a661b71c03.mp4', 9.93, 480, 853, '/180930DRXM99CKKP/video/c07fd38c-67bb-49d3-a9cb-09a661b71c03.mp4.jpg', 0, 1, '2019-02-04 23:04:38');
INSERT INTO `videos` VALUES ('1902057AAGAS0B2W', '180930DRXM99CKKP', '18052674D26HH3X3', '今天真美好', '/180930DRXM99CKKP/video/aa1d40cc-f3d0-404c-b229-1ac9762f0cf7.mp4', 10.20, 272, 480, '/180930DRXM99CKKP/video/aa1d40cc-f3d0-404c-b229-1ac9762f0cf7.mp4.jpg', 1, 1, '2019-02-05 10:19:38');
INSERT INTO `videos` VALUES ('19020871BF8DM3R4', '180425BNSR1CG0H0', '18052674D26HH32P', '人家才不是小孩子', '/180425BNSR1CG0H0/video/91a413f3-9e6d-4ed0-9670-f2b9f7c91546.mp4', 9.03, 640, 362, '/180425BNSR1CG0H0/video/91a413f3-9e6d-4ed0-9670-f2b9f7c91546.mp4.jpg', 1, 1, '2019-02-08 09:52:43');

SET FOREIGN_KEY_CHECKS = 1;
