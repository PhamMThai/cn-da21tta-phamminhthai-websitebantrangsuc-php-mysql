
<?php
$sql_chitiet = "SELECT * FROM tbl_baiviet,tbl_danhmucbaiviet WHERE tbl_baiviet.id_danhmuc=tbl_danhmucbaiviet.id_baiviet AND tbl_baiviet.baiviet_id='$_GET[id]' LIMIT 1";
$query_chitiet = mysqli_query($mysqli,$sql_chitiet);
while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="hinhanh_baiviet">
    <!-- <img width="40%" src="Amin/modules/quanlybaiviet/uploads/<?php echo $row_chitiet['hinhanh'] ?>"> -->

</div>
<div class="wrapper_chitietbaiviet">
<div class="chitiet_baiviet">
 <h2><?php echo $row_chitiet['tenbaiviet'] ?></h2>
 <p><?php echo $row_chitiet['tomtat'] ?></p>
 <p><?php echo $row_chitiet['noidung'] ?></p>

</div>
</div>
<?php
}
?>
