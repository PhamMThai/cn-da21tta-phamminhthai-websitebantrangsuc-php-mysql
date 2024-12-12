<?php 
    $sql_danhmucsanpham = "SELECT * FROM tbl_danhmucsanpham ORDER BY id_danhmucsanpham DESC";
    $query_danhmucsanpham = mysqli_query($mysqli,$sql_danhmucsanpham);
    $sql_danhmucbaiviet = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_baiviet DESC";
    $query_danhmucbaiviet = mysqli_query($mysqli, $sql_danhmucbaiviet);

 ?>
 <?php
     if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
      unset($_SESSION['dangky']);
     }
 ?>
<div class="menu">
         <ul class="list_menu">
          <li><a href="index.php">Trang Chủ</a></li>
          <?php
          while($row_danhmucsanpham = mysqli_fetch_array($query_danhmucsanpham)){
          ?>
          <li><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmucsanpham['id_danhmucsanpham']?>"><?php echo $row_danhmucsanpham['tendanhmucsanpham'] ?></a></li>
         <?php
          }
         ?>
         
                <?php
                while($row_danhmucbaiviet = mysqli_fetch_array($query_danhmucbaiviet)){
                ?>
                <li><a href="index.php?quanly=danhmucbaiviet&id=<?php echo $row_danhmucbaiviet['id_baiviet'] ?>"><?php echo $row_danhmucbaiviet['tendanhmuc_baiviet'] ?></a></li>
                <?php
                }
                ?>
        <li>
            
            <ul class="sub_menu"> <!-- Tạo menu con nếu có nhiều danh mục bài viết -->
                <?php
                while ($row_danhmucbaiviet = mysqli_fetch_array($query_danhmucbaiviet)) {
                ?>
                <li>
                    <a href="index.php?quanly=danhmucbaiviet&id=<?php echo $row_danhmucbaiviet['id_baiviet'] ?>">
                        <?php echo $row_danhmucbaiviet['tendanhmuc_baiviet'] ?>
                    </a>
                </li>
                <?php
                }
                ?>
            </ul>
        </li>
           
        </li>
       
          <li><a href="index.php?quanly=giohang">Giỏ Hàng</a></li>
          <?php
          if(isset($_SESSION['dangky'])){
          ?>
          <li><a href="index.php?dangxuat=1">Đăng Xuất </a></li>
          <li><a href="index.php?quanly=doimatkhau">Đổi Mật Khẩu </a></li>
          <?php
          }else{
          ?>
          <li><a href="index.php?quanly=dangky">Đăng Ký </a></li>
          <?php
          }
          ?>
          


            
            
          
        
         </ul>
         <form action="index.php?quanly=timkiem" method="POST">
         <p><input type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa"><input type ="submit" name="timkiem" value="Tìm kiếm"></p>
         </form>
       </div>