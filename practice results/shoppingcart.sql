/*
Navicat MySQL Data Transfer

Source Server         : first
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-07-12 09:03:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `bookname` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `unitprice` double NOT NULL,
  `num` int(11) DEFAULT NULL,
  `totalprice` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`bookname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('圈子圈套 迷局篇2：职场商战三部曲', '04A', '23', '2', '46', '191.7', '1');
INSERT INTO `shoppingcart` VALUES ('圈子圈套.1.战局篇', '02A', '16', '2', '32', '58', '1');
INSERT INTO `shoppingcart` VALUES ('圈子圈套3.终局篇（附赠王强演讲光盘）', '05A', '20', '2', '40', '191.7', '0');
INSERT INTO `shoppingcart` VALUES ('圈饕餮（最真实的商场高端博弈小说）', '03A', '18', '2', '36', '191.7', '1');
INSERT INTO `shoppingcart` VALUES ('私募（首部披露资本博弈秘密的金融小说）', '01A', '18.85', '2', '37.7', '191.7', '1');
