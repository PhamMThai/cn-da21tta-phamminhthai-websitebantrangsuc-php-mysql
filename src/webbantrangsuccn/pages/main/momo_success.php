<?php
session_start();
include("../../Amin/config/config.php");
require('../../carbon/autoload.php');
use Carbon\Carbon;

// Kiểm tra callback từ MoMo
if (isset($_GET['resultCode']) && $_GET['resultCode'] == '0') { // Thanh toán thành công
    $now = Carbon::now('Asia/Ho_Chi_Minh'); // Thời gian hiện tại
    $id_khachhang = $_SESSION['id_khachhang']; // ID khách hàng từ session
    $code_order = $_GET['orderId']; // Mã đơn hàng MoMo trả về
    $cart_payment = 'momo_qr'; // Phương thức thanh toán MOMO QR

    // Lấy ID vận chuyển
    $id_dangky = $_SESSION['id_khachhang'];
    $sql_get_vanchuyen = mysqli_query($mysqli, "SELECT * FROM shipping WHERE id_dangky='$id_dangky' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $id_shipping = $row_get_vanchuyen['id_shipping'];

    // Thêm đơn hàng vào bảng tbl_cart
    $insert_cart = "INSERT INTO tbl_cart (id_khachhang, code_cart, cart_status, cart_date, cart_payment, cart_shipping)
                    VALUES ('$id_khachhang', '$code_order', 1, '$now', '$cart_payment', '$id_shipping')";
    $cart_query = mysqli_query($mysqli, $insert_cart);

    if ($cart_query) {
        // Thêm chi tiết đơn hàng vào bảng tbl_cart_details
        foreach ($_SESSION['cart'] as $key => $value) {
            $id_sanpham = $value['id'];
            $soluong = $value['soluong'];
            $insert_order_details = "INSERT INTO tbl_cart_details (id_sanpham, code_cart, soluongmua)
                                     VALUES ('$id_sanpham', '$code_order', '$soluong')";
            mysqli_query($mysqli, $insert_order_details);
        }

        // Xóa giỏ hàng trong session
        unset($_SESSION['cart']);

        // Chuyển hướng về trang lịch sử đơn hàng
        header("Location: ../../index.php?quanly=donhangdadat");
        exit();
    } else {
        echo "Lỗi khi ghi đơn hàng vào hệ thống: " . mysqli_error($mysqli);
    }
} else {
    // Trường hợp thanh toán thất bại
    echo "Thanh toán thất bại hoặc bị hủy. Vui lòng thử lại!";
}
?>
