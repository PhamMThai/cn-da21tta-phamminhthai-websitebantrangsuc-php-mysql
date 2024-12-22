<h3>Chi tiết sản phẩm</h3>
<?php
// Truy vấn SQL để lấy danh sách sản phẩm và thông tin danh mục
$sql_chitiet = "SELECT * FROM tbl_sanpham, tbl_danhmucsanpham 
                WHERE tbl_sanpham.id_danhmuc=tbl_danhmucsanpham.id_danhmucsanpham 
                AND tbl_sanpham.id_sanpham='$_GET[id]' LIMIT 1";
$query_chitiet = mysqli_query($mysqli, $sql_chitiet);
while ($row_chitiet = mysqli_fetch_array($query_chitiet)) {
?>
<div class="wrapper_chitiet">
    <!-- Hiển thị hình ảnh sản phẩm với khả năng click để xem lớn -->
    <div class="hinhanh_sanpham">
        <a href="Amin/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh']; ?>" target="_blank">
            <img width="70%" src="Amin/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh']; ?>" alt="<?php echo $row_chitiet['tensanpham']; ?>">
        </a>
        <!-- Hiển thị hình ảnh phụ bên dưới hình ảnh chính với khả năng click -->
    <div class="hinhanh_phu_list">
        <?php
        $sql_hinhanh_phu = "SELECT * FROM tbl_hinhanh_phu WHERE id_sanpham='$row_chitiet[id_sanpham]'";
        $query_hinhanh_phu = mysqli_query($mysqli, $sql_hinhanh_phu);
        while ($row_hinhanh_phu = mysqli_fetch_array($query_hinhanh_phu)) {
            echo '<a href="Amin/modules/quanlysp/uploads/' . $row_hinhanh_phu['hinhanh_phu'] . '" target="_blank">
                    <img src="Amin/modules/quanlysp/uploads/' . $row_hinhanh_phu['hinhanh_phu'] . '" width="70%" style="margin:10px;">
                  </a>';
        }
        ?>
    </div>
    </div>
    

    <!-- Form để thêm vào giỏ hàng -->
    <form method="POST" action="pages/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham']; ?>">
        <div class="chitiet_sanpham">
            <h3 style="margin: 0;">Tên Sản Phẩm: <?php echo $row_chitiet['tensanpham']; ?></h3>
            <p>Mã Sản Phẩm: <?php echo $row_chitiet['masanpham']; ?></p>
            <p>Giá Sản Phẩm: <?php echo number_format($row_chitiet['giasanpham'], 0, ',', '.') . ' VNĐ'; ?></p>
            <p>Số Lượng Sản Phẩm: <?php echo $row_chitiet['soluong']; ?></p>
            <p>Danh Mục Sản Phẩm: <?php echo $row_chitiet['tendanhmucsanpham']; ?></p>

            

            <!-- Nút thêm vào giỏ hàng -->
            <input type="hidden" name="idsanpham" value="<?php echo $row_chitiet['id_sanpham']; ?>">
            <p><input class="themvaogiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
             <!-- phần hiển thị chi tiết sp -->
            <div class="clear"></div>
<div class="tabs">
  <ul id="tabs-nav">
    <li><a href="#tab1">Mô tả sản phẩm</a></li>
    <li><a href="#tab2">Chính sách hậu mãi</a></li>
  </ul> <!-- END tabs-nav -->
  <div id="tabs-content">
    <div id="tab1" class="tab-content">
    <?php echo $row_chitiet['tomtat']; ?>
    </div>
    <div id="tab2" class="tab-content">
    <?php echo $row_chitiet['noidung']; ?>
    </div>
    <div id="tab3" class="tab-content">
      
    </div>
    <div id="tab4" class="tab-content">
      
    </div>
  </div> <!-- END tabs-content -->
</div> <!-- END tabs -->
        </div>
    </form>

    
</div>
<?php
}
?>

