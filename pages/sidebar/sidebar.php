<!-- <div class="sidebar">
    <h4>Danh Mục Sản Phẩm</h4>
    <ul class="list_sidebar">
        <?php
        $sql_danhmuc_baiviet = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_baiviet DESC";
        $query_danhmuc_baiviet = mysqli_query($mysqli,$sql_danhmuc_baiviet);
        while($row = mysqli_fetch_array($query_danhmuc_baiviet)){
        ?>
        <li> <a href="index.php?quanly=danhmucbaiviet$id=<?php echo $row['id_baiviet'] ?>"><?php echo $row['tendanhmuc_baiviet'] ?></a></li>
        <?php
        }
        ?>
        
    </ul>
</div> -->
