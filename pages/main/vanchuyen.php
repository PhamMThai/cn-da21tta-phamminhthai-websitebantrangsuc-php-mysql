<div class="steps-container">
    <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang">Giỏ Hàng</a></span></div>
        <div class="step current"> <span> <a href="index.php?quanly=vanchuyen">Vận Chuyển</a></span></div>
        <div class="step"> <span> <a href="index.php?quanly=thongtinthongtinthanhtoan">Thanh Toán</a></span></div>
        <div class="step "> <span> <a href="index.php?quanly=donhangdadat">Lịch Sử Đơn Hàng</a></span></div>
    </div>
    <h4>Thông Tin Vận Chuyển</h4>
    <?php
    if(isset($_POST['themvanchuyen'])){
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];
        $note = $_POST['note'];
        $id_dangky = $_SESSION['id_khachhang'];
        $sql_them_vanchuyen = mysqli_query($mysqli,"INSERT INTO shipping(name,phone,address,note,id_dangky) VALUE('$name','$phone','$address','$note','$id_dangky')");
        if($sql_them_vanchuyen){
            echo '<script>alert("Thêm Vận Chuyển Thành Công")</script>';
        }
    }else if(isset($_POST['capnhatvanchuyen'])){
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];
        $note = $_POST['note'];
        $id_dangky = $_SESSION['id_khachhang'];
        $sql_update_vanchuyen = mysqli_query($mysqli,"UPDATE shipping SET name='$name',phone='$phone',address='$address',note='$note',id_dangky='$id_dangky' WHERE id_dangky='$id_dangky'");
        if($sql_update_vanchuyen){
            echo '<script>alert("Cập Nhật Vận Chuyển Thành Công")</script>';
        }

    }
    ?>
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
        <div class="col-md-15">
        <form action="" autocomplete="off" method="POST">
  <div class="form-group">
    <label for="email">Họ và Tên:</label>
    <input type="text" name="name" class="form-control" value="<?php echo $name ?>">
  </div>
  <div class="form-group">
    <label for="email">Phone:</label>
    <input type="text" name="phone" class="form-control" value="<?php echo $phone ?>" >
  </div>
  <div class="form-group">
    <label for="email">Địa Chỉ:</label>
    <input type="text" name="address" class="form-control" value="<?php echo $address ?>">
  </div>
  <div class="form-group">
    <label for="email">Ghi Chú:</label>
    <input type="text" name="note" class="form-control" value="<?php echo $note ?>">
  </div>
<?php
if($name=='' && $phone==''){
?>
  </div>
  <button type="submit" name="themvanchuyen" class="btn btn-primary">Thêm Vận Chuyển</button>
  <?php
}else if($name!='' && $phone!=''){
?>
<button type="submit" name="capnhatvanchuyen" class="btn btn-success">Cập Nhật Vận Chuyển</button>
<?php
}
?>
</form>
</div>
<!------------------Giohang------------------->
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
        
        

        // Thêm phần đặt hàng
        if (isset($_SESSION['dangky'])) {
            echo '<p><a href="index.php?quanly=thongtinthanhtoan" class="order-button">Hình Thức Thanh Toán</a></p>';
        } else {
            echo '<p><a href="index.php?quanly=dangky" class="order-button">Đăng ký đặt hàng</a></p>';
        }

    } else {
        echo "<p>Giỏ hàng của bạn đang trống!</p>";
    }
?>
</div>
</div>