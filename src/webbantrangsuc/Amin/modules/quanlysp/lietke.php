<?php
$sql_lietke_sanpham = "SELECT * FROM tbl_sanpham ,tbl_danhmucsanpham WHERE tbl_sanpham.id_danhmuc=tbl_danhmucsanpham.id_danhmucsanpham  ORDER BY id_sanpham DESC";//dem cai tlbsanpham so sanh voi id danh muc 
$query_lietke_sanpham = mysqli_query($mysqli,$sql_lietke_sanpham);
?>
<p>Liệt Kê Danh Mục Sản Phẩm </p>
<table style="width:100%" border="1" style="border-collapse: collapse;">
    <tr>
        <th>ID</th>
        <th>Tên Sản Phẩm</th>
        <th>Hình Ảnh</th>
        <th>Giá sản phẩm</th>
        <th>Số lượng</th>
        <th>Danh Mục</th>
        <th>Mã Sản Phẩm</th>
        <th>Tóm Tắt</th>
        <th>Tình Trạng</th>
        <th>Quản Lý</th>
    </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_sanpham)){
        $i++;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['tensanpham'] ?></td>
        <td><img src="modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>
        <td><?php echo $row['giasanpham'] ?></td>
        <td><?php echo $row['soluong'] ?></td>
        <td><?php echo $row['tendanhmucsanpham'] ?></td>
        <td><?php echo $row['masanpham'] ?></td>
        <td><?php echo $row['tomtat'] ?></td>
        <td><?php if($row['tinhtrang']==1){    
          echo 'Kích hoạt';
        }else{
            echo 'Ẩn';
        }
         ?>

         </td>
        <td>
            <a href="modules/quanlysp/xuly.php?idsanpham=<?php echo $row['id_sanpham'] ?> ">Xóa</a> | <a href="?action=quanlysp&query=sua&idsanpham=<?php echo $row['id_sanpham'] ?> ">Sửa</a>
        </td>
       
    </tr>
    <?php
    }
    ?>
</table>