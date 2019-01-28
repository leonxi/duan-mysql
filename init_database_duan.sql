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

