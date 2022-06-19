-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2019 lúc 05:13 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smarthotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `cus_Name` varchar(100) NOT NULL,
  `cus_Father` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cus_nic` bigint(20) NOT NULL,
  `cus_date` date NOT NULL,
  `out_date` date NOT NULL,
  `phone` bigint(20) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_adult` int(11) NOT NULL,
  `cus_child` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_cost` float NOT NULL,
  `taxes` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `checkout`
--

INSERT INTO `checkout` (`id`, `cus_Name`, `cus_Father`, `address`, `cus_nic`, `cus_date`, `out_date`, `phone`, `cus_country`, `cus_city`, `cus_adult`, `cus_child`, `room_type`, `room_no`, `room_cost`, `taxes`, `total`) VALUES
(1, 'vu', 'Xuan', 'oooooo', 654654, '2019-10-23', '2019-11-03', 32468798465, 'Vietnam', 'Hai Phong', 2, 0, 'Double', 201, 0, 54, 1054),
(2, 'lien', 'ha thanh', 'hang bai', 9879879, '2019-10-30', '2019-11-03', 4654654, 'Vietnam', 'Ha Noi', 2, 2, 'Luxury', 654, 0, 210, 1110),
(3, 'linh', 'pham thi', '26 pham ngu lao', 986546213216, '2019-10-23', '2019-11-02', 32468798465, 'Vietnam', 'Hai Duong', 0, 0, 'Single', 201, 0, 30, 730),
(4, 'cong', 'nguyen', 'Q1', 987654654654, '2019-10-31', '2019-11-01', 3266555, 'Vietnam', 'TP HCM', 5, 2, 'Single', 202, 0, 300, 1200),
(5, 'tien anh', 'tran', 'jjjjj', 6549876546, '2019-10-30', '2019-11-03', 3266858, 'Vietnam', 'Vinh Phuc', 7, 3, 'Double', 301, 0, 324, 1254),
(6, 'cong tien', 'pham', 'qqqq', 321462255, '2019-10-30', '2019-11-03', 3263545, 'Vietnam', 'Ha Nam', 8, 5, 'Luxury', 106, 0, 988, 2088),
(7, 'hoa', 'pham thanh', 'aaaa', 32165432132, '2019-11-01', '2019-11-04', 3267548, 'Vietnam', 'Khanh Hoa', 3, 1, 'Double', 205, 0, 600, 2600),
(8, 'kieu', 'tran', 'aaaaaa', 65432132, '2019-11-01', '2019-11-05', 3254545, 'Vietnam', 'Phu Tho', 6, 2, 'Delux', 109, 0, 1000, 10876),
(9, 'suong nhan', 'ly', 'teen town', 65465465, '2019-11-01', '2019-11-06', 32659874, 'Vietnam', 'Dien Bien', 1, 0, 'Single', 303, 0, 50, 1150),
(10, 'Tu', 'Nguyen Van', 'RoyalCity ', 98654, '2019-11-01', '2019-11-05', 3265974, 'Vietnam', 'Ha Noi', 1, 0, 'Double', 304, 0, 50, 1150),
(11, 'KHanh', 'Vu Thu', '987 ngo 3 q1', 9876545, '2019-11-01', '2019-11-05', 39876546, 'Vietnam', 'Vinh Long', 5, 2, 'Luxury', 104, 0, 210, 1710),
(12, 'Long', 'Hoang', 'aaaaa ', 987654, '2019-10-24', '2019-11-04', 3985474, 'Pakistan', 'Vietam', 4, 5, 'Luxury', 202, 0, 310, 2310),
(13, 'lan', 'Dao', 'ly thai to ', 654654654, '2019-11-02', '2019-11-03', 652458745, 'Vietnam', 'Quang Binh', 2, 2, 'Family', 602, 0, 31, 1018),
(14, 'Vy', 'Trieu', 'ngo quyen ', 984984984, '2019-11-02', '2019-11-03', 652458745, 'Vietnam', 'Vinh Phuc', 5, 1, 'Family', 601, 0, 31, 2300),
(15, 'youngsuk', 'lee', 'none ', 54986545444, '2019-11-02', '2019-11-05', 652458745, 'SorthKorea', 'None', 6, 3, 'Family', 605, 0, 200, 1500),
(16, 'Ban', 'Licolas', 'none', 5465465, '2019-11-03', '2019-11-04', 65245474, 'England', 'None', 4, 2, 'Single', 401, 0, 200, 2000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `idcard` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `name`, `father`, `idcard`, `phone`, `designation`, `salary`) VALUES
(2, 'Nam', 'Tran Tuan', 5650311674779, 3322996178, 'IT Officer', 65000),
(3, 'Hong', 'Ha Thu', 5245487554459, 3322665598, 'Manager', 70000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nature` varchar(255) NOT NULL,
  `expens` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `nature`, `expens`, `date`) VALUES
(1, 'hoang', 'architure for university', 10000, '2018-11-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guests`
--

CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `cus_Name` varchar(100) NOT NULL,
  `cus_Father` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cus_nic` bigint(20) NOT NULL,
  `cus_date` date NOT NULL,
  `phone` bigint(20) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_adult` int(11) NOT NULL,
  `cus_child` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_cost` float NOT NULL,
  `taxes` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `guests`
--

INSERT INTO `guests` (`id`, `cus_Name`, `cus_Father`, `address`, `cus_nic`, `cus_date`, `phone`, `cus_country`, `cus_city`, `cus_adult`, `cus_child`, `room_type`, `room_no`, `room_cost`, `taxes`, `total`) VALUES
(18, 'hong', 'nguyen thi yen', 'Ha Noi', 54545456786, '2019-11-14', 1564654315, 'Vietnam', 'Ha Noi', 5, 1, 'Luxury', 604, 9000, 500, 9500),
(25, 'yen', 'ee', 'uiaa', 54687646543, '2019-11-21', 5545487, 'None', 'None', 3, 1, 'Family', 112, 8000, 100, 8100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `status`) VALUES
(2, 'admin', '12345', 'Administrator'),
(3, 'vuquoc', '12345', 'admin'),
(4, 'nguyentinh', 'nguyentinh', 'admin'),
(5, 'phamduc', 'kobiet', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `roomtype` varchar(100) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `phone`, `roomtype`, `roomno`, `date`) VALUES
(1, 'nam', 2123542, 'Delux', 305, '2019-11-09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
