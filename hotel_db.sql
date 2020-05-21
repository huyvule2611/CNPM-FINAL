-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2020 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `country` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `phone`, `country`) VALUES
(3, 'trung', 'ad', '123123', 'vn'),
(7, 'dun', 'ádádasweqweqw', '12321weqw', '213123'),
(9, '3123123', '21312321', '123123213', '2va'),
(10, 'huy', 'll', '9874028', 'malaysia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `Room_Number` int(10) NOT NULL,
  `Room_type` int(11) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `free` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`Room_Number`, `Room_type`, `Phone`, `free`) VALUES
(89, 5, '80200', 'Yes'),
(123, 1, '213213', 'yes'),
(1234, 1, '123213', 'Yes'),
(12345, 1, '1232131', 'yes'),
(1234567, 3, '123213', ''),
(12345123, 4, '1232131', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_type`
--

CREATE TABLE `room_type` (
  `type_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room_type`
--

INSERT INTO `room_type` (`type_id`, `label`, `price`) VALUES
(1, 'Single', '100'),
(2, 'Double', '200'),
(3, 'Family', '300'),
(4, 'Queen', '500'),
(5, 'King', '800'),
(6, 'President', '2000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_Number`);

--
-- Chỉ mục cho bảng `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `Room_Number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345124;

--
-- AUTO_INCREMENT cho bảng `room_type`
--
ALTER TABLE `room_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
