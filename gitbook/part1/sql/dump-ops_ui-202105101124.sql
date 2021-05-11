-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ops_ui
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` double(20,0) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,0,'采购部',1,'2021-04-29 14:08:16',NULL);
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dict`
--

DROP TABLE IF EXISTS `t_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dict` (
  `DICT_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict`
--

LOCK TABLES `t_dict` WRITE;
/*!40000 ALTER TABLE `t_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job`
--

DROP TABLE IF EXISTS `t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job` (
  `JOB_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(100) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job`
--

LOCK TABLES `t_job` WRITE;
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_log`
--

DROP TABLE IF EXISTS `t_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_log`
--

LOCK TABLES `t_job_log` WRITE;
/*!40000 ALTER TABLE `t_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_log`
--

DROP TABLE IF EXISTS `t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_log` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_log`
--

LOCK TABLES `t_log` WRITE;
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` VALUES (1,'admin','删除角色',152,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"107,110\"','127.0.0.1','2021-04-25 15:16:12','内网IP|0|0|内网IP|内网IP'),(2,'admin','删除角色',55,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"87,86,82,81,80,77\"','127.0.0.1','2021-04-25 15:16:25','内网IP|0|0|内网IP|内网IP'),(3,'admin','删除角色',42,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"88,89,92,95\"','127.0.0.1','2021-04-25 15:16:35','内网IP|0|0|内网IP|内网IP'),(4,'admin','删除角色',40,'cc.mrbird.febs.system.controller.RoleController.deleteRoles()',' roleIds: \"98,102,104,105\"','127.0.0.1','2021-04-25 15:16:44','内网IP|0|0|内网IP|内网IP'),(5,'admin','删除菜单/按钮',48,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"58\"','127.0.0.1','2021-04-25 15:17:17','内网IP|0|0|内网IP|内网IP'),(6,'admin','删除菜单/按钮',40,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"101\"','127.0.0.1','2021-04-25 15:17:22','内网IP|0|0|内网IP|内网IP'),(7,'admin','修改角色',3951,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=管理员, remark=管理员, createTime=null, modifyTime=Sun Apr 25 15:19:30 CST 2021, createTimeFrom=null, createTimeTo=null, menuId=1,3,4,5,6,64,124,123,127,139,140,141,144,147,146,148,150,155,159,161,2,8,10,122,231,219,218,243,251,257,258,259,261,262,263,264,265,270,271,272,287,289,290,291,292,293,294,295,314,600,598,613,1,3,11,12,13,4,14,15,16,5,17,18,19,6,20,21,22,64,65,66,67,124,123,127,130,135,131,132,133,134,139,140,141,144,147,146,148,150,155,159,161,170,178,179,2,8,23,10,24,136,113,121,122,195,196,197,198,199,200,201,202,204,214,220,221,222,223,225,226,224,227,228,229,230,231,232,219,218,188,235,236,241,242,243,252,251,257,258,259,261,262,263,264,265,266,270,271,272,278,274,275,276,277,279,280,281,282,283,284,285,286,287,289,290,291,292,293,294,295,314,322,296,297,298,299,300,301,302,303,304,305,306,307,324,323,327,333,334,335,336,337,339,340,332,338,328,329,330,331,341,342,343,372,373,374,411,412,414,455,379,393,394,396,397,398,395,399,381,382,383,384,385,386,375,376,377,378,380,387,388,389,391,390,392,405,406,408,407,409,429,438,439,441,440,442,443,444,445,447,446,356,357,358,415,416,417,418,419,420,421,422,424,425,426,427,428,430,431,432,433,434,435,436,437,577,578,580,581,582,585,586,583,587,584,588,589,590,591,592,593,594,595,596,597,599,601,600,602,603,604,605,607,606,608,598,609,610,611,612,614,615,616,617,618,613,619,620,621,622,624,628,625,626,627,579,629,632,633,634,635,637,638,639,640,642,641,631,644,645,646,647,648,649,650,1,3,11,12,13,4,14,15,16,5,17,18,19,6,20,21,22,64,65,66,67,124,123,127,130,135,131,132,133,134,139,140,141,144,147,146,148,150,155,159,161,170,178,179,2,8,23,10,24,136,113,121,122,195,196,197,198,199,200,201,202,204,214,220,221,222,223,225,226,224,227,228,229,230,231,232,219,218,188,235,236,241,242,243,252,251,257,258,259,261,262,263,264,265,266,270,271,272,278,274,275,276,277,279,280,281,282,283,284,285,286,287,289,290,291,292,293,294,295,314,322,296,297,298,299,300,301,302,303,304,305,306,307,324,323,327,333,334,335,336,337,339,340,332,338,328,329,330,331,341,342,343,372,373,374,411,412,414,455,379,393,394,396,397,398,395,399,381,382,383,384,385,386,375,376,377,378,380,387,388,389,391,390,392,405,406,408,407,409,429,438,439,441,440,442,443,444,445,447,446,356,357,358,415,416,417,418,419,420,421,422,424,425,426,427,428,430,431,432,433,434,435,436,437,577,578,580,581,582,585,586,583,587,584,588,589,590,591,592,593,594,595,596,597,599,601,600,602,603,604,605,607,606,608,598,609,610,611,612,614,615,616,617,618,613,619,620,621,622,624,628,625,626,627,579,629,632,633,634,635,637,638,639,640,642,641,631,644,645,646,647,648,649,650,128,129)\"','127.0.0.1','2021-04-25 15:19:35','内网IP|0|0|内网IP|内网IP'),(8,'admin','删除菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"128\"','127.0.0.1','2021-04-25 15:20:18','内网IP|0|0|内网IP|内网IP'),(9,'admin','删除菜单/按钮',23,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"152\"','127.0.0.1','2021-04-25 15:20:26','内网IP|0|0|内网IP|内网IP'),(10,'admin','删除菜单/按钮',33,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"155\"','127.0.0.1','2021-04-25 15:20:31','内网IP|0|0|内网IP|内网IP'),(11,'admin','删除菜单/按钮',34,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"164\"','127.0.0.1','2021-04-25 15:20:34','内网IP|0|0|内网IP|内网IP'),(12,'admin','删除菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"244,246\"','127.0.0.1','2021-04-25 15:22:04','内网IP|0|0|内网IP|内网IP'),(13,'admin','删除菜单/按钮',95,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"243,252,262,379,393,394,395,396,397,398,399,623,263,264,381,382,383,384,385,386,607,375,376,377,378,380,265,387,388,390,392,391,606,389,601,619,620,621,622,266,251,261\"','127.0.0.1','2021-04-25 15:23:35','内网IP|0|0|内网IP|内网IP'),(14,'admin','删除菜单/按钮',184,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"139,141,144,146,197,198,199,200,147,241,242,148,195,196,201,202,204,236,214,143,150,140,170,178,179,188,218,219,220,221,222,223,224,225,226,227,400,401,402,403,404,228,229,230,231,232,234,257,258,259,598,270,271,278,585,587,629,272,274,275,276,277,279,280,282,281,283,284,285,286,583,586,588,589,590,591,592,593,594,595,596,597,611,630,580,581,582,584\"','127.0.0.1','2021-04-25 15:26:09','内网IP|0|0|内网IP|内网IP'),(15,'admin','删除菜单/按钮',84,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"289,650,448,292,415,416,417,418,419,420,421,422,424,425,426,427,428,430,431,432,433,434,435,436,437,291,356,357,358,290,405,406,407,408,409,429,438,439,440,441,442,443,444,445,446,447\"','127.0.0.1','2021-04-25 15:27:11','内网IP|0|0|内网IP|内网IP'),(16,'admin','删除菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"624,625,626,627\"','127.0.0.1','2021-04-25 15:27:22','内网IP|0|0|内网IP|内网IP'),(17,'admin','删除菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"646,647,648,649\"','127.0.0.1','2021-04-25 15:27:33','内网IP|0|0|内网IP|内网IP'),(18,'admin','删除菜单/按钮',23,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"637,638,639,640\"','127.0.0.1','2021-04-25 15:27:42','内网IP|0|0|内网IP|内网IP'),(19,'admin','删除菜单/按钮',32,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"634,632,633,635,642,644,645,651\"','127.0.0.1','2021-04-25 15:27:55','内网IP|0|0|内网IP|内网IP'),(20,'admin','删除菜单/按钮',74,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"307,306,305,304,303,302,301,300,299,298,297,296,578,343,331,330,329,328,327,295\"','127.0.0.1','2021-04-26 14:06:55','内网IP|0|0|内网IP|内网IP'),(21,'admin','删除菜单/按钮',37,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"612,604,605,599,577,342,341,332\"','127.0.0.1','2021-04-26 14:07:13','内网IP|0|0|内网IP|内网IP'),(22,'admin','删除菜单/按钮',31,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"603,602,600,340,339,324\"','127.0.0.1','2021-04-26 14:07:30','内网IP|0|0|内网IP|内网IP'),(23,'admin','删除菜单/按钮',29,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"337,336,335,334,333,323\"','127.0.0.1','2021-04-26 14:07:55','内网IP|0|0|内网IP|内网IP'),(24,'admin','删除菜单/按钮',27,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"338,322,608,294\"','127.0.0.1','2021-04-26 14:08:09','内网IP|0|0|内网IP|内网IP'),(25,'admin','删除菜单/按钮',17,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"293\"','127.0.0.1','2021-04-26 14:08:16','内网IP|0|0|内网IP|内网IP'),(26,'admin','删除菜单/按钮',19,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"628\"','127.0.0.1','2021-04-26 14:09:00','内网IP|0|0|内网IP|内网IP'),(27,'admin','删除菜单/按钮',24,'cn.unicom.system.controller.MenuController.deleteMenus()',' menuIds: \"288,235\"','127.0.0.1','2021-04-26 14:10:54','内网IP|0|0|内网IP|内网IP'),(31,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',33,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','127.0.0.1','2021-04-29 10:55:18','内网IP|0|0|内网IP|内网IP'),(34,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 11:02:14','内网IP|0|0|内网IP|内网IP'),(35,'admin','GET 根据用户id查看其下所有数据库信息',16,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 11:02:49','内网IP|0|0|内网IP|内网IP'),(36,'admin','删除系统日志',29,'cn.unicom.system.controller.LogController.deleteLogss()',' ids: \"33,32,30,29,28\"','127.0.0.1','2021-04-29 11:03:48','内网IP|0|0|内网IP|内网IP'),(37,'admin','新增部门',18,'cn.unicom.system.controller.DeptController.addDept()',' dept: \"Dept(deptId=1, parentId=0, deptName=采购部, orderNum=1.0, createTime=Thu Apr 29 14:08:15 CST 2021, modifyTime=null, createTimeFrom=null, createTimeTo=null)\"','127.0.0.1','2021-04-29 14:08:16','内网IP|0|0|内网IP|内网IP'),(38,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',118,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:18:55','内网IP|0|0|内网IP|内网IP'),(39,'admin','GET 获取数据库类型代码',12,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:18:55','内网IP|0|0|内网IP|内网IP'),(40,'admin','GET 根据用户id查看其下所有数据库信息',16,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:18:55','内网IP|0|0|内网IP|内网IP'),(41,'admin','GET 获取数据库类型代码',46,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:48:37','内网IP|0|0|内网IP|内网IP'),(42,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',68,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:48:37','内网IP|0|0|内网IP|内网IP'),(43,'admin','GET 根据用户id查看其下所有数据库信息',20,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:48:38','内网IP|0|0|内网IP|内网IP'),(44,'admin','GET 获取数据库类型代码',15,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:50:45','内网IP|0|0|内网IP|内网IP'),(45,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',131,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:50:45','内网IP|0|0|内网IP|内网IP'),(46,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:50:45','内网IP|0|0|内网IP|内网IP'),(47,'admin','GET 获取数据库类型代码',9,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:51:41','内网IP|0|0|内网IP|内网IP'),(48,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',20,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:51:41','内网IP|0|0|内网IP|内网IP'),(49,'admin','GET 根据用户id查看其下所有数据库信息',12,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:51:42','内网IP|0|0|内网IP|内网IP'),(50,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',13,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:52:29','内网IP|0|0|内网IP|内网IP'),(51,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:52:29','内网IP|0|0|内网IP|内网IP'),(52,'admin','GET 根据用户id查看其下所有数据库信息',21,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:52:29','内网IP|0|0|内网IP|内网IP'),(53,'admin','GET 获取数据库类型代码',11,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:52:46','内网IP|0|0|内网IP|内网IP'),(54,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',15,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:52:46','内网IP|0|0|内网IP|内网IP'),(55,'admin','GET 根据用户id查看其下所有数据库信息',12,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:52:46','内网IP|0|0|内网IP|内网IP'),(56,'admin','GET 获取数据库类型代码',14,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:58:37','内网IP|0|0|内网IP|内网IP'),(57,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',20,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:58:37','内网IP|0|0|内网IP|内网IP'),(58,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:58:37','内网IP|0|0|内网IP|内网IP'),(59,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',16,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:59:53','内网IP|0|0|内网IP|内网IP'),(60,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:59:53','内网IP|0|0|内网IP|内网IP'),(61,'admin','GET 根据用户id查看其下所有数据库信息',19,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:59:54','内网IP|0|0|内网IP|内网IP'),(62,'admin','GET 获取数据库类型代码',7,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 14:59:58','内网IP|0|0|内网IP|内网IP'),(63,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',15,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 14:59:58','内网IP|0|0|内网IP|内网IP'),(64,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 14:59:58','内网IP|0|0|内网IP|内网IP'),(65,'admin','GET 获取数据库类型代码',10,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:01:20','内网IP|0|0|内网IP|内网IP'),(66,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',19,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:01:20','内网IP|0|0|内网IP|内网IP'),(67,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:01:21','内网IP|0|0|内网IP|内网IP'),(68,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:01:25','内网IP|0|0|内网IP|内网IP'),(69,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',34,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:03:28','内网IP|0|0|内网IP|内网IP'),(70,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:03:28','内网IP|0|0|内网IP|内网IP'),(71,'admin','GET 根据用户id查看其下所有数据库信息',8,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:03:28','内网IP|0|0|内网IP|内网IP'),(72,'admin','GET 获取数据库类型代码',7,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:03:33','内网IP|0|0|内网IP|内网IP'),(73,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',12,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:03:33','内网IP|0|0|内网IP|内网IP'),(74,'admin','GET 根据用户id查看其下所有数据库信息',16,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:03:33','内网IP|0|0|内网IP|内网IP'),(75,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',10,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:03:50','内网IP|0|0|内网IP|内网IP'),(76,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:03:51','内网IP|0|0|内网IP|内网IP'),(77,'admin','GET 根据用户id查看其下所有数据库信息',14,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:03:51','内网IP|0|0|内网IP|内网IP'),(78,'admin','GET 获取数据库类型代码',9,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:03:54','内网IP|0|0|内网IP|内网IP'),(79,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',16,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:03:54','内网IP|0|0|内网IP|内网IP'),(80,'admin','GET 根据用户id查看其下所有数据库信息',16,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:03:54','内网IP|0|0|内网IP|内网IP'),(81,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:03:59','内网IP|0|0|内网IP|内网IP'),(82,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:04:00','内网IP|0|0|内网IP|内网IP'),(83,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:04:01','内网IP|0|0|内网IP|内网IP'),(84,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',11,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:05:08','内网IP|0|0|内网IP|内网IP'),(85,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:05:08','内网IP|0|0|内网IP|内网IP'),(86,'admin','GET 根据用户id查看其下所有数据库信息',8,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:05:08','内网IP|0|0|内网IP|内网IP'),(87,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:05:14','内网IP|0|0|内网IP|内网IP'),(88,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',13,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:05:14','内网IP|0|0|内网IP|内网IP'),(89,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:05:14','内网IP|0|0|内网IP|内网IP'),(90,'admin','GET 根据用户id查看其下所有数据库信息',16,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:05:23','内网IP|0|0|内网IP|内网IP'),(91,'admin','GET 获取数据库类型代码',9,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:05:27','内网IP|0|0|内网IP|内网IP'),(92,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:05:28','内网IP|0|0|内网IP|内网IP'),(93,'admin','POST 添加审核sql语句',5218,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:05:43','内网IP|0|0|内网IP|内网IP'),(94,'admin','GET 获取审核进度',146,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:45','内网IP|0|0|内网IP|内网IP'),(95,'admin','GET 获取审核进度',42,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:45','内网IP|0|0|内网IP|内网IP'),(96,'admin','GET 获取审核进度',38,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:46','内网IP|0|0|内网IP|内网IP'),(97,'admin','GET 获取审核进度',17,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:46','内网IP|0|0|内网IP|内网IP'),(98,'admin','GET 获取审核进度',21,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:47','内网IP|0|0|内网IP|内网IP'),(99,'admin','GET 获取审核进度',37,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:47','内网IP|0|0|内网IP|内网IP'),(100,'admin','GET 获取审核进度',42,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:48','内网IP|0|0|内网IP|内网IP'),(101,'admin','GET 获取审核进度',79,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:50','内网IP|0|0|内网IP|内网IP'),(102,'admin','GET 获取审核进度',24,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:50','内网IP|0|0|内网IP|内网IP'),(103,'admin','GET 获取审核进度',65,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/13','{}','localhost','2021-04-29 15:05:51','内网IP|0|0|内网IP|内网IP'),(104,'admin','POST 查询审核记录列表',1028,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:06:04','内网IP|0|0|内网IP|内网IP'),(105,'admin','POST 查询审核记录列表',12189,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:06:23','内网IP|0|0|内网IP|内网IP'),(106,'admin','GET 获取用户下每个数据类型sql数量',12148,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 15:06:23','内网IP|0|0|内网IP|内网IP'),(107,'admin','GET 获取数据库类型代码',118,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:06:47','内网IP|0|0|内网IP|内网IP'),(108,'admin','GET 根据用户id查看其下所有数据库信息',27,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:06:47','内网IP|0|0|内网IP|内网IP'),(109,'admin','POST 添加审核sql语句',58,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:06:49','内网IP|0|0|内网IP|内网IP'),(110,'admin','GET 获取审核进度',4978,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:55','内网IP|0|0|内网IP|内网IP'),(111,'admin','GET 获取审核进度',57,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:55','内网IP|0|0|内网IP|内网IP'),(112,'admin','GET 获取审核进度',25,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:55','内网IP|0|0|内网IP|内网IP'),(113,'admin','GET 获取审核进度',23,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:55','内网IP|0|0|内网IP|内网IP'),(114,'admin','GET 获取审核进度',20,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:56','内网IP|0|0|内网IP|内网IP'),(115,'admin','GET 获取审核进度',17,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:56','内网IP|0|0|内网IP|内网IP'),(116,'admin','GET 获取审核进度',17,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:56','内网IP|0|0|内网IP|内网IP'),(117,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:56','内网IP|0|0|内网IP|内网IP'),(118,'admin','GET 获取审核进度',14,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:58','内网IP|0|0|内网IP|内网IP'),(119,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/14','{}','localhost','2021-04-29 15:06:58','内网IP|0|0|内网IP|内网IP'),(120,'admin','POST 添加审核sql语句',51,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:08:07','内网IP|0|0|内网IP|内网IP'),(121,'admin','GET 获取审核进度',13,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:08','内网IP|0|0|内网IP|内网IP'),(122,'admin','GET 获取审核进度',23,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:08','内网IP|0|0|内网IP|内网IP'),(123,'admin','GET 获取审核进度',30,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:09','内网IP|0|0|内网IP|内网IP'),(124,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:09','内网IP|0|0|内网IP|内网IP'),(125,'admin','GET 获取审核进度',16,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:10','内网IP|0|0|内网IP|内网IP'),(126,'admin','GET 获取审核进度',20,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:10','内网IP|0|0|内网IP|内网IP'),(127,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:11','内网IP|0|0|内网IP|内网IP'),(128,'admin','GET 获取审核进度',34,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:12','内网IP|0|0|内网IP|内网IP'),(129,'admin','GET 获取审核进度',18,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:12','内网IP|0|0|内网IP|内网IP'),(130,'admin','GET 获取审核进度',22,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/15','{}','localhost','2021-04-29 15:08:12','内网IP|0|0|内网IP|内网IP'),(131,'admin','POST 查询审核记录列表',68,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:08:15','内网IP|0|0|内网IP|内网IP'),(132,'admin','GET 获取用户下每个数据类型sql数量',46,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 15:08:18','内网IP|0|0|内网IP|内网IP'),(133,'admin','POST 查询审核记录列表',25,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:08:18','内网IP|0|0|内网IP|内网IP'),(134,'admin','GET 根据用户id以及sqlid获取审核报告',453,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/12','{}','localhost','2021-04-29 15:09:58','内网IP|0|0|内网IP|内网IP'),(135,'admin','GET 获取数据库类型代码',37,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:10:11','内网IP|0|0|内网IP|内网IP'),(136,'admin','GET 根据用户id查看其下所有数据库信息',43,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:10:11','内网IP|0|0|内网IP|内网IP'),(137,'admin','POST 添加审核sql语句',387,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:10:14','内网IP|0|0|内网IP|内网IP'),(138,'admin','GET 获取审核进度',25,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/16','{}','localhost','2021-04-29 15:10:15','内网IP|0|0|内网IP|内网IP'),(139,'admin','GET 根据用户id以及sqlid获取审核报告',33,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/16','{}','localhost','2021-04-29 15:10:15','内网IP|0|0|内网IP|内网IP'),(140,'admin','POST 查询审核记录列表',110,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:10:33','内网IP|0|0|内网IP|内网IP'),(141,'admin','GET 获取用户下每个数据类型sql数量',35,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 15:10:34','内网IP|0|0|内网IP|内网IP'),(142,'admin','POST 查询审核记录列表',54,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:10:34','内网IP|0|0|内网IP|内网IP'),(143,'admin','GET 根据用户id以及sqlid获取审核报告',32,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/16','{}','localhost','2021-04-29 15:10:36','内网IP|0|0|内网IP|内网IP'),(144,'admin','GET 获取数据库类型代码',10,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:10:40','内网IP|0|0|内网IP|内网IP'),(145,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:10:40','内网IP|0|0|内网IP|内网IP'),(146,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:10:43','内网IP|0|0|内网IP|内网IP'),(147,'admin','GET 获取审核进度',18,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/17','{}','localhost','2021-04-29 15:10:44','内网IP|0|0|内网IP|内网IP'),(148,'admin','GET 根据用户id以及sqlid获取审核报告',23,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/17','{}','localhost','2021-04-29 15:10:44','内网IP|0|0|内网IP|内网IP'),(149,'admin','GET 获取用户下每个数据类型sql数量',17,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 15:11:04','内网IP|0|0|内网IP|内网IP'),(150,'admin','POST 查询审核记录列表',24,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 15:11:04','内网IP|0|0|内网IP|内网IP'),(151,'admin','GET 获取数据库类型代码',7,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:11:09','内网IP|0|0|内网IP|内网IP'),(152,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:11:09','内网IP|0|0|内网IP|内网IP'),(153,'admin','GET 获取数据库类型代码',10,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:13:25','内网IP|0|0|内网IP|内网IP'),(154,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',55,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:13:25','内网IP|0|0|内网IP|内网IP'),(155,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:13:25','内网IP|0|0|内网IP|内网IP'),(156,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:13:35','内网IP|0|0|内网IP|内网IP'),(157,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/18','{}','localhost','2021-04-29 15:13:35','内网IP|0|0|内网IP|内网IP'),(158,'admin','GET 根据用户id以及sqlid获取审核报告',29,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/18','{}','localhost','2021-04-29 15:13:36','内网IP|0|0|内网IP|内网IP'),(159,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',12,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:17:20','内网IP|0|0|内网IP|内网IP'),(160,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:17:20','内网IP|0|0|内网IP|内网IP'),(161,'admin','GET 根据用户id查看其下所有数据库信息',15,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:17:20','内网IP|0|0|内网IP|内网IP'),(162,'admin','POST 添加审核sql语句',28,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:17:30','内网IP|0|0|内网IP|内网IP'),(163,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/19','{}','localhost','2021-04-29 15:17:31','内网IP|0|0|内网IP|内网IP'),(164,'admin','GET 根据用户id以及sqlid获取审核报告',39,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/19','{}','localhost','2021-04-29 15:17:31','内网IP|0|0|内网IP|内网IP'),(165,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:21:04','内网IP|0|0|内网IP|内网IP'),(166,'admin','GET 获取审核进度',26,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/20','{}','localhost','2021-04-29 15:21:04','内网IP|0|0|内网IP|内网IP'),(167,'admin','GET 根据用户id以及sqlid获取审核报告',21,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/20','{}','localhost','2021-04-29 15:21:05','内网IP|0|0|内网IP|内网IP'),(168,'admin','POST 添加审核sql语句',27,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:22:29','内网IP|0|0|内网IP|内网IP'),(169,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/21','{}','localhost','2021-04-29 15:22:30','内网IP|0|0|内网IP|内网IP'),(170,'admin','GET 根据用户id以及sqlid获取审核报告',64,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/21','{}','localhost','2021-04-29 15:22:31','内网IP|0|0|内网IP|内网IP'),(171,'admin','GET 获取数据库类型代码',12,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:30:52','内网IP|0|0|内网IP|内网IP'),(172,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',21,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:30:52','内网IP|0|0|内网IP|内网IP'),(173,'admin','GET 根据用户id查看其下所有数据库信息',15,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:30:52','内网IP|0|0|内网IP|内网IP'),(174,'admin','POST 添加审核sql语句',29,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:33:18','内网IP|0|0|内网IP|内网IP'),(175,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/22','{}','localhost','2021-04-29 15:33:18','内网IP|0|0|内网IP|内网IP'),(176,'admin','GET 根据用户id以及sqlid获取审核报告',21,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/22','{}','localhost','2021-04-29 15:33:19','内网IP|0|0|内网IP|内网IP'),(177,'admin','POST 添加审核sql语句',28,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:34:26','内网IP|0|0|内网IP|内网IP'),(178,'admin','GET 获取审核进度',17,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/23','{}','localhost','2021-04-29 15:34:26','内网IP|0|0|内网IP|内网IP'),(179,'admin','GET 根据用户id以及sqlid获取审核报告',22,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/23','{}','localhost','2021-04-29 15:34:27','内网IP|0|0|内网IP|内网IP'),(180,'admin','POST 添加审核sql语句',31,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:40:17','内网IP|0|0|内网IP|内网IP'),(181,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/24','{}','localhost','2021-04-29 15:40:17','内网IP|0|0|内网IP|内网IP'),(182,'admin','GET 根据用户id以及sqlid获取审核报告',57,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/24','{}','localhost','2021-04-29 15:40:18','内网IP|0|0|内网IP|内网IP'),(183,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',24,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 15:58:41','内网IP|0|0|内网IP|内网IP'),(184,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 15:58:41','内网IP|0|0|内网IP|内网IP'),(185,'admin','GET 根据用户id查看其下所有数据库信息',65,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 15:58:41','内网IP|0|0|内网IP|内网IP'),(186,'admin','POST 添加审核sql语句',23,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:58:52','内网IP|0|0|内网IP|内网IP'),(187,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/25','{}','localhost','2021-04-29 15:58:53','内网IP|0|0|内网IP|内网IP'),(188,'admin','GET 根据用户id以及sqlid获取审核报告',22,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/25','{}','localhost','2021-04-29 15:58:53','内网IP|0|0|内网IP|内网IP'),(189,'admin','POST 添加审核sql语句',24,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 15:59:57','内网IP|0|0|内网IP|内网IP'),(190,'admin','GET 获取审核进度',14,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/26','{}','localhost','2021-04-29 15:59:58','内网IP|0|0|内网IP|内网IP'),(191,'admin','GET 根据用户id以及sqlid获取审核报告',18,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/26','{}','localhost','2021-04-29 15:59:58','内网IP|0|0|内网IP|内网IP'),(192,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',19,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:02:50','内网IP|0|0|内网IP|内网IP'),(193,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:02:51','内网IP|0|0|内网IP|内网IP'),(194,'admin','GET 根据用户id查看其下所有数据库信息',8,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:02:51','内网IP|0|0|内网IP|内网IP'),(195,'admin','POST 添加审核sql语句',23,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:02:59','内网IP|0|0|内网IP|内网IP'),(196,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/27','{}','localhost','2021-04-29 16:03:00','内网IP|0|0|内网IP|内网IP'),(197,'admin','GET 根据用户id以及sqlid获取审核报告',20,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/27','{}','localhost','2021-04-29 16:03:01','内网IP|0|0|内网IP|内网IP'),(198,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:06:27','内网IP|0|0|内网IP|内网IP'),(199,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/28','{}','localhost','2021-04-29 16:06:28','内网IP|0|0|内网IP|内网IP'),(200,'admin','GET 根据用户id以及sqlid获取审核报告',25,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/28','{}','localhost','2021-04-29 16:06:28','内网IP|0|0|内网IP|内网IP'),(201,'admin','POST 添加审核sql语句',22,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:07:25','内网IP|0|0|内网IP|内网IP'),(202,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/29','{}','localhost','2021-04-29 16:07:26','内网IP|0|0|内网IP|内网IP'),(203,'admin','GET 根据用户id以及sqlid获取审核报告',24,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/29','{}','localhost','2021-04-29 16:07:26','内网IP|0|0|内网IP|内网IP'),(204,'admin','GET 获取数据库类型代码',8,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:13:07','内网IP|0|0|内网IP|内网IP'),(205,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',16,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:13:07','内网IP|0|0|内网IP|内网IP'),(206,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:13:08','内网IP|0|0|内网IP|内网IP'),(207,'admin','POST 添加审核sql语句',24,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:13:17','内网IP|0|0|内网IP|内网IP'),(208,'admin','GET 获取审核进度',8,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/30','{}','localhost','2021-04-29 16:13:18','内网IP|0|0|内网IP|内网IP'),(209,'admin','GET 根据用户id以及sqlid获取审核报告',27,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/30','{}','localhost','2021-04-29 16:13:18','内网IP|0|0|内网IP|内网IP'),(210,'admin','POST 添加审核sql语句',34,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:13:43','内网IP|0|0|内网IP|内网IP'),(211,'admin','GET 获取审核进度',7,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/31','{}','localhost','2021-04-29 16:13:43','内网IP|0|0|内网IP|内网IP'),(212,'admin','GET 根据用户id以及sqlid获取审核报告',18,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/31','{}','localhost','2021-04-29 16:13:44','内网IP|0|0|内网IP|内网IP'),(213,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',24,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:18:40','内网IP|0|0|内网IP|内网IP'),(214,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:18:40','内网IP|0|0|内网IP|内网IP'),(215,'admin','GET 根据用户id查看其下所有数据库信息',8,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:18:40','内网IP|0|0|内网IP|内网IP'),(216,'admin','POST 添加审核sql语句',22,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:22:15','内网IP|0|0|内网IP|内网IP'),(217,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/32','{}','localhost','2021-04-29 16:22:16','内网IP|0|0|内网IP|内网IP'),(218,'admin','GET 根据用户id以及sqlid获取审核报告',36,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/32','{}','localhost','2021-04-29 16:22:17','内网IP|0|0|内网IP|内网IP'),(219,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',11,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:25:58','内网IP|0|0|内网IP|内网IP'),(220,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:25:58','内网IP|0|0|内网IP|内网IP'),(221,'admin','GET 根据用户id查看其下所有数据库信息',9,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:25:58','内网IP|0|0|内网IP|内网IP'),(222,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:26:12','内网IP|0|0|内网IP|内网IP'),(223,'admin','GET 获取审核进度',15,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/33','{}','localhost','2021-04-29 16:26:13','内网IP|0|0|内网IP|内网IP'),(224,'admin','GET 根据用户id以及sqlid获取审核报告',21,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/33','{}','localhost','2021-04-29 16:26:13','内网IP|0|0|内网IP|内网IP'),(225,'admin','GET 获取所有规则信息',57,'ZUUL serviceId=smart-sql path=/rules-manager/query','{}','localhost','2021-04-29 16:29:17','内网IP|0|0|内网IP|内网IP'),(226,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:29:18','内网IP|0|0|内网IP|内网IP'),(227,'admin','POST 查询审核记录列表',29,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 16:29:20','内网IP|0|0|内网IP|内网IP'),(228,'admin','GET 获取用户下每个数据类型sql数量',11,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 16:29:21','内网IP|0|0|内网IP|内网IP'),(229,'admin','POST 查询审核记录列表',21,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 16:29:22','内网IP|0|0|内网IP|内网IP'),(230,'admin','GET 根据用户id以及sqlid获取审核报告',28,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/33','{}','localhost','2021-04-29 16:29:24','内网IP|0|0|内网IP|内网IP'),(231,'admin','GET 根据用户id以及sqlid获取审核报告',24,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/33','{}','localhost','2021-04-29 16:29:45','内网IP|0|0|内网IP|内网IP'),(232,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:30:22','内网IP|0|0|内网IP|内网IP'),(233,'admin','GET 根据用户id查看其下所有数据库信息',9,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:30:22','内网IP|0|0|内网IP|内网IP'),(234,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',15,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:33:01','内网IP|0|0|内网IP|内网IP'),(235,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:33:01','内网IP|0|0|内网IP|内网IP'),(236,'admin','GET 根据用户id查看其下所有数据库信息',8,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:33:02','内网IP|0|0|内网IP|内网IP'),(237,'admin','POST 添加审核sql语句',29,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:33:12','内网IP|0|0|内网IP|内网IP'),(238,'admin','GET 获取审核进度',8,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/34','{}','localhost','2021-04-29 16:33:13','内网IP|0|0|内网IP|内网IP'),(239,'admin','GET 根据用户id以及sqlid获取审核报告',24,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/34','{}','localhost','2021-04-29 16:33:14','内网IP|0|0|内网IP|内网IP'),(240,'admin','GET 根据sqlId获取索引信息',18,'ZUUL serviceId=smart-sql path=/audit-sql/index/34','{}','localhost','2021-04-29 16:33:21','内网IP|0|0|内网IP|内网IP'),(241,'admin','POST 添加审核sql语句',25,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:35:19','内网IP|0|0|内网IP|内网IP'),(242,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/35','{}','localhost','2021-04-29 16:35:20','内网IP|0|0|内网IP|内网IP'),(243,'admin','GET 根据用户id以及sqlid获取审核报告',22,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/35','{}','localhost','2021-04-29 16:35:20','内网IP|0|0|内网IP|内网IP'),(244,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',33,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 16:39:35','内网IP|0|0|内网IP|内网IP'),(245,'admin','GET 获取数据库类型代码',4,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 16:39:35','内网IP|0|0|内网IP|内网IP'),(246,'admin','GET 根据用户id查看其下所有数据库信息',9,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 16:39:36','内网IP|0|0|内网IP|内网IP'),(247,'admin','POST 添加审核sql语句',26,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 16:40:17','内网IP|0|0|内网IP|内网IP'),(248,'admin','GET 获取审核进度',8,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/36','{}','localhost','2021-04-29 16:40:18','内网IP|0|0|内网IP|内网IP'),(249,'admin','GET 根据用户id以及sqlid获取审核报告',25,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/36','{}','localhost','2021-04-29 16:40:19','内网IP|0|0|内网IP|内网IP'),(250,'admin','GET 根据sqlId获取建表信息',13,'ZUUL serviceId=smart-sql path=/audit-sql/tablecreate/36','{}','localhost','2021-04-29 16:41:25','内网IP|0|0|内网IP|内网IP'),(251,'admin','GET 根据sqlId获取索引信息',10,'ZUUL serviceId=smart-sql path=/audit-sql/index/36','{}','localhost','2021-04-29 16:41:28','内网IP|0|0|内网IP|内网IP'),(252,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',48,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:09:59','内网IP|0|0|内网IP|内网IP'),(253,'admin','GET 获取数据库类型代码',28,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:09:59','内网IP|0|0|内网IP|内网IP'),(254,'admin','GET 根据用户id查看其下所有数据库信息',29,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:10:00','内网IP|0|0|内网IP|内网IP'),(255,'admin','POST 添加审核sql语句',34,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:10:36','内网IP|0|0|内网IP|内网IP'),(256,'admin','GET 获取审核进度',20,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/37','{}','localhost','2021-04-29 17:10:37','内网IP|0|0|内网IP|内网IP'),(257,'admin','GET 根据用户id以及sqlid获取审核报告',25,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/37','{}','localhost','2021-04-29 17:10:38','内网IP|0|0|内网IP|内网IP'),(258,'admin','GET 根据用户id查看其下所有数据库信息',25,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:10:44','内网IP|0|0|内网IP|内网IP'),(259,'admin','GET 获取所有规则信息',26,'ZUUL serviceId=smart-sql path=/rules-manager/query','{}','localhost','2021-04-29 17:10:45','内网IP|0|0|内网IP|内网IP'),(260,'admin','POST 查询审核记录列表',29,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 17:10:47','内网IP|0|0|内网IP|内网IP'),(261,'admin','GET 获取用户下每个数据类型sql数量',18,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 17:10:51','内网IP|0|0|内网IP|内网IP'),(262,'admin','POST 查询审核记录列表',30,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 17:10:51','内网IP|0|0|内网IP|内网IP'),(263,'admin','GET 获取清理任务信息',20,'ZUUL serviceId=smart-sql path=/system/manager/info','{}','localhost','2021-04-29 17:10:57','内网IP|0|0|内网IP|内网IP'),(264,'admin','GET 获取数据库类型代码',5,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:11:01','内网IP|0|0|内网IP|内网IP'),(265,'admin','GET 根据用户id查看其下所有数据库信息',12,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:11:01','内网IP|0|0|内网IP|内网IP'),(266,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',14,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:12:58','内网IP|0|0|内网IP|内网IP'),(267,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:13:00','内网IP|0|0|内网IP|内网IP'),(268,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:13:00','内网IP|0|0|内网IP|内网IP'),(269,'admin','POST 添加审核sql语句',22,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:13:09','内网IP|0|0|内网IP|内网IP'),(270,'admin','GET 获取审核进度',8,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/38','{}','localhost','2021-04-29 17:13:10','内网IP|0|0|内网IP|内网IP'),(271,'admin','GET 根据用户id以及sqlid获取审核报告',33,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/38','{}','localhost','2021-04-29 17:13:11','内网IP|0|0|内网IP|内网IP'),(272,'admin','POST 添加审核sql语句',21,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:14:01','内网IP|0|0|内网IP|内网IP'),(273,'admin','GET 获取审核进度',7,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/39','{}','localhost','2021-04-29 17:14:02','内网IP|0|0|内网IP|内网IP'),(274,'admin','GET 根据用户id以及sqlid获取审核报告',19,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/39','{}','localhost','2021-04-29 17:14:02','内网IP|0|0|内网IP|内网IP'),(275,'admin','POST 添加审核sql语句',19,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:14:29','内网IP|0|0|内网IP|内网IP'),(276,'admin','GET 获取审核进度',7,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/40','{}','localhost','2021-04-29 17:14:30','内网IP|0|0|内网IP|内网IP'),(277,'admin','GET 根据用户id以及sqlid获取审核报告',18,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/40','{}','localhost','2021-04-29 17:14:30','内网IP|0|0|内网IP|内网IP'),(278,'admin','GET 获取数据库类型代码',11,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:16:01','内网IP|0|0|内网IP|内网IP'),(279,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:16:01','内网IP|0|0|内网IP|内网IP'),(280,'admin','POST 添加审核sql语句',24,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:16:12','内网IP|0|0|内网IP|内网IP'),(281,'admin','GET 获取审核进度',8,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/41','{}','localhost','2021-04-29 17:16:13','内网IP|0|0|内网IP|内网IP'),(282,'admin','GET 根据用户id以及sqlid获取审核报告',23,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/41','{}','localhost','2021-04-29 17:16:13','内网IP|0|0|内网IP|内网IP'),(283,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',13,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:16:58','内网IP|0|0|内网IP|内网IP'),(284,'admin','POST 添加审核sql语句',23,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:17:03','内网IP|0|0|内网IP|内网IP'),(285,'admin','GET 获取审核进度',9,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/42','{}','localhost','2021-04-29 17:17:04','内网IP|0|0|内网IP|内网IP'),(286,'admin','GET 根据用户id以及sqlid获取审核报告',16,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/42','{}','localhost','2021-04-29 17:17:05','内网IP|0|0|内网IP|内网IP'),(287,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',15,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:17:39','内网IP|0|0|内网IP|内网IP'),(288,'admin','GET 根据用户id查看其下所有数据库信息',13,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:26:56','内网IP|0|0|内网IP|内网IP'),(289,'admin','GET 获取数据库类型代码',10,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:26:56','内网IP|0|0|内网IP|内网IP'),(290,'admin','POST 添加审核sql语句',23,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:27:05','内网IP|0|0|内网IP|内网IP'),(291,'admin','GET 获取审核进度',11,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/43','{}','localhost','2021-04-29 17:27:05','内网IP|0|0|内网IP|内网IP'),(292,'admin','GET 根据用户id以及sqlid获取审核报告',60,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/43','{}','localhost','2021-04-29 17:27:06','内网IP|0|0|内网IP|内网IP'),(293,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',9,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:27:06','内网IP|0|0|内网IP|内网IP'),(294,'admin','POST 添加审核sql语句',20,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:28:42','内网IP|0|0|内网IP|内网IP'),(295,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/44','{}','localhost','2021-04-29 17:28:42','内网IP|0|0|内网IP|内网IP'),(296,'admin','GET 根据用户id以及sqlid获取审核报告',15,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/44','{}','localhost','2021-04-29 17:28:43','内网IP|0|0|内网IP|内网IP'),(297,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',28,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:28:44','内网IP|0|0|内网IP|内网IP'),(298,'admin','GET 获取数据库类型代码',8,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:30:15','内网IP|0|0|内网IP|内网IP'),(299,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:30:15','内网IP|0|0|内网IP|内网IP'),(300,'admin','POST 添加审核sql语句',19,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:30:36','内网IP|0|0|内网IP|内网IP'),(301,'admin','GET 获取审核进度',12,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/45','{}','localhost','2021-04-29 17:30:37','内网IP|0|0|内网IP|内网IP'),(302,'admin','GET 根据用户id以及sqlid获取审核报告',20,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/45','{}','localhost','2021-04-29 17:30:37','内网IP|0|0|内网IP|内网IP'),(303,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',11,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:30:58','内网IP|0|0|内网IP|内网IP'),(304,'admin','POST 添加审核sql语句',20,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:31:35','内网IP|0|0|内网IP|内网IP'),(305,'admin','GET 获取审核进度',10,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/46','{}','localhost','2021-04-29 17:31:36','内网IP|0|0|内网IP|内网IP'),(306,'admin','GET 根据用户id以及sqlid获取审核报告',31,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/46','{}','localhost','2021-04-29 17:31:37','内网IP|0|0|内网IP|内网IP'),(307,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',10,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:31:38','内网IP|0|0|内网IP|内网IP'),(308,'admin','POST 添加审核sql语句',23,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-04-29 17:38:31','内网IP|0|0|内网IP|内网IP'),(309,'admin','GET 获取审核进度',10,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/47','{}','localhost','2021-04-29 17:38:32','内网IP|0|0|内网IP|内网IP'),(310,'admin','GET 根据用户id以及sqlid获取审核报告',31,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/47','{}','localhost','2021-04-29 17:38:33','内网IP|0|0|内网IP|内网IP'),(311,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',15,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-04-29 17:38:35','内网IP|0|0|内网IP|内网IP'),(312,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:39:00','内网IP|0|0|内网IP|内网IP'),(313,'admin','GET 获取所有规则信息',28,'ZUUL serviceId=smart-sql path=/rules-manager/query','{}','localhost','2021-04-29 17:39:02','内网IP|0|0|内网IP|内网IP'),(314,'admin','POST 查询审核记录列表',32,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 17:39:05','内网IP|0|0|内网IP|内网IP'),(315,'admin','GET 获取数据库类型代码',7,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:50:50','内网IP|0|0|内网IP|内网IP'),(316,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:50:50','内网IP|0|0|内网IP|内网IP'),(317,'admin','POST 查询审核记录列表',33,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 17:50:57','内网IP|0|0|内网IP|内网IP'),(318,'admin','GET 获取数据库类型代码',10,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-04-29 17:54:33','内网IP|0|0|内网IP|内网IP'),(319,'admin','GET 根据用户id查看其下所有数据库信息',10,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-04-29 17:54:33','内网IP|0|0|内网IP|内网IP'),(320,'admin','GET 获取用户下每个数据类型sql数量',19,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','localhost','2021-04-29 17:58:17','内网IP|0|0|内网IP|内网IP'),(321,'admin','POST 查询审核记录列表',29,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-04-29 17:58:17','内网IP|0|0|内网IP|内网IP'),(322,'admin','GET 获取数据库类型代码',615,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-05-06 10:49:57','内网IP|0|0|内网IP|内网IP'),(323,'admin','GET 根据用户id查看其下所有数据库信息',94,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-05-06 10:49:57','内网IP|0|0|内网IP|内网IP'),(324,'admin','POST 添加审核sql语句',510,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','localhost','2021-05-06 10:50:10','内网IP|0|0|内网IP|内网IP'),(325,'admin','GET 获取审核进度',26,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/48','{}','localhost','2021-05-06 10:50:10','内网IP|0|0|内网IP|内网IP'),(326,'admin','GET 根据用户id以及sqlid获取审核报告',53,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/48','{}','localhost','2021-05-06 10:50:11','内网IP|0|0|内网IP|内网IP'),(327,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',35,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','localhost','2021-05-06 10:50:11','内网IP|0|0|内网IP|内网IP'),(328,'admin','GET 获取数据库类型代码',8,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-05-06 10:51:03','内网IP|0|0|内网IP|内网IP'),(329,'admin','GET 根据用户id查看其下所有数据库信息',11,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-05-06 10:51:04','内网IP|0|0|内网IP|内网IP'),(330,'admin','POST 查询审核记录列表',127,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','localhost','2021-05-06 10:51:05','内网IP|0|0|内网IP|内网IP'),(331,'admin','GET 获取数据库类型代码',6,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','localhost','2021-05-06 10:51:10','内网IP|0|0|内网IP|内网IP'),(332,'admin','GET 根据用户id查看其下所有数据库信息',23,'ZUUL serviceId=smart-sql path=/database/query/2','{}','localhost','2021-05-06 10:51:10','内网IP|0|0|内网IP|内网IP'),(333,'admin','GET 获取数据库类型代码',4608,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','10.253.9.213','2021-05-10 10:43:46','内网IP|0|0|内网IP|内网IP'),(334,'admin','GET 根据用户id查看其下所有数据库信息',1378,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:43:46','内网IP|0|0|内网IP|内网IP'),(335,'admin','GET 获取所有规则信息',724,'ZUUL serviceId=smart-sql path=/rules-manager/query','{}','10.253.9.213','2021-05-10 10:43:58','内网IP|0|0|内网IP|内网IP'),(336,'admin','GET 获取数据库类型代码',17,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','10.253.9.213','2021-05-10 10:44:01','内网IP|0|0|内网IP|内网IP'),(337,'admin','GET 根据用户id查看其下所有数据库信息',55,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:44:01','内网IP|0|0|内网IP|内网IP'),(338,'admin','POST 添加审核sql语句',1157,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','10.253.9.213','2021-05-10 10:44:16','内网IP|0|0|内网IP|内网IP'),(339,'admin','POST 添加审核sql语句',344,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','10.253.9.213','2021-05-10 10:44:24','内网IP|0|0|内网IP|内网IP'),(340,'admin','GET 获取审核进度',1361,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/49','{}','10.253.9.213','2021-05-10 10:44:26','内网IP|0|0|内网IP|内网IP'),(341,'admin','GET 获取审核进度',85,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/49','{}','10.253.9.213','2021-05-10 10:44:26','内网IP|0|0|内网IP|内网IP'),(342,'admin','GET 获取审核进度',126,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/49','{}','10.253.9.213','2021-05-10 10:44:27','内网IP|0|0|内网IP|内网IP'),(343,'admin','GET 获取用户下每个数据类型sql数量',109,'ZUUL serviceId=smart-sql path=/audit-sql/count-by-dbtype/2','{}','10.253.9.213','2021-05-10 10:44:48','内网IP|0|0|内网IP|内网IP'),(344,'admin','POST 查询审核记录列表',270,'ZUUL serviceId=smart-sql path=/audit-sql/query','{}','10.253.9.213','2021-05-10 10:44:48','内网IP|0|0|内网IP|内网IP'),(345,'admin','GET 获取数据库类型代码',34,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','10.253.9.213','2021-05-10 10:46:31','内网IP|0|0|内网IP|内网IP'),(346,'admin','GET 根据用户id查看其下所有数据库信息',23,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:46:32','内网IP|0|0|内网IP|内网IP'),(347,'admin','GET 根据用户id查看其下所有数据库信息',43,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:46:32','内网IP|0|0|内网IP|内网IP'),(348,'admin','POST 更新数据库信息',166,'ZUUL serviceId=smart-sql path=/database/update','{}','10.253.9.213','2021-05-10 10:46:48','内网IP|0|0|内网IP|内网IP'),(349,'admin','GET 根据用户id查看其下所有数据库信息',127,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:46:48','内网IP|0|0|内网IP|内网IP'),(350,'admin','GET 获取数据库类型代码',15,'ZUUL serviceId=smart-sql path=/common/dbtype','{}','10.253.9.213','2021-05-10 10:46:59','内网IP|0|0|内网IP|内网IP'),(351,'admin','GET 根据用户id查看其下所有数据库信息',34,'ZUUL serviceId=smart-sql path=/database/query/2','{}','10.253.9.213','2021-05-10 10:46:59','内网IP|0|0|内网IP|内网IP'),(352,'admin','POST 添加审核sql语句',61,'ZUUL serviceId=smart-sql path=/audit-sql/add','{}','10.253.9.213','2021-05-10 10:47:01','内网IP|0|0|内网IP|内网IP'),(353,'admin','GET 获取审核进度',154,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/50','{}','10.253.9.213','2021-05-10 10:47:02','内网IP|0|0|内网IP|内网IP'),(354,'admin','GET 获取审核进度',45,'ZUUL serviceId=smart-sql path=/audit-sql/audit-process/mysql/50','{}','10.253.9.213','2021-05-10 10:47:02','内网IP|0|0|内网IP|内网IP'),(355,'admin','GET 根据用户id以及sqlid获取审核报告',103,'ZUUL serviceId=smart-sql path=/audit-sql/report/2/50','{}','10.253.9.213','2021-05-10 10:47:03','内网IP|0|0|内网IP|内网IP'),(356,'admin','GET 获取字典信息,可以省略code,省略后则为当前一组的字典信息',71,'ZUUL serviceId=smart-sql path=/common/dict','{\"code\":[\"CLEAR_INFO\"],\"groupCode\":[\"NOTICE_INFO\"]}','10.253.9.213','2021-05-10 10:47:03','内网IP|0|0|内网IP|内网IP');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_log`
--

DROP TABLE IF EXISTS `t_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_login_log` (
  `USERNAME` varchar(100) NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(255) DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(100) DEFAULT NULL COMMENT 'IP地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_log`
--

LOCK TABLES `t_login_log` WRITE;
/*!40000 ALTER TABLE `t_login_log` DISABLE KEYS */;
INSERT INTO `t_login_log` VALUES ('admin','2021-04-23 12:06:55','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-23 14:27:57','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-23 14:39:34','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 09:50:30','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 10:44:02','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 10:46:43','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 10:52:38','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 11:00:24','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 11:17:08','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:12:38','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:15:05','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:18:15','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:19:16','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:28:18','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 14:28:40','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:19:47','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:29:32','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:30:47','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:40:26','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:46:38','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:47:13','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:47:24','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 15:50:04','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 17:40:47','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 19:39:51','','127.0.0.1'),('admin','2021-04-25 19:43:45','','127.0.0.1'),('admin','2021-04-25 19:44:36','','127.0.0.1'),('admin','2021-04-25 19:45:13','','127.0.0.1'),('admin','2021-04-25 19:47:04','','127.0.0.1'),('admin','2021-04-25 19:48:00','','127.0.0.1'),('admin','2021-04-25 19:48:27','','127.0.0.1'),('admin','2021-04-25 19:59:06','','127.0.0.1'),('admin','2021-04-25 20:02:10','','127.0.0.1'),('admin','2021-04-25 20:03:17','','127.0.0.1'),('admin','2021-04-25 20:03:55','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 20:05:01','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-25 20:05:16','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 11:46:15','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 14:09:19','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 14:11:41','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 14:22:30','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 14:24:04','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 14:58:10','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:05:19','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:06:40','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:31:08','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:42:06','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:43:05','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 15:43:21','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 16:15:37','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 16:17:30','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 16:19:16','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 16:34:16','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 16:34:37','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 18:32:12','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 18:33:32','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 19:12:21','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-26 19:15:55','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 09:48:11','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 09:48:39','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 11:20:01','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 11:25:22','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 11:39:56','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 11:54:42','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 14:07:04','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 14:07:23','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 15:30:33','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 17:26:53','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-04-29 17:30:11','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-05-06 10:20:03','内网IP|0|0|内网IP|内网IP','127.0.0.1'),('admin','2021-05-07 18:54:25','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-07 18:55:42','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-07 19:06:39','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-08 18:37:26','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-08 22:14:13','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-10 10:27:23','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-10 10:40:43','内网IP|0|0|内网IP|内网IP','10.0.2.2'),('admin','2021-05-10 10:43:36','内网IP|0|0|内网IP|内网IP','10.0.2.2');
/*!40000 ALTER TABLE `t_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `PATH` varchar(255) DEFAULT NULL COMMENT '对应路由path',
  `COMPONENT` varchar(255) DEFAULT NULL COMMENT '对应路由组件component',
  `PERMS` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` double(20,0) DEFAULT '0' COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,0,'系统管理','/system','PageView','NULL','appstore-o','0',1,'2017-12-27 16:39:07','2019-01-05 11:13:14'),(2,0,'系统监控','/monitor','PageView','NULL','dashboard','0',2,'2017-12-27 16:45:51','2019-01-23 06:27:12'),(3,1,'用户管理','/system/user','system/user/User','user:view',NULL,'0',1,'2017-12-27 16:47:13','2019-01-22 06:45:55'),(4,1,'角色管理','/system/role','system/role/Role','role:view',NULL,'0',2,'2017-12-27 16:48:09','2018-04-25 09:01:12'),(5,1,'菜单管理','/system/menu','system/menu/Menu','menu:view',NULL,'0',3,'2017-12-27 16:48:57','2018-04-25 09:01:30'),(6,1,'部门管理','/system/dept','system/dept/Dept','dept:view',NULL,'0',4,'2017-12-27 16:57:33','2018-04-25 09:01:40'),(8,2,'在线用户','/monitor/online','monitor/Online','user:online',NULL,'0',1,'2017-12-27 16:59:33','2018-04-25 09:02:04'),(10,2,'系统日志','/monitor/systemlog','monitor/SystemLog','log:view',NULL,'0',2,'2017-12-27 17:00:50','2018-04-25 09:02:18'),(11,3,'新增用户',NULL,NULL,'user:add','NULL','1',NULL,'2017-12-27 17:02:58','2020-10-28 12:13:39'),(12,3,'修改用户',NULL,NULL,'user:update','NULL','1',NULL,'2017-12-27 17:04:07',NULL),(13,3,'删除用户',NULL,NULL,'user:delete','NULL','1',NULL,'2017-12-27 17:04:58',NULL),(14,4,'新增角色',NULL,NULL,'role:add','NULL','1',NULL,'2017-12-27 17:06:38',NULL),(15,4,'修改角色',NULL,NULL,'role:update','NULL','1',NULL,'2017-12-27 17:06:38',NULL),(16,4,'删除角色',NULL,NULL,'role:delete','NULL','1',NULL,'2017-12-27 17:06:38',NULL),(17,5,'新增菜单',NULL,NULL,'menu:add','NULL','1',NULL,'2017-12-27 17:08:02',NULL),(18,5,'修改菜单',NULL,NULL,'menu:update','NULL','1',NULL,'2017-12-27 17:08:02',NULL),(19,5,'删除菜单',NULL,NULL,'menu:delete','NULL','1',NULL,'2017-12-27 17:08:02',NULL),(20,6,'新增部门',NULL,NULL,'dept:add','NULL','1',NULL,'2017-12-27 17:09:24',NULL),(21,6,'修改部门',NULL,NULL,'dept:update','NULL','1',NULL,'2017-12-27 17:09:24',NULL),(22,6,'删除部门',NULL,NULL,'dept:delete','NULL','1',NULL,'2017-12-27 17:09:24',NULL),(23,8,'踢出用户',NULL,NULL,'user:kickout','NULL','1',NULL,'2017-12-27 17:11:13',NULL),(24,10,'删除日志',NULL,NULL,'log:delete','NULL','1',NULL,'2017-12-27 17:11:45',NULL),(64,1,'字典管理','/system/dict','system/dict/Dict','dict:view',NULL,'0',5,'2018-01-18 10:38:25','2018-04-25 09:01:50'),(65,64,'新增字典',NULL,NULL,'dict:add','NULL','1',NULL,'2018-01-18 19:10:08',NULL),(66,64,'修改字典',NULL,NULL,'dict:update','NULL','1',NULL,'2018-01-18 19:10:27',NULL),(67,64,'删除字典',NULL,NULL,'dict:delete','NULL','1',NULL,'2018-01-18 19:10:47',NULL),(113,2,'Redis监控','/monitor/redis/info','monitor/RedisInfo','redis:view',NULL,'0',3,'2018-06-28 14:29:42',NULL),(121,2,'请求追踪','/monitor/httptrace','monitor/Httptrace','NULL','NULL','0',4,'2019-01-18 02:30:29',NULL),(122,2,'系统信息','/monitor/system','EmptyPageView','NULL','NULL','0',5,'2019-01-18 02:31:48','2019-01-18 02:39:46'),(123,122,'Tomcat信息','/monitor/system/tomcatinfo','monitor/TomcatInfo','NULL','NULL','0',2,'2019-01-18 02:32:53','2019-01-18 02:46:57'),(124,122,'JVM信息','/monitor/system/jvminfo','monitor/JvmInfo','NULL','NULL','0',1,'2019-01-18 02:33:30','2019-01-18 02:46:51'),(127,122,'服务器信息','/monitor/system/info','monitor/SystemInfo','NULL','NULL','0',3,'2019-01-21 07:53:43','2019-01-21 07:57:00'),(130,3,'导出Excel','NULL','NULL','user:export','NULL','1',NULL,'2019-01-23 06:35:16',NULL),(131,4,'导出Excel','NULL','NULL','role:export','NULL','1',NULL,'2019-01-23 06:35:36',NULL),(132,5,'导出Excel','NULL','NULL','menu:export','NULL','1',NULL,'2019-01-23 06:36:05',NULL),(133,6,'导出Excel','NULL','NULL','dept:export','NULL','1',NULL,'2019-01-23 06:36:25',NULL),(134,64,'导出Excel','NULL','NULL','dict:export','NULL','1',NULL,'2019-01-23 06:36:43',NULL),(135,3,'密码重置','NULL','NULL','user:reset','NULL','1',NULL,'2019-01-23 06:37:00',NULL),(136,10,'导出Excel','NULL','NULL','log:export','NULL','1',NULL,'2019-01-23 06:37:27',NULL),(410,316,' 列出所有table',NULL,NULL,'GET:/habse-logical/hbase/base/all/tables/*',NULL,'1',NULL,'2019-02-22 02:32:52','2020-10-12 06:18:01'),(413,316,' 描述table信息',NULL,NULL,'GET:/hbase-logical /hbase/base/describe/table/**',NULL,'1',NULL,'2019-01-18 02:32:53',NULL),(579,1,'价值分析上报','NULL','NULL','GET:/value-analysis/**','NULL','1',NULL,'2020-10-15 01:36:52','2020-10-15 01:54:18'),(613,0,'SmartSQL','/smartsql','PageView','NULL','file-search','0',14,'2021-01-02 13:19:05','2021-01-02 13:36:21'),(614,613,'SQL审核(通用版)','/smartsql/sqlAudit','smartSql/SqlAudit','file-protect','1','0',NULL,'2021-01-02 13:25:20',NULL),(615,613,'GET获取权限','NULL','NULL','GET:/smartsql/**','NULL','1',NULL,'2021-01-02 13:27:57','2021-04-19 02:48:25'),(616,613,'POST新增权限','NULL','NULL','POST:/smartsql/**','NULL','1',NULL,'2021-01-02 13:28:57','2021-01-02 13:31:47'),(617,613,'PUT修改权限','NULL','NULL','PUT:/smartsql/**','NULL','1',NULL,'2021-01-02 13:29:29','2021-01-02 13:31:20'),(618,613,'DELETE删除权限','NULL','NULL','DELETE:/smartsql/**','NULL','1',NULL,'2021-01-02 13:30:25','2021-01-02 13:31:00'),(631,614,'更新规则','NULL','NULL','POST:/smartsql/rule-manager/update','NULL','1',NULL,'2021-01-21 10:10:43',NULL),(641,614,'DBA权限','NULL','NULL','sqlAudit:dbaPermission','NULL','1',NULL,'2021-03-15 06:29:31',NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(10) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'管理员','管理员','2017-12-27 16:23:11','2021-04-25 15:19:31'),(2,'注册用户','可查看，新增，导出','2019-01-04 14:11:28','2021-01-21 10:13:26'),(72,'普通用户','只可查看，好可怜哦','2019-01-23 07:33:20','2020-12-30 08:48:02'),(79,'访客',NULL,'2019-11-15 04:42:48','2020-12-30 08:49:32'),(96,'sql审核','sql审核dba','2020-09-17 06:31:15','2021-03-15 06:30:20'),(97,'sql审核开发','sql审核模块开发人员','2020-09-17 06:33:17','2021-01-02 13:34:03');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint NOT NULL,
  `MENU_ID` bigint NOT NULL,
  KEY `FOREIGN_ROLE_MENU_MENU_ID` (`MENU_ID`),
  KEY `FOREIGN_ROLE_MENU_ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `FOREIGN_ROLE_MENU_MENU_ID` FOREIGN KEY (`MENU_ID`) REFERENCES `t_menu` (`MENU_ID`) ON DELETE CASCADE,
  CONSTRAINT `FOREIGN_ROLE_MENU_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_role` (`ROLE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (72,1),(72,4),(72,5),(72,6),(72,64),(72,2),(72,8),(72,10),(72,122),(72,124),(72,123),(72,127),(79,1),(79,2),(97,613),(2,1),(2,2),(2,8),(2,10),(2,122),(2,124),(2,123),(2,127),(2,613),(96,613),(72,1),(72,4),(72,5),(72,6),(72,64),(72,2),(72,8),(72,10),(72,113),(72,121),(72,122),(72,124),(72,123),(72,127),(79,1),(79,2),(97,613),(97,614),(97,615),(97,616),(97,617),(97,618),(2,1),(2,2),(2,8),(2,10),(2,113),(2,121),(2,122),(2,124),(2,123),(2,127),(2,136),(2,579),(2,615),(2,616),(2,617),(2,618),(2,613),(2,614),(96,613),(96,614),(96,615),(96,616),(96,617),(96,618),(96,631),(96,641),(72,1),(72,4),(72,5),(72,6),(72,64),(72,2),(72,8),(72,10),(72,113),(72,121),(72,122),(72,124),(72,123),(72,127),(79,1),(79,2),(97,613),(97,614),(97,615),(97,616),(97,617),(97,618),(2,1),(2,2),(2,8),(2,10),(2,113),(2,121),(2,122),(2,124),(2,123),(2,127),(2,136),(2,579),(2,615),(2,616),(2,617),(2,618),(2,613),(2,614),(96,613),(96,614),(96,615),(96,616),(96,617),(96,618),(96,631),(96,641),(1,1),(1,3),(1,4),(1,5),(1,6),(1,64),(1,124),(1,123),(1,127),(1,2),(1,8),(1,10),(1,122),(1,613),(1,1),(1,3),(1,11),(1,12),(1,13),(1,4),(1,14),(1,15),(1,16),(1,5),(1,17),(1,18),(1,19),(1,6),(1,20),(1,21),(1,22),(1,64),(1,65),(1,66),(1,67),(1,124),(1,123),(1,127),(1,130),(1,135),(1,131),(1,132),(1,133),(1,134),(1,2),(1,8),(1,23),(1,10),(1,24),(1,136),(1,113),(1,121),(1,122),(1,614),(1,615),(1,616),(1,617),(1,618),(1,613),(1,579),(1,641),(1,631),(1,1),(1,3),(1,11),(1,12),(1,13),(1,4),(1,14),(1,15),(1,16),(1,5),(1,17),(1,18),(1,19),(1,6),(1,20),(1,21),(1,22),(1,64),(1,65),(1,66),(1,67),(1,124),(1,123),(1,127),(1,130),(1,135),(1,131),(1,132),(1,133),(1,134),(1,2),(1,8),(1,23),(1,10),(1,24),(1,136),(1,113),(1,121),(1,122),(1,614),(1,615),(1,616),(1,617),(1,618),(1,613),(1,579),(1,641),(1,631);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_test`
--

DROP TABLE IF EXISTS `t_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_test` (
  `FIELD1` varchar(20) NOT NULL,
  `FIELD2` int NOT NULL,
  `FIELD3` varchar(100) NOT NULL,
  `CREATE_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_test`
--

LOCK TABLES `t_test` WRITE;
/*!40000 ALTER TABLE `t_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `USER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (2,'admin','b582beafeaa599e65a776abb0df3e5b0',NULL,NULL,NULL,'1','2021-04-23 12:06:45',NULL,'2021-05-10 10:43:36','2','注册用户','default.jpg');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_config`
--

DROP TABLE IF EXISTS `t_user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_config` (
  `USER_ID` bigint NOT NULL COMMENT '用户ID',
  `THEME` varchar(10) DEFAULT NULL COMMENT '系统主题 dark暗色风格，light明亮风格',
  `LAYOUT` varchar(10) DEFAULT NULL COMMENT '系统布局 side侧边栏，head顶部栏',
  `MULTI_PAGE` char(1) DEFAULT NULL COMMENT '页面风格 1多标签页 0单页',
  `FIX_SIDERBAR` char(1) DEFAULT NULL COMMENT '页面滚动是否固定侧边栏 1固定 0不固定',
  `FIX_HEADER` char(1) DEFAULT NULL COMMENT '页面滚动是否固定顶栏 1固定 0不固定',
  `COLOR` varchar(20) DEFAULT NULL COMMENT '主题颜色 RGB值',
  PRIMARY KEY (`USER_ID`),
  CONSTRAINT `FOREIGN_USER_CONFIG_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`USER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_config`
--

LOCK TABLES `t_user_config` WRITE;
/*!40000 ALTER TABLE `t_user_config` DISABLE KEYS */;
INSERT INTO `t_user_config` VALUES (2,'dark','side','0','1','1','rgb(66, 185, 131)');
/*!40000 ALTER TABLE `t_user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint NOT NULL COMMENT '角色ID',
  KEY `FOREIGN_ROLE_ID` (`ROLE_ID`),
  KEY `FOREIGN_USER_ID` (`USER_ID`),
  CONSTRAINT `FOREIGN_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_role` (`ROLE_ID`) ON DELETE CASCADE,
  CONSTRAINT `FOREIGN_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `t_user` (`USER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (2,1);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `a` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tianyan_user`
--

DROP TABLE IF EXISTS `tianyan_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tianyan_user` (
  `tianyan_username` varchar(255) DEFAULT NULL COMMENT '天眼用户名',
  `tianyan_account` varchar(255) NOT NULL COMMENT '天眼用户账号(主键)',
  `tianyan_telphone` varchar(255) DEFAULT NULL COMMENT '天眼用户手机号',
  `tianyan_mailbox` varchar(255) DEFAULT NULL COMMENT '天眼用户E-mail',
  `tianyan_pro_code` varchar(255) DEFAULT NULL COMMENT '天眼用户proCode',
  `user_id` int DEFAULT NULL COMMENT '子系统用户ID(外键）',
  `salt` varchar(255) DEFAULT NULL COMMENT '子系统盐值',
  PRIMARY KEY (`tianyan_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tianyan_user`
--

LOCK TABLES `tianyan_user` WRITE;
/*!40000 ALTER TABLE `tianyan_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tianyan_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ops_ui'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 11:24:12
