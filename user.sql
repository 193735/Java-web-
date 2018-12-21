/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : jdbc
Target Host     : localhost:3306
Target Database : jdbc
Date: 2018-12-21 19:15:25
*/

SET FOREIGN_KEY_CHECKS=0;
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
