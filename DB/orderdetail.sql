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

 Date: 07/05/2023 23:40:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `OrderItemSN` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ProductID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Quanity` int(20) UNSIGNED NOT NULL,
  `StandPrice` int(20) UNSIGNED NOT NULL,
  `ItemPrice` int(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`OrderItemSN`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES (1, 'Ms20250801186230', 'P001', 1, 98000, 98000);
INSERT INTO `orderdetail` VALUES (2, 'Ms20250805157824', 'P002', 1, 1200, 1200);
INSERT INTO `orderdetail` VALUES (3, 'Ms20250805157824', 'P003', 1, 8500, 8500);
INSERT INTO `orderdetail` VALUES (4, 'Ms20250805258200', 'P002', 2, 1200, 2400);

SET FOREIGN_KEY_CHECKS = 1;
