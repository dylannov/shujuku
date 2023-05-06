-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 07:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `kh` varchar(10) NOT NULL,
  `km` varchar(50) DEFAULT NULL,
  `xf` int(11) DEFAULT NULL,
  `xs` int(11) DEFAULT NULL,
  `yxh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c`
--

INSERT INTO `c` (`kh`, `km`, `xf`, `xs`, `yxh`) VALUES
('08301001', '分子物理学', 4, 40, 3),
('08302001', '通信学', 3, 30, 2),
('08305001', '离散数学', 4, 40, 1),
('08305002', '数据库原理', 4, 50, 1),
('08305003', '数据结构', 4, 50, 1),
('08305004', '系统结构', 6, 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d`
--

CREATE TABLE `d` (
  `yxh` int(11) NOT NULL,
  `mc` varchar(50) DEFAULT NULL,
  `dz` varchar(50) DEFAULT NULL,
  `lxdh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d`
--

INSERT INTO `d` (`yxh`, `mc`, `dz`, `lxdh`) VALUES
(1, '计算机学院', '上海东校区三号楼', '65437567'),
(2, '通讯学院', '上海东校区二号楼', '65341234'),
(3, '材料学院', '上海东校区四号楼', '65347890');

-- --------------------------------------------------------

--
-- Table structure for table `e`
--

CREATE TABLE `e` (
  `xh` int(11) DEFAULT NULL,
  `xq` int(11) DEFAULT NULL,
  `kh` varchar(10) DEFAULT NULL,
  `gh` int(11) DEFAULT NULL,
  `cj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e`
--

INSERT INTO `e` (`xh`, `xq`, `kh`, `gh`, `cj`) VALUES
(1101, 201201, '08305001', 103, 60),
(1102, 201201, '08305001', 103, 87),
(1102, 201202, '08305002', 101, 82),
(1102, 201301, '08305004', 101, 72),
(1103, 201201, '08305001', 103, 56),
(1103, 201202, '08305002', 102, 75),
(1103, 201202, '08305003', 102, 84),
(1103, 201301, '08305001', 102, 69),
(1103, 201301, '08305004', 101, 57),
(1104, 201201, '08305001', 103, 74),
(1104, 201302, '08302001', 201, 65),
(1106, 201201, '08305001', 103, 85),
(1106, 201202, '08305002', 103, 66),
(1107, 201201, '08305001', 103, 90),
(1107, 201202, '08305003', 102, 79);

-- --------------------------------------------------------

--
-- Table structure for table `o`
--

CREATE TABLE `o` (
  `xq` int(11) DEFAULT NULL,
  `kh` varchar(10) DEFAULT NULL,
  `gh` int(11) DEFAULT NULL,
  `sksj` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `o`
--

INSERT INTO `o` (`xq`, `kh`, `gh`, `sksj`) VALUES
(201201, '08305001', 103, '星期三 5-8'),
(201202, '08305002', 101, '星期三 1-4'),
(201202, '08305002', 102, '星期三 1-4'),
(201202, '08305002', 103, '星期三 1-4'),
(201202, '08305003', 102, '星期五 5-8'),
(201301, '08305004', 101, '星期二 1-4'),
(201301, '08305001', 102, '星期一 5-8'),
(201302, '08302001', 201, '星期一 5-8');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'teacher'),
(3, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `s`
--

CREATE TABLE `s` (
  `xh` int(11) NOT NULL,
  `xm` varchar(50) DEFAULT NULL,
  `xb` varchar(50) DEFAULT NULL,
  `csrq` date NOT NULL,
  `jg` varchar(50) DEFAULT NULL,
  `sjhm` varchar(50) DEFAULT NULL,
  `yxh` int(11) NOT NULL,
  `zt` varchar(75) DEFAULT NULL,
  `yhm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s`
--

INSERT INTO `s` (`xh`, `xm`, `xb`, `csrq`, `jg`, `sjhm`, `yxh`, `zt`, `yhm`) VALUES
(1101, '李明', '男', '1993-03-06', '上海', '13613005486', 2, NULL, 'mingming'),
(1102, '刘晓明', '男', '1992-12-08', '安徽', '18913457890', 1, NULL, 'liuxiaoming'),
(1103, '张颖', '女', '1993-01-05', '江苏', '18826490423', 1, NULL, NULL),
(1104, '刘晶晶', '女', '1994-11-06', '上海', '13331934111', 1, NULL, NULL),
(1105, '刘成刚', '男', '1991-06-07', '上海', '18015872567', 1, NULL, NULL),
(1106, '李二丽', '女', '1993-05-04', '江苏', '18107620945', 1, NULL, NULL),
(1107, '张晓峰', '男', '1992-08-16', '浙江', '13912341078', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t`
--

CREATE TABLE `t` (
  `gh` int(11) NOT NULL,
  `xm` varchar(50) DEFAULT NULL,
  `xb` varchar(10) DEFAULT NULL,
  `csrq` date DEFAULT NULL,
  `zc` varchar(50) DEFAULT NULL,
  `yxh` int(11) DEFAULT NULL,
  `yhm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t`
--

INSERT INTO `t` (`gh`, `xm`, `xb`, `csrq`, `zc`, `yxh`, `yhm`) VALUES
(101, '陈迪茂', '男', '1973-03-06', '副教授', 1, 'dimaochen'),
(102, '马小红', '女', '1972-12-08', '讲师', 1, 'maxiaohong'),
(103, '吴宝钢', '男', '1980-11-06', '讲师', 1, NULL),
(201, '张心颖', '女', '1960-01-05', '教授', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `role_id` int(11) DEFAULT NULL,
  `yhm` varchar(50) DEFAULT NULL,
  `mm` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`role_id`, `yhm`, `mm`) VALUES
(2, 'dimaochen', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'maxiaohong', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'mingming', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'liuxiaoming', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`kh`);

--
-- Indexes for table `d`
--
ALTER TABLE `d`
  ADD PRIMARY KEY (`yxh`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s`
--
ALTER TABLE `s`
  ADD PRIMARY KEY (`xh`);

--
-- Indexes for table `t`
--
ALTER TABLE `t`
  ADD PRIMARY KEY (`gh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
