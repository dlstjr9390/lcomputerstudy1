-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.6-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- yis 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `yis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `yis`;

-- 테이블 yis.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `b_idx` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `view` int(255) NOT NULL DEFAULT 0,
  `writer` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `b_group` int(10) DEFAULT NULL,
  `b_order` int(10) DEFAULT NULL,
  `b_depth` int(10) DEFAULT NULL,
  PRIMARY KEY (`b_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.board:~33 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`b_idx`, `title`, `content`, `view`, `writer`, `date`, `b_group`, `b_order`, `b_depth`) VALUES
	(94, '제목1', '제목1', 68, '학생1', '2022-01-28 15:48:12', 94, 1, 0),
	(95, '답글', '답글', 800, '학생4', '2022-01-28 15:54:38', 94, 2, 1),
	(96, 'qweqwrqw', 'rqwrwrr', 113, '학생1', '2022-02-09 14:41:49', 96, 1, 0),
	(100, '검색', '검색내용', 1, '학생1', '2022-02-17 13:24:56', 100, 1, 0),
	(101, '제목23', '내용23', 3, '추가14', '2022-02-17 13:26:01', 101, 1, 0),
	(102, '제목 24', '내용 24', 0, '추가14', '2022-02-17 13:26:21', 102, 1, 0),
	(103, '제목25', '내용25', 0, '추가14', '2022-02-17 13:27:15', 103, 1, 0),
	(104, 'adsfa', 'adsfasdf', 1, '학생1', '2022-02-17 14:58:58', 104, 1, 0),
	(105, '제목26', '내용26', 0, '학생2', '2022-02-21 13:28:10', 105, 1, 0),
	(106, '제목27', '내용27', 2, '학생2', '2022-02-21 13:29:26', 106, 1, 0),
	(113, 'qqq', 'qqq', 7, 'qqq', '2022-02-23 15:36:40', 113, 1, 0),
	(125, '444', '444', 14, '학생1', '2022-02-25 13:14:57', 125, 1, 0),
	(143, '55', '55', 1, '학생1', '2022-02-25 13:44:30', 125, 2, 1),
	(144, '새글', '새글', 3, '학생1', '2022-02-25 13:53:11', 144, 1, 0),
	(145, 'gg', 'gg', 0, '학생1', '2022-02-25 14:16:56', 144, 2, 1),
	(146, '', '', 1, '학생1', '2022-02-25 15:36:07', 146, 1, 0),
	(147, '123', '44', 0, '학생1', '2022-03-07 13:13:27', 147, 1, 0),
	(148, '11', '11123', 1, '학생1', '2022-03-07 13:37:27', 148, 1, 0),
	(151, 'aa', 'aa', 0, '학생1', '2022-03-08 13:35:04', 151, 1, 0),
	(152, 'ff', 'ff', 0, '학생1', '2022-03-08 13:36:57', 152, 1, 0),
	(153, 'gg', 'gg', 1, '학생1', '2022-03-08 13:37:16', 153, 1, 0),
	(173, 'hh', 'hh', 0, '학생1', '2022-03-11 14:34:00', 173, 1, 0),
	(175, '새글', 'ㅁㅁ', 23, '학생1', '2022-03-11 14:37:19', 175, 1, 0),
	(177, 'zx', 'zxz', 81, '학생1', '2022-03-11 14:54:35', 177, 1, 0),
	(178, 'gg', 'gg', 0, '학생1', '2022-03-14 13:46:24', 178, 0, 0),
	(179, 'gg2', 'gg', 0, '학생1', '2022-03-14 13:47:33', 179, 1, 0),
	(180, 'hh', 'hh', 1, '학생1', '2022-03-14 13:48:56', 180, 1, 0),
	(181, 'aaa', 'aaa', 0, '학생1', '2022-03-14 14:17:23', 181, 1, 0),
	(191, '13', '13', 76, '학생1', '2022-03-14 15:06:23', 191, 1, 0),
	(194, '11', '11', 1, '학생1', '2022-04-07 15:08:12', 194, 1, 0),
	(195, '11', '11', 0, '학생1', '2022-04-07 15:08:33', 195, 1, 0),
	(196, '새글', '새글', 1, '학생1', '2022-04-07 15:11:10', 196, 1, 0),
	(197, '답', '답', 0, '학생1', '2022-04-07 15:11:19', 197, 1, 0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 yis.comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `comment` (
  `c_idx` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `c_group` int(10) DEFAULT NULL,
  `c_order` int(10) DEFAULT NULL,
  `c_depth` int(10) DEFAULT NULL,
  `b_idx` int(10) DEFAULT NULL,
  PRIMARY KEY (`c_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.comment:~24 rows (대략적) 내보내기
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`c_idx`, `content`, `writer`, `date`, `c_group`, `c_order`, `c_depth`, `b_idx`) VALUES
	(44, '10답1댓글1', '10답1댓글1', '2022-01-26 14:16:59', 44, 1, 0, 82),
	(45, '12댓글', '12댓글', '2022-01-26 14:17:12', 45, 1, 0, 76),
	(50, '12댓글2', '12댓글2', '2022-01-26 14:47:25', 50, 1, 0, 76),
	(107, '수정1', '댓글1', '2022-01-28 14:10:41', 107, 1, 0, 75),
	(108, '대댓', '대댓', '2022-01-28 14:10:47', 107, 24, 1, 75),
	(109, '수정2', '댓글2', '2022-01-28 14:13:04', 109, 1, 0, 75),
	(111, '수정2대댓', '댓글3', '2022-01-28 14:13:17', 109, 23, 1, 75),
	(112, '대댓2수정', '대댓2', '2022-01-28 14:25:39', 107, 25, 2, 75),
	(118, 'qweqweqwe', '학생1', '2022-01-28 16:00:00', 118, 1, 0, 57),
	(119, 'qeqweqweqe', '학생1', '2022-01-28 16:00:05', 118, 20, 1, 57),
	(120, 'ㅁㄴㅇasd', '학생1', '2022-02-09 14:42:44', 120, 1, 0, 96),
	(121, 'ㅁㄴㅁㅇ', '학생11', '2022-02-09 14:42:47', 121, 1, 0, 96),
	(231, 'asdf', '학생1', '2022-02-14 15:11:36', 231, 1, 0, 95),
	(232, '1234', '학생1', '2022-02-14 15:13:29', 232, 1, 0, 95),
	(233, '1234', '학생1', '2022-02-14 15:13:41', 233, 1, 0, 95),
	(234, '1241414', '학생1', '2022-02-14 15:15:10', 234, 1, 0, 95),
	(235, 'ㅁㄴㅇ', '학생1', '2022-02-14 15:15:30', 235, 1, 0, 95),
	(236, '123', '학생1', '2022-02-14 15:19:00', 236, 1, 0, 95),
	(237, 'asdfa', '학생1', '2022-02-14 15:21:52', 237, 1, 0, 95),
	(260, '141414', '학생1', '2022-02-14 15:44:52', 260, 1, 0, 97),
	(273, 'qq', '학생1', '2022-02-15 13:11:57', 273, 1, 0, 95),
	(274, 'ㅁㅁㅁ', '학생1', '2022-02-15 13:17:48', 274, 1, 0, 95);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 테이블 yis.file 구조 내보내기
CREATE TABLE IF NOT EXISTS `file` (
  `f_idx` int(10) NOT NULL AUTO_INCREMENT,
  `b_idx` int(10) DEFAULT NULL,
  `f_Oname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_Cname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_size` int(10) DEFAULT NULL,
  PRIMARY KEY (`f_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.file:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`f_idx`, `b_idx`, `f_Oname`, `f_Cname`, `f_size`) VALUES
	(29, 191, 'aaa.png', '2022031415062380474.png', 10527),
	(30, 191, 'flower.png', '2022031415062368610.png', 4385);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- 테이블 yis.lc_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_auth` (
  `u_id` varchar(50) NOT NULL,
  `u_auth` varchar(200) NOT NULL,
  PRIMARY KEY (`u_id`,`u_auth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.lc_auth:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_auth` DISABLE KEYS */;
INSERT INTO `lc_auth` (`u_id`, `u_auth`) VALUES
	('aaaa', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `lc_auth` ENABLE KEYS */;

-- 테이블 yis.lc_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_board` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(50) DEFAULT NULL,
  `b_content` text DEFAULT NULL,
  `b_writer` varchar(50) DEFAULT NULL,
  `b_datetime` datetime DEFAULT current_timestamp(),
  `b_view` int(255) NOT NULL DEFAULT 0,
  `b_group` int(10) DEFAULT NULL,
  `b_order` int(10) DEFAULT NULL,
  `b_depth` int(10) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.lc_board:~26 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_board` DISABLE KEYS */;
INSERT INTO `lc_board` (`b_id`, `b_title`, `b_content`, `b_writer`, `b_datetime`, `b_view`, `b_group`, `b_order`, `b_depth`) VALUES
	(63, '원글2', '원글2', 'aaaa', '2022-04-11 13:26:00', 2, 63, 1, 0),
	(68, '원글3', '34', 'aaaa', '2022-04-11 14:16:47', 3, 68, 1, 0),
	(71, '123', '123', 'aaaa', '2022-04-12 13:08:43', 1, 71, 1, 0),
	(72, '456', '567', 'aaaa', '2022-04-12 13:08:53', 0, 72, 1, 0),
	(73, '789', '890', 'aaaa', '2022-04-12 13:08:59', 0, 73, 1, 0),
	(74, '6', '', 'aaaa', '2022-04-12 13:09:06', 0, 74, 1, 0),
	(75, '7', '', 'aaaa', '2022-04-12 13:09:11', 0, 75, 1, 0),
	(76, '8', '', 'aaaa', '2022-04-12 13:09:13', 0, 76, 1, 0),
	(77, '9', '', 'aaaa', '2022-04-12 13:09:15', 0, 77, 1, 0),
	(78, '1 ', '', 'aaaa', '2022-04-12 13:09:18', 0, 78, 1, 0),
	(79, '11', '', 'aaaa', '2022-04-12 13:09:21', 0, 79, 1, 0),
	(80, '12', '', 'aaaa', '2022-04-12 13:10:09', 0, 80, 1, 0),
	(81, '13', '13', 'aaaa', '2022-04-12 13:42:07', 0, 81, 1, 0),
	(82, '14', '14', 'aaaa', '2022-04-12 13:42:50', 1, 82, 1, 0),
	(83, '15', '15', 'aaaa', '2022-04-12 13:45:05', 0, 83, 1, 0),
	(84, '16', '16', 'aaaa', '2022-04-12 13:45:09', 0, 84, 1, 0),
	(85, '17', '17', 'aaaa', '2022-04-12 13:45:13', 0, 85, 1, 0),
	(86, '18', '18', 'aaaa', '2022-04-12 13:45:19', 0, 86, 1, 0),
	(87, '19', '19', 'aaaa', '2022-04-12 13:45:24', 0, 87, 1, 0),
	(88, '20', '20', 'aaaa', '2022-04-12 13:45:29', 0, 88, 1, 0),
	(89, '21', '21', 'aaaa', '2022-04-12 13:45:33', 0, 89, 1, 0),
	(90, '22', '22', 'aaaa', '2022-04-12 13:45:38', 97, 90, 1, 0),
	(91, '23', '23', 'aaaa', '2022-04-12 13:45:40', 0, 91, 1, 0),
	(92, '24', '24', 'aaaa', '2022-04-12 13:45:45', 2, 92, 1, 0),
	(93, '25', '25', 'aaaa', '2022-04-12 13:45:48', 1, 93, 1, 0),
	(95, '26', '26', 'aaaa', '2022-04-12 13:47:55', 185, 95, 1, 0);
/*!40000 ALTER TABLE `lc_board` ENABLE KEYS */;

-- 테이블 yis.lc_comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_comment` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_content` varchar(255) NOT NULL,
  `c_writer` varchar(255) NOT NULL,
  `c_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `c_group` int(10) DEFAULT NULL,
  `c_order` int(10) DEFAULT NULL,
  `c_depth` int(10) DEFAULT NULL,
  `b_id` int(10) DEFAULT NULL,
  `c_isedit` int(10) DEFAULT 0,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.lc_comment:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_comment` DISABLE KEYS */;
INSERT INTO `lc_comment` (`c_id`, `c_content`, `c_writer`, `c_datetime`, `c_group`, `c_order`, `c_depth`, `b_id`, `c_isedit`) VALUES
	(357, '123123123123', 'aaaa', '2022-04-20 15:51:30', 357, 1, 0, 99, 0),
	(361, 'asdasd', 'aaaa', '2022-04-20 15:52:44', 361, 1, 0, 99, 0),
	(464, '111111111111', 'aaaa', '2022-04-22 15:09:58', 464, 1, 0, 95, 0),
	(465, '222222222222222222', 'aaaa', '2022-04-22 15:10:00', 465, 1, 0, 95, 0),
	(466, '333333333333333', 'aaaa', '2022-04-22 15:10:02', 466, 1, 0, 95, 0);
/*!40000 ALTER TABLE `lc_comment` ENABLE KEYS */;

-- 테이블 yis.lc_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_user` (
  `u_no` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_datetime` datetime DEFAULT current_timestamp(),
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialsNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`u_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.lc_user:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_user` DISABLE KEYS */;
INSERT INTO `lc_user` (`u_no`, `u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialsNonExpired`, `u_isEnabled`) VALUES
	(4, 'aaaa', '$2a$10$ckQ5sRmFbc/QI3kfKF4DTu4DDc5Fx8sOgUcnpZvUx6nuiALbb8hBK', '1234', '2022-03-30 13:22:05', 1, 1, 1, 1);
/*!40000 ALTER TABLE `lc_user` ENABLE KEYS */;

-- 테이블 yis.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `u_idx` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(255) NOT NULL,
  `u_pw` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_tel` varchar(255) NOT NULL,
  `u_age` varchar(255) NOT NULL,
  `u_auth` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`u_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.user:~32 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`u_idx`, `u_id`, `u_pw`, `u_name`, `u_tel`, `u_age`, `u_auth`) VALUES
	(1, 'aaa', '1234', '학생1', '010-1234-1234', '99', b'1'),
	(2, 'dls', '1234', '학생2', '010-101-010', '121', b'1'),
	(3, 'asdgasdg', 'asdgasdg', '학생3', '6416-1616-6516', '15', b'1'),
	(4, 'aaafff', '165165', '학생4', '888-888-8888', '88', b'0'),
	(5, 'qqqqqqq', '88897898', '학생5', '7777-7777-7777', '77', b'0'),
	(6, 'bbbbbbb', '66666', '학생6', '2222-2222-2222', '22', b'0'),
	(7, 'ghhyhyhyh', '74456654', '학생7', '1651-1615-161', '6', b'0'),
	(8, 'qewrqewr', '74456654', '학생8', '1651-4111-161', '66', b'0'),
	(9, 'kkkkkkkkkkkkkk', '1234', '학생9', '4848-4848-8484', '48', b'0'),
	(10, 'pppppppppppppppp', '1234', '학생10', '4848-4848-8484', '48', b'0'),
	(11, 'p', '1234', '학생11', '4848-4848-8484', '48', b'0'),
	(12, 'pqwe', '1234', '학생12', '4848-4848-8484', '48', b'0'),
	(13, 'pqwewerw', '1234', '학생13', '4848-4848-8484', '48', b'0'),
	(14, 'pqwewerwaa', '1234a', '학생14', '1111-4848-8484', '15', b'0'),
	(15, 'mmmnnn', '1234a', '학생15', '1111-4848-8484', '15', b'0'),
	(16, 'lkkjjhhg', '1234a', '학생16', '1111-4746-8484', '15', b'0'),
	(18, 'fqfqfqf', '65146541651', '추가', '9877-4894-4984', '98', b'0'),
	(19, 'mmmmmmmmmmmmm', '65146541651', '추가2', '9877-4894-4984', '77', b'0'),
	(20, 'fffffffffffffffffffffffffffff', '65146541651', '추가3', '9877-4894-4984', '77', b'0'),
	(21, 'sdagqgqgqg', 'fasfd', '추가3', '9494-9849-9849', '9', b'0'),
	(22, 'sdagqgqgqg', 'fasfd', '추가4', '9494-9849-9849', '11', b'0'),
	(23, 'sdagqgqgqg', 'fasfd', '추가5', '9494-9849-9849', '145', b'0'),
	(24, 'sdagqgqgqgaaa', 'fasfda', '추가6', '9494-9849-9849', '145', b'0'),
	(25, 'sdagqgqgqgaaa111', 'fasfda', '추가7', '9494-9849-9849', '145', b'0'),
	(26, '124141414', 'fasfda', '추가8', '9494-9849-9849', '1', b'0'),
	(27, '1a11a1a1a', 'fasfda', '추가9', '9494-9849-9849', '12', b'0'),
	(28, 'dfafafafafaf', 'fasfda', '추가10', '9494-9849-9849', '33', b'0'),
	(29, 'fzzzz', 'fasfda', '추가11', '9494-9849-9849', '33', b'0'),
	(30, 'fqqqq', 'fasfda', '추가12', '9494-9849-9849', '33', b'0'),
	(31, 'zxczc', 'fasfda', '추가13', '8989-9849-9849', '33', b'0'),
	(32, 'qq', 'fasfda', '추가14', '8998-9849-9849', '33', b'0'),
	(33, 'qq1414', 'fasfda', '추가15', '8998-9849-9849', '33', b'0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
