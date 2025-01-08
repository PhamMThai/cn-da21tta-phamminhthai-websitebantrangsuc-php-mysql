-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2024 lúc 06:11 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_bantrangsuccn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(2, 'Bi', '0899310244', 'BãI Vàng', 'Đem đúng nha bạn', 3),
(8, 'Mong Lung Dân', '089933310', 'HCM', 'Giao gấp', 4),
(9, 'CON CỌP', '110121100', 'TV', 'giao NHANH SIU TỐC', 1),
(10, 'CON CỌP', '110121100', 'TV', 'giao NHANH SIU TỐC', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_amin`
--

CREATE TABLE `tbl_amin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_amin`
--

INSERT INTO `tbl_amin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'thaiadmin', '32de60253e0864610daf32ba6e4f87d1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(6, 'Top 3 đá phong thủy những người cung Nhân Mã nên chọn', '<p>Nh&acirc;n M&atilde; lu&ocirc;n tr&agrave;n đầy năng lượng, y&ecirc;u tự do v&agrave; th&iacute;ch học hỏi. Đ&acirc;u sẽ l&agrave; vi&ecirc;n đ&aacute; phong thuỷ ph&ugrave; hợp với cung ho&agrave;ng đạo n&agrave;y?</p>\r\n', '<p><strong>T&iacute;nh c&aacute;ch của người cung Nh&acirc;n M&atilde;</strong></p>\r\n\r\n<p>Những người c&oacute; ng&agrave;y sinh từ 23/11 đến 21/12 sẽ thuộc cung Nh&acirc;n M&atilde;. Đ&acirc;y l&agrave; cung ho&agrave;ng đạo thứ 9 trong 12 cung ho&agrave;ng đạo, thuộc nguy&ecirc;n tố Lửa c&ugrave;ng Sư Tử v&agrave; Bạch Dương. Biểu tượng của Nh&acirc;n M&atilde; l&agrave; c&acirc;y cung v&agrave; mũi t&ecirc;n, đại diện cho sự tham vọng, lu&ocirc;n hướng về ph&iacute;a trước. T&iacute;nh c&aacute;ch đặc trưng của cung ho&agrave;ng đạo n&agrave;y l&agrave; tr&iacute; tuệ, th&iacute;ch học hỏi v&agrave; y&ecirc;u tự do. Họ l&agrave; người kh&ocirc;ng thể ngồi y&ecirc;n, muốn đi khắp nơi, kh&ocirc;ng ngừng học hỏi v&agrave; l&agrave;m mới m&igrave;nh. Nh&oacute;m người n&agrave;y cũng rất cởi mở, ph&oacute;ng kho&aacute;ng, dễ kết giao v&agrave; c&oacute; nhiều bạn b&egrave;.&nbsp;<a href=\"https://www.pnj.com.vn/blog/3-vien-da-phong-thuy-che-cho-suc-khoe-cua-cac-chu-nhan/?utm_source=blog&amp;utm_medium=cung-menh\">3 vi&ecirc;n đ&aacute; phong thuỷ che chở sức khoẻ của c&aacute;c chủ nh&acirc;n.</a></p>\r\n\r\n<p><img alt=\"Top 3 da phong thuy nhung nguoi cung Nhan Ma nen chon\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Top-3-da-phong-thuy-nhung-nguoi-cung-Nhan-Ma-nen-chon-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p>Ngo&agrave;i ra, Nh&acirc;n M&atilde; cũng rất thẳng thắn, mạnh mẽ, kh&ocirc;ng ngại n&ecirc;u quan điểm c&aacute; nh&acirc;n cũng như phản biện để bảo vệ lập trường của m&igrave;nh. D&ugrave; t&iacute;nh c&aacute;ch c&oacute; vui vẻ, h&agrave;i hước nhưng họ cũng rất dứt kho&aacute;t, quyết liệt trong h&agrave;nh động v&agrave; c&oacute; suy nghĩ độc lập.</p>\r\n\r\n<p>Điểm yếu của cung ho&agrave;ng đạo n&agrave;y ch&iacute;nh l&agrave; thiếu ki&ecirc;n nhẫn, hấp tấp v&agrave; chưa suy nghĩ thấu đ&aacute;o khi đưa ra quyết định. T&iacute;nh c&aacute;ch n&agrave;y c&oacute; thể khiến họ phải hối hận khi c&ocirc;ng việc v&agrave; cuộc sống diễn ra kh&ocirc;ng su&ocirc;n sẻ. Nh&acirc;n M&atilde; cũng th&iacute;ch khoa trương, cạnh tranh v&agrave; mong muốn l&agrave;m người chiến thắng.<br />\r\n<img alt=\"Top 3 da phong thuy nhung nguoi cung Nhan Ma nen chon 1\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Top-3-da-phong-thuy-nhung-nguoi-cung-Nhan-Ma-nen-chon-1-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Top 3 đ&aacute; phong thủy những người cung Nh&acirc;n M&atilde; n&ecirc;n chọn</strong></p>\r\n\r\n<p>M&agrave;u sắc may mắn cho người thuộc cung Nh&acirc;n M&atilde; l&agrave; v&agrave;ng, đỏ v&agrave; xanh dương. Đ&acirc;y l&agrave; những t&ocirc;ng m&agrave;u s&ocirc;i nổi, mi&ecirc;u tả đ&uacute;ng với t&iacute;nh c&aacute;ch v&agrave; kh&iacute; chất của cung ho&agrave;ng đạo n&agrave;y. Do đ&oacute;, những vi&ecirc;n đ&aacute; qu&yacute; tương ứng sẽ l&agrave; Ruby, Citrine v&agrave; Topaz.</p>\r\n\r\n<p><strong>Ruby</strong>&nbsp;mang sắc đỏ rạng ngời, tựa như sự nhiệt huyết kh&ocirc;ng bao giờ tắt của c&aacute;c Nh&acirc;n M&atilde;. Ngo&agrave;i ra,&nbsp;<a href=\"https://www.pnj.com.vn/blog/da-ruby-la-gi-su-khac-biet-giua-da-ruby-va-nhung-loai-da-khac/\">Ruby</a>&nbsp;c&ograve;n mang nhiều &yacute; nghĩa linh thi&ecirc;ng về t&igrave;nh y&ecirc;u, may mắn v&agrave; thịnh vượng. Vi&ecirc;n đ&aacute; hứa hẹn sẽ chắp c&aacute;nh, gi&uacute;p cung ho&agrave;ng đạo n&agrave;y c&agrave;ng th&ecirc;m mạnh mẽ v&agrave; vươn xa<br />\r\n<img alt=\"Top 3 da phong thuy nhung nguoi cung Nhan Ma nen chon 2\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Top-3-da-phong-thuy-nhung-nguoi-cung-Nhan-Ma-nen-chon-2-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Citrine</strong>&nbsp;được biết đến l&agrave; vi&ecirc;n đ&aacute; an l&agrave;nh. Sắc v&agrave;ng ấm &aacute;p tựa như những giọt nắng, thắp l&ecirc;n hạnh ph&uacute;c v&agrave; niềm tin. Vi&ecirc;n đ&aacute; n&agrave;y c&ograve;n gi&uacute;p c&aacute;c chủ nh&acirc;n th&ecirc;m b&igrave;nh t&acirc;m trước những quyết định lớn. Đ&acirc;y được xem l&agrave; vi&ecirc;n đ&aacute; phong thuỷ ph&ugrave; hợp với Citrine bởi ch&uacute;ng c&oacute; khả năng hỗ trợ Nh&acirc;n M&atilde; khi đứng trước nhiều sự lựa chọn quan trọng.<br />\r\n<img alt=\"Top 3 da phong thuy nhung nguoi cung Nhan Ma nen chon 3\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Top-3-da-phong-thuy-nhung-nguoi-cung-Nhan-Ma-nen-chon-3-1024x768.jpg\" style=\"height:375px; width:500px\" /></p>\r\n', 8, 1, '1733486501_anhbaiviet1.jpg'),
(10, 'Bính Dần 1986, điều gì đang chờ đợi bạn trong 2024? Đá quý nào sẽ mang lại may mắn cho bạn trong năm mới?', '<p>Cuộc sống của c&aacute;c B&iacute;nh Dần 1986 sẽ c&oacute; những thay đổi g&igrave; trong năm 2024? Đ&acirc;u sẽ l&agrave; vi&ecirc;n đ&aacute; phong thuỷ ph&ugrave; hợp? Đ&oacute;n xem tại đ&acirc;y nh&eacute;!</p>\r\n', '<p><strong>Tổng quan về B&iacute;nh Dần 1986</strong></p>\r\n\r\n<p>B&iacute;nh Dần 1986 l&agrave; những người ki&ecirc;n cường, kh&ocirc;ng ngại thử th&aacute;ch v&agrave; lu&ocirc;n sẵn s&agrave;ng đ&oacute;n nhận những kh&oacute; khăn. Họ l&agrave;m việc hết m&igrave;nh, lu&ocirc;n sở hữu &yacute; tưởng đột ph&aacute; gi&uacute;p đội nh&oacute;m hay doanh nghiệp ph&aacute;t triển vượt bậc. D&ugrave; trong bất kỳ ho&agrave;n cảnh n&agrave;o, B&iacute;nh Dần vẫn giữ được sự điềm tĩnh một c&aacute;i đầu lạnh v&agrave; kh&ocirc;ng bị t&aacute;c động bởi những người xung quanh. Người tuổi n&agrave;y cũng xem trọng chữ t&iacute;n, l&agrave;m việc bằng sự t&acirc;m huyết.&nbsp;<a href=\"https://www.pnj.com.vn/blog/3-vien-da-phong-thuy-che-cho-suc-khoe-cua-cac-chu-nhan/?utm_source=blog&amp;utm_medium=cung-menh\">3 vi&ecirc;n đ&aacute; phong thuỷ che chở sức khoẻ của c&aacute;c chủ nh&acirc;n.</a><br />\r\n<img alt=\"Binh Dan 1986 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 1\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Binh-Dan-1986-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-1-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p>Trong chuyện t&igrave;nh cảm, c&aacute;c B&iacute;nh Dần lu&ocirc;n biết chăm s&oacute;c, y&ecirc;u thương v&agrave; đồng h&agrave;nh c&ugrave;ng một nửa của m&igrave;nh. Họ sẵn s&agrave;ng chịu thiệt th&ograve;i v&agrave; hy sinh. Tr&aacute;i tim ấm &aacute;p của những ch&uacute; hổ lu&ocirc;n được mọi người xung quanh tr&acirc;n trọng, y&ecirc;u mến. Họ c&oacute; nhiều bạn b&egrave;, bằng hữu th&acirc;n thiết, lu&ocirc;n c&oacute; mặt v&agrave; xuất hiện khi cần.<br />\r\n<img alt=\"Binh Dan 1986 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 2\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Binh-Dan-1986-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-2-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p>Năm 2024 l&agrave; thời điểm c&aacute;c B&iacute;nh Dần gặp được nhiều may mắn trong c&ocirc;ng việc v&agrave; t&igrave;nh cảm. Mọi thứ diễn ra su&ocirc;n sẻ, đ&uacute;ng &yacute; nguyện, nhiều mối quan hệ được mở rộng.</p>\r\n\r\n<p><strong>Điều g&igrave; đang chờ đợi B&iacute;nh Dần trong 2024?</strong></p>\r\n\r\n<p><strong>C&ocirc;ng việc v&agrave; sự nghiệp:&nbsp;</strong>Những mục ti&ecirc;u lớn lao của B&iacute;nh Dần c&oacute; thể sẽ ho&agrave;n th&agrave;nh trong năm nay sau bao nỗ lực v&agrave; miệt m&agrave;i lao động. Tuy nhi&ecirc;n, người tuổi n&agrave;y cần giữ b&igrave;nh tĩnh trước mọi t&igrave;nh huống, tr&aacute;nh thị phi v&agrave; lời ra tiếng v&agrave;o.</p>\r\n\r\n<p><strong>T&agrave;i ch&iacute;nh:&nbsp;</strong>Vấn đề tiền bạc của B&iacute;nh Dần c&oacute; nhiều dấu hiệu t&iacute;ch cực. Những khoản tiền đầu tư sẽ bắt đầu sinh lời, mang đến sự vững v&agrave;ng về t&agrave;i ch&iacute;nh.</p>\r\n\r\n<p><strong>T&igrave;nh cảm:</strong>&nbsp;Trong năm 2024, c&aacute;c B&iacute;nh Dần sẽ đ&oacute;n nhận sự b&igrave;nh an trong chuyện t&igrave;nh cảm. Cả hai lu&ocirc;n d&agrave;nh cho nhau sự tốt đẹp, thấu hiểu cũng như biết lắng nghe, chia sẻ động vi&ecirc;n.</p>\r\n\r\n<p><strong>Sức khoẻ:</strong>&nbsp;Sức khoẻ sẽ c&oacute; những dấu hiệu đi xuống. Việc ăn uống v&agrave; tập luyện hợp l&yacute; l&agrave; c&aacute;ch gi&uacute;p c&aacute;c B&iacute;nh Dần lu&ocirc;n tr&agrave;n đầy năng lượng v&agrave; nhiệt huyết.<br />\r\n<img alt=\"Binh Dan 1986 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 3\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Binh-Dan-1986-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-3-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Đ&aacute; phong thuỷ cho B&iacute;nh Dần 1986</strong></p>\r\n\r\n<p>Người tuổi B&iacute;nh Dần 1986 mang mệnh Lư Trung Hỏa tức lửa trong l&ograve;. Dựa theo nguy&ecirc;n tắc ngũ h&agrave;nh, Mộc sinh Hoả; do đ&oacute;, người thuộc tuổi n&agrave;y n&ecirc;n ưu ti&ecirc;n đeo trang sức đ&aacute; đại diện h&agrave;nh Mộc như Cẩm Thạch, Peridot, Emerald,&hellip; Về mặt tương hợp, c&aacute;c ch&uacute; cọp 1986 c&oacute; thể lựa chọn đ&aacute; tượng trưng cho mệnh Hoả c&oacute; m&agrave;u đỏ, hồng, t&iacute;m như&nbsp;<a href=\"https://www.pnj.com.vn/blog/da-ruby-la-gi-su-khac-biet-giua-da-ruby-va-nhung-loai-da-khac/?utm_source=blog&amp;utm_medium=cung-menh\">Ruby</a>, Thạch Anh Hồng, Amethyst,&hellip;<br />\r\n<img alt=\"Binh Dan 1986 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 4\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/12/Binh-Dan-1986-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-4-1024x768.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 8, 0, '1733490910_anhbaiviet2.jpg'),
(11, 'Tân Mùi 1991, điều gì đang chờ đợi bạn trong 2024? Đá quý nào sẽ mang lại may mắn cho bạn trong năm mới?', '<p>Cuộc sống của c&aacute;c T&acirc;n M&ugrave;i 1991 sẽ c&oacute; những thay đổi g&igrave; trong năm 2024? Đ&acirc;u sẽ l&agrave; vi&ecirc;n đ&aacute; phong thuỷ ph&ugrave; hợp? Đ&oacute;n xem tại đ&acirc;y nh&eacute;!</p>\r\n', '<p><strong>T&iacute;nh c&aacute;ch T&acirc;n M&ugrave;i 1991</strong></p>\r\n\r\n<p>T&acirc;n M&ugrave;i 1991 l&agrave; những người kh&eacute;o l&eacute;o, giỏi giao tiếp v&agrave; c&oacute; c&aacute;i nh&igrave;n tinh tế. Họ biết c&aacute;ch nắm bắt cảm x&uacute;c đối phương cũng như chỉnh sửa bản th&acirc;n để ph&ugrave; hợp với từng đối tượng, ho&agrave;n cảnh. T&acirc;n M&ugrave;i cũng l&agrave; người c&oacute; tham vọng, chăm chỉ lao động v&agrave; lu&ocirc;n nghĩ lớn, l&agrave;m lớn. Trong cuộc sống, nh&oacute;m người n&agrave;y lu&ocirc;n lạc quan hướng về tương lai v&agrave; &iacute;t khi n&agrave;o để bụng. Ngo&agrave;i ra, c&aacute;c T&acirc;n M&ugrave;i đều c&oacute; thi&ecirc;n hướng nghệ thuật, y&ecirc;u c&aacute;i đẹp v&agrave; sự duy mỹ. Họ cũng c&oacute; đời sống t&acirc;m linh phong ph&uacute;, nh&igrave;n mọi thứ xung quanh đa chiều v&agrave; thấu đ&aacute;o.&nbsp;<a href=\"https://www.pnj.com.vn/blog/3-vien-da-phong-thuy-che-cho-suc-khoe-cua-cac-chu-nhan/?utm_source=blog&amp;utm_medium=cung-menh\">3 vi&ecirc;n đ&aacute; phong thuỷ che chở sức khoẻ của c&aacute;c chủ nh&acirc;n.</a><br />\r\n<img alt=\"Tan Mui 1991 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Tan-Mui-1991-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p>T&acirc;n M&ugrave;i cũng l&agrave; con người của gia đ&igrave;nh. Họ ấm &aacute;p, dịu d&agrave;ng với người th&acirc;n y&ecirc;u, lu&ocirc;n che chở v&agrave; gi&uacute;p đỡ khi người thương cần đến m&igrave;nh.</p>\r\n\r\n<p>Năm 2024 mang đến cho những ch&uacute; d&ecirc; cơ hội để tỏa s&aacute;ng, kh&aacute;m ph&aacute; v&agrave; trở th&agrave;nh phi&ecirc;n bản tốt nhất của m&igrave;nh. Đ&acirc;y cũng l&agrave; thời điểm đẹp cho việc bắt đầu những cơ hội v&agrave; đối mặt với thử th&aacute;ch.<br />\r\n<img alt=\"Tan Mui 1991 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 1\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Tan-Mui-1991-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-1-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Điều g&igrave; đang chờ đợi T&acirc;n M&ugrave;i trong 2024?</strong></p>\r\n\r\n<p><strong>C&ocirc;ng việc v&agrave; sự nghiệp:&nbsp;</strong>Nhiều tin vui trong c&ocirc;ng việc sẽ đến với T&acirc;n M&ugrave;i. Tuy nhi&ecirc;n, trước khi đạt được những th&agrave;nh quả to lớn th&igrave; người tuổi n&agrave;y sẽ phải trải qua một số kh&oacute; khăn. Đ&acirc;y cũng l&agrave; l&uacute;c để những ch&uacute; d&ecirc; thể hiện bản lĩnh.<br />\r\n<strong>T&agrave;i ch&iacute;nh:</strong>&nbsp;Một số T&acirc;n M&ugrave;i thường c&oacute; th&oacute;i quen ti&ecirc;u x&agrave;i hoang ph&iacute;. Điều n&agrave;y c&oacute; thể khiến những ch&uacute; d&ecirc; rơi v&agrave;o ho&agrave;n cảnh t&uacute;ng thiếu khi gặp sự cố. Một kế hoạch chi ti&ecirc;u hợp l&yacute; l&agrave; vấn đề cấp b&aacute;ch trong năm 2024.</p>\r\n\r\n<p><strong>T&igrave;nh cảm:&nbsp;</strong>Một số xung đột kh&ocirc;ng như &yacute; muốn c&oacute; thể xảy đến với T&acirc;n M&ugrave;i trong giai đoạn tới. Việc m&agrave; c&aacute;c ch&uacute; d&ecirc; cần l&agrave;m ch&iacute;nh l&agrave; b&igrave;nh tĩnh suy x&eacute;t v&agrave; đ&aacute;nh gi&aacute; để c&oacute; những phương &aacute;n hợp l&yacute;.</p>\r\n\r\n<p><strong>Sức khoẻ:</strong>&nbsp;T&igrave;nh trạng sức khoẻ kh&ocirc;ng c&ograve;n sung m&atilde;n như tuổi 20 c&oacute; thể khiến c&aacute;c T&acirc;n M&ugrave;i gặp kh&oacute; khăn khi phải l&agrave;m việc qu&aacute; sức. H&atilde;y d&agrave;nh thời gian cho việc tập luyện cũng như ăn uống, nghỉ ngơi hợp l&yacute;.<br />\r\n<img alt=\"Tan Mui 1991 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 3\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Tan-Mui-1991-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-3-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Xem sản phẩm tr&ecirc;n h&igrave;nh:</p>\r\n\r\n<p><strong>Đ&aacute; phong thuỷ cho T&acirc;n M&ugrave;i 1991</strong></p>\r\n\r\n<p>T&acirc;n M&ugrave;i 1991 mang mệnh Lộ B&agrave;ng Thổ, tức đất ven đường. Dựa v&agrave;o nguy&ecirc;n tắc ngũ h&agrave;nh, ta c&oacute; Hoả sinh Thổ n&ecirc;n c&aacute;c T&acirc;n M&ugrave;i c&oacute; thể đeo đ&aacute; đại diện cho mệnh Hoả, Thổ như Amethyst, Ruby,&nbsp;<a href=\"https://www.pnj.com.vn/blog/top-5-tinh-hoa-trang-suc-citrine-duoc-ua-chuong-nhat/?utm_source=blog&amp;utm_medium=cung-menh\">Citrine</a>, Ngọc Trai South Pearl,&hellip; Ngo&agrave;i ra, đất chặn nước, Thổ chế khắc được Thuỷ n&ecirc;n qu&yacute; bạn c&oacute; th&ecirc;m lựa chọn đ&aacute; đại diện cho mệnh Thuỷ như Topaz, Sapphire Xanh,&hellip;<br />\r\n<img alt=\"Tan Mui 1991 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 4\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Tan-Mui-1991-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-4-1024x768.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 8, 1, '1733491134_anhbaiviet3.jpg'),
(12, 'Giáp Tý 1984, điều gì đang chờ đợi bạn trong 2024? Đá quý nào sẽ mang lại may mắn cho bạn trong năm mới?', '<p>Cuộc sống của c&aacute;c Gi&aacute;p T&yacute; 1984 sẽ c&oacute; những thay đổi g&igrave; trong năm 2024? Đ&acirc;u sẽ l&agrave; vi&ecirc;n đ&aacute; phong thuỷ ph&ugrave; hợp? Đ&oacute;n xem tại đ&acirc;y nh&eacute;!</p>\r\n', '<p><strong>T&iacute;nh c&aacute;ch của Gi&aacute;p T&yacute; 1984</strong></p>\r\n\r\n<p>Gi&aacute;p T&yacute; 1984 l&agrave; những người gi&agrave;u l&ograve;ng nhiệt huyết v&agrave; ki&ecirc;n định với những mục ti&ecirc;u m&agrave; m&igrave;nh đ&atilde; đặt ra. Sự tham vọng v&agrave; nỗ lực kh&ocirc;ng ngừng nghỉ đ&atilde; gi&uacute;p người tuổi n&agrave;y sớm đạt được nhiều th&agrave;nh tựu. Họ c&oacute; suy nghĩ s&acirc;u sắc, l&agrave;m việc g&igrave; cũng đ&aacute;nh gi&aacute; v&agrave; c&acirc;n nhắc kỹ lưỡng, thấu đ&aacute;o. Người tuổi T&yacute; cũng chưa bao giờ sợ kh&oacute; khăn hay thử th&aacute;ch, họ được xem l&agrave; &ldquo;vua l&igrave; đ&ograve;n&rdquo; v&igrave; kh&ocirc;ng bao giờ bỏ cuộc.</p>\r\n\r\n<p><a href=\"https://www.pnj.com.vn/blog/3-vien-da-phong-thuy-che-cho-suc-khoe-cua-cac-chu-nhan/?utm_source=blog&amp;utm_medium=cung-menh\">3 vi&ecirc;n đ&aacute; phong thuỷ che chở sức khoẻ của c&aacute;c chủ nh&acirc;n.</a></p>\r\n\r\n<p>Đối với Gi&aacute;p T&yacute; 1984, cuộc sống ri&ecirc;ng tư l&agrave; v&ocirc; c&ugrave;ng quan trọng. Họ &iacute;t khi n&agrave;o thể hiện hay c&ocirc;ng khai những kh&iacute;a cạnh cuộc sống của m&igrave;nh. Người tuổi n&agrave;y cũng xem trọng t&igrave;nh cảm gia đ&igrave;nh, biết y&ecirc;u thương v&agrave; chăm s&oacute;c cha mẹ.<br />\r\n<img alt=\"Giap Ty 1984 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Giap-Ty-1984-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p>Năm 2024 sẽ l&agrave; thời điểm v&agrave;ng để c&aacute;c Gi&aacute;p T&yacute; ph&aacute;t huy hết khả năng cũng như chứng minh bản th&acirc;n. Nhiều dự &aacute;n v&agrave; kế hoạch do người tuổi n&agrave;y thực hiện đều su&ocirc;n sẻ, mang đến tiếng tăm v&agrave; cả tiền t&agrave;i.<br />\r\n<img alt=\"Giap Ty 1984 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 1\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Giap-Ty-1984-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-1-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh</strong></p>\r\n\r\n<p><strong>Điều g&igrave; đang chờ đợi Gi&aacute;p T&yacute; 1984 trong 2024?</strong></p>\r\n\r\n<p><strong>C&ocirc;ng việc v&agrave; sự nghiệp:&nbsp;</strong>Đ&acirc;y l&agrave; l&uacute;c m&agrave; c&aacute;c Gi&aacute;p T&yacute; 1984 gặt h&aacute;i được nhiều th&agrave;nh quả đ&aacute;ng mơ ước trong c&ocirc;ng việc. Tuy nhi&ecirc;n, người tuổi n&agrave;y cần cẩn trọng trong giao tiếp, tr&aacute;nh xung đột v&agrave; thị phi.</p>\r\n\r\n<p><strong>T&agrave;i ch&iacute;nh:</strong>&nbsp;Sự vững v&agrave;ng trong c&ocirc;ng việc đ&atilde; củng cố sự bền vững về mặt t&agrave;i ch&iacute;nh của Gi&aacute;p T&yacute;. Những khoản đầu tư đ&atilde; bắt đầu c&oacute; những kết quả tốt đẹp. Điều người tuổi n&agrave;y cần l&agrave;m l&agrave; tr&aacute;nh ti&ecirc;u x&agrave;i phung ph&iacute;, c&oacute; kế hoạch tiết kiệm.</p>\r\n\r\n<p><strong>T&igrave;nh duy&ecirc;n:</strong>&nbsp;Một số m&acirc;u thuẫn c&oacute; thể xảy đến với Gi&aacute;p T&yacute; trong năm 2024. Việc giữ b&igrave;nh tĩnh trong mọi t&igrave;nh huống sẽ gi&uacute;p cả hai t&igrave;m ra tiếng n&oacute;i chung v&agrave; giải quyết mọi việc một c&aacute;ch &ecirc;m đềm.<br />\r\n<img alt=\"Giap Ty 1984 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 2\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Giap-Ty-1984-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-2-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Sức khoẻ:</strong>&nbsp;Vấn đề sức khỏe sẽ c&oacute; những dấu hiệu đi xuống do tuổi t&aacute;c v&agrave; l&agrave;m việc qu&aacute; sức. Bạn cần tiết chế thời gian l&agrave;m việc lại cũng như thiết lập một lối sống l&agrave;nh mạnh.<br />\r\n<img alt=\"Giap Ty 1984 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 3\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Giap-Ty-1984-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-3-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Xem sản phẩm tr&ecirc;n h&igrave;nh:</strong></p>\r\n\r\n<p><strong>Đ&aacute; phong thuỷ cho Gi&aacute;p T&yacute; 1984</strong></p>\r\n\r\n<p>Dựa tr&ecirc;n nguy&ecirc;n tắc ngũ h&agrave;nh, Thổ sinh Kim n&ecirc;n những ch&uacute; chuột ho&agrave;n to&agrave;n c&oacute; thể đeo trang sức đẹp đ&aacute; m&agrave;u đại diện thay mặt cho cả mệnh Thổ v&agrave; Kim Như: Citrine, Sapphire V&agrave;ng,&nbsp;<a href=\"https://www.pnj.com.vn/blog/top-5-tinh-hoa-trang-suc-kim-cuong-duoc-ua-chuong-nhat/?utm_source=blog&amp;utm_medium=cung-menh\">Kim Cương</a>, Ngọc Trai,&hellip; Ngo&agrave;i ra, kiếm cắt đổ c&acirc;y, Kim chế khắc Mộc n&ecirc;n bạn c&oacute; th&ecirc;m sự lựa chọn c&oacute; m&agrave;u xanh l&aacute; như Peridot, Cẩm Thạch, Emerald,&hellip;<br />\r\n<img alt=\"Giap Ty 1984 dieu gi dang cho doi ban trong 2024 Da quy nao se mang lai may man cho ban trong nam moi 4\" src=\"https://www.pnj.com.vn/blog/wp-content/uploads/2023/11/Giap-Ty-1984-dieu-gi-dang-cho-doi-ban-trong-2024-Da-quy-nao-se-mang-lai-may-man-cho-ban-trong-nam-moi-4-1024x768.jpg\" style=\"height:375px; width:500px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Lưu &yacute; rằng, lửa nung chảy sắt kẽm kim loại n&ecirc;n mệnh Kim kh&ocirc;ng n&ecirc;n đeo đ&aacute; đại diện thay mặt cho h&agrave;nh Hoả như Ruby, Amethyst, Thạch Anh Hồng,&hellip;</p>\r\n\r\n<p>C&aacute;c Gi&aacute;p T&yacute; 1984 c&oacute; thể tham khảo th&ecirc;m t&iacute;n vật phong thủy tại www.pnj.com.vn v&agrave; trải nghiệm những chương tr&igrave;nh ưu đ&atilde;i hấp dẫn nh&eacute;!</p>\r\n', 8, 1, '1733491331_anhnen4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(18, 1, '5852', 1, '2024-12-12 23:01:04', 'tien matmat', 9),
(19, 1, '9326', 1, '2024-12-12 23:02:22', 'chuyen khoankhoan', 9),
(20, 1, '4265', 1, '2024-12-12 23:05:17', 'tien matmat', 9),
(21, 1, '9555', 1, '2024-12-12 23:05:51', 'chuyen khoan', 9),
(22, 1, '8992', 1, '2024-12-14 18:53:17', 'tien mat', 9),
(23, 1, '9316', 1, '2024-12-14 18:53:25', 'tien mat', 9),
(24, 1, '5714', 1, '2024-12-14 18:53:41', 'tien mat', 9),
(25, 1, '3448', 1, '2024-12-14 18:54:56', 'tien mat', 9),
(26, 1, '8181', 1, '2024-12-14 18:55:18', 'tien mat', 9),
(27, 1, '2513', 1, '2024-12-14 19:01:18', 'tien mat', 9),
(28, 1, '9998', 1, '2024-12-14 19:43:02', 'tien mat', 9),
(29, 1, '2357', 1, '2024-12-14 19:45:44', 'tien mat', 9),
(30, 1, '3732', 1, '2024-12-14 19:46:35', 'tien mat', 9),
(31, 0, '', 1, '', 'momo', 0),
(32, 0, '', 1, '2024-12-15 09:56:43', 'momo', 0),
(33, 0, '', 1, '', 'momo', 0),
(34, 0, '', 1, '2024-12-15 09:57:00', 'momo', 0),
(35, 0, '', 1, '', 'momo', 0),
(36, 0, '8487', 1, '', 'momo', 0),
(37, 0, '2877', 1, '', 'momo', 0),
(38, 0, '998', 1, '', 'momo', 0),
(39, 0, '4958', 1, '', 'momo', 0),
(40, 0, '4021', 1, '', 'momo', 0),
(41, 0, '8849', 1, '', 'momo', 0),
(42, 0, '9713', 1, '', 'momo', 0),
(43, 0, '7877', 1, '', 'momo', 0),
(44, 0, '1991', 1, '', 'momo', 0),
(45, 0, '4093', 1, '', 'momo', 0),
(46, 0, '5476', 1, '', 'momo', 0),
(47, 0, '2495', 1, '', 'momo', 0),
(48, 0, '7097', 1, '', 'momo', 0),
(49, 0, '6820', 1, '', 'momo', 0),
(50, 0, '8802', 1, '', 'momo', 0),
(51, 0, '7815', 1, '', 'momo', 0),
(52, 0, '8926', 1, '', 'momo', 0),
(53, 0, '304', 1, '2024-12-15 10:08:32', 'momo', 0),
(54, 0, '986', 1, '2024-12-15 10:08:48', 'momo', 0),
(55, 0, '1712', 1, '2024-12-15 10:14:39', 'momo', 0),
(56, 0, '9592', 1, '2024-12-15 10:21:21', 'momo', 0),
(57, 0, '2732', 1, '2024-12-15 10:23:14', 'momo', 0),
(58, 0, '583', 1, '2024-12-15 10:23:39', 'momo', 0),
(59, 0, '5849', 1, '2024-12-15 10:30:26', 'momo', 0),
(60, 1, '734', 1, '2024-12-15 13:02:27', 'momo', 9),
(61, 1, '6702', 1, '2024-12-15 13:14:47', 'momo', 9),
(62, 1, '6922', 1, '2024-12-15 13:15:18', 'momo', 9),
(63, 1, '5136', 1, '2024-12-15 13:18:31', 'momo', 9),
(64, 1, '843', 1, '2024-12-16 12:23:29', 'tien mat', 9),
(65, 1, '1421', 1, '2024-12-16 07:29:30', 'momo', 9),
(66, 1, '9760', 1, '2024-12-16 16:53:27', 'momo', 9),
(67, 1, '3910', 1, '2024-12-16 23:01:16', 'tien mat', 9),
(68, 1, '6933', 1, '2024-12-16 23:05:36', 'tien mat', 9),
(69, 1, '4067', 1, '2024-12-16 23:08:35', 'chuyen khoan', 9),
(70, 1, '1319', 1, '2024-12-16 23:09:10', 'tien mat', 9),
(71, 1, '5772', 1, '2024-12-16 23:11:41', 'tien mat', 9),
(72, 1, '5177', 1, '2024-12-16 23:16:11', 'chuyen khoan', 9),
(73, 1, '5307', 1, '2024-12-16 23:35:08', 'chuyen khoan', 9),
(74, 1, '203', 1, '2024-12-16 23:44:57', 'tien mat', 9),
(75, 1, '840', 1, '2024-12-16 17:46:27', 'momo', 9),
(76, 1, '4097', 1, '2024-12-16 23:49:08', 'tien mat', 9),
(77, 1, '272', 0, '2024-12-16 23:51:53', 'tien mat', 9),
(78, 1, '6259', 0, '2024-12-17 00:12:28', 'tien mat', 9),
(79, 1, '1734370987', 1, '2024-12-16 18:43:07', 'momo_qr', 9),
(80, 1, '4198', 1, '2024-12-17 00:45:16', 'chuyen khoan', 9),
(81, 1, '1734372030', 1, '2024-12-16 19:00:50', 'momo_qr', 9),
(82, 1, '1734372249', 1, '2024-12-16 19:04:29', 'momo_qr', 9),
(83, 1, '1734372638', 1, '2024-12-16 19:10:54', 'momo_qr', 9),
(84, 1, '1734375065', 0, '2024-12-17 01:51:25', 'momo_qr', 9),
(85, 1, '1430', 1, '2024-12-17 01:53:27', 'chuyen khoan', 9),
(86, 1, '4755', 0, '2024-12-17 01:53:41', 'tien mat', 9),
(87, 1, '1734375233', 1, '2024-12-17 01:54:13', 'momo_qr', 9),
(88, 1, '7289', 1, '2024-12-17 02:13:45', 'tien mat', 9),
(89, 1, '529', 1, '2024-12-17 02:16:41', 'tien mat', 9),
(90, 1, '1734376790', 1, '2024-12-17 02:20:44', 'momo_qr', 9),
(91, 1, '1734376856', 1, '2024-12-17 02:21:12', 'momo_qr', 9),
(92, 1, '6709', 1, '2024-12-17 02:24:58', 'tien mat', 9),
(93, 1, '1734377317', 1, '2024-12-17 02:29:01', 'momo_qr', 9),
(94, 1, '1734416709', 0, '2024-12-17 13:25:26', 'momo_qr', 9),
(95, 1, '1734421415', 0, '2024-12-17 14:43:55', 'momo_qr', 9),
(96, 1, '8295', 1, '2024-12-19 19:20:14', 'tien mat', 9),
(97, 7, '1734614308', 1, '2024-12-19 20:19:17', 'momo_qr', 0),
(98, 1, '619', 1, '2024-12-19 23:56:16', 'tien mat', 9),
(99, 1, '4219', 0, '2024-12-20 01:19:23', 'tien mat', 9),
(100, 1, '1734632379', 0, '2024-12-20 01:19:59', 'momo_qr', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(26, '8137', 42, 1),
(27, '8137', 12, 1),
(28, '5852', 18, 1),
(29, '5852', 17, 1),
(30, '9326', 18, 1),
(31, '4265', 9, 1),
(32, '9555', 18, 1),
(33, '8992', 47, 1),
(34, '5714', 18, 1),
(35, '8181', 8, 1),
(36, '9998', 9, 1),
(37, '2357', 37, 1),
(38, '8324', 9, 1),
(39, '5557', 9, 1),
(40, '9541', 9, 1),
(41, '2785', 9, 1),
(42, '181', 9, 1),
(43, '6912', 9, 1),
(44, '204', 9, 1),
(45, '6327', 9, 1),
(46, '8007', 9, 1),
(47, '1822', 9, 1),
(48, '1232', 9, 1),
(49, '6712', 9, 1),
(50, '', 9, 1),
(51, '', 9, 1),
(52, '', 9, 1),
(53, '', 9, 1),
(54, '4021', 9, 1),
(55, '8849', 9, 1),
(56, '9713', 9, 1),
(57, '7877', 9, 1),
(58, '1991', 9, 1),
(59, '4093', 9, 1),
(60, '5476', 9, 1),
(61, '2495', 9, 1),
(62, '7097', 9, 1),
(63, '6820', 9, 1),
(64, '8802', 9, 1),
(65, '7815', 9, 1),
(66, '8926', 9, 1),
(67, '304', 9, 1),
(68, '986', 9, 1),
(69, '1712', 9, 1),
(70, '9592', 9, 1),
(71, '2732', 9, 1),
(72, '583', 9, 1),
(73, '5849', 9, 1),
(74, '734', 18, 1),
(75, '6702', 18, 1),
(76, '6922', 18, 1),
(77, '5136', 18, 1),
(78, '5136', 47, 1),
(79, '843', 43, 1),
(80, '1421', 5, 1),
(81, '9760', 28, 1),
(82, '3910', 28, 1),
(83, '6933', 28, 1),
(84, '6933', 9, 1),
(85, '4067', 28, 1),
(86, '4067', 9, 1),
(87, '1319', 28, 1),
(88, '1319', 9, 1),
(89, '5772', 28, 1),
(90, '5772', 9, 1),
(91, '5177', 28, 1),
(92, '5177', 9, 1),
(93, '5307', 10, 1),
(94, '203', 10, 1),
(95, '840', 27, 1),
(96, '4097', 27, 1),
(97, '272', 9, 1),
(98, '6259', 48, 2),
(99, '1734370987', 48, 1),
(100, '4198', 10, 1),
(101, '1734372030', 48, 1),
(102, '1734372638', 48, 1),
(103, '1734375065', 48, 1),
(104, '4755', 48, 1),
(105, '1734375233', 48, 1),
(106, '7289', 48, 1),
(107, '529', 48, 1),
(108, '1734376790', 48, 1),
(109, '1734376856', 28, 1),
(110, '6709', 18, 1),
(111, '1734377317', 25, 1),
(112, '1734416709', 48, 1),
(113, '1734421415', 48, 1),
(114, '8295', 57, 1),
(115, '1734614308', 18, 1),
(116, '619', 9, 1),
(117, '4219', 60, 1),
(118, '4219', 40, 1),
(119, '4219', 9, 1),
(120, '4219', 63, 1),
(121, '4219', 67, 1),
(122, '1734632379', 59, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(20) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Thái Phạm Minh Thái', 'thu.nga.travinh', 'Bãi Vàng, Hưng Mỹ, C', '32de60253e0864610daf32ba6e4f87d1', '0899310244'),
(2, 'Thái Phạm', 'minhthai15022003@gmail.com', 'trà vinh bãi vàng', '32de60253e0864610daf32ba6e4f87d1', '01667261478'),
(3, 'Người giàu', 'nggiau15022003', 'AN giang', '32de60253e0864610daf32ba6e4f87d1', '0899310244'),
(4, 'Chi Dân', 'Danmathuy@gmail.com', 'Sài Gòn ', '32de60253e0864610daf32ba6e4f87d1', '0888912921'),
(5, 'Thái Phạm Bãi Vàng', 'thaipham15022003@gmail.com', 'Bãi Vàng, Hưng Mỹ, C', '32de60253e0864610daf32ba6e4f87d1', '0899310244'),
(6, 'Thái Phạm', 'thu.nga.travinh', 'Bãi Vàng, Hưng Mỹ, C', '2c7c4d87be8e1d71c5480d3520a5f67a', '0899310244'),
(7, 'Thanh Phú Bi nô ', 'thu.nga.travinh', 'trà vinh bãi vàng', '32de60253e0864610daf32ba6e4f87d1', '0899310244');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(8, 'Blog', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucsanpham`
--

CREATE TABLE `tbl_danhmucsanpham` (
  `id_danhmucsanpham` int(11) NOT NULL,
  `tendanhmucsanpham` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucsanpham`
--

INSERT INTO `tbl_danhmucsanpham` (`id_danhmucsanpham`, `tendanhmucsanpham`, `thutu`) VALUES
(1, 'Nhẫn', 1),
(3, 'Bông Tai', 2),
(4, 'Lắc', 3),
(5, 'Vòng', 4),
(6, 'Dây Chuyền', 5),
(7, 'Mặt Dây Chuyền', 6),
(8, 'Charm', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hinhanh_phu`
--

CREATE TABLE `tbl_hinhanh_phu` (
  `id_hinhanh_phu` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `hinhanh_phu` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hinhanh_phu`
--

INSERT INTO `tbl_hinhanh_phu` (`id_hinhanh_phu`, `id_sanpham`, `hinhanh_phu`, `created_at`) VALUES
(1, 2, '1732540069_npnamvang.jpg', '2024-11-25 13:07:49'),
(2, 3, '1732640357_kcvangphu.jpg', '2024-11-26 16:59:17'),
(3, 4, '1732640493_phukcvang.jpg', '2024-11-26 17:01:33'),
(4, 5, '1732640601_phukcvangtrang.jpg', '2024-11-26 17:03:21'),
(5, 6, '1732640692_ngoctraiphu.jpg', '2024-11-26 17:04:52'),
(7, 8, '1732666852_nhantsatroinephu.jpg', '2024-11-27 00:20:52'),
(8, 9, '1732667009_nhanvangECZphu.jpg', '2024-11-27 00:23:29'),
(9, 10, '1732667160_nhancuoieczphu.jpg', '2024-11-27 00:26:00'),
(10, 11, '1732667372_bongtaitreemphu.jpg', '2024-11-27 00:29:32'),
(11, 12, '1732667513_bongtaivtrangphu.jpg', '2024-11-27 00:31:53'),
(13, 14, '1732667736_bongtaiTopazphu.jpg', '2024-11-27 00:35:36'),
(14, 15, '1732667802_bongtaicuoivangphu.jpg', '2024-11-27 00:36:42'),
(15, 16, '1732667994_bongtaiemojiphu.jpg', '2024-11-27 00:39:54'),
(16, 17, '1732668335_bongtaivemojiphu.jpg', '2024-11-27 00:45:35'),
(17, 18, '1732668466_bongtaivemoji3phu.jpg', '2024-11-27 00:47:46'),
(20, 21, '1732668930_lactayvangtrangeczphu.jpg', '2024-11-27 00:55:30'),
(21, 22, '1732669061_lactayvang18kphu.jpg', '2024-11-27 00:57:41'),
(23, 24, '1732669282_lactaytreem2phu.jpg', '2024-11-27 01:01:22'),
(24, 25, '1732669369_lactaytreem3phu.jpg', '2024-11-27 01:02:49'),
(26, 27, '1732669658_lactaytreem5phu.jpg', '2024-11-27 01:07:38'),
(27, 28, '1732669728_lactaytreem6phu.jpg', '2024-11-27 01:08:48'),
(29, 30, '1732670009_vongtaycuoivang1phu.jpg', '2024-11-27 01:13:29'),
(30, 31, '1732670100_vongtayvang2phu.jpg', '2024-11-27 01:15:00'),
(31, 32, '1732670176_vongtayvang3phu.jpg', '2024-11-27 01:16:16'),
(32, 33, '1732670225_vongtayvang4phu.jpg', '2024-11-27 01:17:05'),
(33, 34, '1732670280_vongtayvang5phu.jpg', '2024-11-27 01:18:00'),
(36, 37, '1732670470_vongtayvang8phu.jpg', '2024-11-27 01:21:10'),
(39, 40, '1733966389_vong8phu.jpg', '2024-12-12 01:19:49'),
(41, 42, '1733966659_lactayvangtrangeczphu.jpg', '2024-12-12 01:24:19'),
(42, 43, '1733966822_lac11phu.jpg', '2024-12-12 01:27:02'),
(45, 47, '1733967203_bongtai9phu.jpg', '2024-12-12 01:33:23'),
(47, 51, '1734456040_dc2p.jpg', '2024-12-17 17:20:40'),
(48, 52, '1734456250_dc1phu.jpg', '2024-12-17 17:24:10'),
(49, 53, '1734456340_dc3p.jpg', '2024-12-17 17:25:40'),
(50, 54, '1734456851_dcp4.jpg', '2024-12-17 17:34:11'),
(51, 55, '1734456978_dc5p.jpg', '2024-12-17 17:36:18'),
(52, 56, '1734457236_dc6p.jpg', '2024-12-17 17:40:36'),
(53, 57, '1734457378_dc7p.jpg', '2024-12-17 17:42:58'),
(54, 58, '1734457551_dc8p.jpg', '2024-12-17 17:45:51'),
(55, 59, '1734628883_mdcp.jpg', '2024-12-19 17:21:23'),
(56, 60, '1734629011_mdc2p.jpg', '2024-12-19 17:23:31'),
(57, 61, '1734629272_mdc3p.jpg', '2024-12-19 17:27:52'),
(58, 62, '1734629563_mdc4p.jpg', '2024-12-19 17:32:43'),
(59, 63, '1734629651_mdc5p.jpg', '2024-12-19 17:34:11'),
(60, 64, '1734629793_mdc6p.jpg', '2024-12-19 17:36:33'),
(61, 65, '1734629874_mdc7p.jpg', '2024-12-19 17:37:54'),
(62, 66, '1734629954_mdc8p.jpg', '2024-12-19 17:39:14'),
(63, 67, '1734630030_mdc9p.jpg', '2024-12-19 17:40:30'),
(65, 69, '1734701757_c1p.jpg', '2024-12-20 13:35:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(1, 'MOMOBKUN20180529', 0, '20000', '', '', 2147483647, '', '8324'),
(2, 'MOMOBKUN20180529', 0, '20000', '', '', 2147483647, '', '5557'),
(3, 'MOMOBKUN20180529', 0, '20000', '', '', 2147483647, '', '9541'),
(4, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '2785'),
(5, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '181'),
(6, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '6912'),
(7, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '204'),
(8, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '6327'),
(9, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '8007'),
(10, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '1822'),
(11, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '1232'),
(12, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '6712'),
(13, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', ''),
(14, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', ''),
(15, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '998'),
(16, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '4958'),
(17, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '4021'),
(18, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '8849'),
(19, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '9713'),
(20, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '7877'),
(21, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '1991'),
(22, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '4093'),
(23, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '5476'),
(24, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '2495'),
(25, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '7097'),
(26, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '6820'),
(27, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '8802'),
(28, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '7815'),
(29, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '8926'),
(30, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '304'),
(31, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '986'),
(32, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '1712'),
(33, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '9592'),
(34, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '2732'),
(35, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '583'),
(36, 'MOMOBKUN20180529', 1734251565, '20000', 'Thanh toán MoMo ATM', 'momo_wallet', 2147483647, '', '5849'),
(37, 'MOMOBKUN20180529', 1734263533, '1291000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, '', '734'),
(38, 'MOMOBKUN20180529', 1734263533, '1291000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, '', '6702'),
(39, 'MOMOBKUN20180529', 1734264902, '1291000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, 'aio_qr', '6922'),
(40, 'MOMOBKUN20180529', 1734265036, '4873000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, 'aio_qr', '5136'),
(41, 'MOMOBKUN20180529', 1734330436, '8050000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, 'aio_qr', '1421'),
(42, 'MOMOBKUN20180529', 1734364387, '850000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, 'aio_qr', '9760'),
(43, 'MOMOBKUN20180529', 1734367550, '850000', 'Thanh toán qua mã QR MoMo', 'momo_wallet', 2147483647, 'aio_qr', '840');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masanpham` varchar(100) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(2, 'Nhẫn cưới nam Kim cương Vàng 18K', 'DD00Y003449', '10468000', 10, '1732540069_ncnamvang.jpg', 'Trọng lượng tham khảo : 8.18675\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Kim cương\r\nSố viên đá chính : 1\r\nGiới tính : Nam', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(3, 'Nhẫn cưới Kim cương Vàng 18K', 'GNDD00Y003450', '9573000', 10, '1732640357_kcvang18k.jpg', 'Trọng lượng tham khảo : 6.70807\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Kim cương\r\nSố viên đá chính : 5\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(4, 'Nhẫn cưới nam Kim cương Vàng 18K', 'GNDD00Y003451', '9640000', 10, '1732640493_kcvangnam.jpg', 'Trọng lượng tham khảo : 8.94024\r\nHàm lượng chất liệu : 7500\r\nSố viên đá chính : 1\r\nGiới tính : Nam', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(5, 'Nhẫn cưới Kim cương Vàng trắng 14K', 'GNDD00W005654', '8050000', 10, '1732640601_kcvangtrang.jpg', 'Trọng lượng tham khảo : 6.12335\r\nHàm lượng chất liệu : 5850\r\nLoại đá chính : Kim cương\r\nSố viên đá chính : 5\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(6, 'Nhẫn Vàng trắng 10K đính Ngọc trai Akoya', 'GNPAXMW000174', '4255000', 10, '1732640692_ngoctrai.jpg', 'Trọng lượng tham khảo : 3.47755\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Akoya Pearl\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 1\r\nGiới tính : Nữ\r\nSố viên đá phụ : 14\r\nLoại ngọc trai : Akoya', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(8, 'Nhẫn Vàng 18K đính đá Tsavorite', 'GNSV00Y000003', '30200000', 15, '1732666852_nhantsatroine.jpg', 'Trọng lượng tham khảo : 7.128\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Tsavorite\r\nLoại đá phụ : Không gắn đá\r\nSố viên đá chính : 1\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(9, 'Nhẫn Vàng 18K đính đá ECZ ', 'GNXMXMY011535', '7727000', 15, '1732667009_nhanvangECZ.jpg', 'Trọng lượng tham khảo : 7.66924\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 1\r\nGiới tính : Nữ\r\nSố viên đá phụ : 10', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(10, 'Nhẫn cưới Vàng 18K đính đá ECZ', 'GNXMXMY011534', '7080000', 15, '1732667160_nhancuoiecz.jpg', 'Trọng lượng tham khảo : 7.1598\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 1\r\nGiới tính : Nữ\r\nSố viên đá phụ : 4', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 1),
(11, 'Bông tai trẻ em Vàng 10K ', 'GB0000Y003068', '3405000', 15, '1732667372_bongtaitreem.jpg', 'Trọng lượng tham khảo : 5.79166\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Trẻ em', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 3),
(12, 'Bông tai Vàng trắng 10K đính ngọc trai Akoya', 'GBPAXMW000215', '6604000', 10, '1732667513_bongtaivtrang.jpg', 'Trọng lượng tham khảo : 3.68446\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Akoya Pearl\r\nLoại đá phụ : Xoàn mỹ\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 3),
(14, 'Bông tai Vàng trắng 14K đính đá Topaz', ' GBTPXMW000266', '7648000', 20, '1732667736_bongtaiTopaz.jpg', 'Trọng lượng tham khảo : 5.3266\r\nLoại đá chính : Topaz\r\nKích thước đá chính (tham khảo) : 5.7\r\nKích thước đá (tham khảo) : 5.7 ly\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 2\r\nGiới tính : Nữ\r\nSố viên đ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 3),
(15, 'Bông tai cưới Vàng 24K ', 'GB0000Y003038', '20669000', 20, '1732667802_bongtaicuoivang.jpg', 'Trọng lượng tham khảo : 21.84779\r\nHàm lượng chất liệu : 9990\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 3),
(16, 'Bông tai Vàng 10K PNJ x Emoji', 'GB0000Y003219', '2113000', 20, '1732667994_bongtaiemoji.jpg', 'Trọng lượng tham khảo : 3.3\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', '', 1, 3),
(17, 'Bông tai Vàng 10K PNJ x Emoji', 'GB0000Y003217', '2158000', 20, '1732668335_bongtaivemoji.jpg', 'Trọng lượng tham khảo : 3.33468\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', '', 1, 3),
(18, 'Bông tai Vàng 10K PNJ x Emoji', 'GB0000Y003215', '1291000', 20, '1732668466_bongtaivemoji3.jpg', 'Trọng lượng tham khảo : 2.01996\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', '', 1, 3),
(21, 'Lắc tay Vàng trắng 10K đính đá ECZ', 'GLXMXMW060490', '57390000', 10, '1732668930_lactayvangtrangecz.jpg', 'Trọng lượng tham khảo : 57.56018\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Xoàn mỹ\r\nKích thước đá chính (tham khảo) : 2.0\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 330\r\nGiới tính : Nữ\r\nSố viên đ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 4),
(22, 'Lắc tay Vàng 18K', 'GL0000Y003352', '15907000', 10, '1732669061_lactayvang18k.jpg', 'Trọng lượng tham khảo : 16.69379\r\nHàm lượng chất liệu : 7500\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 4),
(24, 'Lắc tay trẻ em Bạc đính đá PNJSilver', ' SLXMXMW060195', '850000', 10, '1732669282_lactaytreem2.jpg', 'Trọng lượng tham khảo : 10.021\r\nHàm lượng chất liệu : 9250\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nGiới tính : Trẻ em', 'Miễn phí bảo hành 3 tháng đầu về mặt kỹ thuật, nước xi.\r\nMiễn phí thay đá tổng hợp trong vòng 12 tháng.\r\nĐối với khách hàng thẻ VIP miễn phí đánh bóng và xi mới trong vòng 12 tháng, áp dụng tất cả sản phẩm mà khách hàng đã mua và có tích lũy trên thẻ.\r\nĐối với dòng sản phẩm charm DIY chỉ nhận bảo hành sản phẩm trong các trường hợp:\r\nSản phẩm là mẫu bạc hoàn toàn (không gắn đá, nhựa, thủy tinh).\r\nMẫu bạc có phủ colorit.', 1, 4),
(25, 'Lắc tay trẻ em Bạc đính đá PNJSilver', ' SLXMXMW060194', '850000', 20, '1732669369_lactaytreem3.jpg', 'Trọng lượng tham khảo : 8.783\r\nHàm lượng chất liệu : 9250\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nGiới tính : Trẻ em', 'Miễn phí bảo hành 3 tháng đầu về mặt kỹ thuật, nước xi.\r\nMiễn phí thay đá tổng hợp trong vòng 12 tháng.\r\nĐối với khách hàng thẻ VIP miễn phí đánh bóng và xi mới trong vòng 12 tháng, áp dụng tất cả sản phẩm mà khách hàng đã mua và có tích lũy trên thẻ.\r\nĐối với dòng sản phẩm charm DIY chỉ nhận bảo hành sản phẩm trong các trường hợp:\r\nSản phẩm là mẫu bạc hoàn toàn (không gắn đá, nhựa, thủy tinh).\r\nMẫu bạc có phủ colorit.', 1, 4),
(27, 'Lắc tay trẻ em Bạc đính đá PNJSilver', 'SLXMXMW060192', '850000', 19, '1732669658_lactaytreem5.jpg', 'Trọng lượng tham khảo : 11.003\r\nHàm lượng chất liệu : 9250\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nGiới tính : Nữ', 'Miễn phí bảo hành 3 tháng đầu về mặt kỹ thuật, nước xi.\r\nMiễn phí thay đá tổng hợp trong vòng 12 tháng.\r\nĐối với khách hàng thẻ VIP miễn phí đánh bóng và xi mới trong vòng 12 tháng, áp dụng tất cả sản phẩm mà khách hàng đã mua và có tích lũy trên thẻ.\r\nĐối với dòng sản phẩm charm DIY chỉ nhận bảo hành sản phẩm trong các trường hợp:\r\nSản phẩm là mẫu bạc hoàn toàn (không gắn đá, nhựa, thủy tinh).\r\nMẫu bạc có phủ colorit.', 1, 4),
(28, 'Lắc tay trẻ em Bạc đính đá PNJSilver', ' SLXMXMW060191', '850000', 18, '1732669728_lactaytreem6.jpg', 'Trọng lượng tham khảo : 11.089\r\nHàm lượng chất liệu : 9250\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nGiới tính : Nữ', 'Miễn phí bảo hành 3 tháng đầu về mặt kỹ thuật, nước xi.\r\nMiễn phí thay đá tổng hợp trong vòng 12 tháng.\r\nĐối với khách hàng thẻ VIP miễn phí đánh bóng và xi mới trong vòng 12 tháng, áp dụng tất cả sản phẩm mà khách hàng đã mua và có tích lũy trên thẻ.\r\nĐối với dòng sản phẩm charm DIY chỉ nhận bảo hành sản phẩm trong các trường hợp:\r\nSản phẩm là mẫu bạc hoàn toàn (không gắn đá, nhựa, thủy tinh).\r\nMẫu bạc có phủ colorit.', 1, 4),
(30, 'Vòng tay cưới Vàng trắng 10K đính đá ECZ', 'GVXMXMW001270', '25725000', 15, '1732670009_vongtaycuoivang1.jpg', 'Trọng lượng tham khảo : 33.61607\r\nHàm lượng chất liệu : 4160\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 1\r\nGiới tính : Nữ\r\nSố viên đá phụ : 90', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 5),
(31, 'Vòng tay Vàng trắng Ý 18K đính đá ECZ', 'GVXMXMW001302', '23123000', 15, '1732670100_vongtayvang2.jpg', 'Trọng lượng tham khảo : 22.81942\r\nLoại đá chính : Xoàn mỹ\r\nLoại đá phụ : Xoàn mỹ\r\nSố viên đá chính : 16\r\nGiới tính : Nữ\r\nSố viên đá phụ : 28', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.\r\nKhông áp dụng bảo hành cho các trường hợp sau:\r\n\r\nDây chuyền, lắc chế tác bị đứt gãy.\r\nSản phẩm bị lỗi do tác động bên ngoài, do quá trình sử dụng hoặc sử dụng không đúng cách dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.\r\nKhông bảo hành kiềng, vòng, nữ trang 22K, 24K, dây chuyền, dây cổ chế tác, lắc chế tác bị đứt, gãy và sản phẩm bị lỗi do tác động bên ngoài.\r\nKhách hàng cung cấp thông tin truy lục hóa đơn không chính xác.', 1, 5),
(32, 'Vòng tay Vàng trắng Ý 18K', 'GV0000W000931', '18796000', 14, '1732670176_vongtayvang3.jpg', 'Trọng lượng tham khảo : 18.84217\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 5),
(33, 'Vòng tay Vàng trắng Ý 18K ', 'GV0000W000917', '15778000', 14, '1732670225_vongtayvang4.jpg', 'Trọng lượng tham khảo : 16.43507\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Không gắn đá\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 5),
(34, 'Vỏ Vòng tay Kim cương Vàng Trắng 18K', 'GV00DDW060337', '67500000', 15, '1732670280_vongtayvang5.jpg', 'Trọng lượng tham khảo : 30.767\r\nHàm lượng chất liệu : 7500\r\nỔ hột : 4.7\r\nLoại đá chính : Không gắn đá\r\nLoại đá phụ : Kim cương\r\nGiới tính : Nữ', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 5),
(37, 'Vòng tay Vàng trắng 10K đính Ngọc trai Akoya', ' GVPAXMW000052', '18853000', 11, '1732670470_vongtayvang8.jpg', 'Trọng lượng tham khảo : 21.01722\r\nLoại đá chính : Akoya Pearl\r\nKích thước đá chính (tham khảo) : 8.0\r\nLoại đá phụ : Xoàn Mỹ\r\nSố viên đá chính : 1\r\nGiới tính : Nữ\r\nSố viên đá phụ : 64\r\nLoại ngọc trai : A', 'Miễn phí bảo hành 6 tháng\r\n\r\nBảo hành 6 tháng lỗi kỹ thuật, nước xi.\r\nMiễn phí siêu âm và đánh bóng bằng máy chuyên dụng trọn đời\r\n\r\nĐối với sản phẩm bị oxy hóa, xuống màu, sẽ được siêu âm làm sạch bằng máy chuyên dụng (siêu âm, không xi) miễn phí trọn đời tại cửa hàng.\r\nMiễn phí đánh bóng, siêu âm trọn đời.\r\nĐối với nhẫn cưới được làm mới, đánh bóng, xi miễn phí trọn đời.\r\nMiễn phí thay đá ECZ, CZ và đá tổng hợp\r\n\r\nMiễn phí thay đá tổng hợp, ECZ và CZ trong suốt thời gian bảo hành.', 1, 5),
(40, 'Vòng tay cưới Vàng 24K PNJ Trầu Cau', 'GV0000Y001515', '43550000', 10, '1733966389_vong8.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;45.02447</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Giới t&iacute;nh&nbsp;:&nbsp;Nữ', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời</p>\r\n\r\n<ul>\r\n	<li>Đối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.</li>\r\n	<li>Miễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.</li>\r\n	<li>Đối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp</p>\r\n\r\n<ul>\r\n	<li>Miễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.</li>\r\n</ul>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:</p>\r\n\r\n<ul>\r\n	<li>D&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.</li>\r\n	<li>Sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.</li>\r\n	<li>Kh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n', 1, 5),
(42, 'Lắc tay Vàng trắng 10K đính đá ECZ PNJ', 'GLXMXMW060490', '57390000', 10, '1733966659_lac9.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;57.56018</p>\r\n\r\n<p>H&agrave;m lượng chất liệu&nbsp;:&nbsp;4160</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Xo&agrave;n mỹ</p>\r\n\r\n<p>K&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nb', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời</p>\r\n\r\n<ul>\r\n	<li>Đối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.</li>\r\n	<li>Miễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.</li>\r\n	<li>Đối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp</p>\r\n\r\n<ul>\r\n	<li>Miễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.</li>\r\n</ul>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:</p>\r\n\r\n<ul>\r\n	<li>D&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.</li>\r\n	<li>Sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.</li>\r\n	<li>Kh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n', 1, 4),
(43, 'Lắc tay nam Kim cương Vàng Trắng 18K MANCODE by PNJ Vương Xà Trấn Bảo', 'GLDD00W000566', '136373000', 5, '1733966822_lac11.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;80.287</p>\r\n\r\n<p>H&agrave;m lượng chất liệu&nbsp;:&nbsp;7500</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kim cương</p>\r\n\r\n<p>K&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nb', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng</p>\r\n\r\n<p>Bảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.</p>\r\n\r\n<p>Miễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời</p>\r\n\r\n<p>Đối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.</p>\r\n\r\n<p>Miễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.</p>\r\n\r\n<p>Đối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.</p>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp</p>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.</p>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:</p>\r\n\r\n<p>D&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.</p>\r\n\r\n<p>Sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.</p>\r\n\r\n<p>Kh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 4),
(47, 'Bông tai Vàng trắng 10K PNJ Kim Bảo Như Ý', 'GB0000W002738', '3582000', 10, '1733967203_bongtai9.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;6.18032</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Giới t&iacute;nh&nbsp;:&nbsp;Nữ<', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời</p>\r\n\r\n<ul>\r\n	<li>Đối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.</li>\r\n	<li>Miễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.</li>\r\n	<li>Đối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp</p>\r\n\r\n<ul>\r\n	<li>Miễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.</li>\r\n</ul>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:</p>\r\n\r\n<ul>\r\n	<li>D&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.</li>\r\n	<li>Sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.</li>\r\n	<li>Kh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n', 1, 3),
(51, 'Dây chuyền Vàng trắng Ý 18K', 'GD0000W001279', '23835000', 10, '1734456040_dc2.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;24.84662<br />\r\nH&agrave;m lượng chất liệu&nbsp;:&nbsp;7500<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&a', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.<br />\r\n&nbsp;</p>\r\n', 1, 6),
(52, 'Dây chuyền Vàng 24K ', 'GD0000Y012248', '6949000', 10, '1734456250_dc1.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;7.45431<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nGiới t&iacute;nh&nbsp;:&nbsp;Nữ</p>\r\n', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 6),
(53, 'Dây chuyền Vàng Trắng Ý 18K', 'GD0000W061315', '18360000', 1, '1734456340_dc3.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;18.67717<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nThương hiệu&nbsp;:&nbsp;PNJ</p>\r\n', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 6),
(54, 'Dây chuyền Vàng trắng Ý 18K ', 'GD0000W001276', '72302000', 5, '1734456851_dc4.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;75.31414</p>\r\n\r\n<p>Giới t&iacute;nh&nbsp;:&nbsp;Nữ</p>\r\n', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 6),
(55, 'Dây chuyền Vàng 24K', 'GD0000Y012247', '1000000', 20, '1734456978_dc5.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;10.59132</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Giới t&iacute;nh&nbsp;:&nbsp;Nữ', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 6),
(56, 'Dây chuyền nam Bạc PNJSilver ', 'SD0000W060105', '2595000', 20, '1734457236_dc6.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;52.826</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Giới t&iacute;nh&nbsp;:&nbsp;Nam</p', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 6),
(57, 'Dây chuyền Vàng trắng Ý 18K', 'GD0000W001277', '40544000', 10, '1734457378_dc7.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;42.23264</p>\r\n\r\n<p>H&agrave;m lượng chất liệu&nbsp;:&nbsp;7500</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng g', '', 1, 6),
(58, 'Dây chuyền Bạch Kim', 'PD0000W060016', '5990000', 20, '1734457551_dc8.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;10.55093</p>\r\n\r\n<p>H&agrave;m lượng chất liệu&nbsp;:&nbsp;9500</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng g', '', 1, 6),
(59, 'Mặt dây chuyền Vàng trắng 10K đính Ngọc trai', 'GMPFXMW000333', '2348000', 20, '1734628883_mcd1.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;1.30276<br />\r\nH&agrave;m lượng chất liệu&nbsp;:&nbsp;4160<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Freshwater Pearl<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Xoàn mỹ<br />\r\nSố vi&ecirc;n ', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(60, 'Mặt dây chuyền nam Vàng trắng 10K đính đá', 'GMXMXMW003117', '9721000', 15, '1734629011_mdc2.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;15.16968<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;2.5<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Xoàn mỹ<br />\r\nSố vi&ecirc;n đ&aacute; ch&iacute;nh&nbsp;:&nbsp;3<br /', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(61, 'Mặt dây chuyền nam Vàng trắng 14K Đính đá CZ', 'GMXM00W000886', '8075000', 10, '1734629272_mdc3.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;8.55545<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;1.7<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nSố vi&ecirc;n đ&aacute; ch&iacute;nh&nb', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(62, 'Mặt dây chuyền nam Vàng trắng 10K đính đá ECZ', 'GMXM00W000880', '16527000', 10, '1734629563_mdc4.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;21.867<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;2.0<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nSố vi&ecirc;n đ&aacute; ch&iacute;nh&nbs', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(63, 'Mặt dây chuyền Kim cương Vàng trắng 14K ', 'GMDD00W060081', '4580000', 15, '1734629651_mdc5.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;1.03889<br />\r\nH&agrave;m lượng chất liệu&nbsp;:&nbsp;5850<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;1.0<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7);
INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(64, 'Mặt dây chuyền Vàng trắng 10K Đính ngọc trai Akoya', 'GMPAXMW000119', '3191000', 20, '1734629793_mdc6.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;0.93667<br />\r\nH&agrave;m lượng chất liệu&nbsp;:&nbsp;4160<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Akoya Pearl<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;7.0<b', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(65, 'Mặt dây chuyền nam Vàng trắng 10K ', 'GMXM00W000869', '12946000', 15, '1734629874_mdc7.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;19.43588<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;1.7 x 50<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nSố vi&ecirc;n đ&aacute; ch&iacute', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(66, 'Mặt dây chuyền nam Kim cương Vàng trắng 14K', 'GMDD00W000680', '43290000', 10, '1734629954_mdc8.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;16.66944<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kim cương<br />\r\nK&iacute;ch thước đ&aacute; ch&iacute;nh (tham khảo)&nbsp;:&nbsp;2.0<br />\r\nSố vi&ecirc;n đ&aacute; ch&iacute;nh&nbsp;:&nbsp', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(67, 'Mặt dây chuyền nam Vàng 24K', 'GM0000Y001685', '35303000', 10, '1734630030_mdc9.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;38.22937<br />\r\nLoại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nLoại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;<br />\r\nGiới t&iacute;nh&nbsp;:&nbsp;Nam</p>\r\n', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng<br />\r\nBảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.<br />\r\nMiễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời<br />\r\nĐối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.<br />\r\nMiễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.<br />\r\nĐối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.<br />\r\nMiễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp<br />\r\nMiễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.<br />\r\nKh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:<br />\r\nD&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.<br />\r\nSản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.<br />\r\nKh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.<br />\r\nKh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n', 1, 7),
(69, 'Hạt Charm Vàng 10K PNJ Kim Bảo Như Ý', 'GI0000Y000558', '2833000', 15, '1734701757_c1.jpg', '<p>Trọng lượng tham khảo&nbsp;:&nbsp;4.62097</p>\r\n\r\n<p>H&agrave;m lượng chất liệu&nbsp;:&nbsp;4160</p>\r\n\r\n<p>Loại đ&aacute; ch&iacute;nh&nbsp;:&nbsp;Kh&ocirc;ng gắn đ&aacute;</p>\r\n\r\n<p>Loại đ&aacute; phụ&nbsp;:&nbsp;Kh&ocirc;ng g', '<p>Miễn ph&iacute; bảo h&agrave;nh 6 th&aacute;ng</p>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh 6 th&aacute;ng lỗi kỹ thuật, nước xi.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; si&ecirc;u &acirc;m v&agrave; đ&aacute;nh b&oacute;ng bằng m&aacute;y chuy&ecirc;n dụng trọn đời</p>\r\n\r\n<ul>\r\n	<li>Đối với sản phẩm bị oxy h&oacute;a, xuống m&agrave;u, sẽ được si&ecirc;u &acirc;m l&agrave;m sạch bằng m&aacute;y chuy&ecirc;n dụng (si&ecirc;u &acirc;m, kh&ocirc;ng xi) miễn ph&iacute; trọn đời tại cửa h&agrave;ng.</li>\r\n	<li>Miễn ph&iacute; đ&aacute;nh b&oacute;ng, si&ecirc;u &acirc;m trọn đời.</li>\r\n	<li>Đối với nhẫn cưới được l&agrave;m mới, đ&aacute;nh b&oacute;ng, xi miễn ph&iacute; trọn đời.</li>\r\n</ul>\r\n\r\n<p>Miễn ph&iacute; thay đ&aacute; ECZ, CZ v&agrave; đ&aacute; tổng hợp</p>\r\n\r\n<ul>\r\n	<li>Miễn ph&iacute; thay đ&aacute; tổng hợp, ECZ v&agrave; CZ trong suốt thời gian bảo h&agrave;nh.</li>\r\n</ul>\r\n\r\n<p>Kh&ocirc;ng &aacute;p dụng bảo h&agrave;nh cho c&aacute;c trường hợp sau:</p>\r\n\r\n<ul>\r\n	<li>D&acirc;y chuyền, lắc chế t&aacute;c bị đứt g&atilde;y.</li>\r\n	<li>Sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i, do qu&aacute; tr&igrave;nh sử dụng hoặc sử dụng kh&ocirc;ng đ&uacute;ng c&aacute;ch dẫn đến sản phẩm bị biến dạng hoặc hư hỏng.</li>\r\n	<li>Kh&ocirc;ng bảo h&agrave;nh kiềng, v&ograve;ng, nữ trang 22K, 24K, d&acirc;y chuyền, d&acirc;y cổ chế t&aacute;c, lắc chế t&aacute;c bị đứt, g&atilde;y v&agrave; sản phẩm bị lỗi do t&aacute;c động b&ecirc;n ngo&agrave;i.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp th&ocirc;ng tin truy lục h&oacute;a đơn kh&ocirc;ng ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2024-11-29', 2, '15200000', 16),
(2, '2024-11-28', 4, '16000000', 18),
(3, '2024-11-27', 5, '18000000', 20),
(5, '2024-12-1', 1, '155000', 10),
(6, '2024-11-30', 9, '249742000', 6),
(7, '2024-12-17', 6, '7787000', 7),
(8, '2024-12-20', 2, '103229000', 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_amin`
--
ALTER TABLE `tbl_amin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_danhmucsanpham`
--
ALTER TABLE `tbl_danhmucsanpham`
  ADD PRIMARY KEY (`id_danhmucsanpham`);

--
-- Chỉ mục cho bảng `tbl_hinhanh_phu`
--
ALTER TABLE `tbl_hinhanh_phu`
  ADD PRIMARY KEY (`id_hinhanh_phu`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_amin`
--
ALTER TABLE `tbl_amin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucsanpham`
--
ALTER TABLE `tbl_danhmucsanpham`
  MODIFY `id_danhmucsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_hinhanh_phu`
--
ALTER TABLE `tbl_hinhanh_phu`
  MODIFY `id_hinhanh_phu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_hinhanh_phu`
--
ALTER TABLE `tbl_hinhanh_phu`
  ADD CONSTRAINT `tbl_hinhanh_phu_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_sanpham` (`id_sanpham`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
