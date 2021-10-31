SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
	`ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
	user_id varchar(100) DEFAULT '' NOT NULL COMMENT '�û�ID',
	order_id varchar(128) DEFAULT '' NOT NULL COMMENT '����ID',
	total_price DECIMAL DEFAULT 0 NOT NULL COMMENT '�������',
	address varchar(256) DEFAULT '' NOT NULL COMMENT '�ռ��˵�ַ',
	state ENUM NULL COMMENT '(δ֧������ȡ������ʱ�رգ���֧��)',
	create_time DATETIME  COMMENT '����ʱ��',
	update_time DATETIME  '�޸�ʱ��',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX order_user_id_IDX USING BTREE ON `order` (user_id,order_id);