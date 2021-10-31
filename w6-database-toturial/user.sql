SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
	user_id varchar(32) DEFAULT '' NOT NULL COMMENT '用户ID',
	user_name varchar(32) DEFAULT '' NOT NULL COMMENT '用户名',
	password varchar(32) DEFAULT '' NOT NULL COMMENT '密码',
	nick_name varchar(32) DEFAULT '' NOT NULL COMMENT '别名',
	id_card char(32) DEFAULT '' NOT NULL COMMENT '身份证',
	phone varchar(32) DEFAULT '' NOT NULL COMMENT '电话',
	email varchar(32) DEFAULT '' NOT NULL COMMENT '邮箱',
	create_time DATETIME  COMMENT '创建时间',
	update_time DATETIME  '修改时间',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;