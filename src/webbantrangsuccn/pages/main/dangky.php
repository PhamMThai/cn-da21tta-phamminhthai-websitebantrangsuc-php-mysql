<?php
if (isset($_POST['dangky'])) {
    $tenkhachhang = $_POST['hovaten'];
    $email = $_POST['email'];
    $dienthoai = $_POST['dienthoai'];
    $matkhau = md5($_POST['matkhau']);
    $diachi = $_POST['diachi'];
    $sql_dangky = mysqli_query($mysqli, "INSERT INTO tbl_dangky(tenkhachhang, email, diachi, matkhau, dienthoai) VALUES ('$tenkhachhang', '$email', '$diachi', '$matkhau', '$dienthoai')");
    if ($sql_dangky) {
        echo '<p style="color:green">Bạn đã đăng ký thành công</p>';
        $_SESSION['dangky'] = $tenkhachhang;
        $_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
        header('Location:index.php?quanly=giohang');
    }
}
?>
<h3>Đăng ký thành viên</h3>

<style type="text/css">
    /* CSS Cải Tiến */
    table.dangky {
        width: 100%; /* Chiếm toàn bộ chiều rộng */
        max-width: 500px; /* Giới hạn chiều rộng tối đa */
        margin: 20px auto; /* Căn giữa form */
        border-collapse: collapse; /* Gộp đường viền */
        background-color: #f9f9f9; /* Nền nhạt */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Bóng mờ nhẹ */
        border-radius: 8px; /* Bo góc */
        overflow: hidden; /* Loại bỏ tràn */
    }

    table.dangky td {
        padding: 15px; /* Khoảng cách bên trong ô */
        text-align: left; /* Căn trái văn bản */
        font-size: 16px; /* Kích thước chữ */
        font-family: Arial, sans-serif; /* Font chữ hiện đại */
        color: #333; /* Màu chữ đậm */
    }

    table.dangky h3 {
        text-align: center; /* Căn giữa tiêu đề */
        font-size: 24px; /* Kích thước chữ lớn */
        margin: 20px 0; /* Khoảng cách trên dưới */
        color: #008080; /* Màu sắc tiêu đề */
    }

    table.dangky input[type="text"],
    table.dangky input[type="password"] {
        width: 100%; /* Chiếm toàn bộ chiều ngang */
        padding: 10px; /* Khoảng cách bên trong */
        font-size: 14px; /* Kích thước chữ */
        border: 1px solid #ccc; /* Đường viền */
        border-radius: 5px; /* Bo góc */
        box-sizing: border-box; /* Bao gồm padding và border */
        outline: none; /* Xóa viền mặc định khi focus */
        transition: border-color 0.3s ease; /* Hiệu ứng khi focus */
    }

    table.dangky input[type="text"]:focus,
    table.dangky input[type="password"]:focus {
        border-color: #008080; /* Đổi màu viền */
        box-shadow: 0 0 5px rgba(0, 128, 128, 0.5); /* Bóng mờ */
    }

    table.dangky input[type="submit"] {
        width: 100%; /* Chiếm toàn bộ chiều ngang */
        padding: 12px; /* Khoảng cách bên trong */
        background-color: #008080; /* Màu nền nút */
        color: #fff; /* Màu chữ */
        font-size: 16px; /* Kích thước chữ */
        font-weight: bold; /* Chữ đậm */
        border: none; /* Không viền */
        border-radius: 5px; /* Bo góc */
        cursor: pointer; /* Thay đổi con trỏ khi hover */
        transition: background-color 0.3s ease; /* Hiệu ứng màu */
    }

    table.dangky input[type="submit"]:hover {
        background-color: #005f5f; /* Màu tối hơn khi hover */
    }

    table.dangky tr td:first-child {
        font-weight: bold; /* Chữ đậm cho tiêu đề ô bên trái */
        color: #555; /* Màu chữ tối hơn */
    }

    table.dangky tr {
        border-bottom: 1px solid #ddd; /* Đường kẻ nhạt */
    }

    table.dangky tr:last-child {
        border-bottom: none; /* Không có kẻ cuối */
    }

    table.dangky a {
        color: #008080;
        text-decoration: none;
        font-weight: bold;
    }

    table.dangky a:hover {
        text-decoration: underline;
        color: #005f5f;
    }
</style>

<form action="" method="POST">
    <table class="dangky">
        <tr>
            <td>Họ và Tên</td>
            <td><input type="text" name="hovaten" placeholder="Nhập họ và tên"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" placeholder="Nhập email"></td>
        </tr>
        <tr>
            <td>Điện thoại</td>
            <td><input type="text" name="dienthoai" placeholder="Nhập số điện thoại"></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><input type="text" name="diachi" placeholder="Nhập địa chỉ"></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" name="matkhau" placeholder="Nhập mật khẩu"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="dangky" value="Đăng ký">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <a href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a>
            </td>
        </tr>
    </table>
</form>
