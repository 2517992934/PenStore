/*
 Navicat Premium Data Transfer

 Source Server         : 软件工程
 Source Server Type    : MySQL
 Source Server Version : 80011 (8.0.11)
 Source Host           : localhost:3306
 Source Schema         : penstore

 Target Server Type    : MySQL
 Target Server Version : 80011 (8.0.11)
 File Encoding         : 65001

 Date: 26/05/2025 22:07:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '中北大学');
INSERT INTO `address` VALUES (NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '中南大学');
INSERT INTO `address` VALUES (NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '东南大学');
INSERT INTO `address` VALUES (NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '东北大学');
INSERT INTO `address` VALUES (NULL, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'csu');
INSERT INTO `address` VALUES (NULL, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'csuu');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `added_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ischosen` binary(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('6a4f52b5-95e2-482f-98ed-3857cec7d50e', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '123003', '1', NULL, 0x31);
INSERT INTO `cart` VALUES ('c2064e16-c6dd-4d0f-8556-46975be2ce81', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '123001', '1', NULL, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('0f81f7d2-9467-48c7-94b9-ae49133bc624', '好', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('1', '大笔', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('14251a23-36b8-4df2-9b4f-6c3db944e4fd', '挺好的', '376b0cce-567f-40b7-b7c6-f87c4d154b32', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('2', '中笔', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('3', '小笔', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('376b0cce-567f-40b7-b7c6-f87c4d154b32', '好', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('4', '牛牛', '1', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('5', '哈哈', '2', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('6', '嗯嗯', '3', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('78bcd370-c38f-4285-a2f4-f91250050b53', '太好了', '0f81f7d2-9467-48c7-94b9-ae49133bc624', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('9dbb6fc8-a23e-4cb8-8851-9292e706634e', '特大笔', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('b016ccfb-98c0-4bf1-8064-8b414d033c3d', 'i', 'f0d288ec-6fb5-4708-9837-3ea1c56ba883', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('b447e551-e6fb-4732-9722-7e6eef6f6f8e', 'n', 'f0d288ec-6fb5-4708-9837-3ea1c56ba883', 'af306b72-15e6-496d-a68e-a4f3772dde0f');
INSERT INTO `category` VALUES ('f0d288ec-6fb5-4708-9837-3ea1c56ba883', 'nice', NULL, 'af306b72-15e6-496d-a68e-a4f3772dde0f');

-- ----------------------------
-- Table structure for chat_messages
-- ----------------------------
DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE `chat_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `receiver_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(4) NULL DEFAULT 0,
  `commentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat_messages
-- ----------------------------
INSERT INTO `chat_messages` VALUES (64, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'hello', '2025-03-19 14:56:58', 1, NULL);
INSERT INTO `chat_messages` VALUES (65, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', '你不能说话', '2025-03-19 14:57:16', 1, NULL);
INSERT INTO `chat_messages` VALUES (66, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'hello', '2025-03-19 15:08:08', 1, NULL);
INSERT INTO `chat_messages` VALUES (67, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', '你好', '2025-03-19 16:04:58', 1, NULL);
INSERT INTO `chat_messages` VALUES (68, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '你好呀', '2025-03-19 16:06:05', 1, NULL);
INSERT INTO `chat_messages` VALUES (69, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'good', '2025-03-19 16:06:15', 1, NULL);
INSERT INTO `chat_messages` VALUES (70, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'hello', '2025-03-19 16:24:04', 1, NULL);
INSERT INTO `chat_messages` VALUES (71, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'HI', '2025-03-19 16:27:53', 1, NULL);
INSERT INTO `chat_messages` VALUES (72, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'hi', '2025-03-19 16:28:12', 1, NULL);
INSERT INTO `chat_messages` VALUES (73, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'lrc', '2025-03-19 16:29:48', 1, NULL);
INSERT INTO `chat_messages` VALUES (74, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'lrc', '2025-03-19 16:29:54', 1, NULL);
INSERT INTO `chat_messages` VALUES (80, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'hi', '2025-03-19 19:34:25', 0, NULL);
INSERT INTO `chat_messages` VALUES (81, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'hi', '2025-03-19 19:34:46', 1, NULL);
INSERT INTO `chat_messages` VALUES (82, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'hello', '2025-03-19 19:34:51', 1, NULL);
INSERT INTO `chat_messages` VALUES (83, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'hi', '2025-03-19 19:35:02', 0, NULL);
INSERT INTO `chat_messages` VALUES (84, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'I\'m Chen', '2025-03-19 19:38:15', 0, NULL);
INSERT INTO `chat_messages` VALUES (85, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'I\'m Chen', '2025-03-19 19:40:33', 0, NULL);
INSERT INTO `chat_messages` VALUES (86, '92c8f900-3e12-43bb-ba43-7c23e5a4aea9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'I,m Chen', '2025-03-19 19:41:08', 0, NULL);
INSERT INTO `chat_messages` VALUES (87, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'Hi', '2025-03-19 21:25:41', 1, NULL);
INSERT INTO `chat_messages` VALUES (88, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'QF3', '2025-03-22 17:23:30', 1, 'goodsId=121011&parentId=4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `chat_messages` VALUES (89, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'ayma', '2025-03-22 20:45:35', 1, 'goodsId=121002&parentId=890a657c-58e0-4b31-b3c4-41511cf1d119');
INSERT INTO `chat_messages` VALUES (90, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'hgukdfyr7rf5tgujhy6ubvutyifjhmnrjhtvy ghn5br6jyu57tuyhf6i86hgtfjvnyt', '2025-03-23 17:12:50', 1, 'goodsId=122003&parentId=1e379760-dc0a-43e5-9038-714062aaf2ef');
INSERT INTO `chat_messages` VALUES (91, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'hello', '2025-03-23 17:16:32', 1, NULL);
INSERT INTO `chat_messages` VALUES (92, 'af306b72-15e6-496d-a68e-a4f3772dde0f', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'hi', '2025-03-23 17:16:39', 1, NULL);
INSERT INTO `chat_messages` VALUES (93, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'yaoyaolingxian', '2025-03-23 18:31:11', 1, 'goodsId=c93853b4-900a-486b-afe3-9fb6171fc6ea&parentId=e56ed445-bb72-4aad-976a-aa5478105d52');
INSERT INTO `chat_messages` VALUES (94, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'well', '2025-03-23 19:48:04', 1, 'goodsId=121003&parentId=0195a9e0-cbd0-4db0-996d-7e1145757517');
INSERT INTO `chat_messages` VALUES (95, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '你购买的手写板专用电容笔已发货', '2025-03-23 21:29:48', 0, 'goodsId=121003&parentId=0195a9e0-cbd0-4db0-996d-7e1145757517');
INSERT INTO `chat_messages` VALUES (96, '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'good', '2025-03-23 21:30:26', 1, 'goodsId=c93853b4-900a-486b-afe3-9fb6171fc6ea&parentId=55722ef7-88c6-47e2-8577-9f9920511059');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `star` int(11) NULL DEFAULT NULL,
  `comment_at` datetime NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isreplied` binary(1) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('0195a9e0-cbd0-4db0-996d-7e1145757517', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '1', '121003', 4, '2025-03-23 19:48:04', NULL, 0x31, 'well', NULL);
INSERT INTO `comment` VALUES ('0a1b06fa-8da6-45fc-b388-7f9f08f2383b', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 18:18:51', NULL, NULL, '分', '4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `comment` VALUES ('1c51076c-ac9d-4627-a324-9f6586f9320d', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '123001', 4, '2025-03-19 19:06:22', NULL, NULL, '12呃3', NULL);
INSERT INTO `comment` VALUES ('1e379760-dc0a-43e5-9038-714062aaf2ef', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '1', '122003', 3, '2025-03-23 17:12:50', NULL, 0x31, 'hgukdfyr7rf5tgujhy6ubvutyifjhmnrjhtvy ghn5br6jyu57tuyhf6i86hgtfjvnyt', NULL);
INSERT INTO `comment` VALUES ('2c81834d-dce9-4f5c-b106-f567c7566f64', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121001', 1, '2025-03-15 23:33:49', NULL, 0x31, '差', NULL);
INSERT INTO `comment` VALUES ('2cd94262-1e5a-4ec3-98cf-cb27dc8aecc4', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '123001', 4, '2025-03-19 19:10:18', NULL, NULL, '猪猪侠', NULL);
INSERT INTO `comment` VALUES ('3469a4a2-2443-4ff8-98df-2aa3a99f30d7', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 17:24:26', NULL, NULL, '傻逼', '4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `comment` VALUES ('358371a7-177c-48d7-b188-deaf9675719b', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 18:07:42', NULL, NULL, '定位方法', '4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `comment` VALUES ('3756efac-2581-4d1d-be84-4621bf71933e', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 20:46:21', NULL, NULL, '失败', '890a657c-58e0-4b31-b3c4-41511cf1d119');
INSERT INTO `comment` VALUES ('3cc26d32-1f41-4578-ad1c-b0f4b6685717', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121002', 1, '2025-03-19 19:12:58', NULL, NULL, 'no', NULL);
INSERT INTO `comment` VALUES ('45fb1f5b-1dce-49cc-8897-3eb4e60d3bed', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-15 23:34:00', NULL, NULL, '差', '2c81834d-dce9-4f5c-b106-f567c7566f64');
INSERT INTO `comment` VALUES ('4addaf99-f9d1-4dba-a55d-d91ba4b10ca9', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-15 23:34:12', NULL, NULL, '差差', '2c81834d-dce9-4f5c-b106-f567c7566f64');
INSERT INTO `comment` VALUES ('4c3435eb-8388-47cc-9ccc-c144f5832e8f', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121011', 4, '2025-03-22 17:23:30', NULL, 0x31, 'QF3', NULL);
INSERT INTO `comment` VALUES ('55722ef7-88c6-47e2-8577-9f9920511059', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '1', 'c93853b4-900a-486b-afe3-9fb6171fc6ea', 5, '2025-03-23 21:30:26', NULL, 0x31, 'good', NULL);
INSERT INTO `comment` VALUES ('58e18987-267e-4b26-aa46-2cd6757da38b', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-23 18:31:53', NULL, NULL, '遥遥领先', 'e56ed445-bb72-4aad-976a-aa5478105d52');
INSERT INTO `comment` VALUES ('67e2062b-a892-4c1e-93a3-64f61e3db4ff', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121002', 4, '2025-03-19 19:06:09', NULL, NULL, '呵呵', NULL);
INSERT INTO `comment` VALUES ('711d46aa-3d72-4601-b992-e06a20a2065c', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-23 21:30:44', NULL, NULL, 'well', '55722ef7-88c6-47e2-8577-9f9920511059');
INSERT INTO `comment` VALUES ('890a657c-58e0-4b31-b3c4-41511cf1d119', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121002', 5, '2025-03-22 20:45:35', NULL, 0x31, 'ayma', NULL);
INSERT INTO `comment` VALUES ('8dbc6527-3044-4bc6-a693-125d78fc2895', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 18:19:58', NULL, NULL, '当前', '4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `comment` VALUES ('8fcf5d66-bbda-4dfe-b976-5d009d8711ce', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121002', 4, '2025-03-19 19:07:58', NULL, NULL, '哈哈哈', NULL);
INSERT INTO `comment` VALUES ('a0278684-814e-45d7-bf01-74556f60a5bb', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '123001', 4, '2025-03-19 19:12:15', NULL, NULL, '猪猪侠', NULL);
INSERT INTO `comment` VALUES ('a04e664a-c42c-43b9-bc38-7b23a5811a50', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-23 19:48:22', NULL, NULL, '好', '0195a9e0-cbd0-4db0-996d-7e1145757517');
INSERT INTO `comment` VALUES ('a1078cb9-1d9d-4b7f-a75a-34d22247e50e', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-22 18:19:06', NULL, NULL, '分', '4c3435eb-8388-47cc-9ccc-c144f5832e8f');
INSERT INTO `comment` VALUES ('a6e63b3f-b8fe-4f57-8e38-55bea397f44c', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-23 17:13:55', NULL, NULL, 'ayma', '1e379760-dc0a-43e5-9038-714062aaf2ef');
INSERT INTO `comment` VALUES ('e1e4741f-ae37-408f-90f5-59d4d2a57467', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '123001', 5, '2025-03-19 19:12:47', NULL, NULL, 'good', NULL);
INSERT INTO `comment` VALUES ('e52e203c-b5be-4a2b-834c-16da4186d4aa', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '2', NULL, NULL, '2025-03-15 23:33:02', NULL, NULL, '好', 'f21eb4d5-50d8-4778-b06b-a2d1f45ad967');
INSERT INTO `comment` VALUES ('e56ed445-bb72-4aad-976a-aa5478105d52', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '1', 'c93853b4-900a-486b-afe3-9fb6171fc6ea', 5, '2025-03-23 18:31:11', NULL, 0x31, 'yaoyaolingxian', NULL);
INSERT INTO `comment` VALUES ('f21eb4d5-50d8-4778-b06b-a2d1f45ad967', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '1', '121001', 5, '2025-03-15 21:02:17', NULL, 0x31, 'hao', NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cost` decimal(10, 2) NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('121001', '晨光文具行家静音书写笔', 8.00, '乘运而来，金榜助力，好运锦鲤文具11件套，笔锋流畅，本子精美，自用送礼皆可', 120, '1', 'images/goods/1.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121002', '孔庙祈福系列晨光2B铅笔六支装', 12.00, '开学必备，马到成功！', 1000, '1', 'images/goods//2.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121003', '小学规范汉字书写：第1册', 5.00, '汉字规范，从小学做起！我奶奶也还在用', 99, '1', 'images/goods/3.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121004', 'MG晨光行家系列签字笔', 15.00, '小贵，但也不一定好用，谢谢！', 10, '1', 'images/goods/4.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121005', '全面屏液晶手写板', 200.00, '学生商务记事本可折叠大屏', 3000, '1', 'images/goods/5.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121006', '黑科技永恒铅笔', 10.00, '不用削不会断！娃儿喜欢的不得了', 999, '1', 'images/goods/6.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121007', '前苏联苏维埃风记事本', 30.00, '斯大林用过', 100, '1', 'images/goods/7.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, '2025-03-23 12:42:00');
INSERT INTO `goods` VALUES ('121008', '生日礼物！哈利波特羽毛笔礼盒装', 40.00, '高颜值！绝不是花瓶，男回伴手礼', 1000, '1', 'images/goods/8.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121009', '【国家图书馆】九州山海古典纯铜金属书签', 49.00, '分量十足！颜值极高！国家图书馆官方力荐', 200, '1', 'images/goods/9.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121010', '人民日报金句文案55页小卡片', 33.00, '语文老师用过都说好，作文肯定用得上！但请注意，不要把它带上考场', 93, '1', 'images/goods/10.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121011', '高材ABS笔盒', 10.00, '全方位保护，更好的收纳空间，同桌看了回想偷！', 200, '1', 'images/goods/11.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121012', '三菱黑科技笔3', 20.00, '练字专用', 230, '1', 'images/goods/12.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121013', '乌合之众同款笔by古斯塔夫.勒庞', 30.00, '大众心理学必读', 100, '1', 'images/goods/13.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121014', '合金笔杆黑科技', 60.00, '可擦可练字可素描皆可', 199, '1', 'images/goods/14.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('121015', '钢笔式毛笔', 5.00, '他可以既是钢笔又是毛笔，也可以既不是毛笔也不是钢笔', 400, '1', 'images/goods/15.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122001', '毛笔套装初学者', 24.00, '文房四宝成人练字，附带毛笔五天速成教学视频', 100, '2', 'images/goods/16.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122002', '上林赋全篇手抄字帖', 33.00, '卷轴袖珍珍藏礼盒版！不再问心中悲喜，只问你心中千万缕', 199, '2', 'images/goods/17.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122003', '《中国书法一本通》', 26.00, '毛笔字临摹。学书法，懂书法，这本书就够了！', 198, '2', 'images/goods/18.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122004', '毛笔水写布练字布', 30.00, '速干可重复使用，清水练字临摹', 323, '2', 'images/goods/19.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122005', '宋徽宗瘦金体练字帖', 11.00, '华夏万卷倾情奉献，千字文软笔教程', 2423, '2', 'images/goods/20.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122006', '行数楷书速成', 23.00, '效果不好请退款！28天速成，大学生适用', 546, '2', 'images/goods/21.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unsold', NULL, NULL, NULL, '2025-03-23 12:37:28');
INSERT INTO `goods` VALUES ('122007', '兰亭系列（鼠须）考级国展毛笔', 50.00, '更有弹性，更耐用，书写流畅！早知道，还是兰亭鼠须笔！', 45, '2', 'images/goods/22.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122008', '【翰林系列】瘦金体专用毛笔', 22.00, '瘦金体初学者体质宝宝的毛笔', 646, '2', 'images/goods/23.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122009', '黑头毛笔', 77.00, '似乎可以去黑头', 666, '2', 'images/goods/24.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unsold', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122010', '祥云状香薰熏炉安神·1书写用', 11.00, '鹅梨账中安神香，家用室内持久', 675, '2', 'images/goods/25.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unsold', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122011', '《如何写瘦金》by邱金生', 15.00, '瘦金大师倾情奉献，一本书讲透瘦金', 6774, '2', 'images/goods/26.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unsold', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122012', '初学书法套装精简版', 60.00, '自备墨汁水写布，大学生适用', 7545, '2', 'images/goods/27.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122013', '仿古釉青瓷存墨书法用品', 17.00, '带盖防干，颜值在线', 123, '2', 'images/goods/28.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122014', '花香持久型墨汁一盒装', 16.00, '家用优雅，手有余香。学生推荐，多种花香类型可选', 1243, '2', 'images/goods/29.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('122015', '松烟墨液', 7.00, '国画作品级书法专用墨水', 13432, '2', 'images/goods/30.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123001', '【艺术家之选】专业级水彩画套装', 150.00, '包含所有基本颜色，适合初学者和专业人士使用', 499, '3', 'images/goods/31.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123002', '【画布大师】油画布框', 50.00, '高品质棉布，适合各种油画技法', 198, '3', 'images/goods/32.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123003', '【色彩盛宴】丙烯酸颜料套装', 80.00, '色彩鲜艳，快干，适合室内外绘画', 300, '3', 'images/goods/33.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123004', '【素描专家】素描铅笔套装', 20.00, '从HB到6B，满足不同硬度需求', 400, '3', 'images/goods/34.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123005', '【刀锋画匠】艺术家级油画刀', 35.00, '不锈钢材质，多种尺寸选择', 150, '3', 'images/goods/35.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123006', '【写生伴侣】便携式画板', 25.00, '可折叠设计，方便户外写生', 249, '3', 'images/goods/36.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123007', '【粉彩大师】专业级水粉画颜料', 60.00, '色彩丰富，覆盖力强', 180, '3', 'images/goods/37.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123008', '【稳固之架】画架', 100.00, '可调节高度，稳固耐用', 120, '3', 'images/goods/38.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123009', '【调色大师】调色板', 15.00, '大容量，易于清洗', 500, '3', 'images/goods/39.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123010', '【橡皮卫士】绘画用橡皮擦', 5.00, '柔软耐用，适合各种绘画需求', 1000, '3', 'images/goods/40.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123011', '【笔洗专家】绘画专用洗笔筒', 20.00, '不锈钢材质，耐用易清洗', 300, '3', 'images/goods/41.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123012', '【定色保护】绘画用喷雾定色剂', 18.00, '保护画作，防止颜料脱落', 400, '3', 'images/goods/42.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123013', '【刮刀工艺】绘画用刮刀', 10.00, '多种尺寸，适合不同绘画技巧', 200, '3', 'images/goods/43.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123014', '【画笔艺境】绘画用画笔套装', 40.00, '多种尺寸和形状，适合各种绘画风格', 600, '3', 'images/goods/44.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('123015', '【画布精选】绘画用画布', 30.00, '高品质纯棉画布，适合各种颜料', 800, '3', 'images/goods/45.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124001', '香奈儿仙女最爱画眉笔', 5000.00, '喜上眉梢，目如丹凤', 200, '4', 'images/goods/46.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124002', '黑酷防摔转转笔', 80.00, '适合新手使用。力学黄金升级', 150, '4', 'images/goods/47.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124003', '花西子眉笔李佳琪代言', 200.00, '如笔精细勾勒，如粉顺滑柔色', 100, '4', 'images/goods/48.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124004', '全自动金属绘画铅笔', 120.00, '低重心，重手感，不断芯', 300, '4', 'images/goods/49.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124005', '晨光0.5笔芯家用学生用一筒60支装', 60.00, '百年老厂，加量30%不加价', 250, '4', 'images/goods/50.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124006', '仿真玫瑰笔', 99.00, '浪漫与实用共存', 500, '4', 'images/goods/51.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124007', '签字笔的龙头笔夹', 150.00, '至尊高贵，适合商务', 120, '4', 'images/goods/52.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124008', '消字灵修正液新版', 19.00, '修正错字，舍我其谁', 400, '4', 'images/goods/53.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124009', '莫兰迪荧光笔', 10.00, '学生重点标记笔套装', 100, '4', 'images/goods/54.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124010', '莫兰迪荧光笔复色款', 12.00, '全新升级，色调更复古而品味更时尚', 200, '4', 'images/goods/55.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124011', '莫兰迪荧光笔清香款', 14.00, '法国调香师优选，纸留余香，多种款式可选', 300, '4', 'images/goods/56.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124012', '激光笔', 50.00, '有效范围50米，请不要对准眼睛', 150, '4', 'images/goods/57.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124013', '录音笔', 159.00, '多模式按摩，缓解肩颈疲劳', 200, '4', 'images/goods/58.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124014', '谢保华高伏电笔', 199.00, '专业电工可用，旗舰级电笔', 250, '4', 'images/goods/59.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('124015', '清香四色笔', 12.00, '红蓝黑紫多功能集成，笔体纤细易于使用', 300, '4', 'images/goods/60.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('c212455d-4972-4ad9-a7a5-73fa4acb6373', '红笔测试1', 3.00, '测试商品入库，书写类，3元，数量50,出售', 50, '1', 'images/goods/9dea1388-7c62-40f5-bec7-03da8a7c9720_0fa1a83b-7c21-4072-9f9c-bbff4a133741.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('a667e75a-c9cf-4a80-a650-6f45e39a00ca', '蓝笔测试1', 8.00, '绘画，8，100', 100, '3', 'images/goods/f2d19667-6f8c-4eea-a5d9-9a935ec5a84a_1ae21571-afa0-4df9-b864-6a761ca80d7b.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, NULL, NULL);
INSERT INTO `goods` VALUES ('f9edfc2d-dfb2-44ef-8d4e-0cb502de5f3f', '黑笔测试1', 100.00, '5,100,150', 150, '1', 'images/goods/044b75ca-1026-41bd-bc25-948fe2b831e9_2c60151d-4563-4881-a2f4-f2b9b9e1a5b6.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, '测试', '2025-03-23 10:40:27', '2025-03-23 18:00:57');
INSERT INTO `goods` VALUES ('8b53cbd6-176a-4b08-af0e-1eaaa76b393f', '黑笔测试3', 100.00, '5,100,100', 100, '1', 'images/goods/9cb9842d-e7ff-448a-8c92-83cdbd148139_03a6b003-a1de-4091-ba30-5b5427e849b8.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, NULL, '2025-03-23 13:00:26', '2025-03-23 17:11:05');
INSERT INTO `goods` VALUES ('fdcc6a2c-4fb0-469f-94e1-2d91183c31b2', '红笔测试3', 14.00, '测种类', 34, '1', 'images/goods/5437a477-72fd-4f64-8fa0-8a5724d30449_3bff6ca3-70ef-48bd-8459-298904257521.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, '大笔', '2025-03-23 13:31:43', '2025-03-23 13:51:52');
INSERT INTO `goods` VALUES ('ebc9e025-da26-4779-bae4-6681d84f0991', '中华铅笔', 15.00, '测试', 100, '4', 'images/goods/8b5d1981-39f2-4821-b0a0-1d7cd1aba40e_8ee1b964-f69b-4ee8-aaa0-06c225a31ff0.png', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, '铅笔', '2025-03-23 17:04:01', NULL);
INSERT INTO `goods` VALUES ('c93853b4-900a-486b-afe3-9fb6171fc6ea', '手写板专用电容笔', 500.00, '用于手写板，低延迟', 198, '5', 'images/goods/cd7ea3ca-4f6c-4447-9c0c-e6da44efd4ab_OIP.jpg', 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'available', NULL, '电容笔', '2025-03-23 17:51:28', '2025-03-23 18:02:14');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `room_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `delivery_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('c8f4c640-1a02-4c10-9802-50c595512e0b', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '中南大学', '待付款', NULL, '2025-03-19 15:16:02', NULL, '8927442915', '66购物', 972.00, NULL, 'XIAO');
INSERT INTO `order` VALUES ('a63f902a-a62e-405f-876a-a0e0605a0f61', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '12北', '待付款', NULL, '2025-03-19 15:37:24', NULL, '18926449335', '121购物', 364.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('3121740a-1484-41e3-8ab9-947477bd2587', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '12南', '待付款', NULL, '2025-03-19 18:48:44', NULL, '18926449335', '测试发货等功能', 250.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('310cc850-d8ca-437e-9d30-47ee9d4d4fc3', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'csu', '待付款', NULL, '2025-03-23 16:54:22', NULL, '185', 'csu', 66.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('f8990bc1-9543-40c3-90f6-1a69290cdcfc', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '123', '待付款', NULL, '2025-03-23 16:55:35', NULL, '123', '123', 33.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('f8b455d6-066e-4ccf-a85f-90f3af1b0594', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '234', '待付款', NULL, '2025-03-23 16:56:04', NULL, '234', '234', 132.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('e8cca050-b781-4d15-82fd-941ec8665d9a', '45c4c2cb-4f2c-44f5-839a-628b39d78469', '1', '待付款', NULL, '2025-03-23 17:06:13', NULL, '4', '3', 75.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('5ed78b59-f497-459b-9288-5d365a50d5fc', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'ytuifufghnvtgfjyhgkjbuj', '待付款', NULL, '2025-03-23 17:12:32', NULL, 'ygy', 'iujhijhi', 26.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('13fa68ca-4b41-41d0-b436-a8178c3ec3ed', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'ccc', '待付款', NULL, '2025-03-23 18:14:13', NULL, '185280', 'examine', 636.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('ca19feee-309f-48c3-a0d4-92bf3764713d', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'csuu', '待付款', NULL, '2025-03-23 19:15:19', NULL, '12345', '123', 205.00, NULL, 'Hsiao');
INSERT INTO `order` VALUES ('73dc3c9f-667f-46c7-af11-066e44d522ab', '45c4c2cb-4f2c-44f5-839a-628b39d78469', 'csu1', '待付款', NULL, '2025-03-23 21:29:06', NULL, '123', '123', 543.00, NULL, 'Hsiao');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `order_items_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  `shop_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('162cd048-1c14-4ce8-93b3-fc8729372425', 'c8f4c640-1a02-4c10-9802-50c595512e0b', '121002', '6', 12, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('9a1d1995-17a0-49c9-8f86-194c54d5768c', 'c8f4c640-1a02-4c10-9802-50c595512e0b', '123001', '6', 150, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('c4620323-ff0d-4c34-a711-5c44a5c23f54', 'a63f902a-a62e-405f-876a-a0e0605a0f61', '121005', '1', 200, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('75a67319-09a2-420e-a70b-e772a48bdfd7', 'a63f902a-a62e-405f-876a-a0e0605a0f61', '122009', '2', 77, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'closed');
INSERT INTO `order_items` VALUES ('a459dc70-1367-4218-b04e-d42c55fed591', 'a63f902a-a62e-405f-876a-a0e0605a0f61', '123013', '1', 10, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'closed');
INSERT INTO `order_items` VALUES ('48d3632a-3e72-4409-8d41-f0ac959be6a9', '3121740a-1484-41e3-8ab9-947477bd2587', '121001', '1', 8, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('c644aa90-6c44-4911-b00b-3c67a6fa2a28', '3121740a-1484-41e3-8ab9-947477bd2587', '121002', '1', 12, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('9d45ab82-b6cd-42c0-8264-bc666dc6e98a', '3121740a-1484-41e3-8ab9-947477bd2587', '121003', '1', 5, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('9a2a040d-d2ab-4b98-a5fa-6c2a12bf52d4', '3121740a-1484-41e3-8ab9-947477bd2587', '121004', '1', 15, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('99c6aa34-7cca-438f-b370-ba92427d5195', '3121740a-1484-41e3-8ab9-947477bd2587', '121005', '1', 200, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('eec148e9-e7e7-45e7-8442-6e14c059f32d', '3121740a-1484-41e3-8ab9-947477bd2587', '121006', '1', 10, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'closed');
INSERT INTO `order_items` VALUES ('56cfe834-a0d8-4331-a838-c0d9ed6d91ea', '401cc321-3807-46f2-b482-5d95d3629a77', '121011', '1', 10, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('cc0082a7-91f9-421c-8a4c-b597fcf50d3c', '55ef6365-6f45-47b3-ad5e-be9eebe6e1d2', '121010', '1', 33, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('92fb2c3d-60de-426b-97db-593f3c5a3f3e', '310cc850-d8ca-437e-9d30-47ee9d4d4fc3', '121010', '2', 33, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('de076be3-bfb6-4eb0-823a-7fe6aa280dc3', 'f8990bc1-9543-40c3-90f6-1a69290cdcfc', '121010', '1', 33, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('9d2f3062-f758-4945-8df1-eb616297d651', 'f8b455d6-066e-4ccf-a85f-90f3af1b0594', '121010', '4', 33, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('bec5057e-3918-4641-8491-28e1ef7a730b', 'e8cca050-b781-4d15-82fd-941ec8665d9a', '123002', '1', 50, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('e4129a9a-1f2d-43b0-9d93-1fb1789e0dd7', 'e8cca050-b781-4d15-82fd-941ec8665d9a', '123006', '1', 25, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('13198b92-2b58-48eb-ad80-3bf4a37c5d6a', '5ed78b59-f497-459b-9288-5d365a50d5fc', '122003', '1', 26, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('de2fc5da-fc6c-4a15-8208-faf4919ab322', '13fa68ca-4b41-41d0-b436-a8178c3ec3ed', '121014', '1', 60, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('77750bfd-fbf7-4db0-a557-6eca2b6fb4bb', '13fa68ca-4b41-41d0-b436-a8178c3ec3ed', '122003', '1', 26, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('cf3bac6d-3d48-4092-a26a-022146e1c81a', '13fa68ca-4b41-41d0-b436-a8178c3ec3ed', '123002', '1', 50, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('f84194bb-e1bc-4f67-abed-55fde333b03a', '13fa68ca-4b41-41d0-b436-a8178c3ec3ed', 'c93853b4-900a-486b-afe3-9fb6171fc6ea', '1', 500, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');
INSERT INTO `order_items` VALUES ('d6de8080-5c33-458c-a70d-f7ed874248d0', 'ca19feee-309f-48c3-a0d4-92bf3764713d', '121003', '1', 5, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('d730de05-bbfc-420a-8cbf-e5883fd78bd2', 'ca19feee-309f-48c3-a0d4-92bf3764713d', '122007', '1', 50, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('73c37461-fa40-4619-8cb5-4da776df98c4', 'ca19feee-309f-48c3-a0d4-92bf3764713d', '123001', '1', 150, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('b48675e0-86c5-4d9b-931c-35a4bf266d38', '73dc3c9f-667f-46c7-af11-066e44d522ab', '121006', '1', 10, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('588010d0-1c87-4a04-9ce2-6e27abf265df', '73dc3c9f-667f-46c7-af11-066e44d522ab', '122002', '1', 33, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'unshipped');
INSERT INTO `order_items` VALUES ('332e2e5e-a798-47c2-bb66-48c3f670399c', '73dc3c9f-667f-46c7-af11-066e44d522ab', 'c93853b4-900a-486b-afe3-9fb6171fc6ea', '1', 500, 'af306b72-15e6-496d-a68e-a4f3772dde0f', 'completed');

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic`  (
  `picid` int(11) NOT NULL AUTO_INCREMENT,
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`picid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pic
-- ----------------------------

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `roomId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isActive` tinyint(4) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `composition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shopphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salesman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shopid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', 'sasuke', '2', '3', '4', '5', '6', '7', 'Genshin', '114514', 'Sasuke', 'let me do', '111', 'af306b72-15e6-496d-a68e-a4f3772dde0f', '正常', 'carousel');
INSERT INTO `shop` VALUES ('2', 'naruto', '2', '3', '4', '5', '6', '7', 'HOK', '456', 'Naruto', 'make me', '222', '2', '1', 'thumbnail');

-- ----------------------------
-- Table structure for transaction_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `transaction_snapshot`;
CREATE TABLE `transaction_snapshot`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `shop_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of transaction_snapshot
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
