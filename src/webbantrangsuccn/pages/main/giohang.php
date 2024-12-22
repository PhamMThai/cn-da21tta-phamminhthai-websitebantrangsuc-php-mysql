<p> Giỏ hàng
    <?php
    if(isset($_SESSION['dangky'])){ // hien ten nguoi da dang ky o dau gio hang
    echo '<span style="color:red">' .$_SESSION['dangky'].'</span>';
    

    }
    ?> 
<div class="container">
    <div class="arrow-steps clearfix">
        <div class="step current"> <span> <a href="index.php?quanly=giohang">Giỏ Hàng</a></span></div>
        <div class="step"> <span> <a href="index.php?quanly=vanchuyen">Vận Chuyển</a></span></div>
        <div class="step"> <span> <a href="index.php?quanly=thanhtoan">Thanh Toán</a></span></div>
        <div class="step "> <span> <a href="index.php?quanly=donhangdadat">Lịch Sử Đơn Hàng</a></span></div>
    </div>
</div>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng Của Bạn</title>
    <style>
        /*CSS truc tiep trong day*/
        /* CSS để loại bỏ gạch chân cho các nút + và - */
        .adjust-quantity {
            text-decoration: none;
            font-weight: bold;
            color: #6a0dad; /* Chọn màu tùy ý cho nút */
            font-size: 20px;
            margin: 0 5px; /* Khoảng cách giữa các nút và số lượng */ 
        }
        .order-button {
            background-color: #004085; /* Màu xanh dương đậm */
            color: white; /* Màu chữ trắng */
            padding: 10px 15px; /* Padding cho nút */
            text-decoration: none; /* Không có gạch chân */
            border-radius: 5px; /* Bo tròn góc nút */
            display: inline-block; /* Hiển thị dưới dạng khối inline */
            margin-top: 10px; /* Khoảng cách trên nút */
        }
        .order-button:hover {
            background-color: #002752; /* Màu khi di chuột qua */
        }
    </style>
</head>
<body>



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
            echo '<td><img src="Amin/modules/quanlysp/uploads/' . $cart_item['hinhanh'] . '" width="100"></td>';
            echo '<td>';
            echo '<a href="/webbantrangsuc/pages/main/themgiohang.php?action=decrease&id=' . $cart_item['id'] . '" class="adjust-quantity"><i class="fa fa-minus" aria-hidden="true"></i></a>';//icon dau tru
            echo $cart_item['soluong'];
            echo '<a href="/webbantrangsuc/pages/main/themgiohang.php?action=increase&id=' . $cart_item['id'] . '" class="adjust-quantity"><i class="fa fa-plus" aria-hidden="true"></i></a>'; // icon dau cong 
            echo '</td>';
            echo '<td>' . number_format($cart_item['giasanpham'], 0, ',', '.') . ' VNĐ</td>';
            echo '<td>' . number_format($item_total, 0, ',', '.') . ' VNĐ</td>';
            echo '<td><a href="/webbantrangsuc/pages/main/themgiohang.php?action=delete&id=' . $cart_item['id'] . '""><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>'; //icon thung rac
            echo '</tr>';
        }

        echo '<tr>';
        echo '<td colspan="6">Tổng cộng</td>';
        echo '<td>' . number_format($total, 0, ',', '.') . ' VNĐ</td>';
        echo '</tr>';
        echo '</table>';
        
        echo '<br><a href="/webbantrangsuc/pages/main/themgiohang.php?action=clear" onclick="return confirm(\'Bạn có chắc chắn muốn xóa tất cả sản phẩm trong giỏ hàng?\')" style="text-decoration: none; color: #C0C0C0;"><h3>Xóa tất cả sản phẩm<h3/></a>';

        // Thêm phần đặt hàng
        if (isset($_SESSION['dangky'])) {
            echo '<p><a href="index.php?quanly=vanchuyen" class="order-button">Hình Thức Vận Chuyển</a></p>';
        } else {
            echo '<p><a href="index.php?quanly=dangky" class="order-button">Đăng ký đặt hàng</a></p>';
        }

    } else {
        echo "<p>Giỏ hàng của bạn đang trống!</p>";
    }
?>

</body>
</html>
