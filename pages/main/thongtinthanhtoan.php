<div class="steps-container">
    <div class="arrow-steps clearfix">
    <div class="step done "> <span> <a href="index.php?quanly=giohang">Giỏ Hàng</a></span></div>
        <div class="step done "> <span> <a href="index.php?quanly=vanchuyen">Vận Chuyển</a></span></div>
        <div class="step current"> <span> <a href="index.php?quanly=thongtinthanhtoan">Thanh Toán</a></span></div>
        <div class="step "> <span> <a href="index.php?quanly=donhangdadat">Lịch Sử Đơn Hàng</a></span></div>
    </div>

    <form action="pages/main/xulythanhtoan.php" method="POST">
    <div class="row">
    <?php
        $id_dangky = $_SESSION['id_khachhang'];
        $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM shipping WHERE id_dangky='$id_dangky' LIMIT 1");
        $count = mysqli_num_rows($sql_get_vanchuyen);
        if($count>0){
            $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
            $name = $row_get_vanchuyen['name'];
            $phone = $row_get_vanchuyen['phone'];
            $address = $row_get_vanchuyen['address'];
            $note = $row_get_vanchuyen['note'];
        }else{
            $name = '';
            $phone = '';
            $address = '';
            $note = '';
        }
        ?>
        <div class="col-md-8">
                <h4>Thông Tin Vận Chuyển Và Giỏ Hàng</h4>
                <ul>
                    <li>Họ và Tên Vận Chuyển: <b> <?php echo $name ?></b></li>
                    <li>Số Điện Thoại: <b> <?php echo $phone ?></b></li>
                    <li>Địa Chỉ: <b><?php echo $address ?></b></li>
                    <li>Ghi Chú: <b><?php echo $note ?></b></li>
                </ul>
                <h5>Giỏ Hàng Của Bạn</h5>
                <?php
    if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
        $total = 0;

        echo '<table border="1" cellspacing="0" cellpadding="10">';
        echo '<tr>';
        echo '<th>ID</th>';
        echo '<th>Mã sản phẩm</th>';
        echo '<th>Tên sản phẩm</th>';
        echo '<th>Hình ảnh</th>';
        echo '<th>Số lượng</th>';
        echo '<th>Giá</th>';
        echo '<th>Thành Tiền</th>';
        echo '</tr>';

        foreach ($_SESSION['cart'] as $cart_item) {
            $item_total = $cart_item['giasanpham'] * $cart_item['soluong'];
            $total += $item_total;

            echo '<tr>';
            echo '<td>' . $cart_item['id'] . '</td>';
            echo '<td>' . $cart_item['masanpham'] . '</td>';
            echo '<td>' . $cart_item['tensanpham'] . '</td>';
            echo '<td><img src="/webbantrangsuc/Amin/modules/quanlysp/uploads/' . $cart_item['hinhanh'] . '" width="100"></td>'; 
            echo '<td>';
            echo '<a href="/webbantrangsuc/pages/main/themgiohang.php?action=decrease&id=' . $cart_item['id'] . '" class="adjust-quantity"><i class="fa fa-minus" aria-hidden="true"></i></a>';//icon dau tru
            echo $cart_item['soluong'];
            echo '<a href="/webbantrangsuc/pages/main/themgiohang.php?action=increase&id=' . $cart_item['id'] . '" class="adjust-quantity"><i class="fa fa-plus" aria-hidden="true"></i></a>'; // icon dau cong 
            echo '</td>';
            echo '<td>' . number_format($cart_item['giasanpham'], 0, ',', '.') . ' VNĐ</td>';
            echo '<td>' . number_format($item_total, 0, ',', '.') . ' VNĐ</td>';
            echo '</tr>';
        }

        echo '<tr>';
        echo '<td colspan="6">Tổng cộng</td>';
        echo '<td>' . number_format($total, 0, ',', '.') . ' VNĐ</td>';
        echo '</tr>';
        echo '</table>';
        
      


    } else {
        echo "<p>Giỏ hàng của bạn đang trống!</p>";
    }
?>
        </div>
        <style type="text/css">
            .col-md-4.hinhthucthanhtoan .form-check {
              margin: 15px;
}
        </style>
        <div class="col-md-4 hinhthucthanhtoan ">
                <h4>Phương Thức Thanh Toán</h4>
                <div class="form-check">
  <input class="form-check-input" type="radio" name="payment" id="exampleRadios1" value="tien mat" checked>
  <img src="images/anhtienmat.jpg" height="15" width="25">
  <label class="form-check-label" for="exampleRadios1">
    Thanh Toán Tiền Mặt Khi Nhận Hàng
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="chuyen khoan">
  <img src="images/chuyenkhoan.jpg" height="16" width="20">
  <label class="form-check-label" for="exampleRadios2">
    Thanh Toán Chuyển Khoản
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="payment" id="exampleRadios3" value="vnpay">
  <img src="images/vnpay.jpg" height="25" width="30">
  <label class="form-check-label" for="exampleRadios33">
    Thanh Toán VNPAY
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="payment" id="exampleRadios4" value="momo">
  <img src="images/momo.jpg" height="32" width="32">
  <label class="form-check-label" for="exampleRadios44">
    Thanh Toán Bằng Ví MoMo 
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="payment" id="exampleRadios5" value="paypal">
  <label class="form-check-label" for="exampleRadios5">
  Thanh Toán PayPal
  </label>
</div>
<input type="submit" value="Thanh Toán Ngay" name="thanhtoanngay" class="btn-btn-danger">
        </div>
    </div>
</div>
</form>