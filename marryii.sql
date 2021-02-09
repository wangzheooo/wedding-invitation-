SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 't_marry_user', '小程序设置', NULL, NULL, 'TMarryUser', 'crud', 'com.ruoyi.marry', 'marry', 'marrySetting', '小程序设置', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-19 11:51:36', '', '2020-11-19 11:52:34', '');
INSERT INTO `gen_table` VALUES (4, 't_user_image', '婚纱照', NULL, NULL, 'TUserImage', 'crud', 'com.ruoyi.marry', 'marry', 'userImage', '婚纱照', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-19 13:51:30', '', '2020-11-19 13:53:54', '');
INSERT INTO `gen_table` VALUES (5, 't_user', '用户表', NULL, NULL, 'TUser', 'crud', 'com.ruoyi.marry', 'marry', 'tuser', '用户管理', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-23 16:13:42', '', '2020-11-23 16:15:20', '');
INSERT INTO `gen_table` VALUES (6, 't_user_record', '用户浏览记录表', NULL, NULL, 'TUserRecord', 'crud', 'com.ruoyi.marry', 'marry', 'userRecord', '用户浏览记录表', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-23 16:15:29', '', '2020-11-23 16:16:27', '');
INSERT INTO `gen_table` VALUES (7, 't_bless_user', '点赞表', NULL, NULL, 'TBlessUser', 'crud', 'com.ruoyi.marry', 'marry', 'bless', '点赞管理', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-24 13:46:25', '', '2020-11-24 13:48:58', '');
INSERT INTO `gen_table` VALUES (8, 't_bless_comment', '留言表', NULL, NULL, 'TBlessComment', 'crud', 'com.ruoyi.marry', 'marry', 'comment', '留言管理', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-24 15:24:18', '', '2020-11-24 15:25:26', '');
INSERT INTO `gen_table` VALUES (9, 't_user_gold_info', '礼物管理表', NULL, NULL, 'TUserGoldInfo', 'crud', 'com.ruoyi.marry', 'marry', 'goldInfo', '礼物管理', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-24 16:44:56', '', '2020-11-25 10:27:41', '');
INSERT INTO `gen_table` VALUES (11, 't_user_gold', '金币表', NULL, NULL, 'TUserGold', 'crud', 'com.ruoyi.marry', 'marry', 'gold', '用户金币管理', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-25 10:56:53', '', '2020-11-25 10:57:29', '');
INSERT INTO `gen_table` VALUES (14, 't_user_gold_record', '礼物记录表', NULL, NULL, 'TUserGoldRecord', 'crud', 'com.ruoyi.marry', 'marry', 'giftRecord', '礼物记录', 'user_marry', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"婚礼管理\",\"treeCode\":\"\"}', 'admin', '2020-11-25 15:35:17', '', '2020-11-25 15:36:01', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (13, '3', 'id', '主表ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (14, '3', 'appid', 'appid', 'varchar(50)', 'String', 'appid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (15, '3', 'appsecret', 'appsecret', 'varchar(50)', 'String', 'appsecret', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (16, '3', 'comment_status', '评论开关,1开,0关', 'varchar(5)', 'String', 'commentStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (17, '3', 'bless_status', '祝福开关,1开,0关', 'varchar(5)', 'String', 'blessStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (18, '3', 'gold_status', '送礼开关,1开,0关', 'varchar(5)', 'String', 'goldStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (19, '3', 'bridegroom_name', '新郎名字', 'varchar(20)', 'String', 'bridegroomName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (20, '3', 'bride_name', '新娘名字', 'varchar(20)', 'String', 'brideName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (21, '3', 'bridegroom_tel', '新郎电话', 'varchar(20)', 'String', 'bridegroomTel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (22, '3', 'bride_tel', '新娘电话', 'varchar(20)', 'String', 'brideTel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (23, '3', 'solar_calendar', '阳历日期', 'varchar(100)', 'String', 'solarCalendar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (24, '3', 'lunar_calendar', '农历日期', 'varchar(100)', 'String', 'lunarCalendar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (25, '3', 'longitude', '经度', 'varchar(50)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (26, '3', 'latitude', '维度', 'varchar(50)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (27, '3', 'addr', '地址', 'varchar(100)', 'String', 'addr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (28, '3', 'music_name', '背景音乐名称', 'varchar(50)', 'String', 'musicName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 16, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (29, '3', 'music_url', '背景音乐链接', 'varchar(255)', 'String', 'musicUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-11-19 11:51:36', NULL, '2020-11-19 11:52:34');
INSERT INTO `gen_table_column` VALUES (30, '4', 'id', '主表ID', 'varchar(100)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-19 13:51:30', NULL, '2020-11-19 13:53:54');
INSERT INTO `gen_table_column` VALUES (31, '4', 'image_url', '图片链接', 'varchar(255)', 'String', 'imageUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-19 13:51:30', NULL, '2020-11-19 13:53:54');
INSERT INTO `gen_table_column` VALUES (32, '5', 'id', '主表ID', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (33, '5', 'openId', 'openId', 'varchar(255)', 'String', 'openId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (34, '5', 'avatarUrl', '头像', 'varchar(255)', 'String', 'avatarUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (35, '5', 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (36, '5', 'nickName', '微信名', 'varchar(255)', 'String', 'nickName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (37, '5', 'province', '省份', 'varchar(255)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (38, '5', 'createTime', '创建时间', 'varchar(255)', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (39, '5', 'updateTime', '更新时间', 'varchar(255)', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-23 16:13:42', NULL, '2020-11-23 16:15:20');
INSERT INTO `gen_table_column` VALUES (40, '6', 'id', '主表ID', 'varchar(255)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (41, '6', 'openId', 'openId', 'varchar(255)', 'String', 'openId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (42, '6', 'avatarUrl', '用户头像', 'varchar(255)', 'String', 'avatarUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (43, '6', 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (44, '6', 'nickName', '微信名', 'varchar(255)', 'String', 'nickName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (45, '6', 'province', '省份', 'varchar(255)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (46, '6', 'createTime', '创建时间', 'varchar(255)', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (47, '6', 'updateTime', '更新时间', 'varchar(255)', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-23 16:15:29', NULL, '2020-11-23 16:16:27');
INSERT INTO `gen_table_column` VALUES (48, '7', 'id', '主表ID', 'int(8)', 'Integer', 'id', '1', '1', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-11-24 13:46:26', NULL, '2020-11-24 13:48:58');
INSERT INTO `gen_table_column` VALUES (49, '7', 'open_id', 'openId', 'varchar(255)', 'String', 'openId', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-24 13:46:26', NULL, '2020-11-24 13:48:58');
INSERT INTO `gen_table_column` VALUES (50, '7', 'create_time', '创建时间', 'varchar(255)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', NULL, 'EQ', 'input', '', 3, 'admin', '2020-11-24 13:46:26', NULL, '2020-11-24 13:48:58');
INSERT INTO `gen_table_column` VALUES (51, '8', 'id', '主表ID', 'int(8)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (52, '8', 'open_id', 'openId', 'varchar(255)', 'String', 'openId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (53, '8', 'comment', '留言内容', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (54, '8', 'nick_name', '微信名', 'varchar(255)', 'String', 'nickName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (55, '8', 'nick_image', '头像', 'varchar(255)', 'String', 'nickImage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (56, '8', 'create_time', '创建时间', 'varchar(255)', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-11-24 15:24:18', NULL, '2020-11-24 15:25:26');
INSERT INTO `gen_table_column` VALUES (57, '9', 'id', '主表ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-24 16:44:56', NULL, '2020-11-25 10:27:41');
INSERT INTO `gen_table_column` VALUES (58, '9', 'gift_name', '', 'varchar(255)', 'String', 'giftName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-24 16:44:56', NULL, '2020-11-25 10:27:41');
INSERT INTO `gen_table_column` VALUES (59, '9', 'gift_url', '', 'varchar(255)', 'String', 'giftUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-24 16:44:56', NULL, '2020-11-25 10:27:41');
INSERT INTO `gen_table_column` VALUES (60, '9', 'gift_gold', '', 'int(5)', 'Integer', 'giftGold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-24 16:44:56', NULL, '2020-11-25 10:27:41');
INSERT INTO `gen_table_column` VALUES (65, '11', 'id', '主表ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-25 10:56:53', NULL, '2020-11-25 10:57:29');
INSERT INTO `gen_table_column` VALUES (66, '11', 'openid', 'openId', 'varchar(255)', 'String', 'openid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-25 10:56:53', NULL, '2020-11-25 10:57:29');
INSERT INTO `gen_table_column` VALUES (67, '11', 'gold', '金币', 'int(10)', 'Integer', 'gold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-25 10:56:53', NULL, '2020-11-25 10:57:29');
INSERT INTO `gen_table_column` VALUES (80, '14', 'id', '主表ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-25 15:35:17', NULL, '2020-11-25 15:36:01');
INSERT INTO `gen_table_column` VALUES (81, '14', 'openid', 'openId', 'varchar(255)', 'String', 'openid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-25 15:35:17', NULL, '2020-11-25 15:36:01');
INSERT INTO `gen_table_column` VALUES (82, '14', 'gift_name', '礼物名', 'varchar(255)', 'String', 'giftName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-11-25 15:35:17', NULL, '2020-11-25 15:36:01');
INSERT INTO `gen_table_column` VALUES (83, '14', 'gift_gold', '礼物价格', 'varchar(255)', 'String', 'giftGold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-25 15:35:17', NULL, '2020-11-25 15:36:01');
INSERT INTO `gen_table_column` VALUES (84, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-11-25 15:35:17', NULL, '2020-11-25 15:36:01');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175DE2C989078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175DE2C989078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175DE2C989078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'WINALIY-S58N3RV1607064822884', 1607065822955, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1607064830000, -1, 5, 'PAUSED', 'CRON', 1607064823000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1607064825000, -1, 5, 'PAUSED', 'CRON', 1607064823000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1607064840000, -1, 5, 'PAUSED', 'CRON', 1607064824000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-11-19 09:44:26', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-11-19 09:44:26', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：16毫秒', '0', '', '2020-12-04 10:01:20');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2020-12-04 14:04:10');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 09:49:36');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-19 10:05:01');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 10:05:01');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 10:10:29');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 10:49:56');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 10:54:57');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:00:15');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:03:24');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:54:16');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 12:20:49');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 12:21:00');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 12:34:30');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 12:37:08');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 12:59:08');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 13:02:35');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 13:27:10');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 13:57:23');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 14:00:06');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 14:37:53');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 15:04:13');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 15:08:09');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 15:09:20');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 15:18:11');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 16:40:58');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 16:45:17');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:14:58');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:21:45');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:28:27');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:32:22');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:40:54');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:45:58');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 09:53:43');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 10:18:59');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 10:48:17');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 10:52:53');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 10:53:19');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:19:44');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:20:12');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:20:57');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:33:48');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:37:23');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 11:38:46');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 12:31:50');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 12:45:08');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 12:47:38');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 12:52:21');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:11:49');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:34:01');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:40:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:45:18');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:47:56');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 13:56:42');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 14:06:25');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 14:15:55');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 14:22:17');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 14:49:39');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 16:13:27');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-23 16:18:50');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 08:12:10');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 08:20:16');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 08:21:34');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 08:27:12');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 09:49:08');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 10:08:25');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:35:01');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 12:56:28');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 13:11:17');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 13:46:19');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 14:20:19');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 14:40:46');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 15:24:09');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 15:33:44');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 15:46:26');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-24 16:15:19');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:24:13');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:34:18');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:40:11');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:41:56');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:44:02');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 10:56:00');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 15:29:16');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 15:38:14');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 15:40:22');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 16:17:39');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-25 16:52:27');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-26 13:28:56');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-26 22:25:21');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-26 23:11:28');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 12:22:36');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 13:30:53');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 15:15:25');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 15:50:08');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 15:51:41');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:00:44');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:03:22');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:06:32');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:07:57');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:11:54');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 10:16:13');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '182.34.200.244', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 10:29:02');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 11:17:47');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '182.34.200.244', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 23:02:27');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '182.34.200.244', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 23:40:44');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-28 23:40:53');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 09:41:04');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 10:23:39');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 10:46:25');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 10:52:25');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 10:58:29');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 12:28:01');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 13:03:52');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 13:06:11');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 13:58:21');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:00:12');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:04:04');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:06:19');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:13:33');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:18:22');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:27:01');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:30:19');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:32:01');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:33:35');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:39:02');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:43:14');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:51:34');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 14:57:43');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:00:44');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:03:51');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:09:26');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:12:13');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:13:01');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:13:47');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:22:36');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 15:23:22');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '223.96.92.209', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 16:22:59');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 16:24:52');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 16:34:03');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-01 16:58:44');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 14:32:54');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 15:36:02');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 16:24:20');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 16:36:06');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 14:09:16');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 14:12:50');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 14:14:20');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '223.96.92.209', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 14:23:10');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '223.96.92.209', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 14:54:25');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2058 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 20, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2020-11-19 09:44:26', 'admin', '2020-11-19 10:06:58', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 30, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2020-11-19 09:44:26', 'admin', '2020-11-19 10:07:07', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 40, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2020-11-19 09:44:26', 'admin', '2020-11-19 10:07:11', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 50, 'http://ruoyi.vip', 'menuBlank', 'C', '1', '', 'fa fa-location-arrow', 'admin', '2020-11-19 09:44:26', 'admin', '2020-11-19 10:07:16', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2020-11-19 09:44:26', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2020-11-19 09:44:26', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2020-11-19 09:44:26', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2020-11-19 09:44:26', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2020-11-19 09:44:26', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2020-11-19 09:44:26', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2020-11-19 09:44:26', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2020-11-19 09:44:26', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2020-11-19 09:44:26', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2020-11-19 09:44:26', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2020-11-19 09:44:26', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2020-11-19 09:44:26', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2020-11-19 09:44:26', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2020-11-19 09:44:26', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2020-11-19 09:44:26', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2020-11-19 09:44:26', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2020-11-19 09:44:26', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2020-11-19 09:44:26', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '小程序数据管理', 0, 10, '#', 'menuItem', 'M', '0', '', 'fa fa-group', 'admin', '2020-11-19 10:06:51', 'admin', '2020-12-01 15:54:18', '');
INSERT INTO `sys_menu` VALUES (2001, '小程序主要信息', 2056, 10, '/marry/marrySetting', 'menuItem', 'C', '0', 'marry:marrySetting:view', '#', 'admin', '2020-11-19 10:56:15', 'admin', '2020-11-27 16:09:06', '小程序设置菜单');
INSERT INTO `sys_menu` VALUES (2002, '小程序设置查询', 2001, 1, '#', '', 'F', '0', 'marry:marrySetting:list', '#', 'admin', '2020-11-19 10:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '小程序设置新增', 2001, 2, '#', '', 'F', '0', 'marry:marrySetting:add', '#', 'admin', '2020-11-19 10:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '小程序设置修改', 2001, 3, '#', '', 'F', '0', 'marry:marrySetting:edit', '#', 'admin', '2020-11-19 10:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '小程序设置删除', 2001, 4, '#', '', 'F', '0', 'marry:marrySetting:remove', '#', 'admin', '2020-11-19 10:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '小程序设置导出', 2001, 5, '#', '', 'F', '0', 'marry:marrySetting:export', '#', 'admin', '2020-11-19 10:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '婚纱照', 2056, 20, '/marry/userImage', 'menuItem', 'C', '0', 'marry:userImage:view', '#', 'admin', '2020-11-19 13:54:28', 'admin', '2020-11-27 16:09:14', '婚纱照菜单');
INSERT INTO `sys_menu` VALUES (2008, '婚纱照查询', 2007, 1, '#', '', 'F', '0', 'marry:userImage:list', '#', 'admin', '2020-11-19 13:54:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '婚纱照新增', 2007, 2, '#', '', 'F', '0', 'marry:userImage:add', '#', 'admin', '2020-11-19 13:54:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '婚纱照修改', 2007, 3, '#', '', 'F', '0', 'marry:userImage:edit', '#', 'admin', '2020-11-19 13:54:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '婚纱照删除', 2007, 4, '#', '', 'F', '0', 'marry:userImage:remove', '#', 'admin', '2020-11-19 13:54:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '婚纱照导出', 2007, 5, '#', '', 'F', '0', 'marry:userImage:export', '#', 'admin', '2020-11-19 13:54:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '其他照片', 2056, 30, 'marry/userOtherImage', 'menuItem', 'C', '0', '', '#', 'admin', '2020-11-23 11:39:42', 'admin', '2020-11-27 16:09:25', '');
INSERT INTO `sys_menu` VALUES (2014, '用户管理', 2000, 40, '/marry/tuser', 'menuItem', 'C', '0', 'marry:tuser:view', '#', 'admin', '2020-11-23 16:16:55', 'admin', '2020-11-23 16:19:03', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (2015, '用户管理查询', 2014, 1, '#', '', 'F', '0', 'marry:tuser:list', '#', 'admin', '2020-11-23 16:16:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '用户管理新增', 2014, 2, '#', '', 'F', '0', 'marry:tuser:add', '#', 'admin', '2020-11-23 16:16:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '用户管理修改', 2014, 3, '#', '', 'F', '0', 'marry:tuser:edit', '#', 'admin', '2020-11-23 16:16:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '用户管理删除', 2014, 4, '#', '', 'F', '0', 'marry:tuser:remove', '#', 'admin', '2020-11-23 16:16:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '用户管理导出', 2014, 5, '#', '', 'F', '0', 'marry:tuser:export', '#', 'admin', '2020-11-23 16:16:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '用户浏览记录', 2000, 50, '/marry/userRecord', 'menuItem', 'C', '0', 'marry:userRecord:view', '#', 'admin', '2020-11-23 16:17:36', 'admin', '2020-11-23 16:19:22', '用户浏览记录表菜单');
INSERT INTO `sys_menu` VALUES (2021, '用户浏览记录表查询', 2020, 1, '#', '', 'F', '0', 'marry:userRecord:list', '#', 'admin', '2020-11-23 16:17:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '用户浏览记录表新增', 2020, 2, '#', '', 'F', '0', 'marry:userRecord:add', '#', 'admin', '2020-11-23 16:17:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '用户浏览记录表修改', 2020, 3, '#', '', 'F', '0', 'marry:userRecord:edit', '#', 'admin', '2020-11-23 16:17:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '用户浏览记录表删除', 2020, 4, '#', '', 'F', '0', 'marry:userRecord:remove', '#', 'admin', '2020-11-23 16:17:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '用户浏览记录表导出', 2020, 5, '#', '', 'F', '0', 'marry:userRecord:export', '#', 'admin', '2020-11-23 16:17:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '点赞管理', 2000, 60, '/marry/bless', 'menuItem', 'C', '0', 'marry:bless:view', '#', 'admin', '2020-11-24 13:51:45', 'admin', '2020-11-24 15:33:58', '点赞管理菜单');
INSERT INTO `sys_menu` VALUES (2027, '点赞管理查询', 2026, 1, '#', '', 'F', '0', 'marry:bless:list', '#', 'admin', '2020-11-24 13:51:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '点赞管理新增', 2026, 2, '#', '', 'F', '0', 'marry:bless:add', '#', 'admin', '2020-11-24 13:51:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '点赞管理修改', 2026, 3, '#', '', 'F', '0', 'marry:bless:edit', '#', 'admin', '2020-11-24 13:51:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '点赞管理删除', 2026, 4, '#', '', 'F', '0', 'marry:bless:remove', '#', 'admin', '2020-11-24 13:51:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '点赞管理导出', 2026, 5, '#', '', 'F', '0', 'marry:bless:export', '#', 'admin', '2020-11-24 13:51:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '留言管理', 2000, 70, '/marry/comment', 'menuItem', 'C', '0', 'marry:comment:view', '#', 'admin', '2020-11-24 15:25:46', 'admin', '2020-11-24 15:34:03', '留言管理菜单');
INSERT INTO `sys_menu` VALUES (2033, '留言管理查询', 2032, 1, '#', '', 'F', '0', 'marry:comment:list', '#', 'admin', '2020-11-24 15:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '留言管理新增', 2032, 2, '#', '', 'F', '0', 'marry:comment:add', '#', 'admin', '2020-11-24 15:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '留言管理修改', 2032, 3, '#', '', 'F', '0', 'marry:comment:edit', '#', 'admin', '2020-11-24 15:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '留言管理删除', 2032, 4, '#', '', 'F', '0', 'marry:comment:remove', '#', 'admin', '2020-11-24 15:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '留言管理导出', 2032, 5, '#', '', 'F', '0', 'marry:comment:export', '#', 'admin', '2020-11-24 15:25:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '礼物维护', 2056, 80, '/marry/goldInfo', 'menuItem', 'C', '0', 'marry:goldInfo:view', '#', 'admin', '2020-11-25 10:28:24', 'admin', '2020-11-27 16:10:32', '礼物管理菜单');
INSERT INTO `sys_menu` VALUES (2039, '礼物管理查询', 2038, 1, '#', '', 'F', '0', 'marry:goldInfo:list', '#', 'admin', '2020-11-25 10:28:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '礼物管理新增', 2038, 2, '#', '', 'F', '0', 'marry:goldInfo:add', '#', 'admin', '2020-11-25 10:28:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '礼物管理修改', 2038, 3, '#', '', 'F', '0', 'marry:goldInfo:edit', '#', 'admin', '2020-11-25 10:28:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '礼物管理删除', 2038, 4, '#', '', 'F', '0', 'marry:goldInfo:remove', '#', 'admin', '2020-11-25 10:28:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '礼物管理导出', 2038, 5, '#', '', 'F', '0', 'marry:goldInfo:export', '#', 'admin', '2020-11-25 10:28:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '用户金币管理', 2000, 90, '/marry/gold', 'menuItem', 'C', '0', 'marry:gold:view', '#', 'admin', '2020-11-25 10:57:47', 'admin', '2020-11-25 16:52:45', '用户金币管理菜单');
INSERT INTO `sys_menu` VALUES (2045, '用户金币管理查询', 2044, 1, '#', '', 'F', '0', 'marry:gold:list', '#', 'admin', '2020-11-25 10:57:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '用户金币管理新增', 2044, 2, '#', '', 'F', '0', 'marry:gold:add', '#', 'admin', '2020-11-25 10:57:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '用户金币管理修改', 2044, 3, '#', '', 'F', '0', 'marry:gold:edit', '#', 'admin', '2020-11-25 10:57:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '用户金币管理删除', 2044, 4, '#', '', 'F', '0', 'marry:gold:remove', '#', 'admin', '2020-11-25 10:57:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '用户金币管理导出', 2044, 5, '#', '', 'F', '0', 'marry:gold:export', '#', 'admin', '2020-11-25 10:57:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '礼物记录', 2000, 100, '/marry/giftRecord', 'menuItem', 'C', '0', 'marry:giftRecord:view', '#', 'admin', '2020-11-25 15:36:23', 'admin', '2020-11-25 16:52:50', '礼物记录菜单');
INSERT INTO `sys_menu` VALUES (2051, '礼物记录查询', 2050, 1, '#', '', 'F', '0', 'marry:giftRecord:list', '#', 'admin', '2020-11-25 15:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '礼物记录新增', 2050, 2, '#', '', 'F', '0', 'marry:giftRecord:add', '#', 'admin', '2020-11-25 15:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '礼物记录修改', 2050, 3, '#', '', 'F', '0', 'marry:giftRecord:edit', '#', 'admin', '2020-11-25 15:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '礼物记录删除', 2050, 4, '#', '', 'F', '0', 'marry:giftRecord:remove', '#', 'admin', '2020-11-25 15:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '礼物记录导出', 2050, 5, '#', '', 'F', '0', 'marry:giftRecord:export', '#', 'admin', '2020-11-25 15:36:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '小程序设置', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-gears', 'admin', '2020-11-27 16:08:23', 'admin', '2020-12-01 15:24:14', '');
INSERT INTO `sys_menu` VALUES (2057, '一键清除数据', 2056, 110, 'marry/marrySetting/clearView', 'menuItem', 'C', '0', '', '#', 'admin', '2020-12-01 10:53:12', 'admin', '2020-12-01 15:24:26', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:05:28');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-11-19 10:05:48');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:05:56');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"婚礼管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-heart\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:06:51');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"20\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:06:58');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"30\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:07:07');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"40\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:07:11');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"50\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:07:16');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-11-19 10:07:50');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_marry_user\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:11:00');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:50:04');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_marry_user\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:50:11');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_marry_user\"],\"tableComment\":[\"小程序设置\"],\"className\":[\"TMarryUser\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"7\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"8\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"小程序appid\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"appid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"9\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"小程序appsecret\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"appsecret\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"10\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论开关\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"commentStatus\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"11\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"祝福开关\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"blessStatus\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"12\"],\"column', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 10:53:03');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_marry_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 10:53:06');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_marry_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 10:55:04');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 11:51:30');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_marry_user\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 11:51:36');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"t_marry_user\"],\"tableComment\":[\"小程序设置\"],\"className\":[\"TMarryUser\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"13\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"14\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"appid\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"appid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"15\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"appsecret\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"appsecret\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"16\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"评论开关,1开,0关\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"commentStatus\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"17\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"祝福开关,1开,0关\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"blessStatus\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"18\"],\"columns[5].sort\":[\"6\"],\"colum', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 11:52:34');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_marry_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 11:52:37');
INSERT INTO `sys_oper_log` VALUES (119, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 12:55:37');
INSERT INTO `sys_oper_log` VALUES (120, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 12:56:07');
INSERT INTO `sys_oper_log` VALUES (121, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 12:58:37');
INSERT INTO `sys_oper_log` VALUES (122, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 13:02:58');
INSERT INTO `sys_oper_log` VALUES (123, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:03:56');
INSERT INTO `sys_oper_log` VALUES (124, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:01');
INSERT INTO `sys_oper_log` VALUES (125, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me1\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:06');
INSERT INTO `sys_oper_log` VALUES (126, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:11');
INSERT INTO `sys_oper_log` VALUES (127, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me123\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:14');
INSERT INTO `sys_oper_log` VALUES (128, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:21');
INSERT INTO `sys_oper_log` VALUES (129, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:05:33');
INSERT INTO `sys_oper_log` VALUES (130, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"管理员\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"admin@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"1\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2020-11-19 13:17:22');
INSERT INTO `sys_oper_log` VALUES (131, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"测试部门\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"1\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:17:26');
INSERT INTO `sys_oper_log` VALUES (132, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:27:36');
INSERT INTO `sys_oper_log` VALUES (133, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:27:43');
INSERT INTO `sys_oper_log` VALUES (134, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb6678\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:37:00');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_image\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:51:30');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"t_user_image\"],\"tableComment\":[\"婚纱照\"],\"className\":[\"TUserImage\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"30\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"31\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"图片链接\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"imageUrl\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"userImage\"],\"functionName\":[\"婚纱照\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 13:53:54');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_user_image', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-19 13:53:57');
INSERT INTO `sys_oper_log` VALUES (138, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', '{\"imageUrl\":[\"12312312\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\springbootproject\\marryII\\ruoyi-marry\\target\\classes\\mapper\\marry\\TUserImageMapper.xml]\r\n### The error may involve com.ruoyi.marry.mapper.TUserImageMapper.insertTUserImage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_user_image          ( image_url )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-11-19 13:59:00');
INSERT INTO `sys_oper_log` VALUES (139, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', '{\"imageUrl\":[\"12312\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:00:11');
INSERT INTO `sys_oper_log` VALUES (140, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', '{\"imageUrl\":[\"12312312\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:00:20');
INSERT INTO `sys_oper_log` VALUES (141, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:00:36');
INSERT INTO `sys_oper_log` VALUES (142, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:01:17');
INSERT INTO `sys_oper_log` VALUES (143, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:37:59');
INSERT INTO `sys_oper_log` VALUES (144, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:39:31');
INSERT INTO `sys_oper_log` VALUES (145, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:40:00');
INSERT INTO `sys_oper_log` VALUES (146, '婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/add', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 14:40:17');
INSERT INTO `sys_oper_log` VALUES (147, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/updateImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : null,\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 16:41:02');
INSERT INTO `sys_oper_log` VALUES (148, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/updateImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : null,\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 16:41:16');
INSERT INTO `sys_oper_log` VALUES (149, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addSave()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/updateImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : null,\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-19 16:42:38');
INSERT INTO `sys_oper_log` VALUES (150, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-19 16:45:26');
INSERT INTO `sys_oper_log` VALUES (151, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"String index out of range: -1\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-11-23 09:15:05');
INSERT INTO `sys_oper_log` VALUES (152, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:22:35');
INSERT INTO `sys_oper_log` VALUES (153, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:28:32');
INSERT INTO `sys_oper_log` VALUES (154, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:30:53');
INSERT INTO `sys_oper_log` VALUES (155, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:32:26');
INSERT INTO `sys_oper_log` VALUES (156, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:32:52');
INSERT INTO `sys_oper_log` VALUES (157, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:40:59');
INSERT INTO `sys_oper_log` VALUES (158, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 09:46:15');
INSERT INTO `sys_oper_log` VALUES (159, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 10:04:42');
INSERT INTO `sys_oper_log` VALUES (160, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"0fed1f5f8f17401d9d55091bc247785b\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 10:39:19');
INSERT INTO `sys_oper_log` VALUES (161, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 10:48:26');
INSERT INTO `sys_oper_log` VALUES (162, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 11:33:53');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"小程序设置\"],\"url\":[\"/marry/marrySetting\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:marrySetting:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 11:37:36');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"婚纱照\"],\"url\":[\"/marry/userImage\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:userImage:view\"],\"orderNum\":[\"20\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 11:37:43');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"其他照片\"],\"url\":[\"marry/userOtherImage\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"30\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 11:39:42');
INSERT INTO `sys_oper_log` VALUES (166, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:26:29');
INSERT INTO `sys_oper_log` VALUES (167, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:45:22');
INSERT INTO `sys_oper_log` VALUES (168, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:45:30');
INSERT INTO `sys_oper_log` VALUES (169, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:51:00');
INSERT INTO `sys_oper_log` VALUES (170, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:59:00');
INSERT INTO `sys_oper_log` VALUES (171, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001;\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:59:37');
INSERT INTO `sys_oper_log` VALUES (172, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 13:59:58');
INSERT INTO `sys_oper_log` VALUES (173, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:06:42');
INSERT INTO `sys_oper_log` VALUES (174, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:09:53');
INSERT INTO `sys_oper_log` VALUES (175, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:16:06');
INSERT INTO `sys_oper_log` VALUES (176, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"004\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:16:25');
INSERT INTO `sys_oper_log` VALUES (177, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:22:39');
INSERT INTO `sys_oper_log` VALUES (178, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:22:50');
INSERT INTO `sys_oper_log` VALUES (179, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:10');
INSERT INTO `sys_oper_log` VALUES (180, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8a9c997e95bf43c0addd708a595394c5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:16');
INSERT INTO `sys_oper_log` VALUES (181, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"bb957734e2f44a0b82addf96af8d9f60\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:18');
INSERT INTO `sys_oper_log` VALUES (182, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"e4eae75246d34c23a108857c79fa2fa9\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:20');
INSERT INTO `sys_oper_log` VALUES (183, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"a97b8713e2bb4df98440b3fc0bf0f4fb\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:22');
INSERT INTO `sys_oper_log` VALUES (184, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"aca67c3522fc4967aa6a90dce0d79aff\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:24');
INSERT INTO `sys_oper_log` VALUES (185, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"c064b82a5ed54ab4918e6c7ecfdc377f\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:25');
INSERT INTO `sys_oper_log` VALUES (186, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"f8991763980f4c6e94834e7f7b81f998\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:27');
INSERT INTO `sys_oper_log` VALUES (187, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:44');
INSERT INTO `sys_oper_log` VALUES (188, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:23:52');
INSERT INTO `sys_oper_log` VALUES (189, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:24:06');
INSERT INTO `sys_oper_log` VALUES (190, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"004\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:25:40');
INSERT INTO `sys_oper_log` VALUES (191, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:49:58');
INSERT INTO `sys_oper_log` VALUES (192, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 14:50:09');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:13:42');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"t_user\"],\"tableComment\":[\"用户表\"],\"className\":[\"TUser\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"32\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"33\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"34\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatarUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"35\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"城市\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"city\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"36\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"微信名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nickName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"37\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"省份\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"province\"],\"columns[5].isInsert\":[\"1\"],\"colum', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:15:20');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_record\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:15:29');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"t_user_record\"],\"tableComment\":[\"用户浏览记录表\"],\"className\":[\"TUserRecord\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"avatarUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"城市\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"city\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"微信名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nickName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"45\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"省份\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"province\"],\"columns[5].isI', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:16:27');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-23 16:16:31');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_user_record', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-23 16:17:13');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/marry/tuser\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:tuser:view\"],\"orderNum\":[\"40\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:19:03');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2020\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"用户浏览记录表\"],\"url\":[\"/marry/userRecord\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:userRecord:view\"],\"orderNum\":[\"50\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:19:09');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2020\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"用户浏览记录\"],\"url\":[\"/marry/userRecord\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:userRecord:view\"],\"orderNum\":[\"50\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-23 16:19:22');
INSERT INTO `sys_oper_log` VALUES (202, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:13:16');
INSERT INTO `sys_oper_log` VALUES (203, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:15:57');
INSERT INTO `sys_oper_log` VALUES (204, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"0059117d147e404082d7034846c73bb3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:20:20');
INSERT INTO `sys_oper_log` VALUES (205, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:21:42');
INSERT INTO `sys_oper_log` VALUES (206, '婚纱照', 3, 'com.ruoyi.marry.controller.TUserImageController.remove()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"25da7e730eaa451e8ec70bb0b23730b2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:21:45');
INSERT INTO `sys_oper_log` VALUES (207, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:27:25');
INSERT INTO `sys_oper_log` VALUES (208, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:27:42');
INSERT INTO `sys_oper_log` VALUES (209, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:27:59');
INSERT INTO `sys_oper_log` VALUES (210, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"004\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:28:11');
INSERT INTO `sys_oper_log` VALUES (211, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:28:25');
INSERT INTO `sys_oper_log` VALUES (212, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:28:39');
INSERT INTO `sys_oper_log` VALUES (213, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:28:54');
INSERT INTO `sys_oper_log` VALUES (214, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:29:06');
INSERT INTO `sys_oper_log` VALUES (215, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 08:29:19');
INSERT INTO `sys_oper_log` VALUES (216, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 09:50:06');
INSERT INTO `sys_oper_log` VALUES (217, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:35:54');
INSERT INTO `sys_oper_log` VALUES (218, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:35:55');
INSERT INTO `sys_oper_log` VALUES (219, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"002\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:39:44');
INSERT INTO `sys_oper_log` VALUES (220, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"003\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 12:56:59');
INSERT INTO `sys_oper_log` VALUES (221, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村123123123123123\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 13:12:49');
INSERT INTO `sys_oper_log` VALUES (222, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 13:13:21');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_bless_user\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 13:46:26');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"t_bless_user\"],\"tableComment\":[\"点赞表\"],\"className\":[\"TBlessUser\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"48\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"49\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"50\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"bless\"],\"functionName\":[\"点赞管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 13:48:46');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"t_bless_user\"],\"tableComment\":[\"点赞表\"],\"className\":[\"TBlessUser\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"48\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"49\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"50\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"createTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"bless\"],\"functionName\":[\"点赞管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 13:48:58');
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/party/tool/gen/download/t_bless_user', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-24 13:51:14');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_bless_comment\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:24:18');
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"t_bless_comment\"],\"tableComment\":[\"留言表\"],\"className\":[\"TBlessComment\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"51\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"52\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"53\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"留言内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"comment\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"54\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"微信名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nickName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"55\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"头像\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"nickImage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"56\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"createTime\"],\"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:25:26');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/party/tool/gen/download/t_bless_comment', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-24 15:25:29');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2026\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"点赞管理\"],\"url\":[\"/marry/bless\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:bless:view\"],\"orderNum\":[\"60\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:33:58');
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2032\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"留言管理\"],\"url\":[\"/marry/comment\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:comment:view\"],\"orderNum\":[\"70\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:34:03');
INSERT INTO `sys_oper_log` VALUES (232, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:38:51');
INSERT INTO `sys_oper_log` VALUES (233, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 15:39:05');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold_info\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-24 16:44:56');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"t_user_gold_info\"],\"tableComment\":[\"礼物管理表\"],\"className\":[\"TUserGoldInfo\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"57\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"58\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"giftName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"59\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"giftUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"60\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"giftGold\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"goldInfo\"],\"functionName\":[\"礼物管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:27:41');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/party/tool/gen/download/t_user_gold_info', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-25 10:27:55');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"礼物管理\"],\"url\":[\"/marry/goldInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:goldInfo:view\"],\"orderNum\":[\"80\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:34:31');
INSERT INTO `sys_oper_log` VALUES (238, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"棒棒糖\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/FNa3j4boXtO6rgXQSqVbuHcxfeF5ZbG4ScYV*fBSOLM!/b/dLYAAAAAAAAA&bo=yADIAMgAyAADGTw!&rf=viewer_4\"],\"giftGold\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:37:41');
INSERT INTO `sys_oper_log` VALUES (239, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"比心\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/WFA8aoYYdngnZR*IzzkjzFEFucc1vYBFqC7VWORDXTg!/b/dAUBAAAAAAAA&bo=yADIAMgAyAADCSw!&rf=viewer_4\"],\"giftGold\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:38:06');
INSERT INTO `sys_oper_log` VALUES (240, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"爱心气球\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/9xoCsXgtfQZQc*ZMZ7RDQX1bExRKx3jx.IrPxmxjCWk!/b/dL8AAAAAAAAA&bo=OAReBQAAAAADB0U!&rf=viewer_4\"],\"giftGold\":[\"20\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:38:21');
INSERT INTO `sys_oper_log` VALUES (241, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"项链\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/6Ip8WUXx7bTHQnO*79COBNaO0COhkUBrMENER.i9ZQY!/b/dLYAAAAAAAAA&bo=6APoAwAAAAADByI!&rf=viewer_4\"],\"giftGold\":[\"30\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:38:35');
INSERT INTO `sys_oper_log` VALUES (242, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"钻石\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/FDxffcJALT5FC9zegAeaC*dFNamDZZBawwtDCZiEt.M!/b/dMMAAAAAAAAA&bo=OAQ4BAAAAAADByI!&rf=viewer_4\"],\"giftGold\":[\"50\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:38:49');
INSERT INTO `sys_oper_log` VALUES (243, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"热气球\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/G2azsty6.g1ptReQx*30jkxujdX8Eu9xseiNpDkvmPA!/b/dLYAAAAAAAAA&bo=yADIAAAAAAADByI!&rf=viewer_4\"],\"giftGold\":[\"100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:39:06');
INSERT INTO `sys_oper_log` VALUES (244, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"豪车\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/5FF1.lt0sivAjWIy3JsAjZzrgIJtJNsYgxQzgnpyOIs!/b/dFQBAAAAAAAA&bo=gACAAAAAAAADByI!&rf=viewer_4\"],\"giftGold\":[\"120\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:39:21');
INSERT INTO `sys_oper_log` VALUES (245, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"游艇\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/KYRMNmvhxjR2DbW0VXB9rzPoNdNx.y4nxUc58Oy47II!/b/dL8AAAAAAAAA&bo=IANDAQAAAAADB0M!&rf=viewer_4\"],\"giftGold\":[\"150\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:39:36');
INSERT INTO `sys_oper_log` VALUES (246, '礼物管理', 1, 'com.ruoyi.marry.controller.TUserGoldInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/goldInfo/add', '127.0.0.1', '内网IP', '{\"giftName\":[\"超级游艇\"],\"giftUrl\":[\"http://m.qpic.cn/psb?/V13E2po72ki5ls/KYRMNmvhxjR2DbW0VXB9rzPoNdNx.y4nxUc58Oy47II!/b/dL8AAAAAAAAA&bo=IANDAQAAAAADB0M!&rf=viewer_4\"],\"giftGold\":[\"300\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:44:52');
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:56:07');
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:56:50');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:56:53');
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"t_user_gold\"],\"tableComment\":[\"金币表\"],\"className\":[\"TUserGold\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"65\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"66\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"67\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"金币\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"gold\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"gold\"],\"functionName\":[\"用户金币管理\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 10:57:29');
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/party/tool/gen/download/t_user_gold', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-25 10:57:32');
INSERT INTO `sys_oper_log` VALUES (252, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold_record\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:29:23');
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:31:46');
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold_record\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:31:48');
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:35:13');
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_user_gold_record\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:35:17');
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"t_user_gold_record\"],\"tableComment\":[\"礼物记录表\"],\"className\":[\"TUserGoldRecord\"],\"functionAuthor\":[\"user_marry\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"80\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主表ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"81\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"openId\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"82\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"礼物名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"giftName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"83\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"礼物价格\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"giftGold\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"84\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.marry\"],\"moduleName\":[\"marry\"],\"businessName\":[\"giftRecord\"],\"functionName\":[\"礼物记录\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"婚礼管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"sub', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 15:36:01');
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/party/tool/gen/download/t_user_gold_record', '127.0.0.1', '内网IP', NULL, 'null', 0, NULL, '2020-11-25 15:36:03');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2044\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"用户金币管理\"],\"url\":[\"/marry/gold\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:gold:view\"],\"orderNum\":[\"90\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 16:52:46');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2050\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"礼物记录\"],\"url\":[\"/marry/giftRecord\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:giftRecord:view\"],\"orderNum\":[\"100\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 16:52:50');
INSERT INTO `sys_oper_log` VALUES (261, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 16:53:07');
INSERT INTO `sys_oper_log` VALUES (262, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 16:54:08');
INSERT INTO `sys_oper_log` VALUES (263, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 16:56:25');
INSERT INTO `sys_oper_log` VALUES (264, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"1\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-25 17:00:56');
INSERT INTO `sys_oper_log` VALUES (265, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 13:29:01');
INSERT INTO `sys_oper_log` VALUES (266, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 13:30:17');
INSERT INTO `sys_oper_log` VALUES (267, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 13:41:06');
INSERT INTO `sys_oper_log` VALUES (268, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 13:46:52');
INSERT INTO `sys_oper_log` VALUES (269, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:09:39');
INSERT INTO `sys_oper_log` VALUES (270, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:09:58');
INSERT INTO `sys_oper_log` VALUES (271, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:36:57');
INSERT INTO `sys_oper_log` VALUES (272, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:37:31');
INSERT INTO `sys_oper_log` VALUES (273, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:41:31');
INSERT INTO `sys_oper_log` VALUES (274, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎\"],\"brideName\":[\"新娘娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:42:25');
INSERT INTO `sys_oper_log` VALUES (275, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 14:44:31');
INSERT INTO `sys_oper_log` VALUES (276, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:00:28');
INSERT INTO `sys_oper_log` VALUES (277, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:01:42');
INSERT INTO `sys_oper_log` VALUES (278, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:03:21');
INSERT INTO `sys_oper_log` VALUES (279, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:04:36');
INSERT INTO `sys_oper_log` VALUES (280, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:06:44');
INSERT INTO `sys_oper_log` VALUES (281, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎郎郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:08:19');
INSERT INTO `sys_oper_log` VALUES (282, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:08:59');
INSERT INTO `sys_oper_log` VALUES (283, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘娘娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:09:16');
INSERT INTO `sys_oper_log` VALUES (284, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"15555555555\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 15:12:41');
INSERT INTO `sys_oper_log` VALUES (285, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 22:27:59');
INSERT INTO `sys_oper_log` VALUES (286, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 22:28:06');
INSERT INTO `sys_oper_log` VALUES (287, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 23:11:34');
INSERT INTO `sys_oper_log` VALUES (288, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-26 23:11:55');
INSERT INTO `sys_oper_log` VALUES (289, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 13:30:58');
INSERT INTO `sys_oper_log` VALUES (290, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 13:31:52');
INSERT INTO `sys_oper_log` VALUES (291, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 13:36:12');
INSERT INTO `sys_oper_log` VALUES (292, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"0\"],\"barrageStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 13:36:49');
INSERT INTO `sys_oper_log` VALUES (293, '用户金币管理', 2, 'com.ruoyi.marry.controller.TUserGoldController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/gold/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"openid\":[\"odAIp49zXH7dYEHuDCcRiPD6T_e0\"],\"gold\":[\"100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 15:58:34');
INSERT INTO `sys_oper_log` VALUES (294, '点赞管理', 3, 'com.ruoyi.marry.controller.TBlessUserController.remove()', 'POST', 1, 'admin', '研发部门', '/party/marry/bless/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:03:35');
INSERT INTO `sys_oper_log` VALUES (295, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"小程序设置\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:08:23');
INSERT INTO `sys_oper_log` VALUES (296, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"小程序设置\"],\"url\":[\"/marry/marrySetting\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:marrySetting:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:08:34');
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"小程序主要信息\"],\"url\":[\"/marry/marrySetting\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:marrySetting:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:09:06');
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"婚纱照\"],\"url\":[\"/marry/userImage\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:userImage:view\"],\"orderNum\":[\"20\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:09:14');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"其他照片\"],\"url\":[\"marry/userOtherImage\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"30\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:09:25');
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"礼物管理\"],\"url\":[\"/marry/goldInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:goldInfo:view\"],\"orderNum\":[\"80\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:10:04');
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"礼物维护\"],\"url\":[\"/marry/goldInfo\"],\"target\":[\"menuItem\"],\"perms\":[\"marry:goldInfo:view\"],\"orderNum\":[\"80\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-27 16:10:32');
INSERT INTO `sys_oper_log` VALUES (302, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx676055c4ce887d2d\"],\"appsecret\":[\"dc9d8cfff69edd7dcdbe98dbeb667855\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 10:16:26');
INSERT INTO `sys_oper_log` VALUES (303, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/party/system/user/profile/updateAvatar', '182.34.200.244', 'XX XX', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 10:29:53');
INSERT INTO `sys_oper_log` VALUES (304, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '182.34.200.244', 'XX XX', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"a5427ca77c6cbd4495735229e14ef2f2\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 10:47:14');
INSERT INTO `sys_oper_log` VALUES (305, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 11:17:52');
INSERT INTO `sys_oper_log` VALUES (306, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:41:00');
INSERT INTO `sys_oper_log` VALUES (307, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:41:24');
INSERT INTO `sys_oper_log` VALUES (308, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:41:32');
INSERT INTO `sys_oper_log` VALUES (309, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:41:48');
INSERT INTO `sys_oper_log` VALUES (310, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:43:12');
INSERT INTO `sys_oper_log` VALUES (311, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:44:20');
INSERT INTO `sys_oper_log` VALUES (312, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:45:19');
INSERT INTO `sys_oper_log` VALUES (313, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"0\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-11-28 23:45:52');
INSERT INTO `sys_oper_log` VALUES (314, '保存婚纱照', 1, 'com.ruoyi.marry.controller.TUserImageController.addImage()', 'POST', 1, 'admin', '研发部门', '/party/marry/userImage/addImage', '127.0.0.1', '内网IP', '{\"type\":[\"001\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 10:35:30');
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"一键清除数据\"],\"url\":[\"marry/marrySetting/clearView\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"110\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 10:53:12');
INSERT INTO `sys_oper_log` VALUES (316, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/party/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 14:08:20');
INSERT INTO `sys_oper_log` VALUES (317, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/party/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 14:08:38');
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2056\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"小程序设置\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-gears\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 15:24:14');
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2057\"],\"parentId\":[\"2056\"],\"menuType\":[\"C\"],\"menuName\":[\"一键清除数据\"],\"url\":[\"marry/marrySetting/clearView\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"110\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 15:24:26');
INSERT INTO `sys_oper_log` VALUES (320, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"小程序数据管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-group\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 15:54:18');
INSERT INTO `sys_oper_log` VALUES (321, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/party/system/user/profile/updateAvatar', '223.96.92.209', 'XX XX', NULL, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 16:23:35');
INSERT INTO `sys_oper_log` VALUES (322, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"1\"],\"goldStatus\":[\"1\"],\"barrageStatus\":[\"1\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-01 16:34:44');
INSERT INTO `sys_oper_log` VALUES (323, '小程序设置', 2, 'com.ruoyi.marry.controller.TMarryUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/party/marry/marrySetting/edit', '223.96.92.209', 'XX XX', '{\"id\":[\"2\"],\"bridegroomName\":[\"新郎lang\"],\"brideName\":[\"新娘\"],\"bridegroomTel\":[\"13333333333\"],\"brideTel\":[\"13333333333\"],\"solarCalendar\":[\"2019年11月9日\"],\"lunarCalendar\":[\"二〇一九年十月十三号\"],\"longitude\":[\"116.7276334763\"],\"latitude\":[\"35.1466874517\"],\"addr\":[\"山东省济宁市微山县两城七村\"],\"appid\":[\"wx0ca68aba19282fb3\"],\"appsecret\":[\"593560b3400e826149b3067ec48e169b\"],\"musicName\":[\"You Belong With Me\"],\"musicUrl\":[\"http://t.cn/AilILfr6?mp3\"],\"blessStatus\":[\"0\"],\"commentStatus\":[\"0\"],\"goldStatus\":[\"0\"],\"barrageStatus\":[\"0\"],\"musicStatus\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-12-04 14:24:07');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2020-11-19 09:44:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2020-11-19 09:44:26', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2020-11-19 09:44:26', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'admin@163.com', '15888888888', '1', '/profile/avatar/2020/12/01/42fccf2c-8fb1-4700-a753-237a8b6cae92.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '223.96.92.209', '2020-12-04 14:54:25', '2020-11-19 09:44:26', 'admin', '2020-11-19 09:44:26', '', '2020-12-04 14:54:25', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '1', '0', '127.0.0.1', '2020-11-19 09:44:26', '2020-11-19 09:44:26', 'admin', '2020-11-19 09:44:26', 'admin', '2020-11-19 13:17:26', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('59799506-701f-4078-afb7-ce493d966e44', 'admin', '研发部门', '223.96.92.209', 'XX XX', 'Chrome 8', 'Windows 10', 'on_line', '2020-12-04 14:20:52', '2020-12-04 14:54:26', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for t_bless_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_bless_comment`;
CREATE TABLE `t_bless_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_bless_user
-- ----------------------------
DROP TABLE IF EXISTS `t_bless_user`;
CREATE TABLE `t_bless_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_marry_user
-- ----------------------------
DROP TABLE IF EXISTS `t_marry_user`;
CREATE TABLE `t_marry_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `appsecret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment_status` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '评论开关,1开,0关',
  `bless_status` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '祝福开关,1开,0关,没用了,可以无视',
  `gold_status` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '送礼开关,1开,0关',
  `bridegroom_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新郎名字',
  `bride_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新娘名字',
  `bridegroom_tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新郎电话',
  `bride_tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新娘电话',
  `solar_calendar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '阳历日期',
  `lunar_calendar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '农历日期',
  `longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '维度',
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `music_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景音乐名称',
  `music_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景音乐链接',
  `barrage_status` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '弹幕开关,1开,0关',
  `music_status` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '音乐开关,1开,0关',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `updateTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_gold
-- ----------------------------
DROP TABLE IF EXISTS `t_user_gold`;
CREATE TABLE `t_user_gold`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gold` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_gold_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_gold_info`;
CREATE TABLE `t_user_gold_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gift_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gift_gold` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user_gold_info
-- ----------------------------
INSERT INTO `t_user_gold_info` VALUES (1, '棒棒糖', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/FNa3j4boXtO6rgXQSqVbuHcxfeF5ZbG4ScYV*fBSOLM!/b/dLYAAAAAAAAA&bo=yADIAMgAyAADGTw!&rf=viewer_4', 5);
INSERT INTO `t_user_gold_info` VALUES (2, '比心', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/WFA8aoYYdngnZR*IzzkjzFEFucc1vYBFqC7VWORDXTg!/b/dAUBAAAAAAAA&bo=yADIAMgAyAADCSw!&rf=viewer_4', 10);
INSERT INTO `t_user_gold_info` VALUES (3, '爱心气球', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/9xoCsXgtfQZQc*ZMZ7RDQX1bExRKx3jx.IrPxmxjCWk!/b/dL8AAAAAAAAA&bo=OAReBQAAAAADB0U!&rf=viewer_4', 20);
INSERT INTO `t_user_gold_info` VALUES (4, '项链', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/6Ip8WUXx7bTHQnO*79COBNaO0COhkUBrMENER.i9ZQY!/b/dLYAAAAAAAAA&bo=6APoAwAAAAADByI!&rf=viewer_4', 30);
INSERT INTO `t_user_gold_info` VALUES (5, '钻石', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/FDxffcJALT5FC9zegAeaC*dFNamDZZBawwtDCZiEt.M!/b/dMMAAAAAAAAA&bo=OAQ4BAAAAAADByI!&rf=viewer_4', 50);
INSERT INTO `t_user_gold_info` VALUES (6, '热气球', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/G2azsty6.g1ptReQx*30jkxujdX8Eu9xseiNpDkvmPA!/b/dLYAAAAAAAAA&bo=yADIAAAAAAADByI!&rf=viewer_4', 100);
INSERT INTO `t_user_gold_info` VALUES (7, '豪车', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/5FF1.lt0sivAjWIy3JsAjZzrgIJtJNsYgxQzgnpyOIs!/b/dFQBAAAAAAAA&bo=gACAAAAAAAADByI!&rf=viewer_4', 120);
INSERT INTO `t_user_gold_info` VALUES (8, '游艇', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/KYRMNmvhxjR2DbW0VXB9rzPoNdNx.y4nxUc58Oy47II!/b/dL8AAAAAAAAA&bo=IANDAQAAAAADB0M!&rf=viewer_4', 150);
INSERT INTO `t_user_gold_info` VALUES (9, '超级游艇', 'http://m.qpic.cn/psb?/V13E2po72ki5ls/KYRMNmvhxjR2DbW0VXB9rzPoNdNx.y4nxUc58Oy47II!/b/dL8AAAAAAAAA&bo=IANDAQAAAAADB0M!&rf=viewer_4', 300);

-- ----------------------------
-- Table structure for t_user_gold_record
-- ----------------------------
DROP TABLE IF EXISTS `t_user_gold_record`;
CREATE TABLE `t_user_gold_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gift_id` int(11) NULL DEFAULT NULL,
  `gift_gold` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_image
-- ----------------------------
DROP TABLE IF EXISTS `t_user_image`;
CREATE TABLE `t_user_image`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `seq` int(5) NOT NULL COMMENT '显示顺序',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片类型,001婚纱照,002封面,003首页海报,004分享展示',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_image
-- ----------------------------
INSERT INTO `t_user_image` VALUES ('090182b6afc2417c8ef7feb63d2ae150', 'marry/c99f39985570431b94a0d0bad18bd99c-blob.jpg', 100, '004', '2020-11-24 08:28:12');
INSERT INTO `t_user_image` VALUES ('151a5a6fb47f4ca4b031c95dd559460c', 'marry/802945d330a3491880d153447392735c-blob.jpg', 100, '003', '2020-11-24 12:57:00');
INSERT INTO `t_user_image` VALUES ('184f3aa7f0ce44d0b4bff5d33b15387a', 'marry/63eea262112449caa16c1c16d1414af6-blob.jpg', 100, '001', '2020-11-24 08:28:25');
INSERT INTO `t_user_image` VALUES ('1e56a0d7d3444485abb02e723fe7122d', 'marry/bcdb8f897e3a481caa53fef0d527e863-blob.jpg', 100, '001', '2020-11-24 08:28:55');
INSERT INTO `t_user_image` VALUES ('2966e4b7185d488091a78ad19f92dc84', 'marry/5c48be36002b4d1a92306e4bbf023c00-blob.jpg', 100, '001', '2020-12-01 10:35:31');
INSERT INTO `t_user_image` VALUES ('57e73e9bc3164deb8fca4f5e50ee233c', 'marry/fa54a73b0c7348b2b18caef04cd029ea-blob.jpg', 100, '001', '2020-11-24 08:29:06');
INSERT INTO `t_user_image` VALUES ('8b23fd3c3d1e45bfa8a857a015dbf408', 'marry/0d4b2dea35694105b887b1f111e5aca1-blob.jpg', 100, '001', '2020-11-24 08:29:20');
INSERT INTO `t_user_image` VALUES ('b3d84840362246149183f30578897028', 'marry/e1610b491136434a944368902cb86176-blob.jpg', 100, '002', '2020-11-24 12:39:45');
INSERT INTO `t_user_image` VALUES ('e1eb3e18f2d04604a088d0d5c3c95e11', 'marry/24b97bfda46a4b869eaaa9b6b0dccb71-blob.jpg', 10, '001', '2020-11-24 08:28:40');
INSERT INTO `t_user_image` VALUES ('e57ed79b9f8c4bf0bb19977080f25080', 'marry/e971b83a7b6c477397e05db13f81cc6d-blob.jpg', 100, '001', '2020-11-26 23:11:55');

-- ----------------------------
-- Table structure for t_user_record
-- ----------------------------
DROP TABLE IF EXISTS `t_user_record`;
CREATE TABLE `t_user_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 417 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
