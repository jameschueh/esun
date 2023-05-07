/*
 Navicat MySQL Data Transfer

 Source Server         : WJ
 Source Server Type    : MySQL
 Source Server Version : 50742 (5.7.42-log)
 Source Host           : localhost:3306
 Source Schema         : esun

 Target Server Type    : MySQL
 Target Server Version : 50742 (5.7.42-log)
 File Encoding         : 65001

 Date: 07/05/2023 23:39:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `OrderID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Member` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Price` int(20) UNSIGNED NOT NULL,
  `PayStatus` int(1) UNSIGNED NOT NULL COMMENT '0未付款1已付款',
  PRIMARY KEY (`OrderID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('Ms20250801186230', '458', 98000, 1);
INSERT INTO `order` VALUES ('Ms20250805157824', '55688', 9700, 0);
INSERT INTO `order` VALUES ('Ms20250805258200', '1713', 2400, 1);

SET FOREIGN_KEY_CHECKS = 1;
