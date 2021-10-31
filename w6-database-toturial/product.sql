SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
        `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
	p_id varchar(64) DEFAULT '' NOT NULL COMMENT '��Ʒ����',
	p_name varchar(128) DEFAULT '' NOT NULL COMMENT '��Ʒ����',
	p_catalog varchar(32) DEFAULT '' NOT NULL COMMENT '��Ʒ����',
	p_price float DEFAULT 0 NOT NULL COMMENT '��Ʒ����',
	p_weight float DEFAULT 0  NOT NULL COMMENT '��Ʒ����',
	state ENUM NULL '(���¼ܣ�����)' COMMENT '��Ʒ״̬',
	create_time DATETIME  COMMENT '����ʱ��',
	update_time DATETIME  '�޸�ʱ��',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
