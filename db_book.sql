-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2022 lúc 09:57 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_book`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `MAAD` int(10) NOT NULL,
  `USER` varchar(1000) NOT NULL,
  `PASSWORD` varchar(1000) NOT NULL,
  `HOTEN` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`MAAD`, `USER`, `PASSWORD`, `HOTEN`) VALUES
(1, 'admin', '123456', 'Administrator'),
(2, 'hello', 'hello', 'hello');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `MACT` int(10) NOT NULL,
  `MADH` int(10) NOT NULL,
  `MASP` int(10) NOT NULL,
  `SOLUONG` decimal(10,2) NOT NULL,
  `DONGIA` decimal(10,2) NOT NULL,
  `THANHTIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MADG` int(10) NOT NULL,
  `MAKH` int(10) NOT NULL,
  `MASP` int(10) NOT NULL,
  `DANHGIASAO` int(10) NOT NULL,
  `NOIDUNG` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MADH` int(10) NOT NULL,
  `TINHTRANGTHANHTOAN` varchar(1000) DEFAULT NULL,
  `TINHTRANGGIAOHANG` varchar(1000) NOT NULL,
  `NGAYDAT` datetime NOT NULL,
  `NGAYGIAO` datetime NOT NULL,
  `TONGTIEN` int(11) DEFAULT NULL,
  `MAKH` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(10) NOT NULL,
  `HOTEN` varchar(1000) NOT NULL,
  `TAIKHOAN` varchar(1000) NOT NULL,
  `MATKHAU` varchar(1000) NOT NULL,
  `EMAIL` varchar(1000) NOT NULL,
  `GIOITINH` varchar(100) NOT NULL,
  `DIACHIKH` varchar(1000) NOT NULL,
  `DIENTHOAI` int(10) NOT NULL,
  `NGAYSINH` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `TAIKHOAN`, `MATKHAU`, `EMAIL`, `GIOITINH`, `DIACHIKH`, `DIENTHOAI`, `NGAYSINH`) VALUES
(1, 'Đặng Quang Thịnh', 'qt123', '123456', '1800000010@gmail.com', 'Nam', 'Quận 12', 375700789, '1999-11-26 00:00:00'),
(2, 'Ngô Quý Thanh Kim', 'kim123', '123456', '1800000009@gmail.com', 'Nam', 'Quận 9', 387307971, '1999-04-24 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `MAL` int(10) NOT NULL,
  `TENLOAI` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`MAL`, `TENLOAI`) VALUES
(1, 'Chính trị – pháp luật'),
(2, 'Khoa học công nghệ – Kinh tế'),
(3, 'Văn học nghệ thuật'),
(4, 'Văn hóa xã hội – Lịch sử'),
(5, 'Giáo trình'),
(6, 'Tiểu thuyết'),
(7, 'Tâm lý, tâm linh, tôn giáo'),
(8, 'Truyện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MANXB` int(10) NOT NULL,
  `TENXB` varchar(1000) NOT NULL,
  `DIACHI` varchar(1000) NOT NULL,
  `DIENTHOAI` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MANXB`, `TENXB`, `DIACHI`, `DIENTHOAI`) VALUES
(1, 'NXB Chính Trị Quốc Gia Sự Thật', 'Trái Đất', 918234567),
(2, 'NXB Tài Chính', 'Trái Đất', 918234567),
(3, 'NXB Hồng Đức', 'Trái Đất', 918234567),
(4, 'NXB Văn Học', 'Trái Đất', 918234567),
(5, 'NXB Phụ Nữ Việt Nam', 'Trái Đất', 918234567),
(6, 'NXB Hội Nhà Văn', 'Trái Đất', 918234567),
(7, 'NXB Thế Giới', 'Trái Đất', 918234567),
(8, 'NXB Hà Nội', 'Trái Đất', 918234567),
(9, 'NXB Thanh Niên', 'Trái Đất', 918234567),
(10, 'NXB Kim Đồng', 'Trái Đất', 918234567),
(11, 'NXB Đại học Kinh tế Quốc Dân', 'Trái Đất', 918234567),
(12, 'NXB Dân Trí', 'Trái Đất', 918234567),
(13, 'NXB Văn hóa - Văn nghệ', 'Trái Đất', 918234567),
(14, 'NXB Giáo dục Việt Nam', 'Trái Đất', 918234567),
(15, 'NXB Tổng Hợp TPHCM', 'Trái Đất', 918234567);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` int(10) NOT NULL,
  `TENSP` varchar(1000) NOT NULL,
  `GIABAN` decimal(10,2) NOT NULL,
  `SOTRANG` int(10) NOT NULL,
  `NGONNGU` varchar(100) NOT NULL,
  `KICHTHUOC` varchar(20) NOT NULL,
  `TRONGLUONG` varchar(10) NOT NULL,
  `MOTA` mediumtext NOT NULL,
  `ANHBIA` varchar(100) NOT NULL,
  `NGAYCAPNHAT` datetime NOT NULL,
  `SOLUONGTON` int(10) NOT NULL,
  `MAL` int(10) NOT NULL,
  `MANXB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `GIABAN`, `SOTRANG`, `NGONNGU`, `KICHTHUOC`, `TRONGLUONG`, `MOTA`, `ANHBIA`, `NGAYCAPNHAT`, `SOLUONGTON`, `MAL`, `MANXB`) VALUES
(1, 'Luật hôn nhân và gia đình', '20000.00', 98, 'Tiếng Việt', '19 x 13cm', '83gr', 'Luật Hôn nhân và gia đình được Quốc hội khóa XIII, kỳ họp thứ 7 thông qua ngày 19/6/2014, có hiệu lực thi hành từ ngày 01/01/2015. Luật gồm 9 chương, 133 điều, quy định về chế độ hôn nhân và gia đình; chuẩn mực pháp lý cho cách ứng xử giữa các thành viên gia đình; trách nhiệm của cá nhân, tổ chức, Nhà nước và xã hội trong việc xây dựng, củng cố chế độ hôn nhân và gia đình.Cuốn sách trình bày toàn văn văn bản Luật Hôn nhân và gia đình (hiện hành), giúp bạn đọc thuận tiện tra cứu, tham khảo.', 'giadinh.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(2, 'Luật đất đai', '51000.00', 248, 'Tiếng Việt', '20,5 x 15cm', '250gr', 'Luật Đất Đai (Hiện Hành) (Sửa Đổi, Bổ Sung Năm 2018)Cuốn sách góp phần giúp bạn đọc tìm hiểu và thực thi các quy định pháp luật mới về đất đai, đồng thời cung cấp tới bạn đọc một văn bản pháp luật hoàn chỉnh, thuận tiện cho việc tra cứu, áp dụng.', 'dat.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(3, 'Luật phá sản', '25000.00', 131, 'Tiếng Việt', '19 x 13cm', '109gr', 'Luật phá sản được Quốc hội nước Cộng hòa xã hội chủ nghĩa Việt Nam khóa XIII, kỳ họp thứ 7 thông qua ngày 19/6/2014, có hiệu lực thi hành từ ngày 01/01/2015.Luật gồm 14 chương, 133 điều, quy định về trình tự, thủ tục nộp đơn, thụ lý và mở thủ tục phá sản; xác định nghĩa vụ về tài sản và biện pháp bảo toàn tài sản trong quá trình giải quyết phá sản; thủ tục phục hồi hoạt động kinh doanh; tuyên bố phá sản và thi hành quyết định tuyên bố phá sản.', 'phasan.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(4, 'Bộ luật lao động', '35000.00', 192, 'Tiếng Việt', '19 x 13cm', '200gr', 'Bộ luật Lao động năm 2019 được Quốc hội nước Cộng hòa xã hội chủ nghĩa Việt Nam khóa XIV, kỳ họp thứ 8 thông qua ngày 20 tháng 11 năm 2019. Luật này có hiệu lực thi hành kể từ ngày 01 tháng 01 năm 2021.\r\n', 'laodong.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(5, 'Luật ngân sách nhà nước', '21000.00', 114, 'Tiếng Việt', '19 x 13cm', '100gr', 'Luật ngân sách Nhà nước (sửa đổi) có 7 chương, 77 điều, quy định về lập, chấp hành, kiểm toán, quyết toán, giám sát ngân sách Nhà nước; nhiệm vụ, quyền hạn của các cơ quan, đơn vị, tổ chức, cá nhân có liên quan trong lĩnh vực ngân sách Nhà nước.Luật ngân sách nhà nước năm 2015 có hiệu lực thi hành từ năm ngân sách 2017, thay thế Luật ngân sách nhà nước năm 2002.\r\n', 'ngansach.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(6, 'Luật thuế thu nhập cá nhân', '15000.00', 38, 'Tiếng Việt', '19 x 13cm', '44gr', 'Gồm 4 chương, 35 điều, quy định về đối tượng nộp thuế, thu nhập chịu thuế, thu nhập được miễn thuế, giảm thuế và căn cứ tính thuế thu nhập cá nhân.Nội dung cuốn sách là văn bản được nhất thể hóa từ Luật Thuế thu nhập cá nhân năm 2007; Luật sửa đổi, bổ sung một số điều của Luật Thuế thu nhập cá nhân năm 2012; Luật sửa đổi, bổ sung một số điều của các luật thuế năm 2014; Nghị quyết số 54/2020/UBTVQH14 của Ủy ban thường vụ Quốc hội về điều chỉnh mức giảm trừ gia cảnh của thuế thu nhập cá nhân.', 'thue.jpg', '2022-06-01 00:00:00', 1000, 1, 1),
(7, 'Giáo trình tư tưởng hồ chí minh', '64000.00', 372, 'Tiếng Việt', '20,5 x 14,5 cm', '400gr', 'Giáo trình do PGS.TS. Mạch Quang Thắng làm chủ biên, cùng tập thể tác giả là những nhà nghiên cứu, nhà giáo dục có nhiều kinh nghiệm trong nghiên cứu, giảng dạy về tư tưởng Hồ Chí Minh; được biên soạn theo quan điểm đổi mới căn bản, toàn diện giáo dục và đào tạo. Giáo trình thể hiện nhiều kết quả nghiên cứu mới về tư tưởng Hồ Chí Minh, gắn với các nội dung học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh, góp phần giúp người học hiểu sâu sắc, toàn diện và đầy đủ hơn về vai trò, vị trí, ý nghĩa của tư tưởng Hồ Chí Minh, các nội dung cơ bản trong tư tưởng Hồ Chí Minh, từ đó vận dụng, liên hệ với thực tiễn học tập, rèn luyện, xây dựng nhân cách để trở thành công dân tốt, đóng góp vào công cuộc xây dựng đất nước.Giáo trình được kết cấu gồm 7 chương: Chương 1 là chương nhập môn, cung cấp những vấn đề chung nhất của môn học (khái niệm, đối tượng, phương pháp nghiên cứu và ý nghĩa học tập môn Tư tưởng Hồ Chí Minh). Chương 2 đề cập cơ sở, quá trình hình thành và phát triển tư tưởng Hồ Chí Minh. Các chương còn lại gồm các nội dung: Tư tưởng Hồ Chí Minh về độc lập dân tộc và chủ nghĩa xã hội; Tư tưởng Hồ Chí Minh về Đảng Cộng sản Việt Nam và Nhà nước của nhân dân, do nhân dân, vì nhân dân; Tư tưởng Hồ Chí Minh về đại đoàn kết toàn dân tộc và đoàn kết quốc tế; Tư tưởng Hồ Chí Minh về văn hóa, con người. Đặc biệt, cuốn giáo trình dành cho bậc đại học hệ chuyên lý luận chính trị tách nội dung tư tưởng Hồ Chí Minh về đạo đức thành một chương riêng nhằm nhấn mạnh nội dung này trong tư tưởng Hồ Chí Minh để người học có thể hiểu sâu, hiểu kỹ, hiểu đầy đủ hơn vai trò của đạo đức trong tư tưởng Hồ Chí Minh.Giáo trình giúp sinh viên, học viên nâng cao hiểu biết trong việc xem xét, đánh giá tính đúng đắn của tư tưởng Hồ Chí Minh, cùng với chủ nghĩa Mác - Lênin giữ vai trò nền tảng tư tưởng của Đảng Cộng sản Việt Nam; phản bác những quan điểm sai trái nhằm phủ nhận vai trò tư tưởng Hồ Chí Minh.', 'tthochiminh.jpg', '2022-06-01 00:00:00', 1000, 5, 1),
(8, 'Giáo trình triết học mác lê nin', '97000.00', 496, 'Tiếng Việt', '20,5 x 14,5 cm', '399gr', '\r\n\r\nGiáo trình do Ban biên soạn gồm các tác giả là nhà nghiên cứu, nhà giáo dục thuộc Viện Triết học - Học viện Chính trị quốc gia Hồ Chí Minh, các học viện, trường đại học, Viện Triết học - Viện Hàn lâm Khoa học xã hội Việt Nam, tổ chức biên soạn trên cơ sở kế thừa những kết quả nghiên cứu trước đây, đồng thời bổ sung nhiều nội dung, kiến thức, kết quả nghiên cứu mới, gắn với công cuộc đổi mới ở Việt Nam, nhất là những thành tựu trong 35 năm đổi mới đất nước.\r\n\r\nGiáo trình được biên soạn theo yêu cầu đổi mới căn bản, toàn diện giáo dục và đào tạo, phù hợp với đối tượng người học, nhằm cung cấp những tri thức hiểu biết có tính nền tảng và hệ thống về triết học Mác - Lênin; xây dựng thế giới quan duy vật và phương pháp luận biện chứng duy vật làm nền tảng lý luận cho việc nhận thức các vấn đề, nội dung của các môn học khác; nhận thức được thực chất giá trị, bản chất khoa học, cách mạng của triết học Mác - Lênin. Đồng thời, giúp cho sinh viên vận dụng tri thức triết học Mác - Lênin, thế giới quan duy vật và phương pháp luận biện chứng duy vật để rèn luyện tư duy, giúp ích trong học tập và cuộc sống.\r\n', 'lenin.jpg', '2022-06-01 00:00:00', 1000, 5, 1),
(9, 'Giáo trình quản trị học\r\n', '156000.00', 281, 'Tiếng Việt', '27 x 19cm', '484gr', 'Giáo trình được bố cục thành 3 phần chính với tổng số 12 chương. Mỗi chương bao gồm các nội dung : mục tiêu chương, tình huống quản trị, nội dung chương, tóm tắt, sau cùng là câu hỏi ôn tập Phần 1 : Những kiến thức cơ bản về quản trị Phần 2 : Hoạch Định Phần 3 : Tổ chức Phần 4 : Lãnh đạo Phần 5 : Kiểm Soát Nhóm biên soạn TS Trần Dục \r\n', 'hoc.jpg', '2022-06-01 00:00:00', 1000, 5, 2),
(10, 'Kinh tế học vĩ mô\r\n', '268000.00', 555, 'Tiếng Việt', '23,5 x 15,5cm', '668gr', 'Kinh Tế Học Vi Mô\r\n\r\n“Kinh tế Vi Mô” và “Kinh tế Vĩ Mô” của NXB Cengage\r\n\r\nNXB Cengage Learning là một trong những Nhà xuất bản lớn hàng đầu trên thế giới có trụ sở chính tại Mỹ và tại khu vực Châu Á có 11 trụ sở tại các nước khác nhau, cung cấp các thể loại sách phục vụ cho việc học tập, giảng dạy và nghiên cứu cho các cá nhân, các trường đại học, cao đẳng, viện nghiên cứu, các doanh nghiệp và thư viện trên toàn thế giới.\r\n\r\nTheo xu hướng đổi mới cơ bản và toàn diện giáo dục Đại học Việt Nam hiện nay và phục vụ cho đề án quốc tế hóa các chương trình đào tạo kinh tế sang hướng tiên tiến để nhanh chóng ngang bằng trình độ khu vực và tiệm cận với giáo dục đại học trên thế giới, một trong những đổi mới để phù hợp với xu thế này là lựa chọn các giáo trình tốt nhất của các NXB nổi tiếng trên thế giới để chuyển ngữ sang tiếng Việt nhằm phục vụ cho việc học của sinh viên được dể dàng hơn, Công ty Cổ phần phát hành sách Tp.HCM – FAHASA đã phối hợp với NXB NXB Cengage Learning và đội ngũ giảng viên khoa Kinh tế Trường Đại học Kinh tế TP.HCM – một trong 16 trường trọng điểm của Bộ Giáo dục và Đào tạo - tổ chức dịch quyển Kinh tế học của Tác giả N.Gregory Mankiw cho hai phiên bản Kinh tế học vi mô và Kinh tế học vĩ mô ra Tiếng Việt để phục vụ cho việc học tập và nghiên cứu của giảng viên và sinh viên khoa Kinh tế của các Trường Đại học trên cả nước. Sau khi được biên dịch bởi đội ngủ giảng viên Trường ĐH Kinh tế Tp.HCM, NXB Cengage đã tổ chức biên tập và in ấn tại Singapore, bản quyền của 2 quyển sách này thuộc NXB Cengage Learning sách do Công ty FAHASA nhập khẩu và phân phối độc quyền tại Việt Nam.\r\n\r\nN.Gregory Mankiw là giáo sư kinh tế Đại học Harvard. Ông có rất nhiều bài viết và thường xuyên tham gia các chương trình tranh luận về học thuật cũng như các chính sách về kinh tế. Là một trong 25 Nhà kinh tế học nổi tiếng trên thế giới và sách Kinh tế học của ông đã và đang được nhiều trường Đại học trên thế giới sử dụng. Ông cũng là tác giả của giáo trình Kinh tế Vĩ mô trình độ trung cấp bán chạy nhất (Nhà xuất bản Worth). Bên cạnh việc giảng dạy, nghiên cứu và viết lách, Giáo sư Mankiw còn là thành viên nghiên cứu của Ban Nghiên cứu Kinh tế Quốc gia, thành viên tư vấn cho Văn phòng Ngân sách Quốc hội, Cục Dự trữ Liên bang khu vực Boston và New York, thành viên Hội đồng phát triển khảo thí ETS - chương trình dự bị đại học nâng cao chuyên ngành kinh tế. Từ 2003 đến 2005 ông là chủ tịch Hội đồng Tư vấn Kinh tế cho Tổng thống Hoa Kỳ.\r\n\r\nĐây là lần đầu tiên cuốn sách Kinh tế học của Tác giả N.Gregory Mankiw được dịch sang Tiếng Việt và phát hành tại Việt Nam. Về nội dung 2 cuốn sách, với các khái niệm phổ biến và khái quát nhất về kinh tế vi mô và vĩ mô cũng như những giải thích về các cơ chế hoạt động của nền kinh tế, bộ giáo trình bao gồm 16 phần cung cấp cho người đọc các kiến thức khá toàn diện và chuyên sâu về các nguyên lý kinh tế học như các lý thuyết cổ điển, các lý thuyết về phát triển: nền kinh tế trong dài hạn, các lý thuyết về vòng tròn kinh tế: nền kinh tế trong ngắn hạn, các yếu tố vi mô ẩn sau kinh tế vĩ mô, các tranh luận về chính sách vĩ mô… Tất cả đều được giải thích và đánh giá bởi một vị giáo sư kinh tế hàng đầu trên thế giới. Các khái niệm trong sách được định nghĩa rất rõ ràng, dễ nắm bắt, dễ hiểu, có tóm tắt các chương tạo điều kiện tốt nhất cho việc ôn tập. Các ví dụ sinh động, gắn liền với thực tế, có độ cập nhật phù hợp với đề cương giảng dạy kinh tế học \r\n“Kinh tế Vi Mô” và “Kinh tế Vĩ Mô” của NXB Cengage\r\n\r\nNXB Cengage Learning là một trong những Nhà xuất bản lớn hàng đầu trên thế giới có trụ sở chính tại Mỹ và tại khu vực Châu Á có 11 trụ sở tại các nước khác nhau, cung cấp các thể loại sách phục vụ cho việc học tập, giảng dạy và nghiên cứu cho các cá nhân, các trường đại học, cao đẳng, viện nghiên cứu, các doanh nghiệp và thư viện trên toàn thế giới.\r\n\r\nTheo xu hướng đổi mới cơ bản và toàn diện giáo dục Đại học Việt Nam hiện nay và phục vụ cho đề án quốc tế hóa các chương trình đào tạo kinh tế sang hướng tiên tiến để nhanh chóng ngang bằng trình độ khu vực và tiệm cận với giáo dục đại học trên thế giới, một trong những đổi mới để phù hợp với xu thế này là lựa chọn các giáo trình tốt nhất của các NXB nổi tiếng trên thế giới để chuyển ngữ sang tiếng Việt nhằm phục vụ cho việc học của sinh viên được dể dàng hơn, Công ty Cổ phần phát hành sách Tp.HCM – FAHASA đã phối hợp với NXB NXB Cengage Learning và đội ngũ giảng viên khoa Kinh tế Trường Đại học Kinh tế TP.HCM – một trong 16 trường trọng điểm của Bộ Giáo dục và Đào tạo - tổ chức dịch quyển Kinh tế học của Tác giả N.Gregory Mankiw cho hai phiên bản Kinh tế học vi mô và Kinh tế học vĩ mô ra Tiếng Việt để phục vụ cho việc học tập và nghiên cứu của giảng viên và sinh viên khoa Kinh tế của các Trường Đại học trên cả nước. Sau khi được biên dịch bởi đội ngủ giảng viên Trường ĐH Kinh tế Tp.HCM, NXB Cengage đã tổ chức biên tập và in ấn tại Singapore, bản quyền của 2 quyển sách này thuộc NXB Cengage Learning sách do Công ty FAHASA nhập khẩu và phân phối độc quyền tại Việt Nam.\r\n\r\nN.Gregory Mankiw là giáo sư kinh tế Đại học Harvard. Ông có rất nhiều bài viết và thường xuyên tham gia các chương trình tranh luận về học thuật cũng như các chính sách về kinh tế. Là một trong 25 Nhà kinh tế học nổi tiếng trên thế giới và sách Kinh tế học của ông đã và đang được nhiều trường Đại học trên thế giới sử dụng. Ông cũng là tác giả của giáo trình Kinh tế Vĩ mô trình độ trung cấp bán chạy nhất (Nhà xuất bản Worth). Bên cạnh việc giảng dạy, nghiên cứu và viết lách, Giáo sư Mankiw còn là thành viên nghiên cứu của Ban Nghiên cứu Kinh tế Quốc gia, thành viên tư vấn cho Văn phòng Ngân sách Quốc hội, Cục Dự trữ Liên bang khu vực Boston và New York, thành viên Hội đồng phát triển khảo thí ETS - chương trình dự bị đại học nâng cao chuyên ngành kinh tế. Từ 2003 đến 2005 ông là chủ tịch Hội đồng Tư vấn Kinh tế cho Tổng thống Hoa Kỳ.\r\n\r\nĐây là lần đầu tiên cuốn sách Kinh tế học của Tác giả N.Gregory Mankiw được dịch sang Tiếng Việt và phát hành tại Việt Nam. Về nội dung 2 cuốn sách, với các khái niệm phổ biến và khái quát nhất về kinh tế vi mô và vĩ mô cũng như những giải thích về các cơ chế hoạt động của nền kinh tế, bộ giáo trình bao gồm 16 phần cung cấp cho người đọc các kiến thức khá toàn diện và chuyên sâu về các nguyên lý kinh tế học như các lý thuyết cổ điển, các lý thuyết về phát triển: nền kinh tế trong dài hạn, các lý thuyết về vòng tròn kinh tế: nền kinh tế trong ngắn hạn, các yếu tố vi mô ẩn sau kinh tế vĩ mô, các tranh luận về chính sách vĩ mô… Tất cả đều được giải thích và đánh giá bởi một vị giáo sư kinh tế hàng đầu trên thế giới. Các khái niệm trong sách được định nghĩa rất rõ ràng, dễ nắm bắt, dễ hiểu, có tóm tắt các chương tạo điều kiện tốt nhất cho việc ôn tập. Các ví dụ sinh động, gắn liền với thực tế, có độ cập nhật phù hợp với đề cương giảng dạy kinh tế học không chỉ của Trường Đại học Kinh tế TP.HCM mà cả các trường đại học khác tại Việt Nam trong khối kinh tế và quản trị. Ngoài ra bộ giáo trình này còn có ngân hàng câu hỏi trắc nghiệm, phần tóm tắt bài giảng và phẩn trình chiếu Power point cho từng chương, phục vụ tốt cho việc thực hành và giảng dạy của sinh viên và giảng viên. Hy vọng bộ giáo trình Kinh tế học vi mô và Kinh tế học vĩ mô của N.Gregory Mankiw bản tiếng Việt sẽ cung cấp cho giảng viên và sinh viên Việt Nam những tài liệu kinh tế hiệu quả và hiện đại nhằm phục vụ cho công tác giảng dạy và học tập được tốt hơn.\r\n\r\nBộ sách Kinh tế Vi mô và Kinh tế Vĩ mô sẽ là sự lựa chọn đúng đắn cho khoa Kinh tế của các trường Đại học tại Việt Nam.', 'vimo.jpg', '2022-06-01 00:00:00', 1000, 5, 3),
(11, 'Giáo trình lịch sử đảng cộng sản Việt Nam\r\n', '87000.00', 440, 'Tiếng Việt', '20,5 x 14,5cm', '500gr', 'Ngoài chương nhập môn, trình bày về đối tượng, chức năng, nhiệm vụ, nội dung và phương pháp nghiên cứu, học tập lịch sử Đảng Cộng sản Việt Nam, giáo trình có kết cấu gồm 03 chương: Chương 1 nêu quá trình Đảng Cộng sản Việt Nam ra đời và lãnh đạo đấu tranh giành chính quyền (1930 - 1945). Chương 2 nêu về quá trình Đảng lãnh đạo hai cuộc kháng chiến chống ngoại xâm, hoàn thành giải phóng dân tộc, thống nhất đất nước (1945 - 1975); Chương 3 nêu quá trình Đảng lãnh đạo cả nước quá độ lên chủ nghĩa xã hội và tiến hành công cuộc đổi mới (từ năm 1975 đến nay).\r\n\r\nGiáo trình cung cấp cho sinh viên những tri thức vừa cơ bản, vừa chuyên sâu, mang tính hệ thống về quá trình ra đời và lãnh đạo cách mạng của Đảng Cộng sản Việt Nam; cung cấp cơ sở lịch sử, củng cố niềm tin của thế hệ trẻ vào con đường cách mạng giải phóng dân tộc và phát triển đất nước; trang bị phương pháp nhận thức biện chứng, khách quan về quá trình Đảng ra đời và lãnh đạo cách mạng;… từ đó nâng cao hiểu biết lý luận, nắm bắt thực tiễn, vận dụng vào xem xét, đánh giá vai trò và sự lãnh đạo của Đảng, góp phần thiết thực vào công tác xây dựng Đảng ngày càng vững mạnh, đáp ứng yêu cầu nhiệm vụ mới trong quá trình công nghiệp hóa, hiện đại hóa đất nước, xây dựng thành công chủ nghĩa xã hội ở Việt Nam\r\n', 'vietnam.jpg', '2022-06-01 00:00:00', 1000, 5, 1),
(12, 'Giáo trình chủ nghĩa xã hội khoa học\r\n', '59000.00', 276, 'Tiếng Việt', '20,5 x 14,5cm', '300gr', 'Giáo trình do GS.TS. Hoàng Chí Bảo làm chủ biên, cùng tập thể tác giả là những nhà nghiên cứu, nhà giáo dục có nhiều kinh nghiệm trong nghiên cứu, giảng dạy về chủ nghĩa xã hội khoa học; được biên soạn theo quan điểm đổi mới căn bản, toàn diện giáo dục và đào tạo. Giáo trình thể hiện nhiều kết quả nghiên cứu mới về chủ nghĩa xã hội khoa học, gắn với thực tiễn xây dựng chủ nghĩa xã hội ở Việt Nam trong giai đoạn hiện nay. Giáo trình gồm 7 chương. Ngoài chương nhập môn trình bày sự ra đời, các giai đoạn phát triển của chủ nghĩa xã hội gắn liền với vai trò của C. Mác, Ph. Ăngghen và V.I. Lênin; đối tượng, phương pháp và ý nghĩa việc nghiên cứu, học tập môn Chủ nghĩa xã hội khoa học; các chương còn lại trình bày một cách hệ thống, toàn diện lý luận về chủ nghĩa xã hội và thời kỳ quá độ lên chủ nghĩa xã hội với những đặc trưng bản chất về: Sứ mệnh lịch sử của giai cấp công nhân; Chủ nghĩa xã hội và thời kỳ quá độ lên chủ nghĩa xã hội; Nền dân chủ và Nhà nước xã hội chủ nghĩa; Cơ cấu xã hội - giai cấp và liên minh giai cấp, tầng lớp trong thời kỳ quá độ lên chủ nghĩa xã hội; Vấn đề dân tộc và tôn giáo trong thời kỳ quá độ lên chủ nghĩa xã hội; Vấn đề gia đình trong thời kỳ quá độ lên chủ nghĩa xã hội. Giáo trình nhằm giúp sinh viên, học viên nắm được những tri thức cơ bản, cốt lõi nhất, mở rộng và chuyên sâu về Chủ nghĩa xã hội khoa học, một trong ba bộ phận cấu thành chủ nghĩa Mác - Lênin; từ đó nâng cao hiểu biết thực tiễn và khả năng vận dụng các tri thức nói trên vào việc xem xét, đánh giá những vấn đề chính trị - xã hội của đất nước liên quan đến chủ nghĩa xã hội và con đường đi lên chủ nghĩa xã hội ở nước ta; nắm chắc và vận dụng thành thạo những kiến thức đã học vào công việc giảng dạy của cá nhân sau khi ra trường. Mã hàng 8935279133185 Tên Nhà Cung Cấp NXB Chính Trị Quốc Gia Tác giả Bộ Giáo Dục Và Đào Tạo NXB NXB Chính Trị Quốc Gia Sự Thật Năm XB 2021 Trọng lượng (gr) 300 Kích Thước Bao Bì 20.5 x 14.5 cm Số trang 276 Hình thức Bìa Mềm Sản phẩm bán chạy nhất Top 100 sản phẩm Giáo trình ĐH, CĐ, THCN bán chạy của tháng Giáo trình do GS.TS. Hoàng Chí Bảo làm chủ biên, cùng tập thể tác giả là những nhà nghiên cứu, nhà giáo dục có nhiều kinh nghiệm trong nghiên cứu, giảng dạy về chủ nghĩa xã hội khoa học; được biên soạn theo quan điểm đổi mới căn bản, toàn diện giáo dục và đào tạo. Giáo trình thể hiện nhiều kết quả nghiên cứu mới về chủ nghĩa xã hội khoa học, gắn với thực tiễn xây dựng chủ nghĩa xã hội ở Việt Nam trong giai đoạn hiện nay. Giáo trình gồm 7 chương. Ngoài chương nhập môn trình bày sự ra đời, các giai đoạn phát triển của chủ nghĩa xã hội gắn liền với vai trò của C. Mác, Ph. Ăngghen và V.I. Lênin; đối tượng, phương pháp và ý nghĩa việc nghiên cứu, học tập môn Chủ nghĩa xã hội khoa học; các chương còn lại trình bày một cách hệ thống, toàn diện lý luận về chủ nghĩa xã hội và thời kỳ quá độ lên chủ nghĩa xã hội với những đặc trưng bản chất về: Sứ mệnh lịch sử của giai cấp công nhân; Chủ nghĩa xã hội và thời kỳ quá độ lên chủ nghĩa xã hội; Nền dân chủ và Nhà nước xã hội chủ nghĩa; Cơ cấu xã hội - giai cấp và liên minh giai cấp, tầng lớp trong thời kỳ quá độ lên chủ nghĩa xã hội; Vấn đề dân tộc và tôn giáo trong thời kỳ quá độ lên chủ nghĩa xã hội; Vấn đề gia đình trong thời kỳ quá độ lên chủ nghĩa xã hội. Giáo trình nhằm giúp sinh viên, học viên nắm được những tri thức cơ bản, cốt lõi nhất, mở rộng và chuyên sâu về Chủ nghĩa xã hội khoa học, một trong ba bộ phận cấu thành chủ nghĩa Mác - Lênin; từ đó nâng cao hiểu biết thực tiễn và khả năng vận dụng các tri thức nói trên vào việc xem xét, đánh giá những vấn đề chính trị - xã hội của đất nước liên quan đến chủ nghĩa xã hội và con đường đi lên chủ nghĩa xã hội ở nước ta; nắm chắc và vận dụng thành thạo những kiến thức đã học vào công việc giảng dạy của cá nhân sau khi ra trường\r\n', 'khoahoc.jpg', '2022-06-01 00:00:00', 1000, 5, 1),
(13, 'AI- Trí tuệ nhân tạo', '95000.00', 306, 'Tiếng Việt', '23 x 15cm', '365gr', 'Làn sóng Trí tuệ nhân tạo và Cách mạng Công nghiệp Lần thứ Tư đã đưa cuộc sống loài người bước sang một kỉ nguyên mới, mà sớm hay muộn, không có ai đứng ngoài cuộc. Hãy cùng tác giả Lasse Rouhiainen tìm hiểu 101 điều cần biết về AI – Trí tuệ nhân tạo và tương lai của chúng ta.“Được học hỏi những cách thức mới để triển khai AI và các loại công nghệ khác trong cuộc sống hay công việc là một điều tuyệt vời, nhưng đồng thời chúng ta cũng phải tập trung vào việc trở thành một con người tốt hơn, mạnh mẽ hơn và khoẻ khoắn hơn. Không nên cực đoan, hoàn toàn né tránh AI, hoặc phụ thuộc vào nó quá nhiều.” Lasse Rouhiainen. LASSE ROUHIAINEN là một tác giả và diễn giả về AI và các công nghệ mới, mạng xã hội và tiếp thị bằng video. Ông đã trình bày tại các hội thảo và workshop tại hơn 16 quốc gia.', 'ai.jpg', '2022-06-01 00:00:00', 1000, 2, 10),
(14, 'Hello các bạn mình là tôi đi code dạo', '165000.00', 368, 'Tiếng Việt', '20 x 13cm', '400gr', 'Cuốn sách chia sẻ về việc lựa chọn ngành phát triển phần mềm dựa trên các yếu tố “sự kiên trì và nhẫn nại (tiến từng bước nhỏ), improve bản thân dựa trên các thiếu sót và sự mạo hiểm” cùng với yếu tố “khả năng tư duy”.Bên cạnh đó, tác giả cũng chia sẻ định hướng sau khi chọn ngành học này (xây dựng một learning/study path để xác định mục tiêu học tập để tập trung xây dựng “căn cơ nền móng” trên các kiến thức nền tảng được trang bị khi con người ta “mài đũng quần” trên ghế nhà trường), rèn luyện trong quá trình (teamwork - luyện tập làm việc theo nhóm; sharing - chia sẻ kiến thức cùng bạn bè, partner, đàn em, cộng đồng...) cho đến xây dựng một career path thông qua trải nghiệm (trải nghiệm = học thức + kinh nghiệm + thái độ + improve).Qua các nội dung chia sẻ dí dỏm, tác giả cũng đã trả lời các câu hỏi mà các bạn sinh viên chọn ngành - chuyên ngành thường hỏi.Đặc biệt nhất, các câu trả lời giải quyết tâm lý của các bạn sinh viên về việc “tại sao nhà trường luôn dạy các nội dung nền tảng cũ rích mà không cập nhật các nội dung mới, cập nhật theo thị trường?”.Qua cuốn sách này, các bạn sinh viên có lẽ sẽ nhận ra rằng học thức là do có nền móng - căn cơ (nội dung có lẽ “cũ” nên không ai dạy khi làm thực tế dẫn đến chúng ta “vô tình hay cố ý lướt qua nhau” để rồi...), kinh nghiệm là do rèn luyện để nâng cao tư duy lẫn kỹ năng - tích lũy qua công việc, dự án - chia sẻ kiến thức để có hỗ trợ và tạo ra các liên kết mới, cầu thị để từ đó chúng ta cải thiện chính bản thân hướng tới mơ ước của mình.', 'code.jpg', '2022-06-01 00:00:00', 1000, 2, 9),
(15, 'Kinh Tế trong cuộc cách mạng công nghệ 4.0', '151000.00', 552, 'Tiếng Việt', '20,5 x 14cm', '550gr', 'Không chỉ đưa ra toàn cảnh về kinh tế trong cuộc cách mạng công nghệ 4.0 mà Saifedean Ammous còn đưa người đọc vào một hành trình hấp dẫn xuyên suốt lịch sử của các công nghệ thực hiện các chức năng của tiền, từ hệ thông nguyên thủy của đá vôi, đến kim loại, tiền xu…Cuốn “Kinh tế trong cuộc cách mạng công nghệ 4.0” còn khám phá những gì đã mang lại cho những công nghệ này, vai trò của chúng và việc chúng mất đi như thế nào, cho người đọc hiểu rõ hơn những gì tạo ra tiền bạc, hệ quả của nó đối với những định hướng tương lai của cá nhân và xã hội. Ammous cho thấy không phải ngẫu nhiên mà những thành tựu cao nhất của loài người chỉ xuất hiện trong các xã hội được hưởng những lợi ích của chế độ tiền tệ lành mạnh, cũng không phải ngẫu nhiên mà sự sụp đổ tiền tệ thường đi kèm với sự sụp đổ văn minh. Đặc biệt hơn cuốn sách còn giải thích hoạt động của Bitcoin một cách trực quan, cung cấp cho người đọc một khám phá hấp dẫn về sự phân nhánh của tiền thị trường tự do.Cuốn sách này không đưa cho bạn lời khuyên về đầu tư, mà nhắm đến việc giúp bạn hiểu được đặc tính kinh tế của mạng lưới Bitcoin và cách thức vận hành của nó, giúp người đọc có được hiểu biết trước khi quyết định muốn sử dụng nó hay không.', 'kinhte.jpg', '2022-06-01 00:00:00', 1000, 2, 11),
(16, 'Cuộc chiến công nghệ số', '110000.00', 500, 'Tiếng Việt', '24 x 16cm', '550gr', 'Thế giới chúng ta đang sống là một mô hình hóa của màu sắc, âm thanh hay mùi vị..., tất cả đều hòa quyện vào nhau thành một chỉnh thể thống nhất. Tuy nhiên, thế giới kỹ thuật số được mở ra trước mắt chúng ta qua những chiếc máy vi tính thì lại hoàn toàn khác: nó là nhị phân, tắt hay bật, có hoặc không. Sự ra đời của những chiếc máy tính cá nhân phù hợp với túi tiền của người dân vào những năm 1990 cùng với sự xuất hiện của mạng Internet vào khoảng những năm 1970 đã bắt đầu hình thành những lĩnh vực kinh doanh hoàn toàn mới – ví dụ tiêu biểu là Yahoo, một trang wed chuyên mang tới những tin tức nóng hổi được cập nhập liên tục tới từng phút, thông tin và dự báo về thời tiết, cùng dịch vụ thư điện tử miễn phí.Có ba công ty đã bị cuốn vào vòng xoáy của sự thay đổi này là: Apple, Microsoft và Google. Và ba công ty này vốn khác nhau hoàn toàn. Tính đén thời điểm cả ba công ty này bắt đầu tham gia vào trận chiến kỹ thuật số thì một trong số đó là một doanh nghiệp với thời hoàng kim đang dần chìm vào quá khứ, một bên thì là công ty đang dẫn đầu thế giới về lĩnh vực máy tính và kinh doanh, và một bên nữa mới chỉ chập chững bước ra từ một ý tưởng tuyệt vời của hai chàng sinh viên xuất chúng.Từ đó, các công ty ấy liên tục tranh đấu kịch liệt với nhau rất nhiều lần để tranh giành quyền kiểm soát từng lĩnh vực một của thế giới kỹ thuật số. Vũ khí của họ là những phần cứng, phần mềm liên tục được cải thiện, cũng như những chiến dịch quảng cáo rầm rộ. Thứ được đặt lên bàn cân lúc này là danh tiếng của họ, và cũng chỉ là tương lai của chúng ta.', 'so.jpg', '2022-06-01 00:00:00', 1000, 2, 12),
(17, 'Startup Science- Khoa học về khởi nghiệp', '191000.00', 496, 'Tiếng Việt', '27 x 16cm', '693gr', 'Chiếc la bàn để phán đoán xem bản thân đang đi đúng hướng hay không: Một startup từ khi bắt đầu hoạt động đến khi đạt được PMF để tạo ra sản phẩm có thể được đón nhận nhiệt liệt trên thị * Chiếc la bàn để phán đoán xem bản thân đang đi đúng hướng hay không: Một startup từ khi bắt đầu hoạt động đến khi đạt được PMF để tạo ra sản phẩm có thể được đón nhận nhiệt liệt trên thị trường, không dễ gì nắm bắt được công việc của mình đang đi về đâu. Cuốn sách này sẽ là danh mục để kiểm tra sự phát triển trong mỗi giai đoạn, giúp cho startup có thể xác nhận được mình có đang đi đúng hướng hay không.* Các quy tắc để tránh việc mở rộng kinh doanh quá sớm: Phần lớn startup đều có xu hướng mở rộng kinh doanh quá sớm khi mà cả ý tưởng cũng như việc đặt vấn đề, kiểm chứng sản phẩm đều chưa đầy đủ (nhiều startup chết yểu vì lý do mở rộng quá sớm này). Để tránh việc đó, trong cuốn sách này, tôi sẽ chỉ ra cho bạn các quy tắc để làm tiêu chuẩn nên làm gì và phải làm gì trong từng giai đoạn. Điều này sẽ giúp cho các startup vẫn còn hạn chế về nguồn lực có thể giảm khả năng thất bại vì cạn tiền vốn do dồn lực vào những việc vô bổ.* Kinh nghiệm, công cụ để biến mục tiêu ở các giai đoạn thành hành động cụ thể: Cuốn sách cung cấp không chỉ các lý thuyết trừu tượng, mà cả các công cụ như kinh nghiệm, mẫu hình (framework), danh mục kiểm tra… để startup có thể thực hành. Nhà kinh doanh startup có thể hiểu được một cách rõ ràng các chính sách hay hành động cụ thể cần phải tiến hành tiếp theo.', 'khoinghiep.jpg', '2022-06-01 00:00:00', 1000, 2, 7),
(18, 'Sữa và mật\r\n', '70000.00', 355, 'Tiếng Việt', '21 x 15cm', '350gr', 'Những bài thơ và văn trong Sữa và mật nói với ta về chuyện sống còn, cùng những trải nghiệm về bạo lực, về lạm dụng, về yêu đương, về mất mát, và trên hết, về nữ tính không ngừng rạng ngời. Sữa và mật là một chuyến viễn du xuyên qua những thời khắc đau khổ, để tìm thấy ở đó cả sữa lẫn mật ngọt, trong thân phận người nữ. Vừa triết lý xa xăm, vừa nồng nàn nhục cảm, khi yếu mềm, lúc cứng cỏi, với Sữa và mật, Rupi Kaur đã cho ra đời một tập thơ nữ tính và đáo để và hấp dẫn đến mức làm khuynh đảo nền cả xuất bản Mỹ. Với 2,5 triệu lượt mua online, cùng hơn triệu bản in chỉ sau một năm ra mắt, và được dịch ra 25 ngôn ngữ trên thế giới, Sữa và mật đã thay đổi cái nhìn của người đọc về sự cuốn hút của thơ hiện đại. Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....\r\n', 'mat.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(19, 'Những Cuộc Phiêu Lưu Của Huckleberry Finn\r\n', '79000.00', 415, 'Tiếng Việt', '20,5 x 14,5cm', '420gr', 'Hemingway từng nói: \"Toàn bộ văn học Mỹ hiện đại đều thoát thai từ một cuốn sách của Mark Twain, đó là Những cuộc phiêu lưu của Huckleberry Finn\". Sau những cuộc phiêu lưu cùng Tom Sawyer, Huck Finn được bà quả phụ Douglas đón về nuôi. Nhưng với bản tính ưa tự do, Huck không chịu nổi việc phải ăn vận sạch sẽ, học hành theo khuôn phép trưởng giả dù được sống giàu sang. Cộng thêm với việc người cha tưởng đã chết đột ngột trở về tiếp tục hành hạ, gây rắc rối cho cậu, Huck quyết định cùng Jim – một nô lệ da đen bỏ trốn – cùng xuôi dòng Mississippi, bắt đầu những cuộc phiêu lưu mới. Nhiều chuyện dở khóc dở cười đã xảy ra trong chuyến phiêu lưu. Không chỉ thế, Huck còn lâm vào những tình huống nguy hiểm khi bị cuốn vào cuộc tranh chấp giữa hai dòng họ với những cuộc đọ súng chết chóc... Nhưng cũng chính trong hoàn cảnh ngặt nghèo nhất, Huck đã nhận ra giá trị của cuộc sống để hướng về sự tự do và hết lòng giúp đỡ người nô lệ da đen tội nghiệp. Từ một cậu bé chỉ biết phá phách, Huck đã xác định rõ ràng mục đích sống, biết phân biệt đúng sai bằng trái tim thuần hậu và thoát khỏi những định kiến méo mó được nhồi nhét qua cách giáo dục sai trái. Các nhà phê bình văn học đã đánh giá Những cuộc phiêu lưu của Huckleberry Finn là tiểu thuyết ưu tú nhất của Mark Twain, bởi tác giả đã vận dụng một cách nhuần nhuyễn phương ngữ của nhiều vùng, nhiều tầng lớp người để diễn tả những trạng huống tâm lý phức tạp, cũng như mô tả xuất sắc cảnh vật thiên nhiên. Tác phẩm này đã lọt vào danh sách những tiểu thuyết hay nhất mọi thời đại của văn học Mỹ, và rất nhiều lần được đưa lên màn ảnh.\r\n', 'phieuluu.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(20, 'Không Gia Đình\r\n', '122000.00', 659, 'Tiếng Việt', '20,5 x 14,5cm', '696gr', 'Không Gia Đình kể về chuyện đời Rémi, một cậu bé không cha mẹ, họ hàng thân thích. Sau khi phải rời khỏi vòng tay của người má nuôi, em đã đi theo đoàn xiếc thú của cụ già Vitalis tốt bụng. Kể từ đó, em lưu lạc khắp nơi, ban đầu dưới sự che chở của cụ Vitalis, sau đó thì tự lập và còn lo cả công việc biểu diễn và sinh sống cho cả một gánh hát rong. Đã có lúc em và cả đoàn lang thang cả mấy ngày đói khát rồi còn suýt chết rét. Có bận em bị lụt ngầm chôn trong giếng mỏ hàng tuần. Rồi có lần em còn mắc oan bị giải ra tòa và phải ở tù. Nhưng cũng có khi em được nuôi nấng đàng hoàng, no ấm. Song dù trong hoàn cảnh nào, Rémi vẫn giữ được sự gan dạ, ngay thẳng, lòng tự trọng, tính thương người, ham lao động chứ không hạ mình hay gian dối. Cuối cùng, sau bao gian nan khổ cực, em đã đoàn tụ được với gia đình của mình. Tác phẩm đã ca ngợi sự lao động bền bỉ, tinh thần tự lập, chịu đựng gian khó, khích lệ tình bạn chân chính. Ca ngợi lòng nhân ái, tình yêu cuộc sống, ý chí vươn lên không ngừng…Không Gia Đình vì thế đã vượt qua biên giới nước Pháp và tồn tại lâu dài với thời gian.\r\n', 'ttgiadinh.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(21, 'Đỉnh Gió Hú\r\n', '150000.00', 352, 'Tiếng Việt', '24 x 16cm', '360gr', 'Ám ảnh và dữ dội đúng như tên gọi, tiểu thuyết Đỉnh Gió Hú (1847) của Emily Brontë phả vào bầu không khí văn chương thế kỉ 19 một trận cuồng phong khác lạ từ chốn đồng hoang u tịch và bí ẩn – nơi khởi sinh mối tình kinh điển giữa cô tiểu thư bất trị Catherine Earnshaw với kẻ lạc loài mà cha cô đem về nuôi từ bé và đặt tên là Heathcliff. Từ những bất đồng về địa vị, sự hiểu lầm trẻ dại và những khuynh hướng mâu thuẫn trong bản tính, tình cảm ấy không chỉ gây sóng gió cho riêng họ mà còn lôi cuốn những người xung quanh vào vòng bất hạnh triền miên.Gần hai trăm năm kể từ khi ra đời, Đỉnh Gió Hú vẫn nhận được những phản ứng yêu-ghét trái ngược và không ngừng thách thức người đọc bằng cốt truyện nhiều tầng bậc phảng phất sắc màu siêu linh, những nhân vật khó hiểu, khó cảm thông nhưng vẫn sống động lạ kì, cùng với đó là một trường cảm xúc mãnh liệt, khi tình yêu gần kề nỗi dằn vặt ám ảnh hơn niềm đam mê, khi bản năng ích kỉ, cuồng vọng chiếm hữu và khao khát phục thù phủ bóng đen u ám lên vận mệnh hai thế hệ…\r\n', 'giohu.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(22, 'Kiêu Hãnh và Định Kiến\r\n', '164000.00', 359, 'Tiếng Việt', '20,5 x cm', '500gr', 'Bằng tài quan sát nhạy bén, bút pháp trào lộng tinh vi và giọng văn dí dỏm, Jane Austen cuốn hút độc giả theo từng diễn biến trong câu chuyện xoay quanh số phận và con đường tình duyên của năm cô thiếu nữ chưa chồng nhà Bennet trên nền một xã hội đề cao địa vị và gia sản trong quan hệ hôn nhân. Ở trung tâm của thế giới ấy, hai nhân vật chính Elizabeth Bennet và Fitzwilliam Darcy dường như là một cặp đôi lý tưởng, nhưng ngăn cách giữa họ không chỉ là địa vị chênh lệch cùng mưu toan ngáng trở của người ngoài, mà còn là những hiểu lầm sâu sắc xuất phát từ bản tính của đôi bên. Phản ánh chân thực cuộc sống của tầng lớp trung lưu thế kỷ 19 đồng thời khắc họa sinh động những lát cắt thú vị trong bản chất muôn thuở của con người, Kiêu hãnh và định kiến từ lâu đã khẳng định vị trí vững vàng trong tốp những tiểu thuyết được yêu mến nhất mọi thời đại, chiếm được cảm tình của đông đảo độc giả phổ thông cũng như giới học giả. Không chỉ được dịch ra hàng chục ngôn ngữ khác, kiệt tác để đời của Jane Austen còn được chuyển thể thành công sang nhiều thể loại như kịch, điện ảnh và truyền hình, góp phần làm nên sức sống tác phẩm trong lòng công chúng hơn hai trăm năm qua.\r\n', 'dinhkien.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(23, 'Hai Số Phận\r\n', '147000.00', 768, 'Tiếng Việt', '23,5 x 15,5cm', '800gr', 'Hai số phận\" không chỉ đơn thuần là một cuốn tiểu thuyết, đây có thể xem là \"thánh kinh\" cho những người đọc và suy ngẫm, những ai không dễ dãi, không chấp nhận lối mòn. \"Hai số phận\" làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình. Khi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn! \"Nếu có giải thưởng Nobel về khả năng kể chuyện, giải thưởng đó chắc chắn sẽ thuộc về Archer.\" - Daily Telegraph- (\"Hai số phận\" (Kane & Abel) là câu chuyện về hai người đàn ông đi tìm vinh quang. William Kane là con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz là đứa trẻ không rõ xuất thân, được gia đình người bẫy thú nhặt về nuôi. Một người được ấn định để trở thành chủ ngân hàng khi lớn lên, người kia nhập cư vào Mỹ cùng đoàn người nghèo khổ. Trải qua hơn sáu mươi năm với biết bao biến động, hai con người giàu hoài bão miệt mài xây dựng vận mệnh của mình . \"Hai số phận\" nói về nỗi khát khao cháy bỏng, những nghĩa cử, những mối thâm thù, từng bước đường phiêu lưu, hiện thực thế giới và những góc khuất... mê hoặc người đọc bằng ngôn từ cô đọng, hai mạch truyện song song được xây dựng tinh tế từ những chi tiết nhỏ nhất.) \r\n', 'haisophan.jpg', '2022-06-01 00:00:00', 1000, 6, 4),
(24, 'Văn Học Nghệ Thuật - Đôi Điều Nói Lại', '63000.00', 152, 'Tiếng Việt', '20 x 13cm', '200gr', 'Văn học nghệ thuật – Đôi điều nói lại“Cái tôi sáng tạo” của văn nghệ sĩ mà tách rời trách nhiệm công dân, chối bỏ chức năng kiến tạo đời sống văn hóa tinh thần vì lợi ích dân tộc thì tất yếu “cái tôi sáng tạo” ấy sẽ bị đào thải.\r\n', 'vanhoc.jpg', '2022-06-01 00:00:00', 1000, 3, 13),
(25, 'Lý luận và phê bình văn học', '85000.00', 432, 'Tiếng Việt', '20,5 x 14,5cm', '325gr', 'Ngay sau khi văn học ra đời chắc là đã xuất hiện sự ý thức 1 về nó: văn học là gì, nó có vai trò gì trong đời sống xã hội, cần làm sao để có thể phát triển? Những câu hỏi như thế, tức là dạng “lí luận” văn học sơ khai, lúc đầu có lẽ tiềm tại trong ý nghĩ, sau đó hiển ngôn bằng các hình thức văn bản khác nhau, thể hiện những cách hình dung về văn học. Văn học là một hiện tượng lịch sử, nó biến đổi theo thời gian, những thể loại, những lối viết nào đó mất đi, những thể loại mới, lối viết mới sinh thành. Sự hình dung về văn học, cả những cách thức nhằm thúc đẩy nó phát triển cũng biến đổi theo. “Lí luận” và “phê bình”, như vậy, cũng là một hiện tượng lịch sử. Trong một nền văn học, bên cạnh bộ phận sáng tác còn có bộ phận lí luận, phê bình, chúng gắn bó, tương tác với nhau, khi mạnh khi yếu, nhưng luôn cần cho nhau. Chỉ có thể hiểu được đầy đủ một nền văn học nếu như nắm được cả hai bộ phận này. Ở ta đã có nhiều sách viết về lịch sử văn học dân tộc, có những cuốn sách tốt. Trong đó, ngoài việc mô tả kĩ lưỡng phần “thực tế văn học, tức là các sáng tác văn thơ, phần lí luận, phê bình, như là bình diện thứ hai, nhiều khi cũng đã được đề cập đến.', 'lyluan.jpg', '2022-06-01 00:00:00', 1000, 3, 14),
(26, 'Trên đường biên của lý luận văn học', '130000.00', 482, 'Tiếng Việt', '20,5 x 14cm', '500gr', 'Trên đường biên của lí luận văn học là một phần nỗ lực của GS.TS.NGND Trần Đình Sử để nắm bắt những diễn biến mới nhất của học thuật thế giới, thay đổi, điều chỉnh những quan điểm có nguy cơ trở nên hạn hẹp, xơ cứng, phủ định những ngộ nhận, ấu trĩ đang tồn tại trong học thuật hiện nay. Nhìn vào khối lượng công việc mà giáo sư vẫn miệt mài theo đuổi ấy, điều khiến tôi cảm động hơn cả và muốn nhìn như một bài học cho mình chính là phẩm chất của một trí thức thực sự. Là một trí thức, không bao giờ được dừng lại khát vọng muốn biết, không nên nản lòng trước thúc ép bên ngoài, không được tự thỏa hiệp với những cái sai, cái ngộ nhận của bản thân, và nên để tư duy của mình mạo hiểm xe dịch ra đường biên. Từ đường biên ấy, sẽ thấy có những đường bay. (Nhà nghiêm cứu Trần Ngọc Hiếu)', 'lyluanvanhoc.jpg', '2022-06-01 00:00:00', 1000, 3, 5),
(27, 'Leonardo Da Vinci - Thiên Tài Toàn Năng', '49000.00', 174, 'Tiếng Việt', '20,5 x 14,5cm', '210gr', 'Cuốn sách kể về cuộc đời của thiên tài Leonardo da Vinci, theo diễn biến thời gian, từ khi sinh ra ở xứ Vinci, đến khi lớn lên theo cha đến Florence, rồi học việc tại xưởng vẽ của họa sĩ tài danh nhất tại đây –  Andrea del Verrocchio. Khi đạt được những thành công nhất định, Leonardo rời Florence đến Milan, rồi từ đó, ông sống cuộc sống nay đây mai đó, di chuyển qua lại giữa các cung điện khắp nước Ý.Ông là một trong những đại diện xuất sắc nhất của nghệ thuật và khoa học thời kì Phục Hưng. Leonardo da Vinci không chỉ đam mê hội họa mà còn quan tâm nghiên cứu và tiến hành giải phẫu để tìm hiểu cơ chế vận động của cơ thể người nhằm vẽ tranh chân dung đạt được tính chân thực và sống động nhất.Ngoài ra, ông còn để lại rất nhiều ghi chép về các lĩnh vực từ nghệ thuật, khoa học đến triết học như nghiên cứu sinh vật, kiến trúc, tranh vẽ, tàu ngầm, máy đo độ ẩm, máy hơi nước, dù lượn, vũ khí…Leonardo da Vinci sinh ngày 15 tháng 4 năm 1452, mất ngày 2 tháng 5 năm 1519. Ông là họa sĩ, nhà điêu khắc, kiến trúc sư, nhạc sĩ, bác sĩ, kĩ sư, nhà giải phẫu, nhà phát minh và triết học tự nhiên người Ý. Tuy nhiên, ông được biết đến nhiều nhất trong lĩnh vực hội họa với những kiệt tác như Mona Lisa, Bữa ăn tối cuối cùng… Ngoài nghệ thuật, Leonardo da Vinci còn nghiên cứu tất cả các khía cạnh của cuộc sống, từ giải phẫu học đến toán học và thiên văn học, ông xứng đáng là thiên tài toàn năng nhất lịch sử nhân loại.', 'leona.jpg', '2022-06-01 00:00:00', 1000, 3, 9),
(28, 'Isaac Newton - Nhà Khoa Học Vĩ Đại', '32000.00', 98, 'Tiếng Việt', '20,5 x 14,5cm', '140gr', 'Cuốn sách nói về cuộc đời đầy biến cố và những công trình khoa học vĩ đại của Newton.Cuộc đời Newton trải qua nhiều thăng trầm, tuy nhiên những khó khăn chưa bao giờ khiến ông lùi bước. Không phải nghiên cứu nào của ông cũng đạt được thành quả ngay lập tức mà cần trải qua một quá trình lâu dài, đòi hỏi sự hi sinh và thời gian để ghi nhận.Newton được biết đến với các phát minh về: định luật vạn vật hấp dẫn, ba định luật về chuyển động, phép tính vi phân, tích phân, kính viễn vọng phản xạ...Newton đã có những cống hiến vô cùng to lớn cho nền khoa học nước Anh nói riêng và khoa học thế giới nói chung. Mọi nghiên cứu, phát hiện của ông góp phần mở ra những lĩnh vực khoa học mới mẻ và hiện đại cho nhân loại. Với những đóng góp của mình, Newton xứng đáng là một trong những người có ảnh hưởng lớn nhất trong lịch sử khoa học.Isaac Newton (1642-1727) là thiên tài trong nhiều lĩnh vực, là nhà khoa học siêu việt bậc nhất của mọi thời đại. Suốt cuộc đời mình, ông đã không ngừng tìm tòi và đóng góp cho khoa học, phục vụ cho sự tiến bộ của xã hội. Bằng một tinh thần kỉ luật tốt, ý chí vươn lên và sự lao động không mệt mỏi, nhà khoa học vĩ đại Newton đã mang đến những phát minh kiệt xuất cho toàn nhân loại.', 'newton.jpg', '2022-06-01 00:00:00', 1000, 3, 9),
(29, 'Hành Trình Đến Vô Cực -Stephen Hawking.', '156000.00', 472, 'Tiếng Việt', '23,5 x 15,5cm', '500gr', 'Cuốn sách sau đó đã được lấy cảm hứng để chuyển thể thành bộ phim \"The Theory of Everything\" (Tạm dịch: THUYẾT VẠN VẬT. Khi công chiếu ở Việt Nam được lấy tên là THUYẾT YÊU THƯƠNG) và giành được 180 đề cử, 19 giải thưởng điện ảnh danh giá, 5 đề cử Oscar, 2 giải Quả Cầu Vàng, 3 giải BAFTA (giải thưởng điện ảnh Anh danh giá không kém Oscar) và cả giải thưởng Best British Film (Phim Anh Xuất sắc nhất).Có rất nhiều chi tiết, sự kiện mà bộ phim đã không thể hiện đúng và đầy đủ, thậm chí là sai lệch so với thực tế mà chính bà Jane Hawking đã xác nhận.Nếu đã yêu mến Giáo sư Stephen Hawking, chắc chắn bạn không thể bỏ qua cuốn sách này vì ngoài việc bạn sẽ hiểu hơn về Giáo sư Stephen Hawking thì bạn cũng sẽ hiểu thêm đằng sau những công trình khoa học vĩ đại của ông thì điều gì và ai đã có tác động mạnh mẽ góp phần vào thành công của ông, thấy khâm phục bà Jane và cả tình yêu mà bà dành cho ông.', 'vocuc.jpg', '2022-06-01 00:00:00', 1000, 3, 13),
(30, 'Bí ẩn mãi mãi là bí ẩn', '46000.00', 125, 'Tiếng Việt', '20,5 x 14,5cm', '123gr', 'Những hiện tượng tôn giáo bí ẩn đến nay vẫn đang thách thức giới khoa học. Trên thế giới có rất nhiều tôn giáo khác nhau và mỗi tôn giáo đều ẩn chứa những hiện tượng bí ẩn, huyền bí vượt xa các quy luật của tự nhiên thách đố các nhà khoa học trên thế giới. Những hiện tượng bí ẩn được tổng hợp qua cuốn sách \" Bí ẩn mãi mãi là bí ẩn – Tôn giáo tâm linh\". Với sự vượt bậc của khoa học, rất nhiều trong số các điều kì lạ đều đã được đưa ra những lời giải thích mang tính khoa học. Tuy nhiên, dù cho khoa học phát triển mạnh đến trình độ nào, vẫn còn rất nhiều sự kiện phi thường vẫn chưa thể có được câu trả lời, và niềm tin vào sự kiện huyền bí vẫn tiếp tục…\r\n', 'bian.jpg', '2022-06-01 00:00:00', 1000, 7, 5),
(31, 'Những câu chuyện tâm linh', '78000.00', 279, 'Tiếng Việt', '20,5 x 14,5cm', '350gr', 'Những câu chuyện tâm linh bao gồm những câu chuyện diệu kỳ, minh họa cho các khái niệm như \"hòa hợp\", \"hợp tác\", \"chia sẻ\", \"sùng kính Sự Sống\"… thực sự biểu lộ ra sao trong hoạt đông của loài người. Trên hết thảy, những câu chuyện này gợi mở những lời khuyên thiết thực giúp bạn tự khám phá chính bản thân mình, từ đó khơi dậy những nguồn lực sẵn có từ nội tâm bạn. Những câu chuyện tâm linh là một quyển sách tuyệt vời, đầy chất trí tuệ và khơi nguồn cảm hứng mạnh mẽ!\r\n', 'tamlinh.jpg', '2022-06-01 00:00:00', 1000, 7, 3),
(32, 'Lục Đạo Luân Hồi', '212000.00', 319, 'Tiếng Việt', '27 x 19cm', '819gr', 'Tranh Lục đạo luân hồi trong nghệ thuật Đường Ca khởi nguồn từ Ấn Độ cổ. Tương truyền khi Thích Ca Mâu Ni còn tại thế, hai vị quốc vương miền trung Ấn Độ, một vị là Tần Tỳ Sa La vương, một vị là Ưu Điền vương, cả hai đều tín ngưỡng Phật giáo, lại có mối hữu hảo rất tốt. Có một lần, Ưu Điền vương tặng cho Tần Tỳ Sa La vương một chiếc áo giáp đính đầy đá quý. Tần Tỳ Sa La vương vô cùng hoan hỷ, vì không biết nên tặng lại lễ vật gì mà sinh ra ưu phiền nên đã thỉnh Phật Đà đang truyền đạo ở gần đó đến vẽ tượng của người tặng cho Ưu Điền vương. Phật Thích Ca Mâu Ni nói thân tướng của mình không phải là chân thực, bèn kiến nghị vẽ một bức tranh giáo nghĩa Phật pháp biểu hiện tam học, lục đạo, 12 duyên khởi. Đây chính là bức tranh Lục đạo luân hồi sớm nhất. Lục đạo là 6 nơi ở của chúng sinh trong vòng luân hồi, chỉ cõi trời, cõi người, cõi Atula, cõi súc sinh, cõi quỷ đói, cõi địa ngục. Phật giáo cho rằng. Tất cả chúng sinh chưa được giải thoát, dưới sự thúc đẩy của nghiệp lực đều phải lưu chuyển sinh tử trong lục đạo. Chúng sinh trong luân hồi đều ở trong biển khổ vô biên.Chúng sinh cõi trời được xem là khoái lạc nhất, họ không phải lo lắng về cơm áo, không phải vì cuộc sống mà phải bôn ba, hơn nữa tuổi thọ lại rất dài. Nhưng họ cũng có phiền não, khi lâm chung sẽ gặp “năm \r\n', 'luanhoi.jpg', '2022-06-01 00:00:00', 1000, 7, 3),
(33, 'Thể xác và Tâm hồn', '294000.00', 696, 'Tiếng Việt', '24 x 16cm', '750gr', 'Xuất bản năm 1943, tác phẩm Thể xác và Tâm hồn thành công vang dội khi được vinh danh tại giải thưởng Viện Hàn lâm Pháp. Bộ tiểu thuyết được công chúng và giới phê bình văn học đánh giá cao, nhưng cũng đồng thời làm dấy lên tranh luận sôi nổi về những góc khuất của nghề Y được phơi bày trong tác phẩm. Bức tranh hiện thực sâu sắc trong hoạt động y tế cũng như đời sống xã hội nước Pháp vào nửa đầu thế kỷ XX đã được tác giả khắc họa chân thực với những bất công trong xã hội, những tình yêu éo le, những cảnh đời ngang trái, những kẻ cơ hội, những bác sĩ cố chấp... Và cả những tâm hồn cao thượng, những y bác sĩ tận tâm, dám hy sinh, dám dấn thân và đi đến tận cùng đức tin của mình!\r\n', 'tamhon.jpg', '2022-06-01 00:00:00', 1000, 7, 4),
(34, 'Nếu biết trăm năm là hữu hạn', '236000.00', 187, 'Tiếng Việt', '23,5 x 15,5cm', '680gr', '“Nếu biết trăm năm là hữu hạn, cớ gì ta không sống thật sâu…”Có đôi khi những bộn bề của cuộc sống cuốn ta đi như dòng nước hững hờ cuốn trôi chiếc lá. Cứ thế, ta vội vã làm, vội vã ăn, vội vã ngủ, vội vã yêu và vội vã… để sống! Chắc hẳn đã không ít lần mỗi chúng ta đều thốt lên “giá như…”Nếu Biết Trăm Năm Là Hữu Hạn, đưa người đọc đến nhiều tầng của cung bậc cảm xúc, đến nhiều không gian tưởng chừng ta không thể quay về. Vừa hoài niệm, sâu sắc, vừa giản dị, chân thành, vừa quá khứ, hiện tại.Nếu Biết Trăm Năm Là Hữu Hạn cứ thế cuốn ta đi một cách nhẹ nhàng và đầy sâu lắng… Với tập hợp 40 truyện ngắn, chắc hẳn đâu đó xung quanh những câu chuyện ấy, ta sẽ vô tình bắt gặp chính ta. Nếu Biết Trăm Năm Là Hữu Hạn là một quyển sách dành cho nhiều người.“Người ta gọi tuổi mới lớn là “tuổi biết buồn”. “Biết buồn” tức là chạm ngõ cuộc đời rồi đó. Biết buồn tức là bắt đầu nhận ra sự hiện hữu của những khoảng trống trong tâm hồn. Biết buồn là khi nhận ra rằng có những lúc mình cảm thấy cô độc. Khi đó, hãy dành cho sự cô độc một khoảng riêng, hãy đóng khung sự cô đơn trong giới hạn của nó, như một căn phòng trống trong ngôi nhà tâm hồn. Mỗi lần vào căn phòng ấy, dù tự nguyện hay bị xô đẩy, thì bạn vẫn có thể điềm tĩnh khám phá bản thân trong sự tĩnh lặng. để rồi sau đó, bạn bình thản bước ra, khép cánh cửa lại và trở về với cuộc sống bề bộn thường ngày, vốn lắm nỗi buồn nhưng cũng không bao giờ thiếu niềm vui...” (Trích “Những khoảng trống không phải để lấp đầy”)\r\n', 'tramnam.jpg', '2022-06-01 00:00:00', 1000, 7, 6),
(35, 'Chiêm Tinh học dưới góc nhìn tâm linh', '240000.00', 268, 'Tiếng Việt', '23,5 x 20,5cm', '251gr', 'Như vậy, The Complete Book Of Spiritual Astrology không đơn giản chỉ nói về chiêm tinh học. Nó sẽ đóng vai trò như một tấm bản đồ đưa bạn tìm về con người thật của mình, tấm bản đồ chỉ bạn con đường để hoàn thành mục đích cuộc sống và hướng dẫn bạn cách sống một cuộc đời trọn vẹn. Hơn thế nữa, nó còn là tấm bản đồ hướng dẫn bạn đi đến cấp độ tiếp theo của ý thức mà nhiều người gọi là “thức tỉnh” hay “giác ngộ”. Đối với những người đang tìm cách hoàn thiện bản thân mình, chiêm tinh học là một công cụ tuyệt vời để đạt được điều đó. Đối với những người đang tìm cách bỏ lại cái ngã và sống một cuộc sống hợp nhất với từng khoảnh khắc hiện tại, chiêm tinh học tâm linh là một công cụ thậm chí còn tuyệt vời hơn.Thông qua Chiêm Tinh Học Dưới Góc Nhìn Tâm Linh, bạn sẽ khám phá ra rằng chúng ta đang sống trong một thế giới, một thời đại tuyệt vời và diệu kỳ. Khi chúng ta bận rộn với thế giới bên ngoài lẫn những mưu tính của cái tôi ích kỷ bên trong, chúng ta sẽ nghĩ hành tinh này thật khắc nghiệt và khó sống. Chúng ta cảm thấy lạ lẫm, sợ hãi trước thời kỳ đầy rẫy sự ngu ngốc và thờ ơ; nhưng khi chúng ta quay vào thế giới nội tâm, để bắt đầu lắng nghe và nhìn mọi chuyện bằng một nhận thức mới, chúng ta sẽ nhận ra rằng được sinh ra ở đây, trên hành tinh này, vào thời điểm này, là một món quà to lớn – nó cho chúng ta cơ hội được tham gia vào một hành trình độc đáo và thú vị.\r\n', 'chiemtinh.jpg', '2022-06-01 00:00:00', 1000, 7, 7);
INSERT INTO `sanpham` (`MASP`, `TENSP`, `GIABAN`, `SOTRANG`, `NGONNGU`, `KICHTHUOC`, `TRONGLUONG`, `MOTA`, `ANHBIA`, `NGAYCAPNHAT`, `SOLUONGTON`, `MAL`, `MANXB`) VALUES
(36, 'Tam quốc chí', '154000.00', 312, 'Tiếng Việt', '24 x 16cm', '454gr', 'Sách không chia thành chương hồi mà chia thành ba quyển: thượng, trung, hạ. Nội dung văn bản chia làm hai phần: phần trên là ảnh minh họa và phần dưới là văn bản bình thoại. Câu chuyện bắt đầu từ thời kỳ Quang Vũ đế Lưu Tú sáng lập ra nhà Đông Hán và kết thúc bằng sự kiện Lưu Uyên tiêu diệt nhà Tấn, lập ra nhà Hậu Hán.Tân toàn tướng Tam quốc chí bình thoại nằm trong một loạt bản in năm bình thoại giảng sử về các thời kỳ lịch sử khác nhau. Các nhà nghiên cứu đến nay vẫn còn nhiều ý kiến về bản chất của khái niệm “bình thoại”. Mặc dù có sự giải thích chi tiết khác nhau, nhưng Trương Chính Lương và G. Kramp cũng như Ja Prushek đều quan niệm “bình thoại” (chữ “bình” nghĩa là bàn luận) là lời bàn, giải thích cho những câu chuyện được thể hiện bằng thơ (vịnh thi) hoặc bằng các bức tranh. Tuy nhiên, dựa vào tiêu đề của Tam quốc chí bình thoại (chữ “bình” nghĩa là bằng phẳng), nhà nghiên cứu B. L. Riftin cho rằng bình thoại là hình thức kể chuyện chủ yếu bằng văn xuôi, lời nói thông tục thường ngày, phân biệt với loại hình kể chuyện nặng về chất thơ vốn ra đời sớm hơn.', 'tamquoc.jpg', '2022-06-01 00:00:00', 1000, 4, 9),
(37, 'Lịch sử của trà', '113000.00', 316, 'Tiếng Việt', '20,5 x 13,5cm', '693gr', 'Là loại đồ uống phổ biến thứ hai trên thế giới, chỉ sau nước, bạn thật sự có thể tìm thấy trà ở bất cứ đâu, từ Á sang Âu, từ nông thôn đến thành thị, từ những quán nước bình dân bên lề đường đến các nhà hàng sang trọng bậc nhất. Trà là thức uống quen thuộc được thưởng thức và yêu thích bởi tất cả tầng lớp trong xã hội bất kể giới tính, tuổi tác hay nghề nghiệp.LỊCH SỬ CỦA TRÀ cung cấp một cái nhìn tổng quát, tinh tế và đầy thú vị về dòng chảy hai ngàn năm của thứ đồ uống quyền lực này, đưa chúng ta du ngoạn qua vùng rừng núi Trung Quốc với những câu chuyện thần thoại, qua phòng trà Nhật Bản với các nghi thức trà đạo khắt khe, qua cả những bữa tiệc trà phù phiếm tại Anh hay các đồn điền trà bát ngát ở Ấn Độ và Sri Lanka.Sau tất cả, bạn sẽ nhận ra rằng thứ đồ uống giản dị mà trang nhã này đã và đang tác động sâu sắc đến thế giới loài người về mọi mặt, từ kinh tế, chính trị đến văn hóa, triết học và nghệ thuật.', 'tra.jpg', '2022-06-01 00:00:00', 1000, 4, 12),
(38, 'Homo Deus - Lược Sử Tương Lai', '160000.00', 508, 'Tiếng Việt', '24 x 15cm', '520gr', 'Homo sapiens có phải là một dạng sống siêu đẳng, hay chỉ là một tay đầu gấu địa phương? Làm thế nào con người lại tin rằng họ không chỉ đã kiểm soát thế giới, mà còn mang lại ý nghĩa cho nó? Công nghệ sinh học và trí thông minh nhân tạo đe doạ loài người ra sao? Sinh vật nào có thể kế thừa loài người, và tôn giáo mới nào sẽ được sản sinh?Với giọng kể cuốn hút và mới lạ, Harari sẽ dần gợi mở và trả lời những câu hỏi trê, nhờ phân tích chi tiết những luận điểm gây nhiều tranh cãi: chủ nghĩa nhân đạo là một dạng tôn giáo, thứ tôn giáo tôn thờ con người thay vì thần thánh; sinh vật là thuật toán… ông vẽ ra một viễn cảnh tương lai khi Sapiens thất thế và Dữ liệu giáo trở thành một hình mẫu. HOMO DEUS còn bàn sâu hơn về các năng lực mà con người đã tự trang bị để sinh tồn và tiến hoá thành một giống loài ngự trị trên trái đất, để rồi chính trong tiến trình hoàn thiện và nâng cấp các năng lực ấy chúng ta sẽ bị truất quyền kiểm soát bởi một sinh vật mới, mang tên Homo Deus.', 'tuonglai.jpg', '2022-06-01 00:00:00', 1000, 4, 7),
(39, 'Muôn Kiếp Nhân Sinh', '11400.00', 408, 'Tiếng Việt', '20,5 x 14cm', '450gr', '“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.“Muôn kiếp nhân sinh”cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.', 'muonkiep.jpg', '2022-06-01 00:00:00', 1000, 4, 15),
(40, 'Nhà Giả Kim', '67000.00', 227, 'Tiếng Việt', '20,5 x 13cm', '220gr', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n', 'giakim.jpg', '2022-06-01 00:00:00', 1000, 4, 6),
(41, 'Tôi, Tương Lai Và Thế Giới', '124000.00', 380, 'Tiếng Việt', '20,5 x 14cm', '400gr', 'Tôi, Tương lai & Thế giới ra đời đúng vào thời điểm cần thiết nhất đối với Việt Nam. Môi trường sống của chúng ta, kể cả ở Việt Nam.', 'toi.jpg', '2022-06-01 00:00:00', 1000, 4, 7),
(42, 'Truyện ma không hồi hết', '136000.00', 472, 'Tiếng Việt', '24 x 15,7cm', '231gr', 'Sau khi \'rải\' CV khắp nơi, Dương Nguyên Nhất được nhận vào làm tại công ty thám tử Monster. Mang tiếng là công ty thám tử, nhưng thực chất đây là nơi tiếp nhận và xử lý các thảm án liên quan đến những truyền thuyết đô thị rùng rợn, đáng sợ vốn đã được lưu truyền từ đời này sang sang đời khác. Các nhân viên trong công ty này đều vô cùng quái gở và bí ẩn, nhưng người khiến anh tò mò nhất chính là vị sếp tổng Ngụy Diên Khanh lạnh lùng, kiệm lời mà anh chưa từng nhìn rõ mặt. Thế rồi một ngày nọ, anh vô tình phát hiện ra dung mạo của sếp tổng giống hệt di ảnh trên bài vị của \"người chồng quá cố\" mà mình vẫn luôn bái lạy. Từ đó, những bí ẩn trong quá khứ cũng lần lượt bị bóc trần…\r\n', 'hoiket.jpg', '2022-06-01 00:00:00', 1000, 8, 8),
(43, 'Gỗ Thần', '75000.00', 325, 'Tiếng Việt', '20,5 x 14,5cm', '311gr', 'Gỗ thần được viết dựa trên sự kiện có thật: Năm 1998, nhiều vụ án lừa gạt giết người có tổ chức xảy ra tại các hầm mỏ ở Trung Quốc, với số nạn nhân lên đến hàng trăm người. Một bức tranh cuộc sống chân thực và sống động trải ra theo ngòi bút điêu luyện của tác giả: Mỏ than xa xôi hẻo lánh là nơi những con mồi cắn câu tìm đến, không biết rằng mình đã bước chân lên con đường không có lối về, nơi có giếng mỏ tối tăm ngột ngạt như một hố đen thiếu vắng luân thường và pháp luật, nơinhững con người vật lộn mưu sinh dưới đáy xã hội với những tâm tư, dục vọng phức tạp trải qua cuộc khảo nghiệm khắc nghiệt về nhân tính, nơi những bí mật đen tối và cay đắng của họ cuối cùng bị chôn vùi, nhưng độc giả thì không thể quên được. Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....\r\n', 'gothan.jpg', '2022-06-01 00:00:00', 1000, 8, 6),
(44, 'Thiên hạ là nàng', '126000.00', 432, 'Tiếng Việt', '23 x 16cm', '359gr', 'Năm 1442, vụ án Lệ Chi viên chấn động Đại Việt khép lại với tội danh phản nghịch của đại thần Nguyễn Trãi. Bảy năm sau, bậc huân cựu tam triều - Trịnh Khả cũng mang bao nỗi tiếc hận mà trở về cát bụi. Tháng năm qua đi, tựa hồ những oan khuất sẽ cùng các vị danh thần một đời trung trinh oanh liệt nằm yên dưới ba tấc đất. Nhưng lưới trời lồng lộng đã để giọt máu của họ trở về rửa sạch nỗi hàm oan. Mười năm thanh xuân như mây bay gió thoảng. Nữ hài tử tròn tựa bánh trôi đã trở thành thiếu nữ yêu kiều. Chẳng còn là thiên kim đài các, nàng bước qua phủ Trịnh tan hoang, qua xác người thân và ròng rã những tháng ngày trốn chạy để ngược về cố hương trong một thân phận khác, thề rằng những gì phải gánh chịu, sẽ trả lại người gấp bội. Trên con đường sâu thẳm chốn cung cấm, có Lạng Sơn vương Lê Nghi Dân phách lối mà hào sảng cùng nàng một chiến tuyến, có Bình Nguyên vương hào hoa mà mưu trí dõi mắt bảo vệ, nhưng liệu Viên Phúc có quên chàng trai mình nguyền rủa, khi bậc quân vương Diên Ninh được người đời ca tụng ấy lại mới là người thắp lên trong nàng ngọn lửa yêu thương và chân thành?\r\n', 'nang.jpg', '2022-06-01 00:00:00', 1000, 8, 9),
(45, 'Đồng Chí', '225000.00', 279, 'Tiếng Việt', '20,5 x 14,5cm', '350gr', 'Tám năm trước, Giang Thành Ngật và Lục Yên cùng đắm chìm trong quãng thời gian ngọt ngào của tình yêu tuổi học trò… Cho đến một ngày, Đặng Mạn – bạn thân của Lục Yên bất ngờ nhảy sông tự vẫn.Tám năm sau, Giang Thành Ngật và Lục Yên gặp lại nhau tại buổi họp lớp trong tâm thế thờ ơ, hững hờ… Cho đến một ngày, Lục Yên vô tình bắt gặp bóng dáng thân quen của Đặng Mạn vào một đêm đông u tối.Cái chết của Đặng Mạn ẩn chứa những bí mật gì? Và sau khi bức màn bí mật ấy được vén mở, liệu Lục Yên và Giang Thành Ngật có thể tìm lại tình yêu của tám năm về trước hay không?\r\n', 'dongchi.jpg', '2022-06-01 00:00:00', 1000, 8, 3),
(46, 'Sanctify', '109000.00', 216, 'Tiếng Việt', '18 x 13cm', '250gr', 'Khi đang chán chường với công việc của mình và muốn đổi nghề, thầy trừ tà Lance Hunter lại bị cuốn vào một vụ án phức tạp. Anh đồng hành cùng cảnh sát Gilbert và bắt đầu lật lại thảm án xảy ra nhiều năm về trước tại trại trẻ mồ côi, truy tìm dấu vết của những kẻ sa ngã, The Fallen.\r\n', 'sac.jpg', '2022-06-01 00:00:00', 1000, 8, 6),
(47, 'Hỏa Dực', '71000.00', 356, 'Tiếng Việt', '24 x 16cm', '298gr', 'Giữa thời loạn lạc, Đàng Trong và Đàng Ngoài, Thăng Long và Phú Xuân, Gia Định và Hà Tiên…, từng mảnh giang sơn đang rệu rã, mỗi người con trên mảnh đất này sẽ phải làm gì khi lịch sử gọi tên? Một cô tiểu thư vốn quen sống trong nhung lụa, chưa từng biết đến cảnh đói khổ của nhân gian, bỗng một ngày vật đổi sao dời, nàng ôm trong lòng sự đau đớn cùng cực và sự thù hận khi cửa nát nhà tan, mang thân đi khắp bốn phương lưu lạc. Nàng quẩn bước trong thời chiến quốc, chẳng có gì ngoài cây cung nhỏ và mũi tên bay ngược hướng mưa tên, chẳng có gì ngoài đôi mắt phượng hoàng lẫn lộn máu và nước mắt…Lũy Thầy sụp đổ, thành Phú Xuân hóa tro tàn, ruộng lúa nương dâu chồng chất đau thương. Nàng vẫn mải miết bước đi, về phía chân trờ\r\n', 'hoaduc.jpg', '2022-06-01 00:00:00', 1000, 8, 8);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MAAD`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`MACT`),
  ADD KEY `FK_CTDH_SP` (`MASP`),
  ADD KEY `FK_CTDH_DH` (`MADH`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MADG`),
  ADD KEY `FK_DG_KH` (`MAKH`),
  ADD KEY `FK_DG_SP` (`MASP`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MADH`),
  ADD KEY `FK_DH_KH` (`MAKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MAL`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MANXB`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD KEY `FK_sp_l` (`MAL`),
  ADD KEY `FK_sp_nxb` (`MANXB`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `MAAD` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `MACT` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `MADG` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MADH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MAKH` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `MAL` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `MANXB` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `FK_CTDH_DH` FOREIGN KEY (`MADH`) REFERENCES `donhang` (`MADH`),
  ADD CONSTRAINT `FK_CTDH_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`),
  ADD CONSTRAINT `ctdonhang_ibfk_1` FOREIGN KEY (`MADH`) REFERENCES `donhang` (`MADH`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `FK_DG_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  ADD CONSTRAINT `FK_DG_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DH_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sp_l` FOREIGN KEY (`MAL`) REFERENCES `loai` (`MAL`),
  ADD CONSTRAINT `FK_sp_nxb` FOREIGN KEY (`MANXB`) REFERENCES `nhaxuatban` (`MANXB`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
