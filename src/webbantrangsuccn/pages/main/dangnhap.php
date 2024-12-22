<?php
if (isset($_POST['dangnhap'])) {
    $email = $_POST['email'];
    $matkhau = md5($_POST['password']);
    $sql = "SELECT * FROM tbl_dangky WHERE email='" . $email . "' AND matkhau='" . $matkhau . "' LIMIT 1";
    $row = mysqli_query($mysqli, $sql);
    $count = mysqli_num_rows($row);

    if ($count > 0) {
        $row_data = mysqli_fetch_array($row);
        $_SESSION['dangky'] = $row_data['tenkhachhang'];
        $_SESSION['id_khachhang'] = $row_data['id_dangky'];
        header("Location: index.php?quanly=giohang");
    } else {
        echo '<p style="color:red; text-align:center;">Mật khẩu hoặc Email sai, vui lòng nhập lại!</p>';
    }
}
?>

<form action="" method="POST" autocomplete="off" style="max-width: 400px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9;">
    <h3 style="text-align: center; color: #333;">Đăng nhập Khách hàng</h3>
    <div style="margin-bottom: 15px;">
        <label for="email" style="display: block; margin-bottom: 5px; font-weight: bold; color: #555;">Tài Khoản</label>
        <input type="text" id="email" name="email" placeholder="Email..." style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;" required>
    </div>
    <div style="margin-bottom: 15px;">
        <label for="password" style="display: block; margin-bottom: 5px; font-weight: bold; color: #555;">Mật Khẩu</label>
        <input type="password" id="password" name="password" placeholder="Mật khẩu..." style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;" required>
    </div>
    <div style="text-align: center;">
        <button type="submit" name="dangnhap" style="padding: 10px 20px; background-color: #00796b; border: none; border-radius: 4px; color: white; font-size: 16px; cursor: pointer;">Đăng nhập</button>
    </div>
    <p style="text-align: center; margin-top: 15px; color: #00796b; font-size: 14px;">
        <a href="#" style="text-decoration: none; color: #00796b;">Quên mật khẩu?</a>
    </p>
</form>
