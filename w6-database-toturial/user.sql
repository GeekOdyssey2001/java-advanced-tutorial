SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
	user_id varchar(32) DEFAULT '' NOT NULL COMMENT '�û�ID',
	user_name varchar(32) DEFAULT '' NOT NULL COMMENT '�û���',
	password varchar(32) DEFAULT '' NOT NULL COMMENT '����',
	nick_name varchar(32) DEFAULT '' NOT NULL COMMENT '����',
	id_card char(32) DEFAULT '' NOT NULL COMMENT '���֤',
	phone varchar(32) DEFAULT '' NOT NULL COMMENT '�绰',
	email varchar(32) DEFAULT '' NOT NULL COMMENT '����',
	create_time DATETIME  COMMENT '����ʱ��',
	update_time DATETIME  '�޸�ʱ��',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;