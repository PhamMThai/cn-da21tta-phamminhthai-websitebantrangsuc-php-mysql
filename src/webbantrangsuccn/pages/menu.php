<?php 
$sql_danhmucsanpham = "SELECT * FROM tbl_danhmucsanpham ORDER BY id_danhmucsanpham DESC";
$query_danhmucsanpham = mysqli_query($mysqli, $sql_danhmucsanpham);

$sql_danhmucbaiviet = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_baiviet DESC";
$query_danhmucbaiviet = mysqli_query($mysqli, $sql_danhmucbaiviet);

// Danh sách banner tương ứng với danh mục
$categoryBanners = [
    '1' => 'images/nhan.jpg',               // ID 1: Nhẫn
    '6' => 'images/daychuyen.jpg',  // ID 6: Dây chuyền
    '3' => 'images/bongtai.jpg',            // ID 3: Bông tai
    '5' => 'images/vong.jpg',            // ID 5: Bông tai
    '4' => 'images/lac.jpg',            // ID 4: Bông tai
    '7' => 'images/matdc.jpg',            // ID 7: Mặt Dây Chuyền
    '8' => 'images/charm.jpg',            // ID 8: Mặt Dây Chuyền
    // Thêm các danh mục khác tương ứng tại đây
];

// Kiểm tra nếu đăng xuất
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
    unset($_SESSION['dangky']);
}
?>

<div class="menu">
    <ul class="list_menu">
        <li><a href="index.php">Trang Chủ</a></li>
        <?php while ($row_danhmucsanpham = mysqli_fetch_array($query_danhmucsanpham)) { ?>
            <li>
                <a href="index.php?quanly=danhmucsanpham&id=<?php echo $row_danhmucsanpham['id_danhmucsanpham']; ?>">
                    <?php echo $row_danhmucsanpham['tendanhmucsanpham']; ?>
                </a>
            </li>
        <?php } ?>
        
        <?php while ($row_danhmucbaiviet = mysqli_fetch_array($query_danhmucbaiviet)) { ?>
            <li>
                <a href="index.php?quanly=danhmucbaiviet&id=<?php echo $row_danhmucbaiviet['id_baiviet']; ?>">
                    <?php echo $row_danhmucbaiviet['tendanhmuc_baiviet']; ?>
                </a>
            </li>
        <?php } ?>
        
        <li><a href="index.php?quanly=giohang">Giỏ Hàng</a></li>
        <?php if (isset($_SESSION['dangky'])) { ?>
            <li><a href="index.php?dangxuat=1">Đăng Xuất</a></li>
            <li><a href="index.php?quanly=doimatkhau">Đổi Mật Khẩu</a></li>
        <?php } else { ?>
            <li><a href="index.php?quanly=dangky">Đăng Ký</a></li>
        <?php } ?>
    </ul>

    <form action="index.php?quanly=timkiem" method="POST">
        <p>
            <input type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa">
            <input type="submit" name="timkiem" value="Tìm kiếm">
        </p>
    </form>
</div>

<?php
// Hiển thị banner tương ứng với danh mục sản phẩm
if (isset($_GET['quanly']) && $_GET['quanly'] == 'danhmucsanpham' && isset($_GET['id'])) {
    $id_danhmuc = $_GET['id'];
    if (isset($categoryBanners[$id_danhmuc])) {
        echo '<div class="category-banner">';
        echo '<img src="' . $categoryBanners[$id_danhmuc] . '" alt="Banner danh mục" class="category-image">';
        echo '</div>';
    }
}
?>
