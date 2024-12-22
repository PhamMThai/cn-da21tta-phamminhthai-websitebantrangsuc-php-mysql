<div class="steps-container">
    <div class="arrow-steps clearfix">
        <div class="step done"> <span> <a href="index.php?quanly=giohang">Giỏ Hàng</a></span></div>
        <div class="step done"> <span> <a href="index.php?quanly=vanchuyen">Vận Chuyển</a></span></div>
        <div class="step current"> <span> <a href="index.php?quanly=thongtinthanhtoan">Thanh Toán</a></span></div>
        <div class="step"> <span> <a href="index.php?quanly=donhangdadat">Lịch Sử Đơn Hàng</a></span></div>
    </div>

    <?php
    // Lấy thông tin vận chuyển
    $id_dangky = $_SESSION['id_khachhang'];
    $sql_get_vanchuyen = mysqli_query($mysqli, "SELECT * FROM shipping WHERE id_dangky='$id_dangky' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);

    // Kiểm tra và gán giá trị để tránh lỗi undefined
    $name = $row_get_vanchuyen['name'] ?? 'Chưa cập nhật';
    $phone = $row_get_vanchuyen['phone'] ?? 'Chưa cập nhật';
    $address = $row_get_vanchuyen['address'] ?? 'Chưa cập nhật';
    $note = $row_get_vanchuyen['note'] ?? 'Không có ghi chú';

    // Tính tổng tiền
    $tongtien = 0;
    if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
        foreach ($_SESSION['cart'] as $item) {
            $tongtien += $item['giasanpham'] * $item['soluong'];
        }
    }
    ?>

    <div class="checkout-container">
        <!-- Cột trái: Thông tin vận chuyển và giỏ hàng -->
        <div class="checkout-left">
            <h4>Thông Tin Vận Chuyển Và Giỏ Hàng</h4>
            <ul>
                <li>Họ và Tên: <b><?php echo $name; ?></b></li>
                <li>Số Điện Thoại: <b><?php echo $phone; ?></b></li>
                <li>Địa Chỉ: <b><?php echo $address; ?></b></li>
                <li>Ghi Chú: <b><?php echo $note; ?></b></li>
            </ul>

            <h5>Giỏ Hàng Của Bạn</h5>
            <table border="1" cellspacing="0" cellpadding="10">
                <tr>
                    <th>ID</th>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Thành Tiền</th>
                </tr>
                <?php
                if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
                    foreach ($_SESSION['cart'] as $item) {
                        $thanhtien = $item['giasanpham'] * $item['soluong'];
                        echo "<tr>
                            <td>{$item['id']}</td>
                            <td>{$item['tensanpham']}</td>
                            <td>{$item['soluong']}</td>
                            <td>" . number_format($item['giasanpham'], 0, ',', '.') . " VNĐ</td>
                            <td>" . number_format($thanhtien, 0, ',', '.') . " VNĐ</td>
                        </tr>";
                    }
                    echo "<tr>
                            <td colspan='4' align='right'><b>Tổng cộng:</b></td>
                            <td><b>" . number_format($tongtien, 0, ',', '.') . " VNĐ</b></td>
                          </tr>";
                } else {
                    echo "<tr><td colspan='5'>Giỏ hàng của bạn đang trống!</td></tr>";
                }
                ?>
            </table>
        </div>

        <!-- Cột phải: Phương thức thanh toán -->
        <div class="checkout-right">
            <h4>Phương Thức Thanh Toán</h4>
            <form method="POST" action="pages/main/xulythanhtoan.php">
                <div class="form-check">
                    <input type="radio" name="payment" value="tien mat" checked>
                    <label>Thanh Toán Tiền Mặt</label>
                </div>
                <div class="form-check">
                    <input type="radio" name="payment" value="chuyen khoan">
                    <label>Thanh Toán Chuyển Khoản</label>
                </div>
                <button type="submit" name="thanhtoanngay" class="btn btn-primary w-100 mt-3">Thanh Toán Ngay</button>
                <button type="submit" formaction="pages/main/xulythanhtoanmomoqr.php" name="momo"
                        class="btn btn-danger w-100 mt-2">Thanh Toán MOMO QRcode</button>
                <button type="submit" formaction="pages/main/xulythanhtoanmomoatm.php" name="momo"
                        class="btn btn-danger w-100 mt-2">Thanh Toán MOMO ATM</button>
                <input type="hidden" name="tongtien_vnd" value="<?php echo $tongtien; ?>">
            </form>
        </div>
    </div>
</div>
