<?php
//  <form method="POST" action="xuly.php">  doan code nay ben phan them.php dung de dan qua phan xu ly ben nay
include('../../config/config.php');
$tensanpham = $_POST['tensanpham'];
$masanpham = $_POST['masanpham'];
$giasanpham = $_POST['giasanpham'];
$soluong = $_POST['soluong'];

// Xử lý hình ảnh chính
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time() . '_' . $hinhanh;

$tomtat = $_POST['tomtat'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];

if (isset($_POST['themsanpham'])) {
    // Thêm sản phẩm mới vào bảng tbl_sanpham
    $sql_them = "INSERT INTO tbl_sanpham(tensanpham, masanpham, giasanpham, soluong, hinhanh, tomtat, noidung, tinhtrang, id_danhmuc) 
                VALUES ('$tensanpham', '$masanpham', '$giasanpham', '$soluong', '$hinhanh', '$tomtat', '$noidung', '$tinhtrang', '$danhmuc')";
    mysqli_query($mysqli, $sql_them);
    move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);

    // Lấy ID sản phẩm vừa thêm
    $id_sanpham = mysqli_insert_id($mysqli);

    // Xử lý hình ảnh phụ
    if (!empty($_FILES['hinhanh_phu']['name'][0])) {
        foreach ($_FILES['hinhanh_phu']['name'] as $key => $value) {
            $hinhanh_phu = $_FILES['hinhanh_phu']['name'][$key];
            $hinhanh_phu_tmp = $_FILES['hinhanh_phu']['tmp_name'][$key];
            $hinhanh_phu_name = time() . '_' . $hinhanh_phu;

            // Di chuyển hình ảnh phụ vào thư mục uploads
            move_uploaded_file($hinhanh_phu_tmp, 'uploads/' . $hinhanh_phu_name);

            // Thêm hình ảnh phụ vào bảng tbl_hinhanh_phu
            $sql_hinhanh_phu = "INSERT INTO tbl_hinhanh_phu(id_sanpham, hinhanh_phu) 
                                VALUES ('$id_sanpham', '$hinhanh_phu_name')";
            mysqli_query($mysqli, $sql_hinhanh_phu);
        }
    }

    header('Location:../../index.php?action=quanlysp&query=them');

} elseif (isset($_POST['suasanpham'])) {
    // Sửa sản phẩm
    if (!empty($_FILES['hinhanh']['name'])) {
        move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='$tensanpham', masanpham='$masanpham', giasanpham='$giasanpham', soluong='$soluong', hinhanh='$hinhanh', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang', id_danhmuc='$danhmuc' WHERE id_sanpham='$_GET[idsanpham]'";
        
        // Xóa hình ảnh cũ
        $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['hinhanh']);
        }
    } else {
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='$tensanpham', masanpham='$masanpham', giasanpham='$giasanpham', soluong='$soluong', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang', id_danhmuc='$danhmuc' WHERE id_sanpham='$_GET[idsanpham]'";
    }
    mysqli_query($mysqli, $sql_update);
    header('Location:../../index.php?action=quanlysp&query=them');
    
} else {
    // Xóa sản phẩm
    $id = $_GET['idsanpham'];
    $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$id' LIMIT 1";
    $query = mysqli_query($mysqli, $sql);
    while ($row = mysqli_fetch_array($query)) {
        unlink('uploads/' . $row['hinhanh']);
    }

    // Xóa hình ảnh phụ
    $sql_phu = "SELECT * FROM tbl_hinhanh_phu WHERE id_sanpham='$id'";
    $query_phu = mysqli_query($mysqli, $sql_phu);
    while ($row_phu = mysqli_fetch_array($query_phu)) {
        unlink('uploads/' . $row_phu['hinhanh_phu']);
    }
    $sql_xoa_phu = "DELETE FROM tbl_hinhanh_phu WHERE id_sanpham='$id'";
    mysqli_query($mysqli, $sql_xoa_phu);

    // Xóa sản phẩm
    $sql_xoa = "DELETE FROM tbl_sanpham WHERE id_sanpham='$id'";
    mysqli_query($mysqli, $sql_xoa);
    header('Location:../../index.php?action=quanlysp&query=them');
}
?>
