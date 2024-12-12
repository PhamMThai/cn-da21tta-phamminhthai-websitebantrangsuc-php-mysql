<?php
// Kết nối database và truy vấn sản phẩm mới nhất với phân trang
$limit = 4; // Hiển thị 4 sản phẩm mỗi trang
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;

$sql_pro = "SELECT * FROM tbl_sanpham 
            JOIN tbl_danhmucsanpham 
            ON tbl_sanpham.id_danhmuc = tbl_danhmucsanpham.id_danhmucsanpham 
            ORDER BY tbl_sanpham.id_sanpham DESC 
            LIMIT $offset, $limit";
$query_pro = mysqli_query($mysqli, $sql_pro);

// Kiểm tra nếu truy vấn không thành công
if (!$query_pro) {
    echo "Lỗi truy vấn: " . mysqli_error($mysqli);
    exit();
}
?>

<h3>Sản Phẩm Mới Nhất</h3>
<ul class="product_list">
    <?php while ($row = mysqli_fetch_array($query_pro)) { ?>
        <li>
            <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham']; ?>">
                <img src="Amin/modules/quanlysp/uploads/<?php echo $row['hinhanh']; ?>" 
                     alt="<?php echo $row['tensanpham']; ?>" class="product_image">
                <p class="title_product"><?php echo $row['tensanpham']; ?></p>
                <p class="price_product"><?php echo number_format($row['giasanpham']) . ' VNĐ'; ?></p>
                
            </a>
        </li>
    <?php } ?>
</ul>

<!-- Phân trang -->
<?php
// Tính tổng số trang
$sql_trang = "SELECT * FROM tbl_sanpham";
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
                <a href="index.php?page=<?php echo $i; ?>"><?php echo $i; ?></a>
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
