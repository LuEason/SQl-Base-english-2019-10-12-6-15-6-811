/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80015
Source Host           : 127.0.0.1:3306
Source Database       : student_examination_sys

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2020-06-28 17:25:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `student_id` varchar(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `score` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '001', '1001', '80');
INSERT INTO `score` VALUES ('2', '002', '1002', '60');
INSERT INTO `score` VALUES ('3', '001', '1001', '70');
INSERT INTO `score` VALUES ('4', '002', '1002', '60');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('001', 'zhangsan', '18', 'male');
INSERT INTO `student` VALUES ('002', 'lisi', '20', 'female');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` varchar(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1001', 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO `subject` VALUES ('1002', 'math', 'Miss Liu', 'the exam is difficult');
