<?php
// Kết nối đến cơ sở dữ liệu
$servername = "localhost"; // Tên máy chủ (thường là localhost)
$username = "root";        // Tên người dùng (thường là root)
$password = "";            // Mật khẩu (mặc định trống)
$dbname = "web_bantrangsuc"; // Tên cơ sở dữ liệu

// Tạo kết nối
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if (!$conn) {
    die("Kết nối cơ sở dữ liệu thất bại: " . mysqli_connect_error());
}
?>
