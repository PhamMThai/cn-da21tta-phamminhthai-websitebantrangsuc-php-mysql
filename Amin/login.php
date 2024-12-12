<?php
session_start();
include('config/config.php');
if(isset($_POST['dangnhap'])){
    $taikhoan = $_POST['username'];
    $matkhau = md5($_POST['password']);
    $sql = "SELECT * FROM tbl_amin WHERE username='".$taikhoan."' AND password='".$matkhau."' LIMIT 1";
    $row = mysqli_query($mysqli,$sql); // kết nối với cơ sở dữ liệu
    $count = mysqli_num_rows($row);
    if($count > 0){
        $_SESSION['dangnhap'] = $taikhoan;
        header("Location:index.php");
    } else {
        echo '<script>alert("Sai Tài khoản hoặc Mật khẩu, vui lòng nhập lại!");</script>';
        header("Location:login.php");
    }
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <style type="text/css">
        /* Reset các kiểu mặc định của trình duyệt */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: url('../images/giaodien.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .login-container {
            background: rgba(0, 0, 0, 0.6); /* Màu nền đen trong suốt */
            padding: 40px 30px;
            width: 350px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        h2 {
            font-size: 26px;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            font-size: 14px;
            color: #ddd;
            margin-bottom: 8px;
            display: block;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            color: #333;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        .btn-login {
            padding: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .btn-login:active {
            background-color: #004085;
        }

        .forgot-password {
            margin-top: 10px;
            font-size: 14px;
            color: #007bff;
            text-decoration: none;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        /* Tạo hiệu ứng bóng đổ nhẹ cho các phần tử */
        .input-group, .btn-login {
            transition: all 0.3s ease;
        }

        .input-group:hover, .btn-login:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <div class="login-container">
        <h2>Đăng Nhập </h2>
        <form action="" method="POST" autocomplete="off">
            <div class="input-group">
                <label for="username">Tài Khoản</label>
                <input type="text" id="username" name="username" placeholder="Nhập tài khoản" required>
            </div>
            <div class="input-group">
                <label for="password">Mật Khẩu</label>
                <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
            </div>
            <button type="submit" name="dangnhap" class="btn-login">Đăng Nhập</button>
            
        </form>
    </div>
</body>
</html>
