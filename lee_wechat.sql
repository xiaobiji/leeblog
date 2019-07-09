/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : leeblog

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2019-07-09 13:52:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lee_wechat
-- ----------------------------
DROP TABLE IF EXISTS `lee_wechat`;
CREATE TABLE `lee_wechat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `update_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_wechat
-- ----------------------------
INSERT INTO `lee_wechat` VALUES ('1', '{\"wechatname\":\"Lee小笔记\",\"wechatnum\":\"leebiji\",\"appid\":\"wx91d29e90414f20b8\",\"appsecret\":\"547d84160171c6be88ee90720baf4412\",\"token\":\"xiaobiji\",\"encodingaeskey\":\"89BpLgpbZl6EvWI7fv7WaVWerfUT2vxboayy4rlwy1E\",\"wechatwelcome\":\"欢迎关注lee小笔记微信公众号\"}', '', '');
