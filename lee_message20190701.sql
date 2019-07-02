/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : tengfei

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2019-07-01 10:06:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lee_message
-- ----------------------------
DROP TABLE IF EXISTS `lee_message`;
CREATE TABLE `lee_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `addtime` varchar(50) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_message
-- ----------------------------
INSERT INTO `lee_message` VALUES ('3', '测试Lee', '13693331169', '', '', '', null, '1559270167', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('4', 'lee', '13693331169', '', '', '', null, '1559270519', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('5', 'lee', '13693331169', '', '', '', null, '1559270557', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('6', 'lee', '13693331168', '648564906@qq.com', '333365', 'banner1', null, '1559612485', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('7', '测试Lee', '13693331167', '648564906@qq.com', '333365', '网站logo', '网站logo网站logo网站logo', '1559612796', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('8', '测试Lee', '13693331166', '648564906@qq.com', '333365', '0-5000', '网站logo网站logo网站logo222', '1559612823', '127.0.0.1');
INSERT INTO `lee_message` VALUES ('9', 'lee', '13693331164', '648564906@qq.com', '', '', null, '1559619725', '127.0.0.1');
