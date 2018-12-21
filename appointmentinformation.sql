/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : jdbc
Target Host     : localhost:3306
Target Database : jdbc
Date: 2018-12-21 19:14:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for appointmentinformation
-- ----------------------------
DROP TABLE IF EXISTS `appointmentinformation`;
CREATE TABLE `appointmentinformation` (
  `theme` varchar(10) DEFAULT NULL,
  `fee` varchar(10) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `sate` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointmentinformation
-- ----------------------------
INSERT INTO `appointmentinformation` VALUES ('运动', '我买单', '3', '321', '231123', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('看电影', 'AA', '3', '23123', '123123', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('看电影', '我买单', '3', '321', '231123', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('看电影', 'AA', '3', '321', '231123', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('看电影', '我买单', '3', '', '', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('看电影', '我买单', '3', '', '', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('K歌', 'AA', '', '', '', 'null');
INSERT INTO `appointmentinformation` VALUES ('K歌', 'AA', '', '', '', 'null');
INSERT INTO `appointmentinformation` VALUES ('K歌', 'AA', '', '', '', 'null');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18851998679');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18851998673');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', 'null');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '17805129299');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '17805129299');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18851998645');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18852009681');
INSERT INTO `appointmentinformation` VALUES ('on', '', 'null', 'null', 'null', '18851999293');

-- ----------------------------
-- Table structure for jyjl
-- ----------------------------
DROP TABLE IF EXISTS `jyjl`;
CREATE TABLE `jyjl` (
  `school` varchar(10) DEFAULT NULL,
  `major` varchar(10) DEFAULT NULL,
  `academic` varchar(5) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `xgjs` varchar(20) DEFAULT NULL,
  `achievement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jyjl
-- ----------------------------

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

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(155) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNumber` varchar(110) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` char(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('15549516759', '123456', '15549516759', '1937359088@qq.com', '男');
INSERT INTO `user` VALUES ('15549516759', '123456', '18851998679', '1937359088@qq.com', '男');
INSERT INTO `user` VALUES ('练8467号', '123456', '18851998679', '1937359088@qq.com', '男');
INSERT INTO `user` VALUES ('徐良', '123456', '15549516759', '1937359088@qq.com', '男');
INSERT INTO `user` VALUES ('hh', '123456', '17805138931', '1937359088@qq.com', '男');
INSERT INTO `user` VALUES ('null', '123456', '18851999696', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998675', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998679', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '', '', '', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998671', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998673', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '17805129299', '706772817@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18851998645', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '18852009681', '791471012@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '123456', '15549516753', '1937359088@qq.com', 'null');
INSERT INTO `user` VALUES ('null', '456789', '18851999293', '1422873418@qq.com', 'null');

-- ----------------------------
-- Table structure for workexperience
-- ----------------------------
DROP TABLE IF EXISTS `workexperience`;
CREATE TABLE `workexperience` (
  `companyName` varchar(20) DEFAULT NULL,
  `zhiwei` varchar(20) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `time` smallint(30) DEFAULT NULL,
  `xgjs` varchar(100) DEFAULT NULL,
  `descrition` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workexperience
-- ----------------------------
