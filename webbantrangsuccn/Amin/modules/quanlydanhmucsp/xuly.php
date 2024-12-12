<?php
//  <form method="POST" action="xuly.php">  doan code nay ben phan them.php dung de dan qua phan xu ly ben nay
include('../../config/config.php');
$tenloaisanpham = $_POST['tendanhmuc'];
$thutu = $_POST['thutu'];
if(isset($_POST['themdanhmuc'])){
    //them
    $sql_them = "INSERT INTO tbl_danhmucsanpham(tendanhmucsanpham,thutu) VALUE('".$tenloaisanpham."','".$thutu."')";
    mysqli_query($mysqli, $sql_them);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
}else if(isset($_POST['suadanhmuc'])){
    //sua
    $sql_update = "UPDATE tbl_danhmucsanpham SET tendanhmucsanpham='".$tenloaisanpham."', thutu='".$thutu."' WHERE id_danhmucsanpham= '$_GET[iddanhmucsanpham]' ";
    mysqli_query($mysqli, $sql_update);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');

}else{
    $id=$_GET['iddanhmucsanpham'];
    $sql_xoa = "DELETE FROM tbl_danhmucsanpham WHERE id_danhmucsanpham='".$id."' ";
    mysqli_query($mysqli, $sql_xoa);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
}

?>