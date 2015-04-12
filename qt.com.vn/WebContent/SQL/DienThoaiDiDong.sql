-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dienthoaididong
-- ------------------------------------------------------
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `hoten` varchar(30) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodt` varchar(15) DEFAULT NULL,
  `loaithe` varchar(15) DEFAULT NULL,
  `mathe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('hathanhtam','1234','Hà Thanh Tâm','thanhtam.ha1994@hotmail.com','Nam','Yên Xá - Ý Yên - Nam Định','1995-01-03','0918181003','Agribank','1234567890'),('hoangtien','hathanhtam','Nguyễn Hoàng Tiến','hoangtien@gmail.com','Nam','Hà Nội','1994-06-06','0912313313','Techcombank','123123123'),('nguyenanhquan','hathanhtam','Nguyễn Anh Quân','anhquan@gmail.com','Nam','Lai Châu','1994-10-03','0912345678','VietinBank','1234567890');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cauhinh`
--

DROP TABLE IF EXISTS `cauhinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cauhinh` (
  `masp` varchar(15) NOT NULL,
  `manhinh` varchar(45) DEFAULT NULL,
  `CPU` varchar(45) DEFAULT NULL,
  `RAM` varchar(15) DEFAULT NULL,
  `OS` varchar(45) DEFAULT NULL,
  `camerachinh` varchar(45) DEFAULT NULL,
  `cameraphu` varchar(45) DEFAULT NULL,
  `ROM` varchar(15) DEFAULT NULL,
  `SD` varchar(15) DEFAULT NULL,
  `Pin` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhinh`
--

LOCK TABLES `cauhinh` WRITE;
/*!40000 ALTER TABLE `cauhinh` DISABLE KEYS */;
INSERT INTO `cauhinh` VALUES ('IP564GW','DVGA, 4.0\", 640 x 1136 pixels','Apple A6, 2 nhân, 1.3 GHz','1 GB','iOS 6','8.0 MP, Quay phim FullHD 1080p@30fps','1.2 MP','64 GB','Không','1440 mAh');
/*!40000 ALTER TABLE `cauhinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gioithieusanpham`
--

DROP TABLE IF EXISTS `gioithieusanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gioithieusanpham` (
  `masp` varchar(15) NOT NULL,
  `chitiet` text,
  PRIMARY KEY (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gioithieusanpham`
--

LOCK TABLES `gioithieusanpham` WRITE;
/*!40000 ALTER TABLE `gioithieusanpham` DISABLE KEYS */;
INSERT INTO `gioithieusanpham` VALUES ('IP564GW','<p>&nbsp&nbsp&nbsp&nbspApple vừa chính thức giới thiệu iPhone 5 tại sự kiện diễn ra ở trung tâm hội nghị Yerba Buena. iPhone mới có chip xử lý Apple A6, thiết kế với vật liệu chính là nhôm và kính, kết nối LTE và màn hình kích thước 4”. Như vậy sau 5 năm xuất hiện trên thị trường thì Apple đã lần đầu tiên thay đổi kích thước màn hình cho iPhone. Tên gọi iPhone 5 được lấy theo thứ tự kế tiếp từ iPhone 4S và nó đồng nghĩa rằng con số đi theo tên gọi sẽ không thể hiện thế hệ của iPhone khi máy đã bước sang thế hệ thứ 6. Máy vẫn có máy ảnh độ phân giải 8MP nhưng chất lượng đã được cải thiện đáng kể, sử dụng chip Apple A6 nhỏ hơn nhưng mạnh hơn, thiết kế mỏng hơn 18% và nhẹ hơn 20% so với iPhone 4S.</p><br><p>&nbsp&nbsp&nbsp&nbspThiết kế của iPhone mới không có quá nhiều thay đổi so với iPhone 4S nhưng đã mỏng hơn và nhẹ hơn. iPhone 5 mỏng 7,6mm và nặng 112gram, nó là smartphone mỏng nhất và nhẹ nhất mà Apple từng làm. Mặt sau của máy được làm từ hợp kim nhôm thay vì mặt kính bóng như iPhone 4S trước đây. Ngoài ra, phần mặt sau cũng được chia làm ba khoang với màu đen và xám. Phần màu đen này chiếm diện tích nhỏ ở cạnh trên và dưới của máy, nếu là máy màu trắng thì mảng nhỏ này sẽ là màu trắng.</p><br><p>&nbsp&nbsp&nbsp&nbspMáy ảnh 8MP của iPhone 5 có ống kính được làm từ 5 thành phần thấu kính với độ mở lớn nhất đạt f/2.4 và có bộ lọc hồng ngoại (IR) cộng với chế độ chụp tối linh hoạt. Đáng chú ý khi Apple bổ sung khả năng chụp panorama, tính năng này đã từng xuất hiện trước đây trong một phiên bản iOS nhưng chưa được Apple kích hoạt. Ngoài cải thiện về khả năng chụp thiếu sáng, iPhone 5 sẽ có màn trập hoạt động với tốc độ nhanh hơn tới 40% so với thế hệ trước. Camera của iPhone 5 có khả năng ghi hình Full-HD trong khi camera trước với cảm biến BSI có thể quay phim HD, kết hợp với mạng LTE thì bạn hoàn toàn có những cuộc nói chuyện video chất lượng cao qua FaceTime. Một số nâng cấp khác gồm chống rung, giảm nhiễu hiệu quả hơn và khả năng chụp ảnh trong khi quay phim.</p><br><div class=\"img\"><img src=\"../../Images/Product/IP5/IP5_1.jpg\" width=\"800px\" height=\"321px\"/></div><br><p>&nbsp&nbsp&nbsp&nbspChip Apple A6 trên iPhone 5 đã được Apple giảm kích thước nhưng lại tăng sức mạnh đáng kể khi nhân xử lý và GPU (nhân đồ hoạ) đều tăng gấp đôi về hiệu năng. iPhone mới đi kèm với kết nối mới mà Apple gọi là Lightning, nó nhỏ hơn 80% với chỉ 8 chân kết nối, ổn định và nhanh hơn so với chuẩn hiện tại. Nếu bạn có một dây cáp đời cũ và muốn sử dụng với iPhone 5, Apple sẽ bán phụ kiện chuyển đổi từ 30 chân xuống 8 chân với giá chưa tiết lộ</p><br><div class=\"img\"><img src=\"../../Images/Product/IP5/IP5_2.jpg\" width=\"524px\" height=\"488px\"/></div><br><p>&nbsp&nbsp&nbsp&nbspTheo truyền thống, Apple vẫn trang bị màn hình độ phân giải Retina cho chiếc iPhone mới. Màn hình này có kích thước 4”, độ phân giải 640*1136, tỉ lệ tương đương 16:9. Với kích thước này, tỉ lệ điểm ảnh trên mỗi inch vẫn là 326ppi và người dùng vẫn dễ dàng sử dụng iPhone 5 với một bàn tay. Được phủ lớp kính Corning Gorilla Glass, màn hình trên iPhone sẽ có khả năng chống trày tuyệt vời.</p>');
/*!40000 ALTER TABLE `gioithieusanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhanvien` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `hoten` varchar(45) DEFAULT NULL,
  `nghiepvu` varchar(45) DEFAULT NULL,
  `cmnd` varchar(45) DEFAULT NULL,
  `mucluong` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sodt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('nhanvien1','1234','Nhân viên 1','Nhập liệu','123456789','3000000','nhanvien1@hotmail.com','0912121212'),('nhanvien2','1234','Nhân viên 2','Nhập liệu','123123123','2500000','nhanvien2@hotmail.com','0912313123');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `masp` varchar(15) NOT NULL,
  `tensp` varchar(45) DEFAULT NULL,
  `gia` varchar(15) DEFAULT NULL,
  `baohanh` varchar(45) DEFAULT NULL,
  `phukien` varchar(45) DEFAULT NULL,
  `tinhtrang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`masp`),
  KEY `Id_cauhinh_idx` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('IP564GW','IPhone 5 64GB White','6.350.000 VNĐ','12 tháng phần mềm','Sạc cáp tai nghe cao cấp','Mới 99%');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `title` text,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tintuc`
--

LOCK TABLES `tintuc` WRITE;
/*!40000 ALTER TABLE `tintuc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tintuc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-04 19:28:34
