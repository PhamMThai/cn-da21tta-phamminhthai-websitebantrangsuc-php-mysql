<?php
// Kiểm tra và bắt đầu session nếu cần
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Kết nối tới cơ sở dữ liệu
include('Amin/config/config.php'); // Kiểm tra lại đường dẫn file config.php

// Kiểm tra xem người dùng đã đăng nhập
if (!isset($_SESSION['id_khachhang'])) {
    echo "<p>Vui lòng đăng nhập để xem lịch sử đơn hàng.</p>";
    exit();
}

$id_khachhang = $_SESSION['id_khachhang'];

// Truy vấn đơn hàng mới nhất của người dùng
$sql_latest_order = "SELECT * FROM tbl_cart 
                     WHERE id_khachhang = '$id_khachhang' 
                     AND cart_status = 1 
                     ORDER BY cart_date DESC 
                     LIMIT 1";


$query_latest_order = mysqli_query($mysqli, $sql_latest_order);

if (!$query_latest_order) {
    die("Lỗi truy vấn đơn hàng: " . mysqli_error($mysqli));
}

if (mysqli_num_rows($query_latest_order) > 0) {
    $order = mysqli_fetch_array($query_latest_order);
    $code_cart = $order['code_cart'];
    ?>

    <!-- Nội dung trang lịch sử đơn hàng -->
    <div class="order-container">
        <h4>Đơn Hàng Mới Nhất</h4>
        <p><b>Mã Đơn Hàng:</b> <?php echo $code_cart; ?></p>
        <p><b>Ngày Đặt:</b> <?php echo $order['cart_date']; ?></p>
        <p><b>Phương Thức Thanh Toán:</b> <?php echo $order['cart_payment']; ?></p>
        <p><b>Trạng Thái:</b> <?php echo $order['cart_status']; ?></p>

        <h5>Chi Tiết Đơn Hàng</h5>
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <th>ID Sản Phẩm</th>
                <th>Tên Sản Phẩm</th>
                <th>Hình Ảnh</th>
                <th>Số Lượng</th>
                <th>Giá</th>
                <th>Thành Tiền</th>
            </tr>
            <?php
            $tongcong = 0;

            $sql_details = "SELECT d.id_sanpham, d.soluongmua, s.tensanpham, s.giasanpham, s.hinhanh 
                            FROM tbl_cart_details AS d 
                            JOIN tbl_sanpham AS s ON d.id_sanpham = s.id_sanpham
                            WHERE d.code_cart = '$code_cart'";
            $query_details = mysqli_query($mysqli, $sql_details);

            while ($detail = mysqli_fetch_array($query_details)) {
                $thanhtien = $detail['soluongmua'] * $detail['giasanpham'];
                $tongcong += $thanhtien;
                ?>
                <tr>
                    <td><?php echo $detail['id_sanpham']; ?></td>
                    <td><?php echo $detail['tensanpham']; ?></td>
                    <td><img src="Amin/modules/quanlysp/uploads/<?php echo $detail['hinhanh']; ?>" width="80" 
                             onerror="this.src='images/no-image.png';" alt="Hình ảnh sản phẩm"></td>
                    <td><?php echo $detail['soluongmua']; ?></td>
                    <td><?php echo number_format($detail['giasanpham'], 0, ',', '.') . ' VNĐ'; ?></td>
                    <td><?php echo number_format($thanhtien, 0, ',', '.') . ' VNĐ'; ?></td>
                </tr>
            <?php } ?>
            <tr>
                <td colspan="5" align="right"><b>Tổng Cộng:</b></td>
                <td><b><?php echo number_format($tongcong, 0, ',', '.') . ' VNĐ'; ?></b></td>
            </tr>
        </table>
    </div>
    <?php
} else {
    echo "<p>Bạn chưa có đơn hàng nào gần đây.</p>";
}
?>
