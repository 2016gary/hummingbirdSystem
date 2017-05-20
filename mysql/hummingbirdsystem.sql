/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hummingbirdsystem

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-18 18:51:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `connect_detail`
-- ----------------------------
DROP TABLE IF EXISTS `connect_detail`;
CREATE TABLE `connect_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL COMMENT '主机名',
  `port` int(11) NOT NULL COMMENT '端口号',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of connect_detail
-- ----------------------------
INSERT INTO `connect_detail` VALUES ('1', '123.207.139.106', '3306', 'root', 'root');

-- ----------------------------
-- Table structure for `connect_mode`
-- ----------------------------
DROP TABLE IF EXISTS `connect_mode`;
CREATE TABLE `connect_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '连接方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of connect_mode
-- ----------------------------
INSERT INTO `connect_mode` VALUES ('1', 'Native(JDBC)');

-- ----------------------------
-- Table structure for `connect_type`
-- ----------------------------
DROP TABLE IF EXISTS `connect_type`;
CREATE TABLE `connect_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '连接类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of connect_type
-- ----------------------------
INSERT INTO `connect_type` VALUES ('1', 'MySQL');

-- ----------------------------
-- Table structure for `data_model`
-- ----------------------------
DROP TABLE IF EXISTS `data_model`;
CREATE TABLE `data_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '数据模型名称',
  `dataSource_id` int(11) NOT NULL COMMENT '数据源id',
  `dataSource_tables` varchar(255) NOT NULL COMMENT '所选择的数据源表',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_model
-- ----------------------------
INSERT INTO `data_model` VALUES ('1', 'model1', '1', 'ORG,RSALE,PRODCATY', '季度销售数据');

-- ----------------------------
-- Table structure for `data_source`
-- ----------------------------
DROP TABLE IF EXISTS `data_source`;
CREATE TABLE `data_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '数据源名称',
  `connectType_id` int(11) NOT NULL COMMENT '连接类型id',
  `connectMode_id` int(11) NOT NULL COMMENT '连接方式id',
  `connectDetail_id` int(11) NOT NULL COMMENT '连接详细信息id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_source
-- ----------------------------
INSERT INTO `data_source` VALUES ('1', 'connect1', '1', '1', '1', '2017-05-18 16:12:03');

-- ----------------------------
-- Table structure for `fact_table_relation`
-- ----------------------------
DROP TABLE IF EXISTS `fact_table_relation`;
CREATE TABLE `fact_table_relation` (
  `id` int(11) NOT NULL,
  `factTable1_name` varchar(100) NOT NULL COMMENT '事实表1名称',
  `factTable2_name` varchar(100) NOT NULL COMMENT '事实表2名称',
  `connect_type` varchar(100) NOT NULL COMMENT '连接类型',
  `association_condition` varchar(255) NOT NULL COMMENT '关联条件',
  `multiDimensionAnalysis_id` int(11) NOT NULL COMMENT '多维数据分析id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fact_table_relation
-- ----------------------------
INSERT INTO `fact_table_relation` VALUES ('1', 'RSALE', 'PRODCATY', 'left', 'ESALE.PCCODE=PRODCATY.PCCODE', '1');
INSERT INTO `fact_table_relation` VALUES ('2', 'RSALE', 'ORG', 'left', 'RSALE.ORGID=ORG.ORGID', '1');

-- ----------------------------
-- Table structure for `multi_dimension_analysis`
-- ----------------------------
DROP TABLE IF EXISTS `multi_dimension_analysis`;
CREATE TABLE `multi_dimension_analysis` (
  `id` int(11) NOT NULL,
  `dataModel_id` int(11) NOT NULL COMMENT '数据模型id',
  `dimensionColumn_names` varchar(100) NOT NULL COMMENT '维度字段',
  `quotaColumn_names` varchar(100) NOT NULL COMMENT '指标字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multi_dimension_analysis
-- ----------------------------
INSERT INTO `multi_dimension_analysis` VALUES ('1', '1', 'PRODCATY,ORG', 'RSALE');
