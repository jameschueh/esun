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

 Date: 07/05/2023 23:40:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `ProductID` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ProductName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Price` int(20) UNSIGNED NOT NULL,
  `Quanity` int(20) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('P001', 'osii 舒壓按摩椅', 98000, 5);
INSERT INTO `product` VALUES ('P002', '網友最愛起司蛋糕', 1200, 50);
INSERT INTO `product` VALUES ('P003', '真愛密碼項鍊', 8500, 20);

SET FOREIGN_KEY_CHECKS = 1;
