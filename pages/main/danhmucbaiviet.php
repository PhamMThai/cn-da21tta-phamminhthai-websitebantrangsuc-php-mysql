<?php
$sql_pro = "SELECT * FROM tbl_baiviet WHERE tbl_baiviet.id_danhmuc='$_GET[id]' ORDER BY baiviet_id DESC";
$query_pro = mysqli_query($mysqli,$sql_pro);
$sql_cate = "SELECT * FROM tbl_danhmucbaiviet WHERE tbl_danhmucbaiviet.id_baiviet='$_GET[id]' LIMIT 1";

?>
<h3> Danh Mục Bài Viết: </h3>
            <ul class ="product_list">
                <?php
                    while($row_pro = mysqli_fetch_array($query_pro)){
             ?>
              <li>
                  <a href="index.php?quanly=baiviet&id=<?php echo $row_pro['baiviet_id'] ?>">
                   <img src="Amin/modules/quanlybaiviet/uploads/<?php echo $row_pro['hinhanh'] ?>">
                   <p class="title_product"><?php echo $row_pro['tenbaiviet'] ?></p>
                   </a>
                   <p  class="title_product"><?php echo $row_pro['tomtat'] ?></p>
              </li>
            <?php
          }
         ?>
</ul>