<p>Xem Đơn Hàng</p>
<?php
$sql_lietke_dh = "SELECT * FROM tbl_cart_details,tbl_sanpham WHERE tbl_cart_details.id_sanpham=tbl_sanpham.id_sanpham AND tbl_cart_details.code_cart='$_GET[code]' ORDER BY  tbl_cart_details.id_cart_details DESC";
$query_lietke_dh= mysqli_query($mysqli,$sql_lietke_dh);
?>
<table style="width:100%" border="1" style="border-collapse: collapse;">
    <tr>
        <th>ID</th>
        <th>Mã Đơn Hàng</th>
        <th>Tên Sản Phẩm</th>
        <th>Số Lượng</th>
        <th>Đơn Giá</th>
        <th>Thành Tiền</th>
       
    </tr>
    <?php
    $i = 0;
    $tongtien = 0;
    while($row = mysqli_fetch_array($query_lietke_dh)){
         $i++;
         $thanhtien = $row['giasanpham']*$row['soluongmua'];
         $tongtien += $thanhtien;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['code_cart'] ?></td>
        <td><?php echo $row['tensanpham'] ?></td>
        <td><?php echo $row['soluongmua'] ?></td>
        <td><?php echo number_format($row['giasanpham'],0,',','.').'VNĐ'?></td>
        <td><?php echo number_format($thanhtien,0,',','.').'VNĐ' ?></td>
       
       
    </tr>
    <?php
    }
    ?>
    <tr>
    <td colspan="6">
            <p>Tổng tiền: <?php echo number_format($tongtien,0,',','.').'VNĐ' ?> </p>
        
        </td>
    </tr>
</table>