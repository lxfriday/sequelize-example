/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:8889
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 29/07/2019 00:26:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blog
-- ----------------------------
BEGIN;
INSERT INTO `blog` VALUES (1, 'hzau', 'lxfriday');
COMMIT;

-- ----------------------------
-- Table structure for tpk
-- ----------------------------
DROP TABLE IF EXISTS `tpk`;
CREATE TABLE `tpk` (
  `blog_url` varchar(300) NOT NULL,
  `view` int(10) DEFAULT NULL,
  PRIMARY KEY (`blog_url`),
  UNIQUE KEY `umi_view` (`view`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpk
-- ----------------------------
BEGIN;
INSERT INTO `tpk` VALUES ('lxfriday.xyz', 1000000);
INSERT INTO `tpk` VALUES ('baidu.com', 999999999);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'yuny', 888, '2019-07-14 14:32:44', '2019-07-19 14:32:48');
INSERT INTO `users` VALUES (2, 'yuny', 888, '2019-07-28 12:48:37', '2019-07-28 12:48:37');
INSERT INTO `users` VALUES (3, 'yuny', 888, '2019-07-28 12:49:32', '2019-07-28 12:49:32');
INSERT INTO `users` VALUES (4, 'yuny', 888, '2019-07-28 12:52:13', '2019-07-28 12:52:13');
INSERT INTO `users` VALUES (5, 'yuny', 888, '2019-07-28 12:52:36', '2019-07-28 12:52:36');
INSERT INTO `users` VALUES (6, 'yuny', 888, '2019-07-28 12:52:50', '2019-07-28 12:52:50');
INSERT INTO `users` VALUES (7, 'yuny', 888, '2019-07-28 20:58:04', '2019-07-28 20:58:04');
INSERT INTO `users` VALUES (8, 'yuny', 888, '2019-07-28 12:59:05', '2019-07-28 12:59:05');
INSERT INTO `users` VALUES (9, 'yuny', 888, '2019-07-28 20:59:55', '2019-07-28 20:59:55');
INSERT INTO `users` VALUES (10, 'yuny', 888, '2019-07-28 21:02:32', '2019-07-28 21:02:32');
INSERT INTO `users` VALUES (11, 'yuny', 888, '2019-07-28 21:02:32', '2019-07-28 21:02:32');
INSERT INTO `users` VALUES (12, 'yuny', 888, '2019-07-28 21:02:32', '2019-07-28 21:02:32');
INSERT INTO `users` VALUES (13, 'yuny', 888, '2019-07-28 21:11:55', '2019-07-28 21:11:55');
INSERT INTO `users` VALUES (14, 'yuny', 888, '2019-07-28 21:12:44', '2019-07-28 21:12:44');
INSERT INTO `users` VALUES (15, 'yuny', 888, '2019-07-28 23:03:36', '2019-07-28 23:03:36');
INSERT INTO `users` VALUES (16, 'yuny', 888, '2019-07-29 00:16:16', '2019-07-29 00:16:16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
