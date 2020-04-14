/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : leeblog

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2019-07-26 13:19:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for en_article
-- ----------------------------
DROP TABLE IF EXISTS `en_article`;
CREATE TABLE `en_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '所属分类id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(150) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `remark` varchar(200) DEFAULT NULL COMMENT '摘要',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `content` text COMMENT '内容',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `toptime` int(10) DEFAULT '0' COMMENT '置顶时间戳',
  `istop` tinyint(1) DEFAULT '0' COMMENT '是否置顶 1：置顶 0：不置顶',
  `model` char(150) DEFAULT NULL COMMENT '模特信息',
  `zhiwu` char(30) DEFAULT NULL COMMENT '职务',
  `zhicheng` char(50) DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 CHECKSUM=1 COMMENT='内容表';

-- ----------------------------
-- Records of en_article
-- ----------------------------
INSERT INTO `en_article` VALUES ('29', '24', '服装摄影1', '', '', '', '默认作者', '0', '<p>服装摄影</p><p><img src=\"/ueditor/php/upload/image/20171226/1514275889136897.jpg\" title=\"1514275889136897.jpg\" alt=\"a1.jpg\"/></p>', '1514274981', '1514299324', '1', '', '', '');
INSERT INTO `en_article` VALUES ('30', '24', '服装摄影2', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276101184993.jpg\" title=\"1514276101184993.jpg\" alt=\"a2.jpg\"/></p>', '1514276060', '1514295226', '1', '', '', '');
INSERT INTO `en_article` VALUES ('31', '24', '服装摄影3', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276214833955.jpg\" title=\"1514276214833955.jpg\" alt=\"a3.jpg\"/></p>', '1514276106', '1514295225', '1', '', '', '');
INSERT INTO `en_article` VALUES ('32', '24', '服装摄影4', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276270595000.jpg\" title=\"1514276270595000.jpg\" alt=\"a4.jpg\"/></p>', '1514276227', '1514295225', '1', '', '', '');
INSERT INTO `en_article` VALUES ('33', '24', '服装摄影5', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276427118225.jpg\" title=\"1514276427118225.jpg\" alt=\"a5.jpg\"/></p>', '1514276275', '1514295224', '1', '', '', '');
INSERT INTO `en_article` VALUES ('34', '24', '服装摄影6', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276457261676.jpg\" title=\"1514276457261676.jpg\" alt=\"aa.jpg\"/></p>', '1514276441', '1514292273', '1', '', '', '');
INSERT INTO `en_article` VALUES ('35', '25', '产品摄影1', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276519122416.jpg\" title=\"1514276519122416.jpg\" alt=\"11.jpg\"/></p>', '1514276462', '1514292732', '1', '', '', '');
INSERT INTO `en_article` VALUES ('36', '25', '产品摄影2', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276541121896.jpg\" title=\"1514276541121896.jpg\" alt=\"12.jpg\"/></p>', '1514276524', '1514292272', '1', '', '', '');
INSERT INTO `en_article` VALUES ('37', '25', '产品摄影3', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276684104403.jpg\" title=\"1514276684104403.jpg\" alt=\"13.jpg\"/></p>', '1514276545', '1514292271', '1', '', '', '');
INSERT INTO `en_article` VALUES ('38', '25', '产品摄影4', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276705129138.jpg\" title=\"1514276705129138.jpg\" alt=\"14.jpg\"/></p>', '1514276688', '1514292272', '1', '', '', '');
INSERT INTO `en_article` VALUES ('39', '26', '皮具摄影1', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276755122266.jpg\" title=\"1514276755122266.jpg\" alt=\"21.jpg\"/></p>', '1514276729', '1514292270', '1', '', '', '');
INSERT INTO `en_article` VALUES ('40', '26', '皮具摄影2', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276771117450.jpg\" title=\"1514276771117450.jpg\" alt=\"22.jpg\"/></p>', '1514276759', '1514292732', '1', '', '', '');
INSERT INTO `en_article` VALUES ('41', '26', '皮具摄影3', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276805413320.jpg\" title=\"1514276805413320.jpg\" alt=\"23.jpg\"/></p>', '1514276785', '1514292732', '1', '', '', '');
INSERT INTO `en_article` VALUES ('42', '27', '化妆品摄影1', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514276889521846.jpg\" title=\"1514276889521846.jpg\" alt=\"31.jpg\"/></p>', '1514276863', '1514294948', '1', '', '', '');
INSERT INTO `en_article` VALUES ('43', '27', '化妆品摄影', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171226/1514277112195020.jpg\" title=\"1514277112195020.jpg\" alt=\"32.jpg\"/></p>', '1514276893', '1514292269', '1', '', '', '');
INSERT INTO `en_article` VALUES ('44', '38', '1', '', '', '', '默认作者', '0', '', '1514300290', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('45', '38', '2', '', '', '', '默认作者', '0', '', '1514300410', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('46', '38', '3', '', '', '', '默认作者', '0', '', '1514300426', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('47', '38', '4', '', '', '', '默认作者', '0', '', '1514300440', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('48', '21', '包志明', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171227/1514381508126552.jpg\" title=\"1514381508126552.jpg\" alt=\"22.jpg\"/>12121</p>', '1514362676', '0', '0', '', '摄影师', '国家中级摄影师');
INSERT INTO `en_article` VALUES ('49', '21', '粱高', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20171227/1514381492152504.jpg\" title=\"1514381492152504.jpg\" alt=\"4.jpg\"/></p>', '1514362711', '0', '0', '', '摄影师', '国家中级摄影师');
INSERT INTO `en_article` VALUES ('50', '29', '国内女模M818', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20180102/1514877094184735.jpg\" title=\"1514877094184735.jpg\" alt=\"1.jpg\"/></p>', '1514876986', '0', '0', '身高: 171cm 体重： 52kg 三围： 88/62/89 鞋码： 38码 衣服： m码', '', '');
INSERT INTO `en_article` VALUES ('51', '29', '国内女模M817', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20180102/1514877132644357.jpg\" title=\"1514877132644357.jpg\" alt=\"2.jpg\"/></p>', '1514877099', '0', '0', '身高：169 cm 三围：85-63-85 体重：48.0 kg 鞋码：38 码 罩杯：75CC', '', '');
INSERT INTO `en_article` VALUES ('52', '29', '国内女模M819', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20180102/1514877173105944.jpg\" title=\"1514877173105944.jpg\" alt=\"3.jpg\"/></p>', '1514877136', '0', '0', '身高：167cm 体重：46kg 腿长：82cm 发长：60cm 三围：82-60-88/cm 鞋码：38码', '', '');
INSERT INTO `en_article` VALUES ('53', '29', '国内女模M820', '', '', '', '默认作者', '0', '<p><img src=\"/ueditor/php/upload/image/20180102/1514877186528774.jpg\" title=\"1514877186528774.jpg\" alt=\"22.jpg\"/></p>', '1514877177', '0', '0', '身高：171cm 体重：90斤 三围：82-60- 86 腿长：102cm 衣码：S 鞋码：35/36码', '', '');
INSERT INTO `en_article` VALUES ('54', '33', '场景1', '', '', '', '默认作者', '0', '<p>1212</p>', '1514879973', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('55', '33', '场景2', '', '', '', '默认作者', '0', null, '1514880004', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('56', '35', '电商摄影的探讨：眼球决定购买率', '', '', '众所周知，传统经济交易行为产生的基础是：产品的质量、产品的外观、服务的质量和口碑 九十年代以来，随着互联网和移动互联网的发展，新的交易形式出现了很大的改变，并喷薄式', '默认作者', '18', '<p>众所周知，传统经济交易行为产生的基础是：产品的质量、产品的外观、服务的质量和口碑 九十年代以来，随着互联网和移动互联网的发展，新的交易形式出现了很大的改变，并喷薄式</p>', '1514880885', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('57', '35', '户外运动对抗赛 - 羽毛球分组对抗赛', '', '', '摄影对于很多人来说都是现在生活中最享受的一种娱乐方式，但是对于我们商业摄影行业来说，摄影是每天的工作，这份工作同样担负着责任和压力，我们在工作之余，不断地以其他方', '默认作者', '4', '<p><span style=\"color: rgb(128, 128, 128); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">摄影对于很多人来说都是现在生活中最享受的一种娱乐方式，但是对于我们商业摄影行业来说，摄影是每天的工作，这份工作同样担负着责任和压力，我们在工作之余，不断地以其他方</span></p>', '1514880975', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('58', '35', '记者年会小访', '', '', '如今提到卖产品，很多人都会想到在网上卖了，于是大家可能都会想到同一个问题，我们到哪里找人帮我们产品拍照呢？一般人看得多的是普通的照相馆，有些人还想找婚纱摄影公司', '默认作者', '1', '<p><span style=\"color: rgb(128, 128, 128); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">如今提到卖产品，很多人都会想到在网上卖了，于是大家可能都会想到同一个问题，我们到哪里找人帮我们产品拍照呢？一般人看得多的是普通的照相馆，有些人还想找婚纱摄影公司</span></p>', '1514881011', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('59', '35', '公司受邀参加CCTV《奋斗》栏目组访谈', '', '', '【栏目名称】 CCTV《奋斗》栏目组 【主 持 人】：阿 丘 【嘉 宾】：田雲娴 王者顶级珠宝国际连锁企业集团总裁 田雲娴国际教育机构 董事长 北京市国清律师事务所律师 【记者编导】', '易风课堂', '0', '<p>【栏目名称】 CCTV《奋斗》栏目组 【主 持 人】：阿 丘 【嘉 宾】：田雲娴 王者顶级珠宝国际连锁企业集团总裁 田雲娴国际教育机构 董事长 北京市国清律师事务所律师 【记者编导】</p>', '1514881058', '0', '0', '', '', '');
INSERT INTO `en_article` VALUES ('60', '36', '摄景学堂测试数据', '', '', '【栏目名称】 CCTV《奋斗》栏目组 【主 持 人】：阿 丘 【嘉 宾】：田雲娴 王者顶级珠宝国际连锁企业集团总裁 田雲娴国际教育机构 董事长 北京市国清律师事务所律师 【记者编导】', '默认作者', '1', '<p>【栏目名称】 CCTV《奋斗》栏目组 【主 持 人】：阿 丘 【嘉 宾】：田雲娴 王者顶级珠宝国际连锁企业集团总裁 田雲娴国际教育机构 董事长 北京市国清律师事务所律师 【记者编导】</p>', '1514881093', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for en_banner
-- ----------------------------
DROP TABLE IF EXISTS `en_banner`;
CREATE TABLE `en_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '图片标题',
  `pic` varchar(150) DEFAULT NULL COMMENT '图片地址',
  `url` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '是否显示0：不显示，1：显示',
  `sort` int(11) DEFAULT '100' COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of en_banner
-- ----------------------------
INSERT INTO `en_banner` VALUES ('1', '1', 'uploads\\20171225\\4f557b7cf3cdb5e67d56117ca654a1b7.jpg', '#', '1', '99', '');
INSERT INTO `en_banner` VALUES ('5', '2', 'uploads\\20171225\\aaeacd01f3f8bf31352286092954aefe.jpg', '#', '1', '100', '');
INSERT INTO `en_banner` VALUES ('6', '3', 'uploads\\20171225\\196d6c60a04eecda340a89d6068104c1.jpg', '#', '1', '101', '');

-- ----------------------------
-- Table structure for en_category
-- ----------------------------
DROP TABLE IF EXISTS `en_category`;
CREATE TABLE `en_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目标识',
  `name` varchar(32) DEFAULT NULL COMMENT '栏目名称',
  `pid` int(11) DEFAULT NULL COMMENT '上级栏目标识',
  `type` tinyint(1) DEFAULT '1' COMMENT '1：列表 2：图片 3：单页',
  `sort` int(11) DEFAULT '100' COMMENT '排序',
  `pic` tinytext COMMENT '栏目图片',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述信息',
  `remark` varchar(200) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `mark` varchar(30) DEFAULT NULL COMMENT '栏目标识',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '0：隐藏 1：显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of en_category
-- ----------------------------
INSERT INTO `en_category` VALUES ('19', 'About', '0', '1', '100', 'uploads\\20180102\\dc1d1be52bb4e3d417e31556354c0e34.jpg', '', '', '       ', '<p style=\"text-align: left;\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center;\">《易风学院》诞生于2014年6月（www.daxue518.com），以提供分享精品织梦源码及织梦建站过程常遇到的问题解决方案汇总为主要宗旨。</span><br/></p><p><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》内容涉及: 企业类织梦源码，门户类织梦源码，及工作室或博客类等基于织梦系统仿制等风格。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》将向着共享化、全面化、专业化、深度化、免费化的多元方向发展，打造实用快捷的建站体验，为会员及用户提供高质量的服务。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》感谢无数关注、支持我们的会员及各位访客们，感谢您们的信任。年轻的《易风学院》愿与同样充满活力的您，彼此相伴，共同成长！</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》只专心做一件事，便是做好的完整的织梦源码！</span><br/><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">易风学院开站以来，尽管没有积累太多用户口碑和市场份额，但我们一直努力，每天保持更新各行各业好源码，让找织梦源码去daxue518已经成为很多织梦爱好者的习惯。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">相信通过我们的努力,daxue518会越来越好！</span></p>', 'about', '1');
INSERT INTO `en_category` VALUES ('20', 'company profile', '19', '1', '100', 'uploads\\20180102\\06c2f4c8ccfb4347f9cc20cbf92a5c0d.jpg', '', '', '      ', '<p><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">易风学院》内容涉及: 企业类织梦源码，门户类织梦源码，及工作室或博客类等基于织梦系统仿制等风格。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》将向着共享化、全面化、专业化、深度化、免费化的多元方向发展，打造实用快捷的建站体验，为会员及用户提供高质量的服务。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》感谢无数关注、支持我们的会员及各位访客们，感谢您们的信任。年轻的《易风学院》愿与同样充满活力的您，彼此相伴，共同成长！</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">《易风学院》只专心做一件事，便是做好的完整的织梦源码！</span><br/><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">易风学院开站以来，尽管没有积累太多用户口碑和市场份额，但我们一直努力，每天保持更新各行各业好源码，让找织梦源码去daxue518已经成为很多织梦爱好者的习惯。</span><br/><span style=\"color: rgb(77, 77, 77); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255);\">相信通过我们的努力,daxue518会越来越好！</span></p>', '', '1');
INSERT INTO `en_category` VALUES ('21', 'Professional team', '19', '6', '100', '', '', '', '      ', null, 'team', '1');
INSERT INTO `en_category` VALUES ('22', 'Recruitment', '19', '1', '100', '', '', '', '      ', '<p class=\"c_about_title\" style=\"font-family: &quot;Microsoft Yahei&quot;, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 15px 0px 0px; border: 0px none; outline: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 76px; font-size: 24px; color: rgb(43, 168, 226); white-space: normal; background-color: rgb(255, 255, 255);\">才用八方、智纳百川</p><p><img src=\"http://www.daqo.com/home/Tpl/Public/images/wy_72.jpg\" alt=\"\" class=\"img_one\"/></p><p style=\"font-family: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; border: 0px none; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; color: rgb(102, 102, 102); width: 720px;\">“江海之所以能为百谷之王者，以其善下之，是以能为百谷之王”。才用八方、智纳百川，犹如千条溪水汇入江海，不同背景、不同地域、不同层次的人才在大全这个大舞台撞击、融合、升华。我们要做全球伟业、百年大全，就是要不拘一格吸纳各类人才，对于每一位人才，我们虚位以待。</p><p style=\"font-family: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; border: 0px none; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; color: rgb(102, 102, 102); width: 720px;\">“才用八方、智纳百川”，不仅体现在我们的人才引进上，更体现在我们对人才的培育和使用上。</p><p class=\"c_about_title\" style=\"font-family: &quot;Microsoft Yahei&quot;, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 15px 0px 0px; border: 0px none; outline: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 76px; font-size: 24px; color: rgb(43, 168, 226); white-space: normal; background-color: rgb(255, 255, 255);\">绩效是检验人才的唯一标准</p><p><img src=\"http://www.daqo.com/home/Tpl/Public/images//wy_73.jpg\" alt=\"\" class=\"img_one\"/></p><p style=\"font-family: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; border: 0px none; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; color: rgb(102, 102, 102); width: 720px;\">不惟最好惟适用，不惟学历惟绩效。我们要激活各类人才的潜能，用目标来激励人才，用业绩来检验人才，真正做到“能者上、平者让、庸者下”，是保证企业永续经营、持续发展的基石。</p><p style=\"font-family: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; border: 0px none; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; color: rgb(102, 102, 102); width: 720px;\">绩效的标准，不是一成不变的。昨天的成功并不代表今天的成功，更不能预示明天的成功。</p><p style=\"font-family: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; border: 0px none; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 21px; color: rgb(102, 102, 102); width: 720px;\">大全永远为充满动力的员工提供广阔的发展空间。</p>', '', '1');
INSERT INTO `en_category` VALUES ('23', 'Works', '0', '2', '100', 'uploads\\20180102\\960bd15584fc2bc2d3be4108fd5fb383.jpg', '', '', '       ', null, 'zuopin', '1');
INSERT INTO `en_category` VALUES ('24', 'clothing', '23', '2', '100', '', '', '', '  ', null, '', '1');
INSERT INTO `en_category` VALUES ('25', 'produc', '23', '2', '100', '', '', '', '  ', null, '', '1');
INSERT INTO `en_category` VALUES ('26', 'leather product', '23', '2', '100', '', '', '', ' ', null, '', '1');
INSERT INTO `en_category` VALUES ('27', 'maquillage', '23', '2', '100', '', '', '', ' ', null, '', '1');
INSERT INTO `en_category` VALUES ('28', 'Model information', '0', '3', '100', 'uploads\\20180102\\9a3e24bdc341b61b948f7ed94bd567c1.jpg', '', '', '    ', null, 'model', '1');
INSERT INTO `en_category` VALUES ('29', '国内女模特', '28', '3', '100', '', '', '', ' ', null, null, '1');
INSERT INTO `en_category` VALUES ('30', '国内男模特', '28', '3', '100', '', '', '', ' ', null, null, '1');
INSERT INTO `en_category` VALUES ('31', '国外女模特', '28', '3', '100', '', '', '', ' ', null, null, '1');
INSERT INTO `en_category` VALUES ('32', '国外男模特', '28', '3', '100', '', '', '', ' ', null, null, '1');
INSERT INTO `en_category` VALUES ('33', 'Scene', '0', '4', '100', 'uploads\\20180102\\99534633ac0309eebf1709a6d589b410.jpg', '', '', '     ', null, 'changjing', '1');
INSERT INTO `en_category` VALUES ('34', 'News', '0', '5', '100', 'uploads\\20180102\\413f546edbc3f8c4d57577ae61bac372.jpg', '', '', '     ', null, 'xinwen', '1');
INSERT INTO `en_category` VALUES ('35', '公司新闻', '34', '5', '100', '', '', '', '  ', null, null, '1');
INSERT INTO `en_category` VALUES ('36', '摄影学堂', '34', '5', '100', '', '', '', ' ', null, null, '1');
INSERT INTO `en_category` VALUES ('37', 'Contact us', '0', '7', '100', 'uploads\\20180102\\715127236fbf493177a29469aa640a35.jpg', '', '', '        ', '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p>', '', '1');
INSERT INTO `en_category` VALUES ('38', 'Cooperative', '0', '1', '100', '', '', '', '  ', null, 'huoban', '0');

-- ----------------------------
-- Table structure for en_config
-- ----------------------------
DROP TABLE IF EXISTS `en_config`;
CREATE TABLE `en_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` text COMMENT '配置信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='配置信息';

-- ----------------------------
-- Records of en_config
-- ----------------------------
INSERT INTO `en_config` VALUES ('2', '{\"title\":\"Easy wind classroom-think PHP introduction\",\"logo\":\"logo.jpg\",\"keyword\":\"Easy wind classroom-think PHP introduction\",\"desc\":\"Easy wind classroom-think PHP introduction\",\"phone\":\"400-XXX-XXXX\",\"online\":\"4948268650\",\"address\":\"Easy style class-Baidu class\",\"email\":\"576617109@qq.com\",\"author\":\"Breeze class\",\"state\":\"1\",\"closeinfo\":\"Website maintenance, please try again later!\"}');

-- ----------------------------
-- Table structure for en_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `en_loginlog`;
CREATE TABLE `en_loginlog` (
  `mid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `ip` char(15) DEFAULT '' COMMENT '登录ip',
  `logintime` int(10) DEFAULT '0' COMMENT '登录时间',
  `msg` varchar(80) DEFAULT NULL COMMENT '登录信息'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of en_loginlog
-- ----------------------------
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1514876090', '登录成功');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1515555578', '密码输入不正确');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1515555593', '登录成功');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1514448900', '登录成功');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1514876090', '登录成功');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1515555578', '密码输入不正确');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1515555593', '登录成功');
INSERT INTO `en_loginlog` VALUES ('1', '127.0.0.1', '1514448900', '登录成功');

-- ----------------------------
-- Table structure for en_manager
-- ----------------------------
DROP TABLE IF EXISTS `en_manager`;
CREATE TABLE `en_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `account` varchar(50) NOT NULL COMMENT '管理账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账号状态 0：锁定，1：正常',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of en_manager
-- ----------------------------
INSERT INTO `en_manager` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1');

-- ----------------------------
-- Table structure for en_pics
-- ----------------------------
DROP TABLE IF EXISTS `en_pics`;
CREATE TABLE `en_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL COMMENT '内容id',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `sort` int(11) DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='内容图片';

-- ----------------------------
-- Records of en_pics
-- ----------------------------
INSERT INTO `en_pics` VALUES ('1', '4', 'uploads\\20171106\\95f9bda45f921c211e45dd46efa8bc02.png', '10');
INSERT INTO `en_pics` VALUES ('2', '4', 'uploads\\20171106\\b49a4b6efdedff256cd9846789ab50bc.png', '10');
INSERT INTO `en_pics` VALUES ('10', '12', 'uploads\\20171111\\7e1b01b47ed0242892b5d744966c5f48.jpg', '10');
INSERT INTO `en_pics` VALUES ('11', '12', 'uploads\\20171111\\d594f1908dcdcc01d37e3dcfca510bfb.jpg', '10');
INSERT INTO `en_pics` VALUES ('31', '29', 'uploads\\20171226\\b3321637fa7bbc2d0aecfce9e77a8a11.jpg', '10');
INSERT INTO `en_pics` VALUES ('32', '30', 'uploads\\20171226\\c417b5251a72b67d9b4e72f764dad246.jpg', '10');
INSERT INTO `en_pics` VALUES ('33', '31', 'uploads\\20171226\\c089d60b8b802621ba0a08eddbc15dcd.jpg', '10');
INSERT INTO `en_pics` VALUES ('34', '32', 'uploads\\20171226\\bf8f4cf7c19a394cd8b0e5bc1cc16ebd.jpg', '10');
INSERT INTO `en_pics` VALUES ('35', '33', 'uploads\\20171226\\e003ea23931651b6ffbf3e0429ab7fb3.jpg', '10');
INSERT INTO `en_pics` VALUES ('36', '34', 'uploads\\20171226\\d6dfc7a6b10ab9ea741ba1de6cc24cce.jpg', '10');
INSERT INTO `en_pics` VALUES ('37', '35', 'uploads\\20171226\\76406e0549a9823cb922bc37667b3f5e.jpg', '10');
INSERT INTO `en_pics` VALUES ('38', '36', 'uploads\\20171226\\f25f5b11776abdf1ed0a03a2bbf010b9.jpg', '10');
INSERT INTO `en_pics` VALUES ('39', '37', 'uploads\\20171226\\62ec62526c5d52c5adc1879b7b36c404.jpg', '10');
INSERT INTO `en_pics` VALUES ('40', '38', 'uploads\\20171226\\bf63c8177ed9ed9f477fd5a36f2cd3af.jpg', '10');
INSERT INTO `en_pics` VALUES ('41', '39', 'uploads\\20171226\\fa419c6fa7da2613cf007edccd884cda.jpg', '10');
INSERT INTO `en_pics` VALUES ('42', '40', 'uploads\\20171226\\55c646020059bd68bd9803ca9c964d45.jpg', '10');
INSERT INTO `en_pics` VALUES ('43', '41', 'uploads\\20171226\\1b8be621ff3be09d89d0dc358b7ca0ef.jpg', '10');
INSERT INTO `en_pics` VALUES ('44', '42', 'uploads\\20171226\\64a01972cf535c95a256be5760b7e86a.jpg', '10');
INSERT INTO `en_pics` VALUES ('45', '43', 'uploads\\20171226\\fd49a044b814ea930ca02f2feddc254b.jpg', '10');
INSERT INTO `en_pics` VALUES ('48', '44', 'uploads\\20171226\\1e7c80bb54092de8885ca0593af07aa7.jpg', '10');
INSERT INTO `en_pics` VALUES ('49', '45', 'uploads\\20171226\\b0f83513daad833cd3e956cb5f3a4950.jpg', '10');
INSERT INTO `en_pics` VALUES ('50', '46', 'uploads\\20171226\\3dfa7ac315c4818e68d1793a4e998878.jpg', '10');
INSERT INTO `en_pics` VALUES ('51', '47', 'uploads\\20171226\\3c7a7aa1fdc7765c7d599a965e32ad7b.jpg', '10');
INSERT INTO `en_pics` VALUES ('52', '48', 'uploads\\20171227\\2e6c4b9eed93963f21af0be41f604a39.jpg', '10');
INSERT INTO `en_pics` VALUES ('53', '49', 'uploads\\20171227\\0d5d434873d07caa5b4ba39517ad2501.jpg', '10');
INSERT INTO `en_pics` VALUES ('54', '50', 'uploads\\20180102\\db3e59c73172cf991ac665854e8d4de0.jpg', '10');
INSERT INTO `en_pics` VALUES ('55', '51', 'uploads\\20180102\\1fbe5f7344efdf5c48bc89997d190b90.jpg', '10');
INSERT INTO `en_pics` VALUES ('56', '52', 'uploads\\20180102\\f4d48dfbc9069558eba98b1aca94b15d.jpg', '10');
INSERT INTO `en_pics` VALUES ('57', '53', 'uploads\\20180102\\dc8c5ffce43dc84bd75416af7164f9af.jpg', '10');
INSERT INTO `en_pics` VALUES ('58', '54', 'uploads\\20180102\\14e64e0e697c1a5980c1f41d3fe46104.jpg', '10');
INSERT INTO `en_pics` VALUES ('59', '55', 'uploads\\20180102\\30c20cb182ee1b8b5a2cf536644e13c7.jpg', '10');
INSERT INTO `en_pics` VALUES ('60', '56', 'uploads\\20180102\\c805edb63f4b71805774a59f6d7a0125.jpg', '10');
INSERT INTO `en_pics` VALUES ('61', '57', 'uploads\\20180102\\359e3fa63ac24bea2d0916681c4f02cd.jpg', '10');
INSERT INTO `en_pics` VALUES ('62', '58', 'uploads\\20180102\\6d193707e81247fbe8675a1b2f613f92.jpg', '10');
INSERT INTO `en_pics` VALUES ('63', '59', 'uploads\\20180102\\5e9efd83cd1db91ad75260211dd6c7c3.png', '10');
INSERT INTO `en_pics` VALUES ('64', '60', 'uploads\\20180102\\44ae605b536ab38cdb9ae63ef8760d75.jpg', '10');

-- ----------------------------
-- Table structure for en_viewslog
-- ----------------------------
DROP TABLE IF EXISTS `en_viewslog`;
CREATE TABLE `en_viewslog` (
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `viewtime` int(10) DEFAULT NULL COMMENT '浏览时间',
  `viewip` varchar(15) DEFAULT NULL COMMENT 'ip地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览日志';

-- ----------------------------
-- Records of en_viewslog
-- ----------------------------
INSERT INTO `en_viewslog` VALUES ('56', '1515503483', '127.0.0.1');
INSERT INTO `en_viewslog` VALUES ('56', '1515503483', '127.0.0.1');

-- ----------------------------
-- Table structure for lee_article
-- ----------------------------
DROP TABLE IF EXISTS `lee_article`;
CREATE TABLE `lee_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '所属分类id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `keyword` varchar(150) NOT NULL COMMENT '关键字',
  `desc` varchar(200) NOT NULL COMMENT '描述',
  `remark` varchar(200) NOT NULL COMMENT '摘要',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `content` text NOT NULL COMMENT '内容',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `toptime` int(10) NOT NULL DEFAULT '0' COMMENT '置顶时间戳',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶 1：置顶 0：不置顶',
  `istuijian` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐 1：推荐 0：不推荐 ',
  `model` char(150) NOT NULL COMMENT '模特信息',
  `zhiwu` char(30) NOT NULL COMMENT '职务',
  `zhicheng` char(50) NOT NULL COMMENT '职称',
  `thumb` varchar(100) NOT NULL,
  `click_num` int(10) unsigned NOT NULL DEFAULT '0',
  `cmt_count` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '50',
  `tid` varchar(255) NOT NULL DEFAULT '',
  `like_num` int(10) unsigned NOT NULL DEFAULT '0',
  `reply_num` int(10) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sourceurl` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `is_baidu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 CHECKSUM=1 COMMENT='内容表';

-- ----------------------------
-- Records of lee_article
-- ----------------------------
INSERT INTO `lee_article` VALUES ('108', '47', 'ddd', '', 'ddddd', 'ddd', 'Lee', '0', '<p style=\"margin: 5px 0;text-indent: 28px\"><span style=\";font-family:Calibri;font-size:16px\"></span></p><p style=\"box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\" text-indent:=\"\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: Calibri; font-size: 16px;\"></span></p><p style=\"text-indent: 28px;\"><strong><span style=\"font-family: Calibri;\">js<span style=\"font-family: 宋体;\">判断输出多少行，并且超出多少行数禁止输入</span></span></strong></p><p style=\"text-indent: 28px;\"><span style=\"font-family: Calibri;\"><span style=\"font-family: 宋体;\">根据输入文本的换行符来进行判断</span></span></p><pre class=\"brush:html;toolbar:false\">&nbsp;&lt;textarea&nbsp;id=&quot;text&quot;&nbsp;rows=6&nbsp;cols=20&nbsp;onkeypress=&quot;check(this);&quot;&nbsp;placeholder=&quot;请输入文本内容，不能超过10行&quot;&gt;&lt;/textarea&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;check(obj){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;num&nbsp;=&nbsp;document.getElementById(&quot;text&quot;).value.split(&#39;\\n&#39;).length;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(num&gt;9){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#urlsid&#39;).attr(&#39;disabled&#39;,true);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(&#39;一次性最多输入10行&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p style=\"text-indent: 28px;\"><br style=\"white-space: normal;\"/></p><p style=\"box-sizing: border-box; padding: 0px; color: rgb(51, 51, 51);\" microsoft=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\" text-indent:=\"\">&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '1562895993', '1563523802', '1', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('110', '48', 'vvcv', '', '', '', 'Lee', '0', '<pre class=\"brush:php;toolbar:false\"><br/></pre><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\" class=\"brush:php;toolbar:false;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/vendor/layui/css/layui.css&quot;</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/custom/css/style.css&quot;</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">script </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">type=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;text/javascript&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">src=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/ueditor/third-party/SyntaxHighlighter/shCore.js&quot;</span><span style=\"background-color:#efefef;\">&gt;<span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">script</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">type=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;text/css&quot; </span><span style=\"background-color:#efefef;\">/&gt;</span><br/></span></pre><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\" class=\"brush:php;toolbar:false;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/vendor/layui/css/layui.css&quot;</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/custom/css/style.css&quot;</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">script </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">type=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;text/javascript&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">src=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/ueditor/third-party/SyntaxHighlighter/shCore.js&quot;</span><span style=\"background-color:#efefef;\">&gt;<span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">script</span><span style=\"background-color:#efefef;\">&gt;</span><br/><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">link </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">href=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;/public/static/admin/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">rel=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;stylesheet&quot; </span><span style=\"color:#0000ff;background-color:#efefef;font-weight:bold;\">type=</span><span style=\"color:#008000;background-color:#efefef;font-weight:bold;\">&quot;text/css&quot; </span><span style=\"background-color:#efefef;\">/&gt;;<br/><br/>function aaa(){<br/>}<br/><br/><br/><br/></span></span></pre>', '1563267111', '1563435546', '1', '1', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '0');
INSERT INTO `lee_article` VALUES ('111', '48', 'fff', '3', 'ff', '', 'Lee', '0', '<p>ffffffff</p>', '1563349733', '0', '0', '0', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('112', '47', '测试代码高亮', '', '', '', 'Lee', '0', '<p>的广泛地费电功夫个发给对方发多个地方<br/></p><pre class=\"brush:html;toolbar:false\">&nbsp;&nbsp;&lt;!--&lt;style&nbsp;type=&quot;text/css&quot;&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--#mycode{--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--font-size:&nbsp;18px;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--width:500px;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--white-space:&nbsp;pre;&nbsp;/*不强制换行*/--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--}--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;/style&gt;--&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--[if&nbsp;lt&nbsp;IE&nbsp;9]&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;src=&quot;__INDEX__/js/modernizr.js&quot;&gt;&lt;/script&gt;\r\n&lt;![endif]--&gt;\r\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;__INDEX__/js/ajax.js&quot;&gt;&lt;/script&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;!--top&nbsp;begin--&gt;\r\n{include&nbsp;file=&#39;common/header&#39;}\r\n&lt;!--top&nbsp;end--&gt;\r\n&lt;article&gt;&nbsp;\r\n&nbsp;&nbsp;&lt;!--lbox&nbsp;begin--&gt;\r\n&nbsp;&nbsp;&lt;div&nbsp;class=&quot;lbox&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;content_box&nbsp;whitebg&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h2&nbsp;class=&quot;htitle&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;span&nbsp;class=&quot;con_nav&quot;&gt;您现在的位置是：\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;a&nbsp;href=&quot;/&quot;&gt;首页&lt;/a&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{volist&nbsp;name=&quot;position&quot;&nbsp;id=&quot;vo&quot;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;nbsp;&gt;&amp;nbsp;&lt;a&nbsp;href=&quot;/category/{$vo.id}.html&quot;&gt;&lt;span&nbsp;class=&quot;c-gray&quot;&gt;{$vo.name}&lt;/span&gt;&lt;/a&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{/volist}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/span&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/h2&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h1&nbsp;class=&quot;con_tilte&quot;&gt;{$articleData.title}&lt;/h1&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&nbsp;class=&quot;bloginfo&quot;&gt;&lt;i&nbsp;class=&quot;avatar&quot;&gt;&lt;img&nbsp;src=&quot;__INDEX__/picture/avatar.jpg&quot;&gt;&lt;/i&gt;&lt;span&gt;{$articleData.author}&lt;/span&gt;&lt;span&gt;{:date(&#39;Y-m-d&#39;,$articleData.addtime)}&lt;/span&gt;&lt;span&gt;&lt;a&nbsp;href=&quot;/category/{$articleData.cid}.html&quot;&gt;【{$articleData.cname}】&lt;/a&gt;&lt;/span&gt;&lt;span&gt;{$articleData.click}人已围观&lt;/span&gt;&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&nbsp;class=&quot;con_info&quot;&gt;&lt;b&gt;简介&lt;/b&gt;{$articleData.remark}&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;con_text&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$articleData.content}\r\n\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{if&nbsp;$articleData.sourceurl}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&nbsp;class=&quot;share&quot;&gt;&lt;b&gt;文章来源：{$articleData.source}&lt;/b&gt;&lt;a&nbsp;href=&quot;{$articleData.sourceurl}&quot;&nbsp;&gt;{$articleData.sourceurl}&lt;/a&gt;&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{/if}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;Tags：{volist&nbsp;name=&quot;keyData&quot;&nbsp;id=&quot;vo&quot;}&lt;a&nbsp;href=&quot;/search/tags/{$vo.id}.html&quot;&gt;{$vo.tname}&lt;/a&gt;&nbsp;&amp;nbsp;&nbsp;{/volist}&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;span&nbsp;class=&quot;diggit&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;a&nbsp;href=&quot;javascript:;&quot;&nbsp;onclick=&quot;articlelike({$articleData.id})&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很赞哦！\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/a&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(&lt;b&nbsp;id=&quot;diggnum&quot;&gt;{$articleData.likenum}&lt;/b&gt;)\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/span&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;articlelike($aid)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;aid&nbsp;=&nbsp;$aid;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;diggnum&nbsp;=$(&#39;#diggnum&#39;).html();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.ajax({\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;post&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&#39;/index/article/like&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;data:&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aid:aid\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dataType:&nbsp;&quot;json&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function(result){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;data&nbsp;=&nbsp;result;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(data.code==201){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#diggnum&#39;).html();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#diggnum&#39;).html(Number(diggnum)+Number(1));\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/p&gt;</pre><p>测试php代码</p><pre class=\"brush:php;toolbar:false\">//\r\nprivate&nbsp;function&nbsp;getmarkid($a){\r\n&nbsp;&nbsp;&nbsp;&nbsp;$chanpinpid=db(&#39;category&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;where(&#39;mark&#39;,$a)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;where(&#39;pid&#39;,0)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;field(&#39;id,name&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;order(&#39;sort&nbsp;Desc,id&nbsp;asc&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;find();\r\n&nbsp;&nbsp;&nbsp;&nbsp;if(!$chanpinpid){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$chanpinpid=db(&#39;category&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;where(&#39;mark&#39;,$a)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;field(&#39;id,name&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;order(&#39;sort&nbsp;Desc,id&nbsp;asc&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;limit(1)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;find();\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;if(!$chanpinpid){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$chanpinpid[&#39;id&#39;]=0;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$chanpinpid[&#39;name&#39;]=&#39;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$chanpinpid;\r\n}</pre><p><br/></p>', '1563416157', '0', '0', '0', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('93', '50', 'phpstorm激活', '8', 'phpstorm激活大全', 'phpstorm激活大全', 'Lee', '0', '<h2>方法二. 直接用浏览器打开 <a href=\"http://idea.lanyus.com/\" target=\"_blank\">http://idea.lanyus.com/</a> （推荐）</h2><p>点击页面中的“<strong>获得注册码</strong>”，然后在注册时切换至<strong>Activation Code</strong>选项，输入获得的注册码一长串字符串，便可以注册成功了！（推荐用这种方式）</p><p><br/></p>', '1544582767', '0', '0', '0', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('94', '48', '解决mySQL占用内存超大问题', '1,3,6', 'windows服务器安装phpstudy环境，装上后发现启动后mysql占用了很大的虚拟内存', 'windows服务器安装phpstudy环境，装上后发现启动后mysql占用了很大的虚拟内存', 'Lee', '0', '<p>打开my.ini更改后如下：<br/></p><p>innodb_buffer_pool_size=576M -&gt;256M InnoDB引擎缓冲区占了大头，首要就是拿它开刀</p><p>query_cache_size=100M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;16M&nbsp;查询缓存</p><p>tmp_table_size=102M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;64M&nbsp;临时表大小</p><p>key_buffer_size=256m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt;32M</p><p>&nbsp;</p><p>重启mysql服务后，虚拟内存降到200以下．</p><p>&nbsp;</p><p>另外mysql安装目录下有几个文件：my-huge.ini&nbsp;、my-large.ini、my-medium.ini...这几个是根据内存大小作的建议配置，新手在设置的时候也可以参考一下。</p><p>&nbsp;</p><p>2G内存的MYSQL数据库服务器&nbsp;my.ini优化&nbsp;(my.ini)</p><p>&nbsp;</p><p>2G内存,针对站少,优质型的设置,试验特：</p><p>&nbsp;</p><p>table_cache=1024&nbsp;物理内存越大,设置就越大.默认为2402,调到512-1024最佳</p><p>innodb_additional_mem_pool_size=8M&nbsp;&nbsp;&nbsp;默认为2M</p><p>innodb_flush_log_at_trx_commit=0&nbsp;等到innodb_log_buffer_size列队满后再统一储存,默认为1</p><p>innodb_log_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为1M</p><p>innodb_thread_concurrency=8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你的服务器CPU有几个就设置为几,默认为8</p><p>key_buffer_size=256M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为218&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调到128最佳</p><p>tmp_table_size=64M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调到64-256最挂</p><p>read_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为64K</p><p>read_rnd_buffer_size=16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为256K</p><p>sort_buffer_size=32M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为256K</p><p>max_connections=1024&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为1210</p><p>&nbsp;</p><p>试验一：</p><p>&nbsp;</p><p>table_cache=512或1024</p><p>innodb_additional_mem_pool_size=2M</p><p>innodb_flush_log_at_trx_commit=0</p><p>innodb_log_buffer_size=1M</p><p>innodb_thread_concurrency=8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你的服务器CPU有几个就设置为几,默认为8</p><p>key_buffer_size=128M</p><p>tmp_table_size=128M</p><p>read_buffer_size=64K或128K</p><p>read_rnd_buffer_size=256K</p><p>sort_buffer_size=512K</p><p>max_connections=1024&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;</p><p>试验二：</p><p>&nbsp;</p><p>table_cache=512或1024</p><p>innodb_additional_mem_pool_size=8M&nbsp;</p><p>innodb_flush_log_at_trx_commit=0</p><p>innodb_log_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>innodb_thread_concurrency=8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>key_buffer_size=128M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>tmp_table_size=128M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>read_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>read_rnd_buffer_size=16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>sort_buffer_size=32M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>max_connections=1024&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;</p><p>一般：</p><p>&nbsp;</p><p>table_cache=512</p><p>innodb_additional_mem_pool_size=8M&nbsp;</p><p>innodb_flush_log_at_trx_commit=0</p><p>innodb_log_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>innodb_thread_concurrency=8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>key_buffer_size=128M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>tmp_table_size=128M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>read_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>read_rnd_buffer_size=16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>sort_buffer_size=32M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>max_connections=1024</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>经过测试.没有特殊情况,最好还是用默认的.</p><p>&nbsp;</p><p>2G内存,针对站多,抗压型的设置,最佳：</p><p>&nbsp;</p><p>table_cache=1024&nbsp;物理内存越大,设置就越大.默认为2402,调到512-1024最佳</p><p>innodb_additional_mem_pool_size=4M&nbsp;&nbsp;&nbsp;默认为2M</p><p>innodb_flush_log_at_trx_commit=1</p><p>(设置为0就是等到innodb_log_buffer_size列队满后再统一储存,默认为1)</p><p>innodb_log_buffer_size=2M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为1M</p><p>innodb_thread_concurrency=8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你的服务器CPU有几个就设置为几,建议用默认一般为8</p><p>key_buffer_size=256M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为218&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调到128最佳</p><p>tmp_table_size=64M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;调到64-256最挂</p><p>read_buffer_size=4M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为64K</p><p>read_rnd_buffer_size=16M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为256K</p><p>sort_buffer_size=32M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为256K</p><p>max_connections=1024&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为1210</p><p>thread_cache_size=120&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;默认为60</p><p>query_cache_size=64M</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>优化mysql数据库性能的十个参数</p><p>&nbsp;</p><p>(1)、max_connections：</p><p>允许的同时客户的数量。增加该值增加&nbsp;mysqld&nbsp;要求的文件描述符的数量。这个数字应该增加，否则，你将经常看到&nbsp;too many connections&nbsp;错误。&nbsp;默认数值是100，我把它改为1024&nbsp;。</p><p>&nbsp;</p><p>(2)、record_buffer：</p><p>每个进行一个顺序扫描的线程为其扫描的每张表分配这个大小的一个缓冲区。如果你做很多顺序扫描，你可能想要增加该值。默认数值是131072(128k)，我把它改为16773120 (16m)</p><p>&nbsp;</p><p>(3)、key_buffer_size：</p><p>索引块是缓冲的并且被所有的线程共享。key_buffer_size是用于索引块的缓冲区大小，增加它可得到更好处理的索引(对所有读和多重写)，到你能负担得起那样多。如果你使它太大，系统将开始换页并且真的变慢了。默认数值是8388600(8m)，我的mysql主机有2gb内存，所以我把它改为&nbsp;402649088(400mb)。</p><p>&nbsp;</p><p>4)、back_log：</p><p>要求&nbsp;mysql&nbsp;能有的连接数量。当主要mysql线程在一个很短时间内得到非常多的连接请求，这就起作用，然后主线程花些时间(尽管很短)检查连接并且启动一个新线程。</p><p>back_log&nbsp;值指出在mysql暂时停止回答新请求之前的短时间内多少个请求可以被存在堆栈中。只有如果期望在一个短时间内有很多连接，你需要增加它，换句话说，这值对到来的tcp/ip连接的侦听队列的大小。你的操作系统在这个队列大小上有它自己的限制。试图设定back_log高于你的操作系统的限制将是无效的。</p><p>当你观察你的主机进程列表，发现大量&nbsp;264084 | unauthenticated user | xxx.xxx.xxx.xxx | \r\nnull | connect | null | login | \r\nnull的待连接进程时，就要加大&nbsp;back_log&nbsp;的值了。默认数值是50，我把它改为500。</p><p>&nbsp;</p><p>(5)、interactive_timeout：</p><p>服务器在关闭它前在一个交互连接上等待行动的秒数。一个交互的客户被定义为对&nbsp;mysql_real_connect()使用client_interactive&nbsp;选项的客户。&nbsp;默认数值是28800，我把它改为7200。</p><p>&nbsp;</p><p>(6)、sort_buffer：</p><p>每个需要进行排序的线程分配该大小的一个缓冲区。增加这值加速order by或group by操作。默认数值是2097144(2m)，我把它改为&nbsp;16777208 (16m)。</p><p>&nbsp;</p><p>(7)、table_cache：</p><p>为所有线程打开表的数量。增加该值能增加mysqld要求的文件描述符的数量。mysql对每个唯一打开的表需要2个文件描述符。默认数值是64，我把它改为512。</p><p>&nbsp;</p><p>(8)、thread_cache_size：</p><p>可以复用的保存在中的线程的数量。如果有，新的线程从缓存中取得，当断开连接的时候如果有空间，客户的线置在缓存中。如果有很多新的线程，为了提高性能可以这个变量值。通过比较&nbsp;connections&nbsp;和&nbsp;threads_created&nbsp;状态的变量，可以看到这个变量的作用。我把它设置为&nbsp;80。</p><p>&nbsp;</p><p>(9)mysql的搜索功能</p><p>用mysql进行搜索，目的是能不分大小写，又能用中文进行搜索</p><p>只需起动mysqld时指定&nbsp;--default-character-set=gb2312</p><p>&nbsp;</p><p>(10)、wait_timeout：</p><p>服务器在关闭它之前在一个连接上等待行动的秒数。&nbsp;默认数值是28800，我把它改为7200。</p><p>&nbsp;</p><p>注：参数的调整可以通过修改&nbsp;/etc/my.cnf&nbsp;文件并重启&nbsp;mysql&nbsp;实现。这是一个比较谨慎的工作，上面的结果也仅仅是我的一些看法，你可以根据你自己主机的硬件情况（特别是内存大小）进一步修改。</p><p><br/></p>', '1544583059', '0', '0', '0', '', '', '', '', '1', '0', '50', '', '0', '8', '1', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('95', '47', '上试试', '1,3,4', '顶顶顶顶', '', 'Lee', '0', '', '1545632924', '0', '0', '0', '', '', '', '', '1', '0', '50', '', '0', '18', '1', 'http://www.58lee.com', '主创', '0', '1');
INSERT INTO `lee_article` VALUES ('96', '51', 'Tp5模板查询一个值是否存在数组中 {in}{notin}{range}标签', '9', 'Tp5模板查询一个值是否存在数组中 {in}{notin}{range}标签', 'Tp5模板查询一个值是否存在数组中 {in}{notin}{range}标签', 'Lee', '0', '<pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\"><span style=\"font-size: 18px;\">{volist name=&quot;editData&quot; id=&quot;vo&quot;}<br/><span style=\"background-color: rgb(239, 239, 239);\">&lt;</span><span style=\"color: rgb(0, 0, 128); background-color: rgb(239, 239, 239); font-weight: bold;\">input </span><span style=\"color: rgb(0, 0, 255); background-color: rgb(239, 239, 239); font-weight: bold;\">type=</span><span style=\"color: rgb(0, 128, 0); background-color: rgb(239, 239, 239); font-weight: bold;\">&quot;checkbox&quot; </span><span style=\"color: rgb(0, 0, 255); background-color: rgb(239, 239, 239); font-weight: bold;\">name=</span><span style=\"color: rgb(0, 128, 0); background-color: rgb(239, 239, 239); font-weight: bold;\">&quot;keyword&quot; </span><span style=\"color: rgb(0, 0, 255); background-color: rgb(239, 239, 239); font-weight: bold;\">value=</span><span style=\"color: rgb(0, 128, 0); background-color: rgb(239, 239, 239); font-weight: bold;\">&quot;{$vo.id}&quot; {<span style=\"font-size: 18px; background-color: rgb(239, 239, 239); font-weight: bold; color: rgb(255, 0, 0);\">in </span>name=&quot;vo.id&quot; value=&quot;$data&quot;}checked=&quot;checked&quot;{/<span style=\"font-size: 18px; background-color: rgb(239, 239, 239); font-weight: bold; color: rgb(255, 0, 0);\">in</span>}</span><span style=\"background-color: rgb(239, 239, 239);\">&gt;</span><br/>{/volist}<br/><br/> //$vo.id = &quot;1&quot; ; $data=&quot;1,3,5,7,9&quot;;<br/> <br/> //{<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">in</span>}标签判断编辑数据多选项的id是否存在$data 中，如果存在则默认选中！！！<br/> <br/> //{<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">notin</span>}表示存在则默认不选中！！！<br/> <br/> //可以使用{<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">range</span>}标签代替 ：{<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">range </span>name=&quot;{vo.id}&quot; value=&quot;{$data}&quot; type=&quot;<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">in</span>&quot; }check=&quot;checked&quot;{/<span style=\"font-size: 18px; color: rgb(255, 0, 0);\">range</span>}<br/></span></pre><p><br/></p>', '1545637684', '1563348170', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('97', '49', 'phpstudy网站报错 cURL error 60: SSL certificate problem: unable to get local issuer certifica', '7', 'phpstudy网站报错 cURL error 60: SSL certificate problem: unable to get local issuer certifica', 'phpstudy网站报错 cURL error 60: SSL certificate problem: unable to get local issuer certifica', 'Lee', '0', '<pre class=\"prettyprint\"><strong><span style=\"font-size: 18px;\">开发网站做支付宝支付填写支付宝公钥&nbsp;报错&nbsp;：cURL&nbsp;error&nbsp;60:&nbsp;SSL&nbsp;certificate&nbsp;problem:&nbsp;unable&nbsp;to&nbsp;get&nbsp;local&nbsp;issuer&nbsp;certifica</span></strong><span style=\"font-size: 18px;\"><br/><br/> &nbsp;原因：由于没有配置信任的服务器HTTPS验证。默认，cURL被设为不信任任何CAs，就是说，它不信任任何服务器验证。因此，这就是浏览器无法通过HTTPs访问你服务器的原因。<br/><br/> &nbsp;1）从&nbsp;https://curl.haxx.se/ca/cacert.pem&nbsp;下载最新的cacert.pem2）<br/><br/> &nbsp;2)将以下行添加到php.ini（搜索“curl”，在“[curl]”中添加）<br/><br/><strong><span style=\"font-size: 18px; color: rgb(255, 0, 0);\"> &nbsp; &nbsp;[curl]</span></strong><br/> &nbsp; &nbsp;;&nbsp;A&nbsp;default&nbsp;value&nbsp;for&nbsp;the&nbsp;CURLOPT_CAINFO&nbsp;option.&nbsp;This&nbsp;is&nbsp;required&nbsp;to&nbsp;be&nbsp;an<br/> &nbsp; &nbsp;;&nbsp;absolute&nbsp;path.<br/><strong><span style=\"font-size: 18px; color: rgb(255, 0, 0);\"> &nbsp; &nbsp;curl.cainfo&nbsp;=&nbsp;&quot;D:\\phpStudy\\php\\php-7.0.12-nts\\ext\\cacert.pem&quot;<br/></span></strong><br/> &nbsp; &nbsp;注：（如果这是共享托管和您没有访问php.ini然后你可以添加到.user.ini在public_html）<br/><br/> &nbsp;3）默认情况下，FastCGI进程将每隔300秒解析新文件<br/>（如果需要，您可以通过添加几个文件来更改频率，如这里建议的https://ss88.uk/blog/fast-cgi-and-user-ini&nbsp;-files-the-new-htaccess/）<br/></span></pre><p><br/></p>', '1545987042', '1563347986', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('98', '46', 'IIS6环境和使用.htaccess配置网站301', '3,10', 'IIS环境和使用.htaccess配置网站301', 'IIS环境和使用.htaccess配置网站301', 'Lee', '0', '<p>第一：IIS6配置 （<a href=\"http://58lee.com\">http://58lee.com</a>&nbsp; 重定向到 <a href=\"http://www.58lee.com）\">http://www.58lee.com）</a> </p><p>&nbsp; 新建网站取名 58lee.com301，目录可随便绑定一个空目录并且右键选择属性按下图操作</p><p><img src=\"/ueditor/php/upload/image/20190108/1546914997167824.png\" title=\"1546914997167824.png\" alt=\"image.png\"/></p><p><br/></p><p>第二：利用.htaccess（apache环境下<a href=\"http://58lee.com/\" style=\"white-space: normal;\">http://58lee.com</a>&nbsp; 重定向到&nbsp;<a href=\"http://www.58lee.com%29/\" style=\"white-space: normal;\">http://www.58lee.com</a>）</p><p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;RewriteEngine On</p><p>&nbsp;&nbsp;&nbsp;&nbsp;#RewriteBase /</p><p>&nbsp;&nbsp;&nbsp;&nbsp;RewriteCond %{HTTP_HOST} ^<a href=\"http://58lee.com/\" style=\"white-space: normal;\">58lee.com</a>&nbsp;.com$ [NC]</p><p>&nbsp;&nbsp;&nbsp;&nbsp;RewriteRule ^(.*)$ http://www.<a href=\"http://58lee.com/\" style=\"white-space: normal;\">58lee.com</a>&nbsp;/$1 [L,R=301]</p><p>&nbsp;&nbsp;&nbsp;&nbsp;RewriteCond %{HTTP_HOST} ^http://<a href=\"http://58lee.com/\" style=\"white-space: normal;\">58lee.com</a>&nbsp;.com$ [NC]</p><p>&nbsp;&nbsp;&nbsp;&nbsp;RewriteRule ^(.*)$ http://www.<a href=\"http://58lee.com/\" style=\"white-space: normal;\">58lee.com</a>&nbsp;/$1 [L,R=301]&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>', '1546914647', '0', '0', '1', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('99', '48', '重启服务器后mysql 发生系统错误 1069', '3', '重启服务器后mysql 发生系统错误 1069，不能启动', '重启服务器后mysql 发生系统错误 1069，不能启动', 'Lee', '0', '<h2 class=\"exp-content-head\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;方法/步骤<p><span class=\"audio-inner\"><span class=\"audio-icon\"></span><span class=\"audio-icon-2\"></span><span class=\"audio-icon-3\"></span></span><span class=\"desc\"></span></p></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1）1.先来分析一下出现这个错误1069的原因吧：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重启服务器往往都会使数据库启动失败，只需手动启动数据库即可。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但不至于出现1069错误，那是因为更改了服务器的登录密码才会出现这个错误代码的提示。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=2\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=27543ddfb73eb13544c7b7bb961ea8cb/d31b0ef41bd5ad6e7a9a75dd8acb39dbb6fd3ca1.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.当只是单纯的重启服务器而导致的数据库链接失败的解决方法如下：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;进入服务器后，按照这个步骤找到对应位置进行修改：开始——管理工具——计算机管理——服务和应用程序——服务——MySQL</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=3\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=4bc280c5761ed21b79c92ee59d6eddae/aec379310a55b3192792934248a98226cffc1799.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.正确的找到MySQL数据库后，鼠标选中MySQL单击右键，点击启动即可，可懂完成后重新在Internet信息服务（IIS）服务器中重新启动下服务器即可。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=4\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=2908d22360600c33f079dec82a4c5134/5882b2b7d0a20cf473c6efe87d094b36acaf99b6.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=5\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=a249560907f3d7ca0cf63f76c21fbe3c/b17eca8065380cd7ab48b3daaa44ad34598281b6.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.当重启动服务器后，再启动MySQL数据库时出现1069错误提示代码时，这就需要考虑数据库的链接密码出现了问题。解决该问题有两种方法：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=6\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=a1105f0e4036acaf59e096fc4cd88d03/5d6034a85edf8db1a1ec60530223dd54574e74c2.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.解决数据库密码链接出现的1069错误代码的方法一：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用同样的方法找到MySQL，然后选中单击鼠标右键，点击属性，选择“本地系统账户”，然后点击确定即可。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=7\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=a055b75604b30f24359aec03f894d192/8718367adab44aedf5afa2d3b81c8701a18bfb20.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.解决数据库密码链接出现的1069错误代码的方法二：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用同样的方法找到MySQL，然后选中单击鼠标右键，点击属性，选择“此账户”，将登录该服务器的正确密码填写在这个框框中，然后点击确定即可</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/e4d08ffd68c4320fd2f60d1e.html?picindex=8\" target=\"_self\"><img class=\"exp-image-default\" alt=\"解决重启服务器连接MySQL会出现1069错误的方法\" src=\"https://imgsa.baidu.com/exp/w=500/sign=d1ce6ba0d233c895a67e987be1127397/4bed2e738bd4b31c59eb888c8cd6277f9e2ff836.jpg\"/><span class=\"exp-album-enter-mask\"></span></a></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.用这两种方法就能有效的解决重启服务器，启动数据库出现1069错误代码的方法。当正确的操作在这两种方法后，都需要在Internet信息服务（IIS）服务器中重新启动服务器即可。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '1548812605', '1563349512', '1', '0', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '0');
INSERT INTO `lee_article` VALUES ('100', '55', '获取网站跳转来源 JS 与 PHP', '11,12', '获取网站跳转来源 JS 与 PHP', '获取网站跳转来源 JS 与 PHP', 'Lee', '0', '<pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\">JS&nbsp;获取网站跳转来源</pre><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\">PHP&nbsp;获取网站跳转来源</pre><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\"><span style=\"color:#660000;background-color:#f7faff;\">$str </span><span style=\"background-color:#f7faff;\">=</span><span style=\"color:#660000;background-color:#f7faff;\">$_SERVER</span><span style=\"background-color:#f7faff;\">[</span><span style=\"color:#008000;background-color:#f7faff;font-weight:bold;\">&quot;HTTP_REFERER&quot;</span><span style=\"background-color:#f7faff;\">];<br/></span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">if</span><span style=\"background-color:#f7faff;\">(!</span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">empty</span><span style=\"background-color:#f7faff;\">(</span><span style=\"color:#660000;background-color:#f7faff;\">$str</span><span style=\"background-color:#f7faff;\">)){<br/></span><span style=\"background-color:#f7faff;\"> &nbsp; &nbsp;</span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">if</span><span style=\"background-color:#f7faff;\">(</span><span style=\"background-color:#f7faff;font-style:italic;\">strpos</span><span style=\"background-color:#f7faff;\">(</span><span style=\"color:#660000;background-color:#f7faff;\">$str</span><span style=\"background-color:#f7faff;\">,</span><span style=\"color:#008000;background-color:#f7faff;font-weight:bold;\">&#39;toutiao&#39;</span><span style=\"background-color:#f7faff;\">) !== </span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">false</span><span style=\"background-color:#f7faff;\">){<br/></span><span style=\"background-color:#f7faff;\"> &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"background-color:#f7faff;font-style:italic;\">print_r</span><span style=\"background-color:#f7faff;\">(</span><span style=\"color:#660000;background-color:#f7faff;\">$str</span><span style=\"background-color:#f7faff;\">);</span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">exit</span><span style=\"background-color:#f7faff;\">;<br/></span><span style=\"background-color:#f7faff;\"> &nbsp; &nbsp;}<br/></span><span style=\"background-color:#f7faff;\"> &nbsp; &nbsp;</span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">exit</span><span style=\"background-color:#f7faff;\">;<br/></span><span style=\"background-color:#f7faff;\">}</span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">else</span><span style=\"background-color:#f7faff;\">{<br/></span><span style=\"background-color:#f7faff;\"> &nbsp; &nbsp;</span><span style=\"background-color:#f7faff;font-style:italic;\">header</span><span style=\"background-color:#f7faff;\">(</span><span style=\"color:#008000;background-color:#f7faff;font-weight:bold;\">&#39;location:index.php&#39;</span><span style=\"background-color:#f7faff;\">);<br/></span><span style=\"background-color:#f7faff;\">}<br/></span><span style=\"color:#000080;background-color:#f7faff;font-weight:bold;\">exit</span><span style=\"background-color:#f7faff;\">;<br/></span></pre><p><br/></p>', '1553220854', '1562059788', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('101', '55', 'JS判断手机端和PC端', '11', 'JS判断手机端和PC端', 'JS判断手机端和PC端', 'Lee', '0', '<pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\">\r\n(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;..();\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;.()&nbsp;==&nbsp;;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;(!(||&nbsp;||&nbsp;||&nbsp;||&nbsp;||&nbsp;||&nbsp;||&nbsp;))&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n}</pre><p><br/></p>', '1553234127', '0', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('102', '55', 'js根据网络IP获得用户访问地址', '11', 'js根据网络IP获得用户访问地址', 'js根据网络IP获得用户访问地址', 'Lee', '0', '<p>1&gt;</p><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\"><br/></pre><pre style=\"background-color: rgb(255, 255, 255); font-family: Consolas; font-size: 12.8pt;\">&nbsp;&nbsp;&nbsp;&nbsp;=localAddress.province;=localAddress.city;判断省\r\n&nbsp;&nbsp;&nbsp;&nbsp;if(province.indexOf(&#39;北京&#39;)&nbsp;&nbsp;&gt;&nbsp;-1){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;window.location.href=&quot;跳转链接&quot;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><br/></p>', '1553234205', '1563348583', '0', '1', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('103', '47', 'Apache下网站目录脚本的执行权限设置', '5', 'Apache下网站目录脚本的执行权限设置', 'Apache下网站目录脚本的执行权限设置', 'Lee', '0', '<p>设置.htaccess文件（虚拟主机/空间配置），在配置前需要确认你的空间是否支持.htaccess和rewrite，该方法基于.htaccess文件中使用rewrite来达到禁止指定脚本的运行效果。</p><p><br/></p><p>&lt;IfModule mod_rewrite.c&gt;</p><p>RewriteEngine on RewriteCond % !^$&nbsp;</p><p>RewriteRule uploads/(.*).(php)$ – [F]&nbsp;</p><p>RewriteRule data/(.*).(php)$ – [F]&nbsp;</p><p>RewriteRule templets/(.*).(php)$ – [F]&nbsp;</p><p>&lt;/IfModule&gt;</p><p><br/></p>', '1554366287', '0', '0', '0', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('104', '49', 'cURL error 60 错误解决办法', '3,4,7,12', 'php网站报错：cURL error 60: SSL certificate problem: unable to get local issuer certificate (see http://curl.haxx.se/libcurl/c/libcurl-errors.html)\r\n', 'php网站报错：cURL error 60: SSL certificate problem: unable to get local issuer certificate (see http://curl.haxx.se/libcurl/c/libcurl-errors.html)\r\n', 'Lee', '0', '<p>PHP网站（大商创网站订单页面，支付成功返回商城页面）报错：cURL error 60: SSL certificate problem: unable to get local issuer certificate (see <a href=\"http://curl.haxx.se/libcurl/c/libcurl-errors.html)\" _src=\"http://curl.haxx.se/libcurl/c/libcurl-errors.html)\">http://curl.haxx.se/libcurl/c/libcurl-errors.html)</a> </p><p><br/></p><p>原因：SSL证书问题，<span style=\"font-family:&#39;-apple-system&#39;, &#39;SF UI Text&#39;, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, SimHei, SimSun;background-color:rgb(255,255,255);\">无法获取本地颁发者证书</span></p><p><span style=\"font-family:&#39;-apple-system&#39;, &#39;SF UI Text&#39;, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, SimHei, SimSun;background-color:rgb(255,255,255);\"><br/></span></p><p><br/></p><p>关于“SSL证书问题：无法获取本地颁发者证书”错误。显然，这适用于发送CURL请求的系统（并且没有接收请求的服务器）</p><p><br/></p><p>1）从 https://curl.haxx.se/ca/cacert.pem 下载最新的cacert.pem</p><p><br/></p><p>2）将以下行添加到php.ini（如果这是共享托管和您没有访问php.ini然后你可以添加到.user.ini在public_html）</p><p><br/></p><p>curl.cainfo=/path/to/downloaded/cacert.pem</p><p><br/></p><p>3）默认情况下，FastCGI进程将每隔300秒解析新文件（如果需要，您可以通过添加几个文件来更改频率，如这里建议的https://ss88.uk/blog/fast-cgi-and-user-ini -files-the-new-htaccess /）</p><p><span style=\"font-family:&#39;-apple-system&#39;, &#39;SF UI Text&#39;, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, SimHei, SimSun;background-color:rgb(255,255,255);\"><br/></span><br/></p><p><span style=\"font-family:&#39;-apple-system&#39;, &#39;SF UI Text&#39;, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, SimHei, SimSun;background-color:rgb(255,255,255);\"><br/></span></p><p><span style=\"font-family:&#39;-apple-system&#39;, &#39;SF UI Text&#39;, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, SimHei, SimSun;background-color:rgb(255,255,255);\"><br/></span></p><p><br/></p>', '1556616929', '0', '1', '1', '', '', '', '', '0', '0', '50', '', '0', '0', '0', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('105', '54', '返回就你发', '', '改父级你发给', '咋地改你截个', 'Lee', '0', '<h2 style=\"box-sizing: border-box; margin: 30px 0px 20px; padding: 0px 0px 0px 10px; font-family: &quot;Microsoft Yahei&quot;, Arial, sans-serif; line-height: 1.1; color: rgb(11, 139, 90); font-size: 18px; border-left: 3px solid rgb(11, 139, 90); white-space: normal; background-color: rgb(255, 255, 255); outline: none !important;\">泥浆清洁器技术参数：</h2><table class=\"parameter\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\" class=\"firstRow\"><th colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">型号</th><th style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">GNZJ703F-<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>D1S8NF</th><th style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">GNZJ703F-<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>S2S12NF</th><th style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">GNZJ594F-<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>S2S12NF</th><th style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">GNZJ703F-<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>S3S16NF</th><th style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; background-color: rgb(85, 85, 85); color: rgb(255, 255, 255); outline: none !important;\">GNZJ594F-<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>S3S16NF</th></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">处理量(立方米/小时)</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">120</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">240</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">360</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">除砂旋流器尺寸(英寸)</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">10</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">除砂旋流器数量(个)</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">1</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">3</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">除泥旋流器尺寸(英寸)</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">4</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">除泥旋流器数量(个)</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">8</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">12</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">16</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">工作压力 ( 兆帕 )</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">0.25 ~ 0.4</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">进浆口尺寸</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">DN150</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">出浆口尺寸</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">DN200</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td rowspan=\"10\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">底<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>流<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"/>筛</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">底流筛型号</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">GNZS703F</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">GNZS594F</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">GNZS703F</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">GNZS594F</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">振动轨迹</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">直线</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">振动电机(千瓦)</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2×1.72</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\"><a href=\"http://www.gngukong.com/metal-frame-shaker-screen/item/34/137.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; background: 0px 0px; color: rgb(153, 153, 153); text-decoration-line: none; outline: none !important;\">筛网</a>数量(片)</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">3</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">4</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">3</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">4</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">筛网尺寸(毫米)</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">700×1250</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">585×1165</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">700×1250</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">585×1165</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">筛分面积(平方米)</td><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2.63</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2.73</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2.63</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2.73</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">激振强度</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">≤7.5G(可调节)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">双振幅(毫米)</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">4.14 ~ 5.96</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">筛箱调节角度</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">-1 ~ +5°</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">防爆标准</td><td colspan=\"5\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">ExdIIBT4/IECEX/ATEX</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important;\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">重量(千克)</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">1930</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2235</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2285</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2328</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2378</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none !important; background-color: rgb(246, 244, 240);\"><td colspan=\"2\" style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">长×宽×高( 毫米)</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2462×2042×1848</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2462×2042×2147</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2707×2042×2147</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2462×2042×2147</td><td style=\"box-sizing: border-box; margin: 0px; padding-right: 5px; padding-left: 5px; text-align: center; border-color: rgb(238, 238, 238); white-space: nowrap; outline: none !important;\">2707×2042×2147</td></tr></tbody></table><h2 style=\"box-sizing: border-box; margin: 30px 0px 20px; padding: 0px 0px 0px 10px; font-family: &quot;Microsoft Yahei&quot;, Arial, sans-serif; line-height: 1.1; color: rgb(11, 139, 90); font-size: 18px; border-left: 3px solid rgb(11, 139, 90); white-space: normal; background-color: rgb(255, 255, 255); outline: none !important;\">GN冠能泥浆清洁器特点和优势：</h2><ul class=\"featured-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>匹配GN技术先进的<a href=\"http://www.gngukong.com/Drilling/26.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; background: 0px 0px; color: rgb(153, 153, 153); text-decoration-line: none; outline: none !important;\">钻井液振动筛</a></p></li><li><p>除砂和除泥旋流器采用100%聚氨酯材料</p></li><li><p>结构紧凑，节省占地</p></li><li><p>振动电机：意大利Oli，IEC EX 和ATEX防爆标准可供选择</p></li><li><p>楔形块设计方便筛网更换</p></li><li><p>工作中可实现筛箱角度机械调整，性能可靠</p></li><li><p>定制化的旋流器数量可供选择</p></li></ul><p><br/></p>', '1560333463', '0', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '2', '1', '', '', '0', '1');
INSERT INTO `lee_article` VALUES ('109', '47', 'kkkkk', '', '', '', 'Lee', '0', '<pre class=\"brush:html;toolbar:false\">&lt;!DOCTYPE&nbsp;html&gt;\r\n&lt;html&nbsp;lang=&quot;en&quot;&gt;\r\n&lt;head&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;charset=&quot;UTF-8&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;http-equiv=&quot;X-UA-Compatible&quot;&nbsp;content=&quot;IE=edge&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;name=&quot;viewport&quot;&nbsp;content=&quot;width=device-width,&nbsp;initial-scale=1&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;title&gt;{$Think.lang.contentadd}&lt;/title&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;/public/static/admin/vendor/layui/css/layui.css&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;/public/static/admin/custom/css/style.css&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;type=&quot;text/css&quot;&nbsp;href=&quot;/public/static/admin/highlight/styles/tomorrow-night-eighties.css&quot;&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;style&nbsp;type=&quot;text/css&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.layui-form-select&nbsp;dl{z-index:&nbsp;2;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#thumb_list{padding-top:&nbsp;8px;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#thumb_list&nbsp;img{border:&nbsp;1px&nbsp;solid&nbsp;#DDD;padding:&nbsp;3px;border-radius:&nbsp;5px;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#thumb_list&nbsp;span{position:&nbsp;relative;display:&nbsp;inline-block;margin-right:&nbsp;5px;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#thumb_list&nbsp;span&nbsp;.delimg{position:&nbsp;absolute;right:3px;top:3px;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#mycode{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;font-size:&nbsp;18px;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;width:500px;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;white-space:&nbsp;pre;&nbsp;/*不强制换行*/\r\n&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/style&gt;\r\n&lt;/head&gt;\r\n&lt;body&nbsp;style=&quot;padding:10px&nbsp;10px;margin-bottom:&nbsp;50px;&quot;&gt;\r\n&lt;div&nbsp;class=&quot;layui-container&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;form&nbsp;class=&quot;layui-form&quot;&nbsp;action=&quot;?&quot;&nbsp;method=&quot;post&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.depID}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;select&nbsp;name=&quot;cid&quot;&nbsp;required&nbsp;lay-verify=&quot;required&quot;&nbsp;lay-filter=&quot;lanmu&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;{if&nbsp;$cate_id.id}{$cate_id.id}{/if}&quot;&gt;{if&nbsp;$cate_id.name}{$cate_id.name}{else/}{$Think.lang.selectdepID}{/if}&lt;/option&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{volist&nbsp;name=&quot;cate&quot;&nbsp;id=&quot;vo&quot;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&nbsp;value=&quot;{$vo.id}&quot;&nbsp;{eq&nbsp;name=&#39;vo.is_addarticle&#39;&nbsp;value=&#39;0&#39;}disabled=&quot;disabled&quot;{/eq}&nbsp;data=&quot;{$vo.typeid}&quot;&gt;{$vo.name}&lt;/option&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{/volist}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/select&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.title}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;placeholder=&quot;{$Think.lang.titletip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;div&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;label&gt;{$Think.lang.keyword}&lt;/label&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;div&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;keyword&quot;&nbsp;placeholder=&quot;{$Think.lang.keywordtip}&quot;&nbsp;autocomplete=&quot;off&quot;&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;/div&gt;--&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&lt;/div&gt;--&gt;\r\n&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.keyword}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{volist&nbsp;name=&quot;tags&quot;&nbsp;id=&quot;vo&quot;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;style=&quot;float:&nbsp;left&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;checkbox&quot;&nbsp;name=&quot;keyword[]&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&nbsp;value=&quot;{$vo.id}&quot;&gt;&lt;span&nbsp;style=&quot;margin-right:&nbsp;8px;margin-left:&nbsp;-6px;&quot;&gt;{$vo.tname}&lt;/span&gt;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{/volist}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.desc}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;textarea&nbsp;name=&quot;desc&quot;&nbsp;placeholder=&quot;{$Think.lang.desctip}&quot;&nbsp;class=&quot;layui-textarea&quot;&nbsp;maxlength=&quot;200&quot;&gt;&lt;/textarea&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.remark}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;textarea&nbsp;name=&quot;remark&quot;&nbsp;placeholder=&quot;{$Think.lang.remarktip}&quot;&nbsp;class=&quot;layui-textarea&quot;&nbsp;maxlength=&quot;200&quot;&gt;&lt;/textarea&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&nbsp;id=&quot;model&quot;&nbsp;style=&quot;display:&nbsp;none;&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.model}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;model&quot;&nbsp;placeholder=&quot;{$Think.lang.modeltip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;id=&quot;team&quot;&nbsp;style=&quot;display:&nbsp;none;&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.job}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;zhiwu&quot;&nbsp;placeholder=&quot;{$Think.lang.jobtip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.positional}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;zhicheng&quot;&nbsp;placeholder=&quot;{$Think.lang.positionaltip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.author}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;author&quot;&nbsp;value=&quot;{$config.author}&quot;&nbsp;placeholder=&quot;{$Think.lang.authortip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.source}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;source&quot;&nbsp;placeholder=&quot;{$Think.lang.sourcetip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.sourceurl}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;sourceurl&quot;&nbsp;placeholder=&quot;{$Think.lang.sourceurltip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.views}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;views&quot;&nbsp;value=&quot;0&quot;&nbsp;required&nbsp;&nbsp;lay-verify=&quot;required&quot;&nbsp;placeholder=&quot;{$Think.lang.viewstip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.addtime}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;addtime&quot;&nbsp;value=&quot;&lt;?php&nbsp;echo&nbsp;date(&#39;Y/m/d&nbsp;H:i:s&#39;,time())?&gt;&quot;&nbsp;required&nbsp;&nbsp;lay-verify=&quot;required&quot;&nbsp;placeholder=&quot;{$Think.lang.addtimetip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.top}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;checkbox&quot;&nbsp;name=&quot;istop&quot;&nbsp;lay-skin=&quot;switch&quot;&nbsp;lay-text=&quot;{$Think.lang.toptip}&quot;&nbsp;value=&quot;1&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.tuijian}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-inline&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;checkbox&quot;&nbsp;name=&quot;istuijian&quot;&nbsp;lay-skin=&quot;switch&quot;&nbsp;lay-text=&quot;{$Think.lang.tuijiantip}&quot;&nbsp;value=&quot;1&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.thum}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;hidden&quot;&nbsp;name=&quot;pic&quot;&nbsp;&nbsp;placeholder=&quot;{$Think.lang.thumtip}&quot;&nbsp;autocomplete=&quot;off&quot;&nbsp;class=&quot;layui-input&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;layui-btn&quot;&nbsp;id=&quot;uploadimg&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;i&nbsp;class=&quot;layui-icon&quot;&gt;&amp;#xe67c;&lt;/i&gt;{$Think.lang.thumtip}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/button&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;id=&quot;thumb_list&quot;&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;class=&quot;layui-form-label&quot;&gt;{$Think.lang.contenttitle}&lt;/label&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;id=&quot;content&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&nbsp;style=&quot;height:300px;&quot;&gt;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;hidden&quot;&nbsp;name=&quot;__token__&quot;&nbsp;value=&quot;{$Request.token}&quot;&nbsp;/&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-form-item&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;layui-input-block&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button&nbsp;class=&quot;layui-btn&quot;&nbsp;lay-submit&nbsp;lay-filter=&quot;formDemo&quot;&gt;{$Think.lang.addbtn}&lt;/button&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;script&nbsp;src=&quot;/public/static/admin/vendor/js/jquery.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;/public/static/admin/vendor/layui/layui.js&quot;&gt;&lt;/script&gt;\r\n&lt;!--&nbsp;配置文件&nbsp;--&gt;\r\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;/public/static/admin/ueditor/ueditor.config.js&quot;&gt;&lt;/script&gt;\r\n&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;\r\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;/public/static/admin/ueditor/ueditor.all.js&quot;&gt;&lt;/script&gt;\r\n&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;\r\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;/public/static/admin/highlight/highlight.pack.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&gt;hljs.initHighlightingOnLoad();&lt;/script&gt;\r\n&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;allpre&nbsp;=&nbsp;document.getElementsByTagName(&quot;pre&quot;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;for(i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;allpre.length;&nbsp;i++)\r\n&nbsp;&nbsp;&nbsp;&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;onepre&nbsp;=&nbsp;document.getElementsByTagName(&quot;pre&quot;)[i];\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;mycode&nbsp;=&nbsp;document.getElementsByTagName(&quot;pre&quot;)[i].innerHTML;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;onepre.innerHTML&nbsp;=&nbsp;&#39;&lt;code&nbsp;id=&quot;mycode&quot;&gt;&#39;+mycode+&#39;&lt;/code&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;/public/static/admin/custom/js/admin.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;content&#39;,{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//initialFrameWidth:&#39;100%&#39;,\r\n&nbsp;initialFrameHeight:400\r\n&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;layui.use([&#39;form&#39;,&#39;upload&#39;],&nbsp;function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;form&nbsp;=&nbsp;layui.form;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;upload&nbsp;=&nbsp;layui.upload;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//监听提交\r\n&nbsp;form.on(&#39;submit(formDemo)&#39;,&nbsp;function(data){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//监听栏目\r\n&nbsp;form.on(&#39;select(lanmu)&#39;,&nbsp;function(data){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data.elem);&nbsp;//得到select原始DOM对象\r\n&nbsp;console.log(data.value);&nbsp;//得到被选中的值\r\n&nbsp;var&nbsp;lmtype=$(data.elem).find(&#39;option:selected&#39;).attr(&#39;data&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch&nbsp;(lmtype){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;&quot;6&quot;:\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#team&#39;).fadeIn();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#model&#39;).hide();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;&quot;3&quot;:\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#model&#39;).fadeIn();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#team&#39;).hide();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default&nbsp;:\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#model&#39;).hide();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#team&#39;).hide();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//重写验证规则\r\n&nbsp;form.verify({\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;required:function&nbsp;(value)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(value==&quot;&quot;&nbsp;||&nbsp;value.trim().length()==0){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;&quot;{:lang(&#39;Required&nbsp;cannot&nbsp;be&nbsp;empty&#39;)}&quot;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//创建一个上传组件\r\n&nbsp;upload.render({\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elem:&nbsp;&#39;#uploadimg&#39;\r\n&nbsp;,url:&nbsp;&#39;{:url(&quot;common/uploadimg&quot;)}&#39;\r\n&nbsp;,accept:&nbsp;&#39;images&#39;&nbsp;//允许上传的文件类型\r\n&nbsp;,field:&quot;imgfile&quot;\r\n&nbsp;,size:&nbsp;2048&nbsp;//最大允许上传的文件大小\r\n&nbsp;,done:&nbsp;function(res,&nbsp;index,&nbsp;upload){&nbsp;//上传后的回调\r\n&nbsp;layer.close(layer.index,{isOutAnim:true});\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;setTimeout(function&nbsp;()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(res.msg);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(res.code==1){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;pic=$(&#39;input[name=pic]&#39;).val();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(pic==&quot;&quot;){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;input[name=pic]&#39;).val(res.img);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;input[name=pic]&#39;).val(pic+&quot;,&quot;+res.img);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;str;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=&quot;&lt;span&gt;&quot;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str+&#39;&lt;img&nbsp;src=&quot;/public/&#39;+res.img+&#39;&quot;&nbsp;alt=&quot;&quot;&nbsp;height=&quot;80&quot;&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str+&#39;&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;layui-btn&nbsp;layui-btn-danger&nbsp;layui-btn-mini&nbsp;delimg&quot;&nbsp;onclick=&quot;delimg(this);&quot;&nbsp;data=&quot;&#39;+res.img+&#39;&quot;&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str+&#39;&lt;i&gt;&amp;#xe640;&lt;/i&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str+&#39;&lt;/button&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str+&#39;&lt;/span&gt;&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;#thumb_list&#39;).append(str);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},500);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;,before:function&nbsp;()&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;index&nbsp;=&nbsp;layer.load();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//,……\r\n&nbsp;})\r\n&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;$(function(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(window.parent.document).find(&#39;#righttitle&#39;).text($(&#39;title&#39;).text());\r\n&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;//删除栏目图片\r\n&nbsp;function&nbsp;delimg(obj)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;picurl=$(obj).attr(&#39;data&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.ajax({\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type:&quot;post&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url:&quot;{:url(&#39;common/delimg&#39;)}&quot;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;data:{&#39;url&#39;:picurl},\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:function&nbsp;(res)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;picvalue=$(&#39;input[name=pic]&#39;).val();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;str=&quot;&quot;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(res.code==1&nbsp;||&nbsp;res.code==2){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//栏目图片文本框中图片地址处理\r\n&nbsp;if(picvalue==picurl){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;input[name=pic]&#39;).val(&#39;&#39;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=picvalue.replace(picurl+&quot;,&quot;,&quot;&quot;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;str=str.replace(&quot;,&quot;+picurl,&quot;&quot;);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&#39;input[name=pic]&#39;).val(str);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//删除/移除缩略图\r\n&nbsp;$(obj).parent().remove();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(res.msg);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(res.code==0){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(res.msg);\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&lt;/script&gt;\r\n&lt;/body&gt;\r\n&lt;/html</pre>', '1563265206', '1563347996', '0', '1', '', '', '', '', '1', '0', '50', '', '0', '0', '0', '', '', '0', '1');

-- ----------------------------
-- Table structure for lee_articlelike
-- ----------------------------
DROP TABLE IF EXISTS `lee_articlelike`;
CREATE TABLE `lee_articlelike` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `ip` varchar(255) NOT NULL,
  `like_time` varchar(255) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_articlelike
-- ----------------------------
INSERT INTO `lee_articlelike` VALUES ('1', '97', '127.0.0.1', '1562290047', null, null);
INSERT INTO `lee_articlelike` VALUES ('2', '96', '127.0.0.1', '1562290973', null, null);
INSERT INTO `lee_articlelike` VALUES ('3', '98', '127.0.0.1', '1562292268', null, null);
INSERT INTO `lee_articlelike` VALUES ('4', '99', '127.0.0.1', '1562550035', null, null);
INSERT INTO `lee_articlelike` VALUES ('5', '112', '127.0.0.1', '1563529976', null, null);
INSERT INTO `lee_articlelike` VALUES ('6', '102', '127.0.0.1', '1563530081', null, null);
INSERT INTO `lee_articlelike` VALUES ('7', '103', '127.0.0.1', '1563530094', null, null);

-- ----------------------------
-- Table structure for lee_banner
-- ----------------------------
DROP TABLE IF EXISTS `lee_banner`;
CREATE TABLE `lee_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '图片标题',
  `pic` varchar(150) DEFAULT NULL COMMENT '图片地址',
  `url` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '是否显示0：不显示，1：显示',
  `sort` int(11) DEFAULT '100' COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of lee_banner
-- ----------------------------
INSERT INTO `lee_banner` VALUES ('11', 'banner1', 'uploads\\20181207\\698655c5f82ed2b5738f89635cd13b59.jpg', '#', '1', '100', '');
INSERT INTO `lee_banner` VALUES ('12', 'banner2', 'uploads\\20181207\\3175d24c0c16615b175e48a2a4508333.jpg', '#', '1', '100', '');

-- ----------------------------
-- Table structure for lee_category
-- ----------------------------
DROP TABLE IF EXISTS `lee_category`;
CREATE TABLE `lee_category` (
  `stype` int(11) unsigned DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目标识',
  `name` varchar(32) DEFAULT NULL COMMENT '栏目名称',
  `pid` int(11) DEFAULT NULL COMMENT '上级栏目标识',
  `type` tinyint(2) DEFAULT '1' COMMENT '1：列表 2：图片 3：单页',
  `sort` int(11) DEFAULT '100' COMMENT '排序',
  `pic` tinytext COMMENT '栏目图片',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述信息',
  `remark` varchar(200) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `mark` varchar(30) DEFAULT NULL COMMENT '栏目标识',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '0：隐藏 1：显示',
  `url` varchar(50) DEFAULT NULL COMMENT '控制器',
  `art_template` varchar(255) DEFAULT NULL,
  `cate_template` varchar(255) DEFAULT NULL,
  `cover_template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of lee_category
-- ----------------------------
INSERT INTO `lee_category` VALUES (null, '46', 'PHP开发', '0', '1', '100', '', '', '', '  一起学习 PHP开发', '', '', '1', null, '', '', '');
INSERT INTO `lee_category` VALUES (null, '47', 'Apache', '46', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '48', 'Mysql', '46', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '49', 'Windows服务器', '46', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '50', '开发工具', '46', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '51', '技术笔记', '0', '1', '100', '', '', '小李的技术笔记', '     一起学习 PHP开发', '', '', '1', null, '', '', '');
INSERT INTO `lee_category` VALUES (null, '52', '兴趣爱好', '0', '1', '100', '', '', '小李的 兴趣爱好', '   ', '', '', '1', null, '', '', '');
INSERT INTO `lee_category` VALUES (null, '53', 'JORDAN', '52', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '54', '篮球', '52', '1', '100', '', '', '', '', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '55', '前端积累', '51', '1', '100', '', '', '', '  ', null, '', '1', null, null, null, null);
INSERT INTO `lee_category` VALUES (null, '56', '服务器配置', '0', '1', '99', '', '', '', '   小李的服务器配置', '', '', '1', null, '', '', '');

-- ----------------------------
-- Table structure for lee_click
-- ----------------------------
DROP TABLE IF EXISTS `lee_click`;
CREATE TABLE `lee_click` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `view_time` varchar(255) DEFAULT NULL,
  `num` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_click
-- ----------------------------
INSERT INTO `lee_click` VALUES ('20', '64', '127.0.0.1', '1561702763', '3');
INSERT INTO `lee_click` VALUES ('21', '99', '127.0.0.1', '1563242377', '60');
INSERT INTO `lee_click` VALUES ('22', '98', '127.0.0.1', '1563524097', '15');
INSERT INTO `lee_click` VALUES ('23', '103', '127.0.0.1', '1563530092', '32');
INSERT INTO `lee_click` VALUES ('24', '104', '127.0.0.1', '1563529970', '16');
INSERT INTO `lee_click` VALUES ('25', '102', '127.0.0.1', '1563530082', '64');
INSERT INTO `lee_click` VALUES ('26', '95', '127.0.0.1', '1562320612', '125');
INSERT INTO `lee_click` VALUES ('27', '101', '127.0.0.1', '1563354869', '6');
INSERT INTO `lee_click` VALUES ('28', '100', '127.0.0.1', '1563415807', '12');
INSERT INTO `lee_click` VALUES ('29', '97', '127.0.0.1', '1563504163', '56');
INSERT INTO `lee_click` VALUES ('30', '105', '127.0.0.1', '1563354863', '51');
INSERT INTO `lee_click` VALUES ('31', '94', '127.0.0.1', '1563177811', '19');
INSERT INTO `lee_click` VALUES ('32', '96', '127.0.0.1', '1563415954', '4');
INSERT INTO `lee_click` VALUES ('33', '108', '127.0.0.1', '1563523806', '23');
INSERT INTO `lee_click` VALUES ('34', '109', '127.0.0.1', '1563415947', '17');
INSERT INTO `lee_click` VALUES ('35', '111', '127.0.0.1', '1563524092', '3');
INSERT INTO `lee_click` VALUES ('36', '112', '127.0.0.1', '1563788521', '97');
INSERT INTO `lee_click` VALUES ('37', '112', '127.1.1.1', null, '12');

-- ----------------------------
-- Table structure for lee_comment
-- ----------------------------
DROP TABLE IF EXISTS `lee_comment`;
CREATE TABLE `lee_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `com_id` int(10) unsigned NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `pinture` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_comment
-- ----------------------------

-- ----------------------------
-- Table structure for lee_comments
-- ----------------------------
DROP TABLE IF EXISTS `lee_comments`;
CREATE TABLE `lee_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned DEFAULT NULL COMMENT '主题id',
  `topic_type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1为课程，2为集会，3为商品',
  `content` text COMMENT '评论内容',
  `from_uid` int(10) unsigned DEFAULT NULL COMMENT '评论者id，一般为会员表的id',
  `nickname` varchar(60) DEFAULT NULL COMMENT '冗余用户昵称',
  `thumb_img` varchar(255) DEFAULT NULL COMMENT '冗余用户头像',
  `is_top` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶评论，1为置顶，0为不置顶',
  `is_hot` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否为热评，1为热评',
  `like_num` int(5) unsigned DEFAULT '0' COMMENT '评论被点赞的次数',
  `reply_num` int(5) unsigned DEFAULT '0' COMMENT '评论被回复的次数',
  `is_reply` tinyint(2) unsigned DEFAULT '0' COMMENT '是否回复',
  `status` tinyint(2) unsigned NOT NULL COMMENT '评论状态，-1为删除，0为待审核，1为已发布',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`) USING BTREE,
  KEY `topic_type` (`topic_type`) USING BTREE,
  KEY `from_id` (`from_uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_comments
-- ----------------------------
INSERT INTO `lee_comments` VALUES ('6', '2', '1', '<p>测试回复Comments</p>', '1', null, null, '0', '0', '5', '1', '0', '0', '1556437595');
INSERT INTO `lee_comments` VALUES ('7', '2', '1', '<p>测试回复</p>', '1', null, null, '0', '0', '6', '1', '0', '1', '1556437696');
INSERT INTO `lee_comments` VALUES ('8', '2', '1', '<p>广告费</p>', '1', null, null, '0', '0', '11', '3', '0', '1', '1556437791');
INSERT INTO `lee_comments` VALUES ('9', '2', '1', '<p>发给对方</p>', '1', 'admin', '空', '0', '0', '20', '0', '0', '1', '1556437914');
INSERT INTO `lee_comments` VALUES ('10', '2', '1', '<p>jk.h.</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556437956');
INSERT INTO `lee_comments` VALUES ('11', '1', '1', '<p>测试回复comments</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556438081');
INSERT INTO `lee_comments` VALUES ('12', '1', '1', '<p>测试回复comments</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556438105');
INSERT INTO `lee_comments` VALUES ('13', '3', '1', '<p>可以</p>', '1', 'admin', '空', '0', '0', '1', '1', '0', '1', '1556438731');
INSERT INTO `lee_comments` VALUES ('14', '3', '1', '<p>能</p>', '1', 'admin', '空', '0', '0', '2', '1', '0', '1', '1556438767');
INSERT INTO `lee_comments` VALUES ('15', '3', '1', '<p>能</p>', '1', 'admin', '空', '0', '0', '1', '2', '0', '1', '1556438781');
INSERT INTO `lee_comments` VALUES ('16', '3', '1', '<p>可以</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556438862');
INSERT INTO `lee_comments` VALUES ('17', '3', '1', '<p>可以</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556438892');
INSERT INTO `lee_comments` VALUES ('18', '3', '1', '<p>可以拉</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556438942');
INSERT INTO `lee_comments` VALUES ('19', '4', '1', '<p>回答内容测试</p>', '1', 'admin', '空', '0', '0', '1', '9', '0', '1', '1556446067');
INSERT INTO `lee_comments` VALUES ('20', '2', '1', '<p>测试回复&nbsp;</p><table class=\"layui-table\" width=\"1139\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\">测试问题2</td></tr></tbody></table><p><br/></p>', '1', 'admin', '空', '0', '0', '2', '0', '0', '1', '1556446672');
INSERT INTO `lee_comments` VALUES ('21', '5', '1', '<h1 class=\"mod-title post-title\">《复联 4》在 Pornhub 的搜索量创下新高，最受欢迎的角色是……</h1><p><a target=\"_blank\" class=\"uclink\" href=\"https://www.tepintehui.com/u/1593\">爱范儿</a>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>04月26日 15:36</em>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><br/></p><p class=\"post-cover delay-mod\"><br/></p><p><img class=\"alignnone size-full wp-image-1204498\" src=\"/ueditor/php/upload/image/20190429/1556501857346620.jpg\" alt=\"\" width=\"1300\" height=\"650\"/><span class=\"fznmlbd\">ITVjYzY1MjgyOWY4MmM=</span></p><p>截至发稿前<span class=\"fznmlbd\">MDAwMDAwMDAwMHqNjtCP3LyVgaCZqrOKkGi8tbGi</span>，《复联 4》在中国的票房已经将近 13 亿<span class=\"fznmlbd\">KjVjYzY1MjgyOWY5YzE=</span>，随着周末到来<span class=\"fznmlbd\">XjVjYzY1MjgyOWY5Y2Y=</span>，这部漫威电影的票房可能又会迎来一轮暴涨<span class=\"fznmlbd\">JTVjYzY1MjgyOWZjOTU=</span>。<span class=\"fznmlbd\">6e9b5a88a48969601b40071d4681081e3e48bf02</span></p><p><img class=\"size-full wp-image-1204496 aligncenter\" src=\"/ueditor/php/upload/image/20190429/1556501857724440.jpg\" alt=\"\" width=\"690\" height=\"388\"/><span class=\"fznmlbd\">ITVjYzY1MjgyOWY4NGE=</span></p><p style=\"text-align: center;\">▲4 月 25 日晚上 8 点《复联 4》国内票房已经突破 10 亿<span class=\"fznmlbd\">a19cd610b49c6d6b87750323e6667460</span></p><p>目前《复联 4》已经在全球 25 个国家和地区上映<span class=\"fznmlbd\">MDAwMDAwMDAwMHmNjtCP3LyVgaCZqrOKkGi9pami</span>，并在多个市场创下影史首日记录<span class=\"fznmlbd\">8fe2e673c78a9dc5cb6a0ac5e955c15d17381f4b</span>。在《复联 4》引爆全球后<span class=\"fznmlbd\">QDVjYzY1MjgyOWY5ZWI=</span>，这部电影在全球最大的其中一家色情网站 Pornhub 上的搜索量也创下新高<span class=\"fznmlbd\">cd1a501f3ecf4fd1c13c3f1d1509d55e2c6178fc</span>。<span class=\"fznmlbd\">MDAwMDAwMDAwMHp9jtCP3LyVgaCZqrOKkGextcui</span></p><p>在互联网时代<span class=\"fznmlbd\">MDAwMDAwMDAwMHmzjtCP3LyVgaCZqrOKkGi9uLGi</span>，每一个热点的更迭都会通过网络平台流量的涨跌来体现<span class=\"fznmlbd\">MDAwMDAwMDAwMHqNjtCP3LyVgaCZqrOKkGi9zq2i</span>，而作为一个年访问量达到 335 亿次的色情网站<span class=\"fznmlbd\">0f1c522b55a1a528d7917d32aa5a508fef6dc5bd</span>，Pornhub 也成了一个互联网热点的风向标<span class=\"fznmlbd\">dcc695a11bea8659ffd4b6e20d063ef1</span>。<span class=\"fznmlbd\">JjVjYzY1MjgyOWY4NmY=</span></p><p>去年《复联 3》首映两天内<span class=\"fznmlbd\">MDAwMDAwMDAwMHqNjtCP3LyVgaCZqrOKkZuwta2i</span>，片中角色在 Pornhub 上的搜索量就激增 356%<span class=\"fznmlbd\">MDAwMDAwMDAwMH6QhtCEzLjdg3p7Zr6ghZ682KGi</span>。但这跟《复联 4》比起来根本不算什么<span class=\"fznmlbd\">MDAwMDAwMDAwMHqNjtCP3LyVgaCZqrOKkZuwy6mi</span>，这几天Pornhub 用户的搜索「复联」的次数比起 4 月 16 日一度暴涨 2921%<span class=\"fznmlbd\">MDAwMDAwMDAwMHmzjtCP3LyVgaCZqrOKkZuwzrGi</span>，仅「复仇者联盟」这一关键词最近 7 天比平常的搜索次数多出 200 万次<span class=\"fznmlbd\">b92a07b7e2226c658938f4a2c02abdba0016fa3b</span>。<span class=\"fznmlbd\">MDAwMDAwMDAwMH6QhtCEzLjdg3p7Zr6dnmewoqGi</span></p><p><img class=\"size-full wp-image-1204495 aligncenter\" src=\"/ueditor/php/upload/image/20190429/1556501858943428.png\" alt=\"\" width=\"620\" height=\"755\"/><span class=\"fznmlbd\">QDVjYzY1MjgyOWY4OTg=</span></p><p>跟去年一样<span class=\"fznmlbd\">JTVjYzY1MjgyOWZhNDU=</span>， Pornhub 这次也统计了网站上最受欢迎的十个《复联 4》角色<span class=\"fznmlbd\">XjVjYzY1MjgyOWZhNTM=</span>，但结果跟去年的《复联 3》不太一样<span class=\"fznmlbd\">3ab2d1ebcfb1e78b5d8178369c1a924514cb205a</span>。<span class=\"fznmlbd\">MDAwMDAwMDAwMHqjjtCP3LyVgaCZqrOKkGeyuKmi</span></p><p><img class=\"size-full wp-image-1204494 aligncenter\" src=\"/ueditor/php/upload/image/20190429/1556501858452264.png\" alt=\"\" width=\"620\" height=\"732\"/></p><p>【转载声明】作者：爱范儿，链接：https://www.tepintehui.com/detail/123426?ce，来源：特品特惠，著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br/></p>', '1', 'admin', '空', '0', '0', '2', '0', '0', '1', '1556501861');
INSERT INTO `lee_comments` VALUES ('22', '5', '1', '<p>测试回复数量</p>', '1', 'admin', '空', '0', '0', '1', '1', '0', '1', '1556507525');
INSERT INTO `lee_comments` VALUES ('23', '6', '1', '<p>的点点滴滴</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1556508413');
INSERT INTO `lee_comments` VALUES ('24', '8', '1', '<p>测试回答1</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556508437');
INSERT INTO `lee_comments` VALUES ('25', '8', '1', '<p>测试回答2</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1556508445');
INSERT INTO `lee_comments` VALUES ('26', '8', '1', '<p>测试回答3</p>', '1', 'admin', '空', '0', '0', '1', '0', '0', '1', '1556508449');
INSERT INTO `lee_comments` VALUES ('27', '8', '1', '<p>测试回答4</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1556508453');
INSERT INTO `lee_comments` VALUES ('28', '8', '1', '<p>测试回答5</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1556508458');
INSERT INTO `lee_comments` VALUES ('29', '8', '1', '<p>测试回答6</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1556508462');
INSERT INTO `lee_comments` VALUES ('30', '7', '1', '<p>点赞拉&nbsp;</p>', '1', 'admin', '空', '0', '0', '1', '1', '0', '1', '1556532453');
INSERT INTO `lee_comments` VALUES ('31', '9', '1', '<p>一级回复 <span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', 'admin', '空', '0', '0', '0', '1', '0', '1', '1556610744');
INSERT INTO `lee_comments` VALUES ('32', '9', '1', '<p>一级回复2&nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', 'admin', '空', '0', '0', '0', '2', '0', '1', '1556610756');
INSERT INTO `lee_comments` VALUES ('33', '4', '1', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">1级&nbsp; 回答内容测试</span></p>', '1', 'admin', '空', '0', '0', '2', '2', '0', '1', '1556611854');
INSERT INTO `lee_comments` VALUES ('34', '9', '1', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.89);\">一级回复3&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', 'admin', '空', '0', '0', '0', '1', '0', '1', '1556612142');
INSERT INTO `lee_comments` VALUES ('35', '9', '1', '<table class=\"layui-table\" width=\"1139\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\">最新测试问题 楼层&nbsp;&nbsp;</td></tr></tbody></table><p><br/></p>', '1', 'admin', '空', '0', '0', '1', '1', '0', '1', '1556613214');
INSERT INTO `lee_comments` VALUES ('36', '9', '1', '<table class=\"layui-table\" width=\"1699\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s; background-color: rgb(242, 242, 242) !important;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\">一级&nbsp; 1&nbsp; 回复&nbsp; admin888添加</td></tr></tbody></table><p><br/></p>', '13', 'admin888', '空', '0', '0', '1', '1', '0', '1', '1556618490');
INSERT INTO `lee_comments` VALUES ('37', '9', '1', '<p>的发v是大V</p>', '15', '测试组长', '空', '0', '0', '0', '1', '0', '1', '1557048469');
INSERT INTO `lee_comments` VALUES ('38', '9', '1', '<p>烦不烦</p>', '15', '测试组长', '空', '0', '0', '1', '1', '0', '1', '1557048503');
INSERT INTO `lee_comments` VALUES ('39', '9', '1', '<p>发布会发给</p>', '15', '测试组长', '空', '0', '0', '1', '3', '0', '1', '1557048599');
INSERT INTO `lee_comments` VALUES ('40', '9', '1', '<p>发给你发过</p>', '15', '测试组长', '空', '0', '0', '2', '1', '0', '1', '1557049675');
INSERT INTO `lee_comments` VALUES ('41', '9', '1', '<p>发北大法宝</p>', '15', '测试组长', '空', '0', '0', '2', '2', '0', '1', '1557049690');
INSERT INTO `lee_comments` VALUES ('42', '13', '1', '<p>测试11</p>', '1', 'admin', '空', '0', '0', '0', '0', '0', '1', '1557369307');
INSERT INTO `lee_comments` VALUES ('43', '4', '1', 'fffff', '1', 'huaren', '空', '0', '0', '0', '0', '0', '1', '1562305199');
INSERT INTO `lee_comments` VALUES ('44', '4', '1', 'fffff', '1', 'huaren', '空', '0', '0', '0', '0', '0', '1', '1562305237');
INSERT INTO `lee_comments` VALUES ('45', '4', '1', 'ffffff', '1', 'top-well', '空', '0', '0', '0', '0', '0', '1', '1562305458');
INSERT INTO `lee_comments` VALUES ('46', '95', '1', 'kkkkkkk', '15', 'lee', '空', '0', '0', '0', '1', '0', '1', '1562307227');
INSERT INTO `lee_comments` VALUES ('47', '95', '1', 'kkkkk........', '16', 'huaren', '空', '0', '0', '0', '1', '0', '1', '1562307328');
INSERT INTO `lee_comments` VALUES ('48', '4', '1', 'ffffff', '17', 'huaren', '空', '0', '0', '0', '0', '0', '1', '1562313450');
INSERT INTO `lee_comments` VALUES ('49', '95', '1', 'ffffffftttttttt', '19', '22222', '空', '0', '0', '0', '0', '0', '1', '1562313548');
INSERT INTO `lee_comments` VALUES ('50', '95', '1', '二级回复22222评论', '21', 'lee', '空', '0', '0', '0', '0', '0', '1', '1562314275');
INSERT INTO `lee_comments` VALUES ('51', '95', '1', '二级回复22222评论', '28', 'leebiji@163.com', '空', '0', '0', '0', '0', '0', '1', '1562314418');
INSERT INTO `lee_comments` VALUES ('52', '95', '1', 'leebiji@163.com', '38', 'leebiji@163.com', '空', '0', '0', '0', '0', '0', '1', '1562314698');
INSERT INTO `lee_comments` VALUES ('53', '95', '1', 'leebiji@163.com', '40', 'leebiji@163.com', '空', '0', '0', '0', '0', '0', '1', '1562314737');
INSERT INTO `lee_comments` VALUES ('54', '95', '1', '/captcha?rand=\"+Math.random()/captcha?rand=\"+Math.random()/captcha?rand=\"+Math.random()/captcha?rand=\"+Math.random()', '47', '/captcha?rand=\"+Math.random()', '空', '0', '0', '0', '1', '0', '1', '1562315201');
INSERT INTO `lee_comments` VALUES ('55', '95', '1', 'dgvsvsbfbdb', '52', 'huaren', '空', '0', '0', '0', '0', '0', '1', '1562315658');
INSERT INTO `lee_comments` VALUES ('56', '105', '1', '测试布局', '55', 'lee', '空', '0', '0', '0', '1', '0', '1', '1562318057');
INSERT INTO `lee_comments` VALUES ('57', '94', '1', 'fff', '61', 'huaren', '空', '0', '0', '0', '1', '0', '1', '1562737309');

-- ----------------------------
-- Table structure for lee_comments_reply
-- ----------------------------
DROP TABLE IF EXISTS `lee_comments_reply`;
CREATE TABLE `lee_comments_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) unsigned DEFAULT NULL COMMENT '评论id',
  `reply_type` tinyint(2) unsigned DEFAULT '1' COMMENT '1为回复评论，2为回复别人的回复',
  `reply_id` int(10) unsigned DEFAULT NULL COMMENT '回复目标id，reply_type为1时，是comment_id，reply_type为2时为回复表的id',
  `content` text COMMENT '回复内容',
  `to_uid` int(10) unsigned DEFAULT NULL COMMENT '回复目标id',
  `from_uid` int(10) unsigned DEFAULT NULL COMMENT '回复用户id',
  `from_thumb_img` varchar(255) DEFAULT NULL COMMENT '回复者的头像',
  `from_nickname` varchar(50) DEFAULT NULL COMMENT '回复者的昵称',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '评论时间',
  `to_nickname` varchar(50) DEFAULT NULL COMMENT '冗余回复对象的昵称',
  `is_author` tinyint(2) unsigned DEFAULT NULL COMMENT '0为普通回复，1为后台管理员回复',
  `like_num` int(5) unsigned DEFAULT '0' COMMENT '评论被点赞的次数',
  `reply_num` int(5) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`) USING BTREE,
  KEY `from_uid` (`from_uid`) USING BTREE,
  KEY `to_uid` (`to_uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_comments_reply
-- ----------------------------
INSERT INTO `lee_comments_reply` VALUES ('1', '4', '1', '19', '<p>回复 回答内容</p>', '1', '1', '空', 'admin', '1556589650', 'admin', '0', '1', null);
INSERT INTO `lee_comments_reply` VALUES ('2', '4', '1', '19', '<p>测试回答内容2</p>', '1', '1', '空', 'admin', '1556591011', 'admin', '0', '1', null);
INSERT INTO `lee_comments_reply` VALUES ('3', '4', '1', '19', '<p>测试回答内容3</p>', '1', '1', '空', 'admin', '1556591019', 'admin', '0', '1', null);
INSERT INTO `lee_comments_reply` VALUES ('4', '4', '1', '19', '<p>测试回答内容4</p>', '1', '1', '空', 'admin', '1556591023', 'admin', '0', '1', null);
INSERT INTO `lee_comments_reply` VALUES ('5', '4', '1', '19', '<p>测试回答内容5</p>', '1', '1', '空', 'admin', '1556591028', 'admin', '0', '1', null);
INSERT INTO `lee_comments_reply` VALUES ('6', '4', '1', '19', '<p>测试回答内容6</p>', '1', '1', '空', 'admin', '1556591033', 'admin', '0', '1', '1');
INSERT INTO `lee_comments_reply` VALUES ('7', '4', '1', '19', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">回复 回答内容7</span></p>', '1', '1', '空', 'admin', '1556593749', 'admin', '0', '1', '1');
INSERT INTO `lee_comments_reply` VALUES ('8', '4', '1', '19', '<table class=\"layui-table\" width=\"1139\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s; background-color: rgb(242, 242, 242) !important;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\"><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><span style=\"background-color: rgb(255, 255, 255);\">回复 回答内容8</span></p></td></tr></tbody></table><p><br/></p>', '1', '1', '空', 'admin', '1556594186', 'admin', '0', '1', '3');
INSERT INTO `lee_comments_reply` VALUES ('9', '4', '2', '8', '<p>二级回复&nbsp;&nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">回复 回答内容8</span></p>', '1', '1', '空', 'admin', '1556594950', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('10', '4', '2', '8', '<p>二级回复&nbsp;&nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">回复 回答内容8</span></p>', '1', '1', '空', 'admin', '1556595269', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('11', '4', '2', '7', '<p>二级回复 回答内容7</p>', '1', '1', '空', 'admin', '1556595643', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('12', '4', '1', '19', '<p>回复 回答内容9</p>', '1', '1', '空', 'admin', '1556595664', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('13', '4', '2', '8', '<p>三级 回复&nbsp; 回答内容8</p>', '1', '1', '空', 'admin', '1556602295', 'admin', '0', '1', '1');
INSERT INTO `lee_comments_reply` VALUES ('14', '4', '2', '8', '<p>三级回复 回答内容8 2</p>', '1', '1', '空', 'admin', '1556602344', 'admin', '0', '1', '1');
INSERT INTO `lee_comments_reply` VALUES ('15', '4', '2', '14', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.106);\">四级回复&nbsp; <span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.89);\">三级</span>级回复 回答内容8 2</span></p>', '1', '1', '空', 'admin', '1556605172', 'admin', '0', '1', '2');
INSERT INTO `lee_comments_reply` VALUES ('16', '4', '2', '15', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.106);\">五级回复11111&nbsp;&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.89);\">三级</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.106);\">级回复 回答内容8 2</span></p>', '1', '1', '空', 'admin', '1556607782', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('17', '4', '2', '15', '<p>五级回复222222&nbsp; &nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.106);\">四级回复&nbsp;&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.89);\">三级</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.106);\">级回复 回答内容8 2</span></p>', '1', '1', '空', 'admin', '1556607810', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('18', '4', '2', '6', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(242, 242, 242);\">二级回复1&nbsp; 测试回答内容6</span></p>', '1', '1', '空', 'admin', '1556608122', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('19', '4', '1', '33', '<p>2级&nbsp; 回复<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">1级&nbsp; 回答内容测试</span></p>', '1', '1', '空', 'admin', '1556611877', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('20', '9', '1', '34', '<table class=\"layui-table\" width=\"1139\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\"><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><span style=\"background-color: rgba(242, 242, 242, 0.89);\">二级回复 1&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.89);\">一级回复3&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span><span style=\"background-color: rgba(242, 242, 242, 0.33);\"></span></p></td></tr></tbody></table><p><br/></p>', '1', '1', '空', 'admin', '1556612233', 'admin', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('21', '9', '1', '32', '<p>二级回复 2&nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">二级回复&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', '1', '空', 'admin', '1556612294', 'admin', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('22', '9', '1', '32', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">二级回复 3&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">一级回复2&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', '1', '空', 'admin', '1556612383', 'admin', '0', '0', '1');
INSERT INTO `lee_comments_reply` VALUES ('23', '9', '2', '22', '<p><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">三级回复&nbsp; 1&nbsp; 二级回复 3&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">一级回复2&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgba(242, 242, 242, 0.33);\">最新测试问题</span></p>', '1', '1', '空', 'admin', '1556612409', 'admin', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('24', '4', '2', '13', '<p>四级回复&nbsp;<span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; background-color: rgb(242, 242, 242);\">三级 回复&nbsp; 回答内容8</span></p>', '1', '1', '空', 'admin', '1556612863', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('25', '9', '1', '35', '<table class=\"layui-table\" width=\"1699\" style=\"width: 998px;\"><tbody><tr style=\"transition: all 0.3s ease 0s; background-color: rgb(242, 242, 242) !important;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 9px 15px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-color: rgb(226, 226, 226); position: relative; min-height: 20px; line-height: 20px;\">测试admin888添加</td></tr></tbody></table><p><br/></p>', '1', '13', '空', 'admin888', '1556618517', 'admin', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('26', '9', '1', '39', '<p>几号还还吗</p>', '15', '15', '空', '测试组长', '1557048643', '测试组长', '0', '1', '0');
INSERT INTO `lee_comments_reply` VALUES ('27', '9', '1', '39', '<p>方法方法付</p>', '15', '15', '空', '测试组长', '1557049721', '测试组长', '0', '2', '0');
INSERT INTO `lee_comments_reply` VALUES ('28', '9', '1', '41', '<p>哈哈哈哈</p>', '15', '1', '空', 'admin', '1557369200', '测试组长', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('29', '95', '1', '46', 'ddddddddddddlllllllwwww', '15', '51', '空', 'lee', '1562315614', 'lee', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('30', '95', '1', '47', 'jdhjjjjjjjj', '16', '53', '空', 'ffff', '1562315701', 'huaren', '0', '0', '1');
INSERT INTO `lee_comments_reply` VALUES ('31', '95', '2', '30', 'jyyyyyyyyyyyyyyyyyy', '53', '54', '空', 'leebiji@163.com', '1562315734', 'ffff', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('32', '105', '1', '56', '将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局将要回复：测试布局', '55', '56', '空', 'admin', '1562318094', 'lee', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('33', '95', '1', '54', 'ddd', '47', '57', '空', 'fffff', '1562319636', '/captcha?rand=\"+Math.random()', '0', '0', '1');
INSERT INTO `lee_comments_reply` VALUES ('34', '95', '2', '33', 'ddddddddddddd', '57', '58', '空', 'leebiji@163.com', '1562319668', 'fffff', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('35', '95', '2', '31', 'dddddgggggggggg', '54', '59', '空', 'leebiji@163.com', '1562319761', 'leebiji@163.com', '0', '0', '1');
INSERT INTO `lee_comments_reply` VALUES ('36', '94', '1', '57', 'fddbdb', '61', '62', '空', 'huaren', '1562737329', 'huaren', '0', '0', '0');
INSERT INTO `lee_comments_reply` VALUES ('37', '94', '2', '36', 'dffsv', '62', '63', '空', 'huaren', '1562738378', 'huaren', '0', '0', '1');
INSERT INTO `lee_comments_reply` VALUES ('38', '94', '2', '37', 'hfhgsgnhs', '63', '64', '空', 'huaren', '1562738397', 'huaren', '0', '0', '2');
INSERT INTO `lee_comments_reply` VALUES ('39', '94', '2', '38', 'gvdfbdf', '64', '65', '空', 'lee', '1562738517', 'huaren', '0', '0', '3');
INSERT INTO `lee_comments_reply` VALUES ('40', '94', '2', '39', 'hghjxdhj', '65', '66', '空', 'lee', '1562738635', 'lee', '0', '0', '4');
INSERT INTO `lee_comments_reply` VALUES ('41', '94', '2', '40', 'nfnfnfn', '66', '67', '空', 'admin', '1562738662', 'lee', '0', '0', '5');
INSERT INTO `lee_comments_reply` VALUES ('42', '94', '2', '41', 'kfduk', '67', '68', '空', 'lll', '1562738846', 'admin', '0', '0', '6');

-- ----------------------------
-- Table structure for lee_config
-- ----------------------------
DROP TABLE IF EXISTS `lee_config`;
CREATE TABLE `lee_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` text COMMENT '配置信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='配置信息';

-- ----------------------------
-- Records of lee_config
-- ----------------------------
INSERT INTO `lee_config` VALUES ('2', '{\"title\":\"Lee\'s blog\",\"seotitle\":\"小李技术博客网站\",\"logo\":\"logo\\/logo.jpg\",\"keyword\":\"分享技术，一起进步，共同发展\",\"desc\":\"小李技术博客网站，分享技术笔记，一起进步\",\"contact_name\":\"lee\",\"tel\":\"13693331169\",\"phone\":\"13693331169\",\"weixin\":\"wechat\\/wechat.jpg\",\"online\":\"1983267332\",\"address\":\"北京 ▪ 朝阳\",\"coordinates\":\"111,222\",\"email\":\"leehuadao@163.com\",\"author\":\"Lee\",\"powerby\":\"1\",\"beian\":\"京ICP备17035362号-1\",\"state\":\"1\",\"closeinfo\":\"网站维护中，请稍后重试！\",\"about\":\"\"}');

-- ----------------------------
-- Table structure for lee_goods
-- ----------------------------
DROP TABLE IF EXISTS `lee_goods`;
CREATE TABLE `lee_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_name` varchar(128) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_number` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `goods_weight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品重量',
  `goods_status` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品状态:0:下架;1:商家',
  `goods_introduce` text COMMENT '商品详情介绍',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '记录删除时间，假(逻辑)删除',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `goods_name` (`goods_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of lee_goods
-- ----------------------------
INSERT INTO `lee_goods` VALUES ('1', '商品1', '3000.00', '200', '100', '0', '商品介绍1', null, null, null);
INSERT INTO `lee_goods` VALUES ('2', '商品名称1', '220.00', '100', '100', '0', null, null, null, null);
INSERT INTO `lee_goods` VALUES ('3', '商品名称2', '200.00', '255', '900', '0', null, null, null, null);

-- ----------------------------
-- Table structure for lee_introduction
-- ----------------------------
DROP TABLE IF EXISTS `lee_introduction`;
CREATE TABLE `lee_introduction` (
  `iid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iname` varchar(255) NOT NULL,
  `ifile` text NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_introduction
-- ----------------------------
INSERT INTO `lee_introduction` VALUES ('1', '顶顶顶顶', '', '', 'Lee', '1556014025', '1');
INSERT INTO `lee_introduction` VALUES ('13', 'ghfgf', '', '<p>gnfnfn</p>', '', '1557045857', '15');
INSERT INTO `lee_introduction` VALUES ('14', '尺寸', '', '<p>擦擦擦</p>', '', '1557369380', '1');

-- ----------------------------
-- Table structure for lee_like
-- ----------------------------
DROP TABLE IF EXISTS `lee_like`;
CREATE TABLE `lee_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `com_id` int(10) unsigned NOT NULL,
  `reply_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_like
-- ----------------------------
INSERT INTO `lee_like` VALUES ('1', '1', '21', '0');
INSERT INTO `lee_like` VALUES ('2', '1', '6', '0');
INSERT INTO `lee_like` VALUES ('3', '1', '14', '0');
INSERT INTO `lee_like` VALUES ('4', '1', '13', '0');
INSERT INTO `lee_like` VALUES ('5', '1', '12', '0');
INSERT INTO `lee_like` VALUES ('6', '1', '15', '0');
INSERT INTO `lee_like` VALUES ('7', '1', '7', '0');
INSERT INTO `lee_like` VALUES ('8', '1', '8', '0');
INSERT INTO `lee_like` VALUES ('9', '1', '9', '0');
INSERT INTO `lee_like` VALUES ('10', '1', '10', '0');
INSERT INTO `lee_like` VALUES ('11', '1', '16', '0');
INSERT INTO `lee_like` VALUES ('12', '1', '17', '0');
INSERT INTO `lee_like` VALUES ('13', '1', '18', '0');
INSERT INTO `lee_like` VALUES ('14', '1', '20', '0');
INSERT INTO `lee_like` VALUES ('15', '1', '19', '0');
INSERT INTO `lee_like` VALUES ('16', '1', '11', '0');
INSERT INTO `lee_like` VALUES ('17', '1', '22', '0');
INSERT INTO `lee_like` VALUES ('18', '1', '26', '0');
INSERT INTO `lee_like` VALUES ('19', '1', '24', '0');
INSERT INTO `lee_like` VALUES ('20', '1', '30', '0');
INSERT INTO `lee_like` VALUES ('21', '1', '0', '8');
INSERT INTO `lee_like` VALUES ('22', '1', '0', '14');
INSERT INTO `lee_like` VALUES ('23', '1', '0', '15');
INSERT INTO `lee_like` VALUES ('24', '1', '0', '12');
INSERT INTO `lee_like` VALUES ('25', '1', '0', '17');
INSERT INTO `lee_like` VALUES ('26', '1', '0', '16');
INSERT INTO `lee_like` VALUES ('27', '1', '0', '10');
INSERT INTO `lee_like` VALUES ('28', '1', '0', '13');
INSERT INTO `lee_like` VALUES ('29', '1', '0', '9');
INSERT INTO `lee_like` VALUES ('30', '1', '0', '25');
INSERT INTO `lee_like` VALUES ('31', '1', '35', '0');
INSERT INTO `lee_like` VALUES ('32', '1', '36', '0');
INSERT INTO `lee_like` VALUES ('33', '15', '41', '0');
INSERT INTO `lee_like` VALUES ('34', '15', '0', '27');
INSERT INTO `lee_like` VALUES ('35', '15', '40', '0');
INSERT INTO `lee_like` VALUES ('36', '1', '39', '0');
INSERT INTO `lee_like` VALUES ('37', '1', '0', '26');
INSERT INTO `lee_like` VALUES ('38', '1', '41', '0');
INSERT INTO `lee_like` VALUES ('39', '1', '40', '0');
INSERT INTO `lee_like` VALUES ('40', '1', '0', '27');
INSERT INTO `lee_like` VALUES ('41', '1', '38', '0');
INSERT INTO `lee_like` VALUES ('42', '1', '33', '0');
INSERT INTO `lee_like` VALUES ('43', '1', '0', '19');
INSERT INTO `lee_like` VALUES ('44', '1', '0', '24');
INSERT INTO `lee_like` VALUES ('45', '1', '0', '7');
INSERT INTO `lee_like` VALUES ('46', '1', '0', '6');
INSERT INTO `lee_like` VALUES ('47', '1', '0', '11');
INSERT INTO `lee_like` VALUES ('48', '1', '0', '18');
INSERT INTO `lee_like` VALUES ('49', '1', '0', '5');
INSERT INTO `lee_like` VALUES ('50', '1', '0', '4');
INSERT INTO `lee_like` VALUES ('51', '1', '0', '3');
INSERT INTO `lee_like` VALUES ('52', '1', '0', '2');
INSERT INTO `lee_like` VALUES ('53', '1', '0', '1');

-- ----------------------------
-- Table structure for lee_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `lee_loginlog`;
CREATE TABLE `lee_loginlog` (
  `mid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `ip` char(15) DEFAULT '' COMMENT '登录ip',
  `logintime` int(10) DEFAULT '0' COMMENT '登录时间',
  `msg` varchar(80) DEFAULT NULL COMMENT '登录信息'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of lee_loginlog
-- ----------------------------
INSERT INTO `lee_loginlog` VALUES ('1', '127.0.0.1', '1563416153', '登录成功');
INSERT INTO `lee_loginlog` VALUES ('1', '127.0.0.1', '1564118222', '登录成功');
INSERT INTO `lee_loginlog` VALUES ('1', '127.0.0.1', '1563438014', '登录成功');
INSERT INTO `lee_loginlog` VALUES ('1', '127.0.0.1', '1563522452', '登录成功');

-- ----------------------------
-- Table structure for lee_manager
-- ----------------------------
DROP TABLE IF EXISTS `lee_manager`;
CREATE TABLE `lee_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `account` varchar(50) NOT NULL COMMENT '管理账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账号状态 0：锁定，1：正常',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_manager
-- ----------------------------
INSERT INTO `lee_manager` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', '1', '0');
INSERT INTO `lee_manager` VALUES ('13', 'admin888', '7fef6171469e80d32c0559f88b377245', '1', '0');
INSERT INTO `lee_manager` VALUES ('14', 'lee', '21232f297a57a5a743894a0e4a801fc3', '1', '0');
INSERT INTO `lee_manager` VALUES ('15', '测试组长', 'cc17c30cd111c7215fc8f51f8790e0e1', '1', '0');

-- ----------------------------
-- Table structure for lee_member
-- ----------------------------
DROP TABLE IF EXISTS `lee_member`;
CREATE TABLE `lee_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别:0男;1女',
  `telnum` char(11) DEFAULT '' COMMENT '电话',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `addr` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `createtime` int(10) DEFAULT NULL COMMENT '加入时间',
  `mlevel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:普通用户,1:高级用户',
  `mstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:启用状态,1:停用状态',
  `password` varchar(50) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_member
-- ----------------------------
INSERT INTO `lee_member` VALUES ('1', 'lee', null, '0', '', '', '', null, '0', '0', '202cb962ac59075b964b07152d234b70', null);
INSERT INTO `lee_member` VALUES ('13', 'user1', null, '0', '', '', '', null, '0', '0', '202cb962ac59075b964b07152d234b70', null);
INSERT INTO `lee_member` VALUES ('14', 'tom', null, '0', '1234567890', '123@qq.com', '', null, '0', '0', 'e10adc3949ba59abbe56e057f20f883e', null);
INSERT INTO `lee_member` VALUES ('15', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('16', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('17', 'huaren', null, '0', '', '2289164736@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('18', '22222', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('19', '22222', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('20', 'lee', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('21', 'lee', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('22', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('23', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('24', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('25', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('26', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('27', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('28', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('29', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('30', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('31', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('32', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('33', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('34', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('35', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('36', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('37', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('38', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('39', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('40', 'leebiji@163.com', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('41', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('42', 'leebiji@163.com', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('43', 'leebiji@163.com', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('44', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('45', '11222', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('46', '/captcha?rand=\"+Math', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('47', '/captcha?rand=\"+Math', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('48', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('49', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('50', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('51', 'lee', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('52', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('53', 'ffff', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('54', 'leebiji@163.com', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('55', 'lee', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('56', 'admin', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('57', 'fffff', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('58', 'leebiji@163.com', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('59', 'leebiji@163.com', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('60', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('61', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('62', 'huaren', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('63', 'huaren', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('64', 'huaren', null, '0', '', 'leebiji@163.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('65', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('66', 'lee', null, '0', '', '66666@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('67', 'admin', null, '0', '', '2289164736@qq.com', '', null, '0', '0', '', '127.0.0.1');
INSERT INTO `lee_member` VALUES ('68', 'lll', null, '0', '', '648564906@qq.com', '', null, '0', '0', '', '127.0.0.1');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `lee_message` VALUES ('10', 'huaren', null, 'huaren', null, null, '127.0.0.1', null, '127.0.0.1');
INSERT INTO `lee_message` VALUES ('11', 'huaren', null, 'huaren', null, null, '127.0.0.1', null, '127.0.0.1');
INSERT INTO `lee_message` VALUES ('12', 'top-well', null, 'leebiji@163.com', null, null, 'ffffff', null, '127.0.0.1');

-- ----------------------------
-- Table structure for lee_notice
-- ----------------------------
DROP TABLE IF EXISTS `lee_notice`;
CREATE TABLE `lee_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0,不显示；1,显示',
  `sort` smallint(5) unsigned NOT NULL,
  `show_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_notice
-- ----------------------------
INSERT INTO `lee_notice` VALUES ('2', '本站内容仅供学习和参阅，不做任何商业用途', '1', '50', '1596211200');
INSERT INTO `lee_notice` VALUES ('3', 'Lee博客测试版上线，欢迎访问', '1', '50', '1593532800');
INSERT INTO `lee_notice` VALUES ('4', '内容如有侵犯，请立即联系管理员删除', '1', '50', '1593532800');

-- ----------------------------
-- Table structure for lee_permission
-- ----------------------------
DROP TABLE IF EXISTS `lee_permission`;
CREATE TABLE `lee_permission` (
  `ps_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ps_name` varchar(20) NOT NULL COMMENT '权限名称',
  `ps_pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `ps_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `ps_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `ps_level` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '权限等级',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of lee_permission
-- ----------------------------
INSERT INTO `lee_permission` VALUES ('101', '内容管理', '0', '', '', '0');
INSERT INTO `lee_permission` VALUES ('102', '栏目管理', '0', '', '', '0');
INSERT INTO `lee_permission` VALUES ('103', '轮播图管理', '0', '', '', '0');
INSERT INTO `lee_permission` VALUES ('104', '内容列表', '101', 'article', 'index', '0');
INSERT INTO `lee_permission` VALUES ('105', '添加文章', '101', 'article', 'add', '0');
INSERT INTO `lee_permission` VALUES ('106', '栏目列表', '102', 'category', 'index', '0');
INSERT INTO `lee_permission` VALUES ('107', '添加栏目', '102', 'category', 'add', '0');
INSERT INTO `lee_permission` VALUES ('108', '轮播图列表', '103', 'banner', 'index', '0');
INSERT INTO `lee_permission` VALUES ('109', '添加轮播图', '103', 'banner', 'add', '0');

-- ----------------------------
-- Table structure for lee_pics
-- ----------------------------
DROP TABLE IF EXISTS `lee_pics`;
CREATE TABLE `lee_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL COMMENT '内容id',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片地址',
  `sort` int(11) DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='内容图片';

-- ----------------------------
-- Records of lee_pics
-- ----------------------------
INSERT INTO `lee_pics` VALUES ('1', '4', 'uploads\\20171106\\95f9bda45f921c211e45dd46efa8bc02.png', '10');
INSERT INTO `lee_pics` VALUES ('2', '4', 'uploads\\20171106\\b49a4b6efdedff256cd9846789ab50bc.png', '10');
INSERT INTO `lee_pics` VALUES ('10', '12', 'uploads\\20171111\\7e1b01b47ed0242892b5d744966c5f48.jpg', '10');
INSERT INTO `lee_pics` VALUES ('11', '12', 'uploads\\20171111\\d594f1908dcdcc01d37e3dcfca510bfb.jpg', '10');
INSERT INTO `lee_pics` VALUES ('65', '30', 'uploads\\20180928\\73341aa651d20c731f62f9e9ca92989b.jpg', '10');
INSERT INTO `lee_pics` VALUES ('32', '30', 'uploads\\20171226\\c417b5251a72b67d9b4e72f764dad246.jpg', '10');
INSERT INTO `lee_pics` VALUES ('33', '31', 'uploads\\20171226\\c089d60b8b802621ba0a08eddbc15dcd.jpg', '10');
INSERT INTO `lee_pics` VALUES ('34', '32', 'uploads\\20171226\\bf8f4cf7c19a394cd8b0e5bc1cc16ebd.jpg', '10');
INSERT INTO `lee_pics` VALUES ('35', '33', 'uploads\\20171226\\e003ea23931651b6ffbf3e0429ab7fb3.jpg', '10');
INSERT INTO `lee_pics` VALUES ('36', '34', 'uploads\\20171226\\d6dfc7a6b10ab9ea741ba1de6cc24cce.jpg', '10');
INSERT INTO `lee_pics` VALUES ('37', '35', 'uploads\\20171226\\76406e0549a9823cb922bc37667b3f5e.jpg', '10');
INSERT INTO `lee_pics` VALUES ('38', '36', 'uploads\\20171226\\f25f5b11776abdf1ed0a03a2bbf010b9.jpg', '10');
INSERT INTO `lee_pics` VALUES ('39', '37', 'uploads\\20171226\\62ec62526c5d52c5adc1879b7b36c404.jpg', '10');
INSERT INTO `lee_pics` VALUES ('40', '38', 'uploads\\20171226\\bf63c8177ed9ed9f477fd5a36f2cd3af.jpg', '10');
INSERT INTO `lee_pics` VALUES ('41', '39', 'uploads\\20171226\\fa419c6fa7da2613cf007edccd884cda.jpg', '10');
INSERT INTO `lee_pics` VALUES ('42', '40', 'uploads\\20171226\\55c646020059bd68bd9803ca9c964d45.jpg', '10');
INSERT INTO `lee_pics` VALUES ('43', '41', 'uploads\\20171226\\1b8be621ff3be09d89d0dc358b7ca0ef.jpg', '10');
INSERT INTO `lee_pics` VALUES ('44', '42', 'uploads\\20171226\\64a01972cf535c95a256be5760b7e86a.jpg', '10');
INSERT INTO `lee_pics` VALUES ('45', '43', 'uploads\\20171226\\fd49a044b814ea930ca02f2feddc254b.jpg', '10');
INSERT INTO `lee_pics` VALUES ('77', '44', 'uploads\\20181105\\15d43ced5ea433bf516c69d21faef028.jpg', '10');
INSERT INTO `lee_pics` VALUES ('78', '45', 'uploads\\20181105\\7c598a8882ced6236193af66c099e412.jpg', '10');
INSERT INTO `lee_pics` VALUES ('79', '46', 'uploads\\20181105\\d6b3071adb49e06c18c40ca919c42a2e.jpg', '10');
INSERT INTO `lee_pics` VALUES ('80', '47', 'uploads\\20181105\\525631a1c94c294d4d1c245a92f20336.jpg', '10');
INSERT INTO `lee_pics` VALUES ('52', '48', 'uploads\\20171227\\2e6c4b9eed93963f21af0be41f604a39.jpg', '10');
INSERT INTO `lee_pics` VALUES ('53', '49', 'uploads\\20171227\\0d5d434873d07caa5b4ba39517ad2501.jpg', '10');
INSERT INTO `lee_pics` VALUES ('54', '50', 'uploads\\20180102\\db3e59c73172cf991ac665854e8d4de0.jpg', '10');
INSERT INTO `lee_pics` VALUES ('55', '51', 'uploads\\20180102\\1fbe5f7344efdf5c48bc89997d190b90.jpg', '10');
INSERT INTO `lee_pics` VALUES ('56', '52', 'uploads\\20180102\\f4d48dfbc9069558eba98b1aca94b15d.jpg', '10');
INSERT INTO `lee_pics` VALUES ('57', '53', 'uploads\\20180102\\dc8c5ffce43dc84bd75416af7164f9af.jpg', '10');
INSERT INTO `lee_pics` VALUES ('58', '54', 'uploads\\20180102\\14e64e0e697c1a5980c1f41d3fe46104.jpg', '10');
INSERT INTO `lee_pics` VALUES ('59', '55', 'uploads\\20180102\\30c20cb182ee1b8b5a2cf536644e13c7.jpg', '10');
INSERT INTO `lee_pics` VALUES ('60', '56', 'uploads\\20180102\\c805edb63f4b71805774a59f6d7a0125.jpg', '10');
INSERT INTO `lee_pics` VALUES ('61', '57', 'uploads\\20180102\\359e3fa63ac24bea2d0916681c4f02cd.jpg', '10');
INSERT INTO `lee_pics` VALUES ('62', '58', 'uploads\\20180102\\6d193707e81247fbe8675a1b2f613f92.jpg', '10');
INSERT INTO `lee_pics` VALUES ('63', '59', 'uploads\\20180102\\5e9efd83cd1db91ad75260211dd6c7c3.png', '10');
INSERT INTO `lee_pics` VALUES ('64', '60', 'uploads\\20180102\\44ae605b536ab38cdb9ae63ef8760d75.jpg', '10');
INSERT INTO `lee_pics` VALUES ('116', '83', 'uploads\\20181122\\87d80a328f1ada52c670f1c9a23ca51b.jpg', '10');
INSERT INTO `lee_pics` VALUES ('111', '74', 'uploads\\20181121\\0d7522ef865dfaadaa2240f162883980.jpg', '10');
INSERT INTO `lee_pics` VALUES ('72', '67', 'uploads\\20181105\\25a5cac87162305b8301dc55af458bc8.jpg', '10');
INSERT INTO `lee_pics` VALUES ('74', '68', 'uploads\\20181105\\70270ab03aa13819cca312bb768ba965.jpg', '10');
INSERT INTO `lee_pics` VALUES ('75', '69', 'uploads\\20181105\\baf9f0c3bcbed123735cb996f421dd07.jpg', '10');
INSERT INTO `lee_pics` VALUES ('76', '70', 'uploads\\20181105\\6050db06742a29f494d6b8fa8eadecc6.jpg', '10');
INSERT INTO `lee_pics` VALUES ('83', '71', 'uploads\\20181105\\a9776722c0eb8d488e1db8155896cd4b.jpg', '10');
INSERT INTO `lee_pics` VALUES ('115', '72', 'uploads\\20181122\\4ddc67ffb4fe50ebc643547cc2066fa9.jpg', '10');
INSERT INTO `lee_pics` VALUES ('109', '73', 'uploads\\20181121\\3d0de7ead0562c0c096f292ef8f9d990.jpg', '10');
INSERT INTO `lee_pics` VALUES ('119', '64', 'uploads\\20181122\\fdf03bdc6d37ec99a107d942b9c12574.png', '10');
INSERT INTO `lee_pics` VALUES ('106', '82', 'uploads\\20181121\\1b0f50ee6036add0d475db435bcf9447.jpg', '10');
INSERT INTO `lee_pics` VALUES ('90', '75', 'uploads\\20181107\\2cd2f0504b5c7cbd34d65f0ed1213116.jpg', '10');
INSERT INTO `lee_pics` VALUES ('91', '76', 'uploads\\20181107\\63f42d28910d747178aa665441cd5665.jpg', '10');
INSERT INTO `lee_pics` VALUES ('107', '77', 'uploads\\20181121\\fa9b8414fafca3ebe0202a65d6ca2595.png', '10');
INSERT INTO `lee_pics` VALUES ('93', '75', 'uploads\\20181107\\cc184d4a349c816ecab1120a1aff09c3.jpg', '10');
INSERT INTO `lee_pics` VALUES ('97', '80', 'uploads\\20181121\\210822bd477931d72c0013d06e9b153e.jpg', '10');
INSERT INTO `lee_pics` VALUES ('98', '78', 'uploads\\20181121\\09c7f9ed0be488cc38b57170f02e7e47.jpg', '10');
INSERT INTO `lee_pics` VALUES ('99', '81', 'uploads\\20181121\\0ace7c8ca838df995832d87a97697481.jpg', '10');
INSERT INTO `lee_pics` VALUES ('121', '65', 'uploads\\20181122\\5849fcf05a68c8018c0028e488d70544.jpg', '10');
INSERT INTO `lee_pics` VALUES ('118', '84', 'uploads\\20181122\\ace7b55422e85565bdd9e99419682a91.jpg', '10');
INSERT INTO `lee_pics` VALUES ('120', '89', 'uploads\\20181122\\4766a78861fafc98e9a021eaf8af3657.jpg', '10');
INSERT INTO `lee_pics` VALUES ('122', '88', 'uploads\\20181122\\e1142a03e0e3298f117b71916c3ccf07.jpg', '10');
INSERT INTO `lee_pics` VALUES ('128', '91', 'uploads\\20181122\\9e75b8b32800e5cf0556bfee1867c3b1.jpg', '10');
INSERT INTO `lee_pics` VALUES ('125', '65', 'uploads\\20181122\\2fb36b480c84f24d39d9eaed75805a3c.png', '10');
INSERT INTO `lee_pics` VALUES ('126', '65', 'uploads\\20181122\\bf90b352902202aee92955fa83c304fc.jpg', '10');
INSERT INTO `lee_pics` VALUES ('127', '65', 'uploads\\20181122\\e934c0ee77b94a2cf0b66047c155e10b.png', '10');
INSERT INTO `lee_pics` VALUES ('131', '14', 'uploads\\20190509\\3ff6300bfeaec8c43afda1566f832af8.xlsx', '10');
INSERT INTO `lee_pics` VALUES ('132', '14', 'uploads\\20190509\\3715c61233f4aafa9c7935076c87d865.png', '10');

-- ----------------------------
-- Table structure for lee_questions
-- ----------------------------
DROP TABLE IF EXISTS `lee_questions`;
CREATE TABLE `lee_questions` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `reply_num` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` text NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `reply_time` varchar(255) NOT NULL,
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_questions
-- ----------------------------
INSERT INTO `lee_questions` VALUES ('2', '0', '1', '测试问题2', '1', '333333', '1556265666', '', '1', '', '');
INSERT INTO `lee_questions` VALUES ('4', '1', '1', '内容编辑测试', '21', '备注 内容编辑测试', '1556446042', '1556434686', '1', '', '');
INSERT INTO `lee_questions` VALUES ('5', '0', '0', '测试问题编辑', '2', '测试问题编辑备注', '1556445916', '', '1', '', '');
INSERT INTO `lee_questions` VALUES ('6', '0', '0', '测试内容编辑', '1', '测试内容编辑 备注', '1556445939', '', '1', '', '');
INSERT INTO `lee_questions` VALUES ('7', '1', '0', '测试提出问题11', '1', '测试提出问题 备注11', '1556501391', '', '1', '', '');
INSERT INTO `lee_questions` VALUES ('10', '15', '0', '方法', '0', '方法', '1557049734', '', '0', '', '');
INSERT INTO `lee_questions` VALUES ('11', '15', '0', '非共和国和', '0', '', '1557049814', '', '0', '', '');
INSERT INTO `lee_questions` VALUES ('12', '15', '0', '你们那', '0', '', '1557049828', '', '0', '', '');

-- ----------------------------
-- Table structure for lee_role
-- ----------------------------
DROP TABLE IF EXISTS `lee_role`;
CREATE TABLE `lee_role` (
  `role_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_ps_ids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids,1,2,5',
  `role_ps_ca` text COMMENT '控制器-操作,控制器-操作,控制器-操作',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_role
-- ----------------------------
INSERT INTO `lee_role` VALUES ('20', '主管', '101,104,105', 'article-index,article-add');
INSERT INTO `lee_role` VALUES ('21', '经理', '101,104,105,102,106,107', 'article-index,article-add,category-index,category-add');

-- ----------------------------
-- Table structure for lee_tags
-- ----------------------------
DROP TABLE IF EXISTS `lee_tags`;
CREATE TABLE `lee_tags` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_tags
-- ----------------------------
INSERT INTO `lee_tags` VALUES ('1', 'Mysql', '255');
INSERT INTO `lee_tags` VALUES ('3', 'Windows服务器', '50');
INSERT INTO `lee_tags` VALUES ('4', 'Apache', '50');
INSERT INTO `lee_tags` VALUES ('5', 'DeDe', '50');
INSERT INTO `lee_tags` VALUES ('6', 'Ecshop', '50');
INSERT INTO `lee_tags` VALUES ('7', '大商创', '50');
INSERT INTO `lee_tags` VALUES ('8', 'PhpStorm', '50');
INSERT INTO `lee_tags` VALUES ('9', 'Tp5', '50');
INSERT INTO `lee_tags` VALUES ('10', 'IIS', '50');
INSERT INTO `lee_tags` VALUES ('11', 'js', '50');
INSERT INTO `lee_tags` VALUES ('12', 'php', '50');

-- ----------------------------
-- Table structure for lee_typelink
-- ----------------------------
DROP TABLE IF EXISTS `lee_typelink`;
CREATE TABLE `lee_typelink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lee_typelink
-- ----------------------------
INSERT INTO `lee_typelink` VALUES ('1', '百度', 'https://www.baidu.com/', '500', '1', '1606752000');
INSERT INTO `lee_typelink` VALUES ('2', 'Nike', 'https://store.nike.com', '500', '1', '1577808000');

-- ----------------------------
-- Table structure for lee_viewslog
-- ----------------------------
DROP TABLE IF EXISTS `lee_viewslog`;
CREATE TABLE `lee_viewslog` (
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '文章ID',
  `viewtime` int(10) DEFAULT NULL COMMENT '浏览时间',
  `viewip` varchar(15) DEFAULT NULL COMMENT 'ip地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览日志';

-- ----------------------------
-- Records of lee_viewslog
-- ----------------------------
INSERT INTO `lee_viewslog` VALUES ('56', '1538965831', '127.0.0.1');

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
INSERT INTO `lee_wechat` VALUES ('1', '{\"wechatname\":\"Lee小笔记\",\"wechatnum\":\"leebiji\",\"appid\":\"wx91d29e90414f20b9\",\"appsecret\":\"547d84160171c6be88ee90720baf4413\",\"token\":\"lee\",\"encodingaeskey\":\"89BpLgpbZl6EvWI7fv7WaVWerfUT2vxboayy4rlwy1f\",\"wechatwelcome\":\"欢迎关注lee小笔记微信公众号\"}', '', '');
