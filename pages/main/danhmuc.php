<?php
// Phân trang
$id_danhmuc = isset($_GET['id']) ? $_GET['id'] : 0;
$limit = 8; // Số sản phẩm mỗi trang
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;

// Lấy danh sách sản phẩm thuộc danh mục với phân trang
$sql_pro = "SELECT * FROM tbl_sanpham WHERE id_danhmuc='$id_danhmuc' ORDER BY id_sanpham DESC LIMIT $offset, $limit";
$query_pro = mysqli_query($mysqli, $sql_pro);

// Lấy tổng số sản phẩm để tính tổng số trang
$sql_count = "SELECT COUNT(*) as total FROM tbl_sanpham WHERE id_danhmuc='$id_danhmuc'";
$query_count = mysqli_query($mysqli, $sql_count);
$row_count = mysqli_fetch_array($query_count);
$total_pages = ceil($row_count['total'] / $limit);
?>

<!-- Danh sách sản phẩm -->
<ul class="product_list">
<?php
while ($row = mysqli_fetch_array($query_pro)) { 
?>
    <li>
        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']; ?>">
            <img src="Amin/modules/quanlysp/uploads/<?php echo $row['hinhanh']; ?>" alt="<?php echo $row['tensanpham']; ?>">
            <p class="title_product"> <?php echo $row['tensanpham']; ?></p>
            <p class="price_product"> 
                <?php 
                if (!empty($row['giasanpham']) && is_numeric($row['giasanpham'])) {
                    echo str_replace(',', '.', number_format((float)$row['giasanpham'])) . ' VNĐ';
                } else {
                    echo 'Liên hệ';
                }
                ?>
            </p>
        </a>
    </li>
<?php } ?>
</ul>

<!-- Phân trang -->
<?php
// Tính tổng số trang cho danh mục hiện tại
$sql_trang = "SELECT * FROM tbl_sanpham WHERE id_danhmuc='$id_danhmuc'";
$query_trang = mysqli_query($mysqli, $sql_trang);
$row_count = mysqli_num_rows($query_trang);
$total_pages = ceil($row_count / $limit);
?>

<!-- Phân trang căn giữa -->
<div class="pagination-container">
    <span class="pagination-text">Trang:</span>
    <ul class="list_trang">
        <?php for ($i = 1; $i <= $total_pages; $i++) { ?>
            <li class="<?php echo ($i == $page) ? 'active' : ''; ?>">
                <!-- Thêm `id` vào đường dẫn để giữ đúng danh mục -->
                <a href="index.php?quanly=danhmucsanpham&id=<?php echo $id_danhmuc; ?>&page=<?php echo $i; ?>">
                    <?php echo $i; ?>
                </a>
            </li>
        <?php } ?>
    </ul>
</div>


<!-- CSS -->
<style type="text/css">
    /* Danh sách sản phẩm */
    ul.product_list {
        padding: 0;
        list-style: none;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        margin-top: 20px;
    }
    ul.product_list li {
        width: 22%;
        margin: 10px;
        box-sizing: border-box;
        text-align: center;
        list-style: none;
        border: 1px dotted #d1d1d1;
        padding: 10px;
        background-color: #f9f9f9;
        border-radius: 8px;
    }
    .product_image {
        display: block;
        margin: 0 auto;
        width: auto;
        height: 200px;
        object-fit: contain;
    }
    .title_product {
        font-weight: bold;
        margin: 10px 0;
    }
    .price_product {
        color: #009900;
        font-weight: bold;
        margin: 10px 0;
    }

    /* Phân trang */
    .pagination-container {
        display: flex;
        justify-content: center; /* Căn giữa toàn bộ container */
        align-items: center; /* Căn giữa theo chiều dọc */
        margin: 20px auto;
    }
    .pagination-text {
        margin-right: 10px;
        font-weight: bold;
    }
    ul.list_trang {
        padding: 0;
        margin: 0;
        list-style: none;
        display: flex;
        justify-content: center;
        gap: 10px;
    }
    ul.list_trang li {
        background: turquoise;
        padding: 5px 10px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    ul.list_trang li.active {
        background-color: #ff9933;
        font-weight: bold;
    }
    ul.list_trang li a {
        color: white;
        text-decoration: none;
    }
    ul.list_trang li a:hover {
        color: #000;
    }
</style>
