/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : jdbc
Target Host     : localhost:3306
Target Database : jdbc
Date: 2018-12-21 19:12:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for personalinformation
-- ----------------------------
DROP TABLE IF EXISTS `personalinformation`;
CREATE TABLE `personalinformation` (
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` char(89) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `company` varchar(230) DEFAULT NULL,
  `money` varchar(220) DEFAULT NULL,
  `byyx` varchar(20) DEFAULT NULL,
  `sxzy` varchar(230) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `married` varchar(20) DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personalinformation
-- ----------------------------
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('徐良', '', 'null', '15549516759', '', 'null', '', '', '', '', '', '', '0', null);
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '17805138931', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', null);
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18851999696', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18851998675', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('15549516759', '', 'null', '18851998679', '', '', '', '', '', '', '', '', '未婚', 'images/1545267452483.jpg');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18851998671', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18851998673', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '未婚', 'null');
INSERT INTO `personalinformation` VALUES ('222', '222', 'null', '17805129299', 'null', 'null', 'null', 'null', 'null', 'null', '111', '555', '未婚', 'null');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18851998645', 'null', 'null', 'null', 'null', 'null', 'null', '3242342', 'null', '未婚', 'images/1545267605702.jpg');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '18852009681', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '未婚', 'images/1545267992871.jpg');
INSERT INTO `personalinformation` VALUES ('null', 'null', 'null', '15549516753', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `personalinformation` VALUES ('徐良', '1106', 'null', '18851999293', '宿州', 'null', 'null', 'null', '', 'null', '180', '150', '未婚', 'images/1545272534453.jpg');
