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
INSERT INTO `cauhinh` VALUES ('IP564G','DVGA, 4.0\", 640 x 1136 pixels','Apple A6, 2 nhân, 1.3 GHz','1 GB','iOS 6','8.0 MP, Quay phim FullHD 1080p@30fps','1.2 MP','64 GB','iOS 6','1440 mAh');
/*!40000 ALTER TABLE `cauhinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gioithieu`
--

DROP TABLE IF EXISTS `gioithieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gioithieu` (
  `masp` varchar(15) NOT NULL,
  `chitiet` text,
  PRIMARY KEY (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gioithieu`
--

LOCK TABLES `gioithieu` WRITE;
/*!40000 ALTER TABLE `gioithieu` DISABLE KEYS */;
INSERT INTO `gioithieu` VALUES ('IP564G','<p>Apple vừa chính thức giới thiệu iPhone 5 tại sự kiện diễn ra ở trung tâm hội nghị Yerba Buena. iPhone mới có chip xử lý Apple A6, thiết kế với vật liệu chính là nhôm và kính, kết nối LTE và màn hình kích thước 4”. Như vậy sau 5 năm xuất hiện trên thị trường thì Apple đã lần đầu tiên thay đổi kích thước màn hình cho iPhone. Tên gọi iPhone 5 được lấy theo thứ tự kế tiếp từ iPhone 4S và nó đồng nghĩa rằng con số đi theo tên gọi sẽ không thể hiện thế hệ của iPhone khi máy đã bước sang thế hệ thứ 6. Máy vẫn có máy ảnh độ phân giải 8MP nhưng chất lượng đã được cải thiện đáng kể, sử dụng chip Apple A6 nhỏ hơn nhưng mạnh hơn, thiết kế mỏng hơn 18% và nhẹ hơn 20% so với iPhone 4S.</p><br>\r\n<b>Thiết kế nhẹ hơn, mỏng hơn và dài hơn</b>\r\n<p>Nhìn khá giống iPhone 4S, song nếu quan sát thật gần, iPhone 5 thực sự khác biệt. Apple luôn đầu tư rất mạnh cho mảng kiểu dáng – khi cầm máy, bạn sẽ thấy mobile nhẹ hơn và mỏng hơn người tiền nhiệm. Trong khi iPhone 4S sở hữu kích thước 115,2 x 58,6 x 9,3mm và nặng 140g, thông số tương ứng trên iPhone 5 là 123,8 x 58,6 x 7,6mm và nặng 112g – rất khác biệt khi cầm trên tay.</p>\r\n<img class=\"img\" src=\"../../Images/Product/IP564GW/1.jpg\"></img>\r\n<p>Trên thực tế, màn hình 4 inch tỷ lệ 16:9 đồng nghĩa rằng, sản phẩm có thêm không gian hiển thị trong khi chiều rộng không đổi. Khe nano Sim nhìn chẳng khác mấy so với iPhone 4S, song thực tế nó đã giảm kích thước nhằm chào đón dòng sim mới. Ngoài ra, giắc cắm tai nghe 3,5mm được chuyển xuống bên dưới, nằm cạnh cổng kết nối Lightning.</p>\r\n<p>Nắp lưng của iPhone 5 sử dụng kim loại nguyên khối, giúp giảm độ dày so với lớp kính bóng bẩy trên iPhone 4S. Đồng thời, lớp mạ tinh tế bên ngoài khiến điện thoại trông đẹp mắt và thú vị hơn trước rất nhiều. </p><br>\r\n<b>Màn hình Retina 4 inch</b>\r\n<p>Sau 5 năm trung thành với màn hình 3.5 inch, cuối cùng Apple đã quyết định nâng cấp kích thước hiển thị trên iPhone 5. Với độ phân giải 1.236 x 640 pixel cho mật độ điểm ảnh tương tự iPhone 4S (326ppi), người dùng nhận được màn hình Retina với không gian hiển thị lớn hơn và phù hợp hơn khi thưởng thức phim qua màn ảnh rộng.</p>\r\n<img class=\"img\" src=\"../../Images/Product/IP564GW/2.jpg\"></img>\r\n<p>Ngoài ra, màn hình trên iPhone 5 không chỉ lớn hơn mà còn rực rỡ hơn so với iPhone 4S, nhờ mức tăng độ bão hòa màu lên tới 44%. Do đó, màu sắc trở nên cực ấn tượng và có thể khẳng định, đây là chiếc màn hình hàng đầu trong làng smartphone đương đại.</p><br>\r\n<b>Chíp xử lý A6: Nhanh hơn</b>\r\n<p>Mặc dù chưa thể thử nghiệm các ứng dụng được thiết kế cho chíp xử lý A6, song khi chơi game như Horn, Infinity Blade 2 và Racing Real 2 đều ghi nhận tốc độ tăng đáng kể so với trước. Bên cạnh đó, bạn cần lưu ý rằng, thông số kỹ thuật không phải tất cả. Quan trọng là thiết bị thể hiện thế nào trên thực tế và iPhone 5 đang làm rất tốt.Như Apple công bố, trong tương lai, các ứng dụng trên iPhone 5 sẽ ngày càng tốt hơn, load nhanh hơn và đồ họa tốt hơn – điều này được chứng thực phần nào trong các thử nghiệm gần đây.</p><br>\r\n<b>Máy ảnh tốt hơn: Hỗ trợ Panorama</b><br>\r\n<p>Mặc dù độ phân giải vẫn đạt 8MP nhưng máy ảnh trên iPhone 5 tốt hơn iPhone 4S rất nhiều. Đó là một ống kính được liên kết tốt hơn, bảo vệ bằng sapphire và tăng tốc độ chụp (khoảng 40%) nhờ chíp xử lý A6 mạnh mẽ.</p>\r\n<p>Bên cạnh đó, khả năng chụp trong điều kiện thiếu ánh sáng được cải thiện khi độ nhiễu giảm đáng kể. Đó là nhờ công nghệ kết hợp điểm ảnh mà Apple rất tâm đắc. Khả năng chỉnh sửa ảnh qua điện thoại được hỗ trợ tốt nhờ hàng núi ứng dụng trên App Store, cũng như trình chỉnh sửa cài sẵn trên máy.</p>\r\n<img class=\"img\" src=\"../../Images/Product/IP564GW/3.jpg\"></img>\r\n<p>Thêm một nét mới là chế độ chụp Panorama, cho phép ghi hình với góc mở lên đến 240 độ và kích cỡ 28 Megapixel đầy ấn tượng. Camera còn cho phép quay phim 1080p Full HD, giúp nhận diện 10 khuôn mặt khác nhau và thoải mái chụp hình ngay khi đang quay phim.</p>\r\n<p>Phía trước là camera 1.2 Megapixel mà bạn có thể tận dụng như một tấm gương hữu ích hoặc quay phim HD 720p. Tất cả các đoạn phim/ảnh chụp đều có thể chia sẻ nhanh chóng nhờ tính năng Streams mới trên iOS 6.</p><br>\r\n<b>Hệ điều hành iOS 6</b>\r\n<p>Không chỉ phần cứng, iPhone 5 còn được cài sẵn hệ điều hành iOS 6 với hơn 200 tính năng cải tiến. Siri trở nên giỏi giang hơn với khả năng hỗ trợ nhà kinh doanh hoặc cập nhật tin tức thể thao nổi bật. Facebook thì được tích hợp sâu hơn, giống như Twitter trên iOS 5 vậy.</p><br>\r\n<b>Pin lâu hơn</b>\r\n<p>Không chỉ nâng cấp tốc độ, chíp A6 ghi nhận khả năng tiết kiệm năng lượng tốt hơn trước. Khi thử nghiệm cùng iPhone 4S cho các nhiệm vụ tương tự, iPhone 5 cho thấy thời lượng pin dài hơn. Dù không thể kiểm tra chính xác các thông số được quảng cáo (như 8 giờ sử dụng 3G, 10 giờ xem video, 40 giờ nghe nhạc...), song phải khẳng định nguồn pin trên iPhone 5 rất khả quan.</p><br>\r\n<b>Kết luận</b>\r\n<p>Apple đã không giới thiệu smartphone hoàn toàn mới như nhiều người mong đợi, song iPhone 5 chắc chắn chiếm được cảm tình của những ai từng sở hữu những phiên bản iPhone trước. Đúng vậy, đây chính là sản phẩm mà khách hàng muốn nâng cấp, bởi iPhone 5 đem lại cảm giác an toàn cho chủ nhân, giúp họ biết phải sử dụng thế nào ngay sau khi mua.</p>');
/*!40000 ALTER TABLE `gioithieu` ENABLE KEYS */;
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
INSERT INTO `nhanvien` VALUES ('nhanvien1','1234','Nhân viên 1','Nhập liệu','123456789','3000000','nhanvien1@hotmail.com','0913131313');
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
INSERT INTO `sanpham` VALUES ('IP564G','IPhone 5 64GB','6.350.000 VNĐ','12 tháng phần mềm','Sạc cáp tai nghe cao cấp','Mới 99%'),('IP664G','Iphone 6 Plus 64GB','20.790.000 VNĐ','12 tháng phần cứng, 12 tháng phần mềm','Fullbox: Sạc, Cáp, Tai Nghe','Mới 100%');
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

-- Dump completed on 2015-04-12 18:29:13
