create database duan default character set utf8 collate utf8_general_ci;

use duan;

create table if not exists `gateway_api_define` (
  `id` varchar(50) not null,
  `path` varchar(255) not null,
  `service_id` varchar(50) default null,
  `url` varchar(255) default null,
  `retryable` tinyint(1) default null,
  `enabled` tinyint(1) not null,
  `strip_prefix` int(11) default null,
  `api_name` varchar(255) default null,
  primary key (`id`)
) engine=innodb default charset=utf8;

INSERT INTO `gateway_api_define` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `api_name`) VALUES ('aba', '/aba/**', NULL, 'http://duan-aba:8080/aba/', '0', '1', '1', NULL);
INSERT INTO `gateway_api_define` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `api_name`) VALUES ('abd', '/abd/**', NULL, 'http://duan-abd:8080/abd/', '0', '1', '1', NULL);
INSERT INTO `gateway_api_define` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `api_name`) VALUES ('auo', '/auo/**', NULL, 'http://duan-auo:8080/auo/', '0', '1', '1', NULL);
INSERT INTO `gateway_api_define` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `api_name`) VALUES ('welcome', '/', NULL, 'http://duan-aac:8080/index', '0', '1', '1', NULL);
INSERT INTO `gateway_api_define` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `api_name`) VALUES ('zroot', '/**', NULL, 'http://duan-aac:8080/', '0', '1', '1', NULL);

CREATE TABLE IF NOT EXISTS `abd_group` (
		  `NAME` varchar(256) NOT NULL,
		  `FULLNAME` varchar(256) DEFAULT NULL,
		  `SUBDOMAIN` varchar(64) NOT NULL,
		  `LOGO` varchar(1024) DEFAULT NULL,
		  `REGISTER` varchar(200) NOT NULL,
		  `VERIFY` varchar(32) DEFAULT 'AUTOVERIFY',
		  `VERIFYTYPE` varchar(128) DEFAULT 'WEIXIN',
		  `SETTINGS` text DEFAULT NULL,
		  `CREATE_TIME` date DEFAULT NULL,
		  PRIMARY KEY (`SUBDOMAIN`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `abd_groupuser` (
		  `GROUP_NAME` varchar(256) NOT NULL,
		  `GROUP_FULLNAME` varchar(256) DEFAULT NULL,
		  `GROUP_SUBDOMAIN` varchar(64) NOT NULL,
		  `USER_NAME` varchar(256) NOT NULL,
		  `USER_ID` varchar(128) NOT NULL,
		  `USER_TYPE` varchar(32) DEFAULT 'NORMAL',
		  `USER_VERIFY` varchar(32) DEFAULT 'VERIFIED',
		  `CREATE_TIME` date DEFAULT NULL,
		  PRIMARY KEY (`GROUP_SUBDOMAIN`, `USER_ID`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `abd_groupsa` (
		  `GROUP_NAME` varchar(256) NOT NULL,
		  `GROUP_FULLNAME` varchar(256) DEFAULT NULL,
		  `GROUP_SUBDOMAIN` varchar(64) NOT NULL,
		  `SA_NAME` varchar(256) DEFAULT NULL,
		  `SA_PREFIX` varchar(3) NOT NULL,
		  `SA_AUTHORIZE` varchar(32) DEFAULT 'AUTHORIZED',
		  `VERIFY` varchar(32) DEFAULT 'AUTOVERIFY',
		  `VERIFYTYPE` varchar(128) DEFAULT 'WEIXIN',
		  `SETTINGS` text DEFAULT NULL,
		  `CREATE_TIME` date DEFAULT NULL,
		  PRIMARY KEY (`GROUP_SUBDOMAIN`, `SA_PREFIX`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `abd_groupsauser` (
		  `GROUP_NAME` varchar(256) NOT NULL,
		  `GROUP_FULLNAME` varchar(256) DEFAULT NULL,
		  `GROUP_SUBDOMAIN` varchar(64) NOT NULL,
		  `SA_NAME` varchar(256) DEFAULT NULL,
		  `SA_PREFIX` varchar(3) NOT NULL,
		  `USER_NAME` varchar(256) NOT NULL,
		  `USER_ID` varchar(128) NOT NULL,
		  `USER_TYPE` varchar(32) DEFAULT 'NORMAL',
		  `USER_VERIFY` varchar(32) DEFAULT 'VERIFIED',
		  `CREATE_TIME` date DEFAULT NULL,
		  PRIMARY KEY (`GROUP_SUBDOMAIN`, `SA_PREFIX`, `USER_ID`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `abd_group` (`NAME`, `FULLNAME`, `SUBDOMAIN`, `LOGO`, `REGISTER`, `VERIFY`, `VERIFYTYPE`, `SETTINGS`, `CREATE_TIME`) VALUES ('短应用', '效吉软件短应用平台', 'www', NULL, '栗子', 'AUTOVERIFY', 'ORIGIN', NULL, '2018-09-04');
INSERT INTO `abd_groupsa` (`GROUP_NAME`, `GROUP_FULLNAME`, `GROUP_SUBDOMAIN`, `SA_NAME`, `SA_PREFIX`, `SA_AUTHORIZE`, `VERIFY`, `VERIFYTYPE`, `SETTINGS`, `CREATE_TIME`) VALUES ('短应用', '效吉软件短应用平台', 'www', '用户认证', 'aba', 'UNAUTHORIZED', 'AUTOVERIFY', 'ORIGIN', NULL, '2018-09-04');
