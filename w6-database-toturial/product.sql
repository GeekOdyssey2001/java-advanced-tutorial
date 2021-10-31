SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
        `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
	p_id varchar(64) DEFAULT '' NOT NULL COMMENT '商品编码',
	p_name varchar(128) DEFAULT '' NOT NULL COMMENT '商品名称',
	p_catalog varchar(32) DEFAULT '' NOT NULL COMMENT '商品种类',
	p_price float DEFAULT 0 NOT NULL COMMENT '商品单价',
	p_weight float DEFAULT 0  NOT NULL COMMENT '商品重量',
	state ENUM NULL '(已下架，在售)' COMMENT '商品状态',
	create_time DATETIME  COMMENT '创建时间',
	update_time DATETIME  '修改时间',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
