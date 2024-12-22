<p>Thêm Bài Viết </p>
<table border="1" width="100%" style="border-collapse: collapse;">  
    <form method="POST" action="modules/quanlybaiviet/xuly.php" enctype="multipart/form-data">         
    <tr>
        <td>Tên Bài Viết </td>
        <td><input type="text" name="tenbaiviet"></td>   
    </tr>
    <tr>
        <td>Hình Ảnh</td>
        <td><input type="file" name="hinhanh"></td>   
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
        <td>Danh Mục Bài Viết </td>
        <td>
            <select name="danhmuc">
                <?php
                $sql_danhmucsanpham = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_baiviet DESC";
                $query_danhmucsanpham = mysqli_query($mysqli,$sql_danhmucsanpham);
                while($row_danhmucsanpham = mysqli_fetch_array($query_danhmucsanpham)){
                ?>
                <option value="<?php echo $row_danhmucsanpham['id_baiviet']?>"><?php echo $row_danhmucsanpham['tendanhmuc_baiviet']?></option>
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
        <td colspan="2"><input type="submit" name="thembaiviet" value="Thêm Bài Viết"></td>
        
    </tr>
    </form>
</table>
