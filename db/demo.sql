/*
 Navicat Premium Data Transfer

 Source Server         : 103.129.13.222
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : 103.129.13.222:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 08/06/2021 23:25:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (10001, 'Laura', 'Larson', 28);
INSERT INTO `employee` VALUES (20001, 'Kim', 'Odd', 35);
INSERT INTO `employee` VALUES (30001, 'Susan', 'Ray', 32);
INSERT INTO `employee` VALUES (40001, 'Fed', 'Armstrong', 50);

-- ----------------------------
-- Table structure for employee_hobby
-- ----------------------------
DROP TABLE IF EXISTS `employee_hobby`;
CREATE TABLE `employee_hobby`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `freq` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_hobby
-- ----------------------------
INSERT INTO `employee_hobby` VALUES (1, 10001, 'เล่นกีต้า', 10);
INSERT INTO `employee_hobby` VALUES (2, 10001, 'ดูหนัง', 1);
INSERT INTO `employee_hobby` VALUES (3, 20001, 'อ่านหนังสือ', 1);
INSERT INTO `employee_hobby` VALUES (4, 20001, 'เล่น ROV', 5);
INSERT INTO `employee_hobby` VALUES (5, 30001, 'เล่น Facebook', 6);
INSERT INTO `employee_hobby` VALUES (6, 30001, 'วิ่ง', 2);
INSERT INTO `employee_hobby` VALUES (7, 30001, 'ดูหนัง', 3);
INSERT INTO `employee_hobby` VALUES (8, 40001, 'อ่านหนังสือ', 5);

-- ----------------------------
-- Table structure for employee_work
-- ----------------------------
DROP TABLE IF EXISTS `employee_work`;
CREATE TABLE `employee_work`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NULL DEFAULT NULL,
  `salary` int(11) NULL DEFAULT NULL,
  `total_hour` int(11) NULL DEFAULT NULL,
  `perf` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_work
-- ----------------------------
INSERT INTO `employee_work` VALUES (1, 10001, 4000, 40, 95);
INSERT INTO `employee_work` VALUES (2, 20001, 7000, 20, 50);
INSERT INTO `employee_work` VALUES (3, 30001, 2000, 16, 60);
INSERT INTO `employee_work` VALUES (4, 40001, 10000, 32, 75);

SET FOREIGN_KEY_CHECKS = 1;
