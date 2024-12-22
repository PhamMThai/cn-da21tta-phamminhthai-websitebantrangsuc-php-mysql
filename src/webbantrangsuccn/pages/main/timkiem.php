<?php
    if(isset($_POST['timkiem'])){
      $tukhoa = $_POST['tukhoa'];
    }
    // Truy vấn SQL để lấy danh sách sản phẩm và thông tin danh mục
    $sql_pro = "SELECT * FROM tbl_sanpham, tbl_danhmucsanpham WHERE tbl_sanpham.id_danhmuc=tbl_danhmucsanpham.id_danhmucsanpham AND tbl_sanpham.tensanpham LIKE '%".$tukhoa."%'";
    $query_pro = mysqli_query($mysqli, $sql_pro);

   
?>
<h3>Từ khóa tìm kiếm: <?php echo $_POST['tukhoa']; ?> </h3>
<ul class="product_list">
    <?php
    // Lặp qua các kết quả truy vấn và hiển thị sản phẩm
    while($row = mysqli_fetch_array($query_pro)) {
    ?>
    <li>
        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">
            <!-- Hiển thị hình ảnh sản phẩm -->
            <img src="Amin/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
            <!-- Hiển thị tên sản phẩm -->
            <p class="title_product">Tên Sản Phẩm: <?php echo $row['tensanpham'] ?></p>
            <!-- Hiển thị giá sản phẩm với dấu chấm phân cách -->
            <p class="price_product">Giá: <?php echo str_replace(',', '.', number_format($row['giasanpham'])).' VNĐ'; ?></p>
            <!-- Hiển thị tên danh mục sản phẩm -->
            <p style="text-align:center;color:#d1d1d1"><?php echo $row['tendanhmucsanpham'] ?></p>
        </a>
    </li>
    <?php
    }
    ?>
</ul>

          
          