SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
	`ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
	user_id varchar(100) DEFAULT '' NOT NULL COMMENT '用户ID',
	order_id varchar(128) DEFAULT '' NOT NULL COMMENT '订单ID',
	total_price DECIMAL DEFAULT 0 NOT NULL COMMENT '订单金额',
	address varchar(256) DEFAULT '' NOT NULL COMMENT '收件人地址',
	state ENUM NULL COMMENT '(未支付，已取消，超时关闭，已支付)',
	create_time DATETIME  COMMENT '创建时间',
	update_time DATETIME  '修改时间',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX order_user_id_IDX USING BTREE ON `order` (user_id,order_id);