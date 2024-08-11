/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t314`;
CREATE DATABASE IF NOT EXISTS `t314` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t314`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'paotuirenwu_types', '任务类型', 1, '任务类型1', NULL, NULL, '2022-04-22 06:09:04'),
	(2, 'paotuirenwu_types', '任务类型', 2, '任务类型2', NULL, NULL, '2022-04-22 06:09:04'),
	(3, 'paotuirenwu_types', '任务类型', 3, '任务类型3', NULL, NULL, '2022-04-22 06:09:04'),
	(4, 'paotuirenwu_status_types', '任务状态', 1, '可接单', NULL, NULL, '2022-04-22 06:09:04'),
	(5, 'paotuirenwu_status_types', '任务状态', 2, '已接单', NULL, NULL, '2022-04-22 06:09:04'),
	(6, 'paotuirenwu_status_types', '任务状态', 3, '已完成', NULL, NULL, '2022-04-22 06:09:04'),
	(7, 'jiedanxiangqing_status_types', '接单状态', 1, '进行中', NULL, NULL, '2022-04-22 06:09:04'),
	(8, 'jiedanxiangqing_status_types', '接单状态', 2, '已送达', NULL, NULL, '2022-04-22 06:09:04'),
	(9, 'yonghutousu_types', '投诉类型', 1, '投诉类型1', NULL, NULL, '2022-04-22 06:09:04'),
	(10, 'yonghutousu_types', '投诉类型', 2, '投诉类型2', NULL, NULL, '2022-04-22 06:09:04'),
	(11, 'yonghutousu_types', '投诉类型', 3, '投诉类型3', NULL, NULL, '2022-04-22 06:09:04'),
	(12, 'yonghutousu_yesno_types', '投诉状态', 1, '处理中', NULL, NULL, '2022-04-22 06:09:04'),
	(13, 'yonghutousu_yesno_types', '投诉状态', 2, '通过', NULL, NULL, '2022-04-22 06:09:04'),
	(14, 'yonghutousu_yesno_types', '投诉状态', 3, '拒绝', NULL, NULL, '2022-04-22 06:09:04'),
	(15, 'jifen_types', '类型', 1, '减少', NULL, NULL, '2022-04-22 06:09:04'),
	(16, 'jifen_types', '类型', 2, '增加', NULL, NULL, '2022-04-22 06:09:04'),
	(17, 'news_types', '公告类型', 1, '促销活动', NULL, NULL, '2022-04-22 06:09:04'),
	(18, 'news_types', '公告类型', 2, '健康理疗知识讲座', NULL, NULL, '2022-04-22 06:09:05'),
	(19, 'news_types', '公告类型', 3, '社会公益活动', NULL, NULL, '2022-04-22 06:09:05'),
	(20, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-04-22 06:09:05'),
	(21, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-04-22 06:09:05');

DROP TABLE IF EXISTS `jiedanxiangqing`;
CREATE TABLE IF NOT EXISTS `jiedanxiangqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `paotuirenwu_id` int DEFAULT NULL COMMENT '任务',
  `jiedanyuan_id` int DEFAULT NULL COMMENT '接单员',
  `jiedanxiangqing_status_types` int DEFAULT NULL COMMENT '接单状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='接单详情';

DELETE FROM `jiedanxiangqing`;
INSERT INTO `jiedanxiangqing` (`id`, `paotuirenwu_id`, `jiedanyuan_id`, `jiedanxiangqing_status_types`, `create_time`) VALUES
	(7, 5, 1, 2, '2022-04-22 07:40:34'),
	(8, 6, 1, 2, '2022-04-22 08:24:02');

DROP TABLE IF EXISTS `jiedanyuan`;
CREATE TABLE IF NOT EXISTS `jiedanyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiedanyuan_name` varchar(200) DEFAULT NULL COMMENT '接单员姓名 Search111 ',
  `jiedanyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiedanyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiedanyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='接单员';

DELETE FROM `jiedanyuan`;
INSERT INTO `jiedanyuan` (`id`, `username`, `password`, `jiedanyuan_name`, `jiedanyuan_photo`, `sex_types`, `jiedanyuan_phone`, `jiedanyuan_email`, `new_money`, `insert_time`, `create_time`) VALUES
	(1, '接单员1', '123456', '接单员姓名1', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/jiedanyuan1.jpg', 2, '17703786901', '1@qq.com', 0.00, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(2, '接单员2', '123456', '接单员姓名2', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/jiedanyuan2.jpg', 2, '17703786902', '2@qq.com', 674.00, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(3, '接单员3', '123456', '接单员姓名3', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/jiedanyuan3.jpg', 1, '17703786903', '3@qq.com', 172.61, '2022-04-22 06:14:46', '2022-04-22 06:14:46');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/xiaoyuanfuwupingtai/upload/news1.jpg', '2022-04-22 06:14:46', '公告详情1', '2022-04-22 06:14:46'),
	(2, '公告标题2', 1, 'http://localhost:8080/xiaoyuanfuwupingtai/upload/news2.jpg', '2022-04-22 06:14:46', '公告详情2', '2022-04-22 06:14:46'),
	(3, '公告标题3', 1, 'http://localhost:8080/xiaoyuanfuwupingtai/upload/news3.jpg', '2022-04-22 06:14:46', '公告详情3', '2022-04-22 06:14:46'),
	(4, '公告标题4', 3, 'http://localhost:8080/xiaoyuanfuwupingtai/upload/news4.jpg', '2022-04-22 06:14:46', '公告详情4', '2022-04-22 06:14:46'),
	(5, '公告标题5', 1, 'http://localhost:8080/xiaoyuanfuwupingtai/upload/news5.jpg', '2022-04-22 06:14:46', '公告详情5', '2022-04-22 06:14:46');

DROP TABLE IF EXISTS `paotuirenwu`;
CREATE TABLE IF NOT EXISTS `paotuirenwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `paotuirenwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号  Search111 ',
  `paotuirenwu_name` varchar(200) DEFAULT NULL COMMENT '任务标题  Search111 ',
  `paotuirenwu_types` int DEFAULT NULL COMMENT '任务类型 Search111',
  `paotuirenwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shouhuodizhi_id` int DEFAULT NULL COMMENT '地址',
  `paotuirenwu_text` text COMMENT '任务备注',
  `paotuirenwu_status_types` int DEFAULT NULL COMMENT '任务状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='跑腿任务';

DELETE FROM `paotuirenwu`;
INSERT INTO `paotuirenwu` (`id`, `paotuirenwu_uuid_number`, `paotuirenwu_name`, `paotuirenwu_types`, `paotuirenwu_new_money`, `yonghu_id`, `shouhuodizhi_id`, `paotuirenwu_text`, `paotuirenwu_status_types`, `create_time`) VALUES
	(1, '165060808652218', '任务标题1', 3, 337.99, 3, 1, '任务备注1', 1, '2022-04-22 06:14:46'),
	(2, '165060808652211', '任务标题2', 2, 340.70, 3, 2, '任务备注2', 1, '2022-04-22 06:14:46'),
	(3, '165060808652217', '任务标题3', 1, 260.63, 3, 3, '任务备注3', 1, '2022-04-22 06:14:46'),
	(4, '16506080865220', '任务标题4', 3, 382.69, 2, 4, '任务备注4', 1, '2022-04-22 06:14:46'),
	(5, '165060808652317', '任务标题5', 3, 54.73, 2, 5, '任务备注5', 3, '2022-04-22 06:14:46'),
	(6, '1650615608483', '任务标题6', 3, 46.68, 1, 3, '任务备注111', 3, '2022-04-22 08:20:28');

DROP TABLE IF EXISTS `shouhuodizhi`;
CREATE TABLE IF NOT EXISTS `shouhuodizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `shouhuodizhi_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `shouhuodizhi_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `shouhuodizhi_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `shouhuodizhi`;
INSERT INTO `shouhuodizhi` (`id`, `yonghu_id`, `shouhuodizhi_name`, `shouhuodizhi_phone`, `shouhuodizhi_dizhi`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, '收货人1', '17703786901', '地址1', '2022-04-22 06:14:46', '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(2, 2, '收货人2', '17703786902', '地址2', '2022-04-22 06:14:46', '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(3, 1, '收货人3', '17703786903', '地址3', '2022-04-22 06:14:46', '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(4, 1, '收货人4', '17703786904', '地址4', '2022-04-22 06:14:46', '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(5, 3, '收货人5', '17703786905', '地址5', '2022-04-22 06:14:46', '2022-04-22 06:14:46', '2022-04-22 06:14:46');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'q9d2bvcw4nqg24hc56sycopkbdam09r3', '2022-04-22 06:37:08', '2024-08-04 02:00:43'),
	(2, 1, 'a1', 'jiedanyuan', '接单员', 'j42zb9jlr3t5oy4660ghc3xgckd63gvv', '2022-04-22 07:11:12', '2024-08-04 02:02:02'),
	(3, 1, 'a1', 'yonghu', '用户', 'qodo4bsanw05zp742mz4ru3h4dp6nicm', '2022-04-22 08:03:07', '2024-08-04 02:01:48');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_email`, `new_money`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/yonghu1.jpg', 2, '17703786901', '1@qq.com', 200.00, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/yonghu2.jpg', 2, '17703786902', '2@qq.com', 636.81, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/xiaoyuanfuwupingtai/upload/yonghu3.jpg', 1, '17703786903', '3@qq.com', 224.40, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46');

DROP TABLE IF EXISTS `yonghutousu`;
CREATE TABLE IF NOT EXISTS `yonghutousu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yonghutousu_name` varchar(200) DEFAULT NULL COMMENT '投诉标题 Search111 ',
  `yonghutousu_types` int DEFAULT NULL COMMENT '投诉类型 Search111 ',
  `yonghutousu_content` text COMMENT '投诉详情 ',
  `yonghutousu_yesno_types` int DEFAULT NULL COMMENT '投诉状态 Search111 ',
  `yonghutousu_yesno_text` text COMMENT '投诉结果 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='用户投诉';

DELETE FROM `yonghutousu`;
INSERT INTO `yonghutousu` (`id`, `yonghu_id`, `yonghutousu_name`, `yonghutousu_types`, `yonghutousu_content`, `yonghutousu_yesno_types`, `yonghutousu_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, '投诉标题1', 2, '投诉详情1', 1, NULL, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(2, 1, '投诉标题2', 3, '投诉详情2', 1, NULL, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(3, 1, '投诉标题3', 2, '投诉详情3', 1, NULL, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(4, 2, '投诉标题4', 3, '投诉详情4', 1, NULL, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(5, 1, '投诉标题5', 1, '投诉详情5', 1, NULL, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(6, 1, '投诉标题6', 2, '<p>投诉人信息 和投诉原因</p>', 2, '同意 以惩罚', '2022-04-22 08:21:07', '2022-04-22 08:21:07');

DROP TABLE IF EXISTS `yuebiangengjil`;
CREATE TABLE IF NOT EXISTS `yuebiangengjil` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户姓名 ',
  `yuebiangengjil_name` varchar(200) DEFAULT NULL COMMENT '原因 ',
  `yuebiangengjil_number` decimal(10,2) DEFAULT NULL COMMENT '涉及数量 ',
  `jifen_types` int DEFAULT NULL COMMENT '类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='余额变更记录';

DELETE FROM `yuebiangengjil`;
INSERT INTO `yuebiangengjil` (`id`, `yonghu_id`, `yuebiangengjil_name`, `yuebiangengjil_number`, `jifen_types`, `insert_time`, `create_time`) VALUES
	(1, 2, '原因1', 954.44, 2, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(2, 2, '原因2', 856.47, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(3, 3, '原因3', 44.87, 2, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(4, 3, '原因4', 217.46, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(5, 2, '原因5', 671.52, 1, '2022-04-22 06:14:46', '2022-04-22 06:14:46'),
	(6, 1, '发布跑腿单子', 46.68, 1, '2022-04-22 08:20:28', '2022-04-22 08:20:28'),
	(7, 1, '发布跑腿单子', 200.00, 1, '2022-04-22 08:23:31', '2022-04-22 08:23:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
