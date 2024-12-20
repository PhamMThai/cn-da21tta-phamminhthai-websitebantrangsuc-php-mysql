<?php
//include('C:/xampp/htdocs/webbantrangsuc/Amin/config/config.php ');
$sql_lietke_danhmucsanpham = "SELECT * FROM tbl_danhmucsanpham ORDER BY thutu DESC";
$query_lietke_danhmucsanpham = mysqli_query($mysqli,$sql_lietke_danhmucsanpham);
?>
<p>Liệt Kê Danh Mục Sản Phẩm </p>
<table style="width:100%" border="1" style="border-collapse: collapse;">
    <tr>
        <th>ID</th>
        <th>Tên Danh Mục</th>
        <th>Quản Lý</th>
    </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_danhmucsanpham)){
         $i++;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['tendanhmucsanpham'] ?></td>
        <td>
            <a href="modules/quanlydanhmucsp/xuly.php?iddanhmucsanpham=<?php echo $row['id_danhmucsanpham'] ?> ">Xóa</a> | <a href="?action=quanlydanhmucsanpham&query=sua&iddanhmucsanpham=<?php echo $row['id_danhmucsanpham'] ?> ">Sửa</a>
        </td>
       
    </tr>
    <?php
    }
    ?>
</table>