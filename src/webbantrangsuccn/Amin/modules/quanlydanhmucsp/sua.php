<?php
$sql_sua_danhmucsanpham = "SELECT * FROM tbl_danhmucsanpham WHERE id_danhmucsanpham='$_GET[iddanhmucsanpham]' LIMIT 1" ;
$query_sua_danhmucsanpham = mysqli_query($mysqli,$sql_sua_danhmucsanpham);
?>
<p>Sửa Danh Mục Sản Phẩm </p>
<table border="1" width="50%" style="border-collapse: collapse;">  
    <form method="POST" action="modules/quanlydanhmucsp/xuly.php?iddanhmucsanpham=<?php echo $_GET['iddanhmucsanpham'] ?>">         
    <?php
    while($dong = mysqli_fetch_array($query_sua_danhmucsanpham)) {
    ?>
    <tr>
        <td>Tên Danh Mục </td>
        <td><input type="text" value="<?php echo $dong['tendanhmucsanpham']?>" name="tendanhmuc"></td>   
    </tr>
    <tr>
        <td>Thứ Tự</td>
        <td><input type="text" value="<?php echo $dong['thutu']?>" name="thutu"></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" name="suadanhmuc" value="Sửa Danh Mục Sản Phẩm"></td>
        
    </tr>
    <?php
    }
    ?>
    </form>
</table>
