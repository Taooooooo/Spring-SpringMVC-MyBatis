/*
Navicat MySQL Data Transfer

Source Server         : first
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-07-12 09:03:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `image` varchar(200) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pagenum` int(11) NOT NULL,
  `author` varchar(10) NOT NULL,
  `publisher` varchar(10) NOT NULL,
  `original` double(6,2) NOT NULL,
  `current` double(6,2) NOT NULL,
  `summary` varchar(300) NOT NULL,
  PRIMARY KEY (`bookname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES ('C:\\Users\\luocheng\\Desktop\\周5\\day05下发\\webbook\\images\\product_list_04.jpg', '圈子圈套 迷局篇2：职场商战三部曲', '04A', '430', '王强', '长江文艺出版社', '28.00', '16.60', '《圈子圈套2・迷局篇》是“圈子圈套三部曲”的第二部。 职场风云再起。洪钧出任维西尔中国区总经理，他和俞威之间的较量又或明或暗地展开来，面对内部的纷争和商场上的尔虞我诈，他该如何出招……俞威依...');
INSERT INTO `bookinfo` VALUES ('C:\\Users\\luocheng\\Desktop\\周5\\day05下发\\webbook\\images\\product_list_02.jpg', '圈子圈套.1.战局篇', '02A', '208', '王强', '清华大学出版社', '28.00', '19.10', '虽然没有硝烟，却比战场更血腥；虽然并未战死，却比死亡更痛苦。 洪钧从一个底层的销售人员，成为一家著名的跨国公司的中国区代理首席代表，在即将被扶正，事业情感都志得意满的时候，掉入俞威设计的圈套，...');
INSERT INTO `bookinfo` VALUES ('C:\\Users\\luocheng\\Desktop\\周5\\day05下发\\webbook\\images\\product_list_05.jpg', '圈子圈套3.终局篇（附赠王强演讲光盘）', '05A', '213', '王强', '长江文艺出版社', '0.00', '18.90', '本书全景展示了商场和职场的生死厮杀、巅峰对决。主人公的命运、项目结局、所有的爱恨情仇都在本书中揭开谜底。 再次陷入低谷的洪钧在内忧外患中不甘消沉，在职场上和自己的上司明争暗斗，在商场上则和夙...');
INSERT INTO `bookinfo` VALUES ('C:\\Users\\luocheng\\Desktop\\周5\\day05下发\\webbook\\images\\product_list_01.jpg', '私募（首部披露资本博弈秘密的金融小说）', '01A', '246', '郭现杰', '花山文艺出版社', '32.00', '18.90', '数年前，在一次股市的多、空之战中，以赵云狄、林康为首的私募基金―金鼎投资，和以王雨龙为首的私募基金，达成锁仓协议分食利益。殊料，以王雨龙为首的私募基金―鑫利投资背信弃义，导致金鼎投资惨败。以至...');
INSERT INTO `bookinfo` VALUES ('C:\\Users\\luocheng\\Desktop\\周5\\day05下发\\webbook\\images\\product_list_03.jpg', '饕餮（最真实的商场高端博弈小说）', '03A', '250', '韦帕', '国际文化出版社', '32.00', '23.60', '北京，六百公里处，有宝地，233亩，土地价值2.5亿，总投资额近八亿，利润近三亿。　　项目吸引了众多北京房地产商目光，其中最贪婪的一道目光，来自顾忱。但顾忱，总资产不过千万！想拿项目，无异于“空手套...');
