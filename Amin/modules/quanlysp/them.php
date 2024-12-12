<p>Thêm Sản Phẩm </p>
<table border="1" width="100%" style="border-collapse: collapse;">  
    <form method="POST" action="modules/quanlysp/xuly.php" enctype="multipart/form-data">         
    <tr>
        <td>Tên Sản Phẩm </td>
        <td><input type="text" name="tensanpham"></td>   
    </tr>
    <tr>
        <td>Mã Sản Phẩm</td>
        <td><input type="text" name="masanpham"></td>   
    </tr>
    <tr>
        <td>Giá Sản Phẩm </td>
        <td><input type="text" name="giasanpham"></td>   
    </tr>
    <tr>
        <td>Số Lượng </td>
        <td><input type="text" name="soluong"></td>   
    </tr>
    <tr>
        <td>Hình Ảnh</td>
        <td><input type="file" name="hinhanh"></td>   
    </tr>
    <tr>
        <td>Hình Ảnh Phụ</td>
        <td><input multiple type="file" name="hinhanh_phu[]" multiple></td>
   </tr>
    <tr>
        <td>Tóm Tắt </td>
        <td><textarea rows="10"  name="tomtat" style="resize: none"></textarea></td>   
    </tr>
    <tr>
        <td>Nội Dung </td>
        <td><textarea rows="10" name="noidung" style="resize: none"></textarea></td>   
    </tr>
    <tr>
        <td>Danh Mục Sản Phẩm </td>
        <td>
            <select name="danhmuc">
                <?php
                $sql_danhmucsanpham = "SELECT * FROM tbl_danhmucsanpham ORDER BY id_danhmucsanpham DESC";
                $query_danhmucsanpham = mysqli_query($mysqli,$sql_danhmucsanpham);
                while($row_danhmucsanpham = mysqli_fetch_array($query_danhmucsanpham)){
                ?>
                <option value="<?php echo $row_danhmucsanpham['id_danhmucsanpham']?>"><?php echo $row_danhmucsanpham['tendanhmucsanpham']?></option>
                <?php
                }
                ?>
                
            </select>
        </td>
    </tr>
    <tr>
        <td>Tình Trạng</td>
        <td>
            <select name="tinhtrang">
                <option value="1">Kích hoạt</option>
                <option value="0">Ẩn</option>
            </select>
        </td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" name="themsanpham" value="Thêm Sản Phẩm"></td>
        
    </tr>
    </form>
</table>
