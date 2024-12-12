<?php
//  <form method="POST" action="xuly.php">  doan code nay ben phan them.php dung de dan qua phan xu ly ben nay
include('../../config/config.php');
$tenbaiviet = $_POST['tenbaiviet'];


// Xử lý hình ảnh chính
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time() . '_' . $hinhanh;

$tomtat = $_POST['tomtat'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];

if (isset($_POST['thembaiviet'])) {
    // Thêm sản phẩm mới vào bảng tbl_sanpham
    $sql_them = "INSERT INTO tbl_baiviet(tenbaiviet, hinhanh, tomtat, noidung, tinhtrang, id_danhmuc) 
                VALUES ('$tenbaiviet', '$hinhanh', '$tomtat', '$noidung', '$tinhtrang', '$danhmuc')";
    mysqli_query($mysqli, $sql_them);
    move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);
    header('Location:../../index.php?action=quanlybaiviet&query=them');

} 
elseif (isset($_POST['suabaiviet'])) {
    // Sửa sản phẩm
    if (!empty($_FILES['hinhanh']['name'])) {
        move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);
        $sql_update = "UPDATE tbl_baiviet SET tenbaiviet='$tenbaiviet', hinhanh='$hinhanh', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang', id_danhmuc='$danhmuc' WHERE baiviet_id='$_GET[idbaiviet]'";
        
        // Xóa hình ảnh cũ
        $sql = "SELECT * FROM tbl_baiviet WHERE baiviet_id='$_GET[idbaiviet]' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['hinhanh']);
        }
    } else {
        $sql_update = "UPDATE tbl_baiviet SET tenbaiviet='$tenbaiviet', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang', id_danhmuc='$danhmuc' WHERE baiviet_id='$_GET[idbaiviet]'";
    }
    mysqli_query($mysqli, $sql_update);
    header('Location:../../index.php?action=quanlybaiviet&query=them');

    
}
 else {
    // Xóa sản phẩm
    $id = $_GET['idbaiviet'];
    $sql = "SELECT * FROM tbl_baiviet WHERE baiviet_id='$id' LIMIT 1";
    $query = mysqli_query($mysqli, $sql);
    while ($row = mysqli_fetch_array($query)) {
        unlink('uploads/' . $row['hinhanh']);
    }
 // Xóa sản phẩm
 $sql_xoa = "DELETE FROM tbl_baiviet WHERE baiviet_id='$id'";
 mysqli_query($mysqli, $sql_xoa);
 header('Location:../../index.php?action=quanlybaiviet&query=them');
   
}
?>
