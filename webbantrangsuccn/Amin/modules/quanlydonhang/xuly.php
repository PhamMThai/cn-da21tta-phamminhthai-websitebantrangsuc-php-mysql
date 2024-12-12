<?php
require('../../../carbon/autoload.php');
include('../../config/config.php');
use Carbon\Carbon;
$now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

if (isset($_GET['code'])) {
    $code_cart = $_GET['code'];

    // Cập nhật trạng thái giỏ hàng
    $sql_update = "UPDATE tbl_cart SET cart_status=0 WHERE code_cart='$code_cart'";
    $query = mysqli_query($mysqli, $sql_update);

    // Lấy dữ liệu chi tiết đơn hàng
    $sql_lietke_dh = "SELECT * FROM tbl_cart_details, tbl_sanpham 
                      WHERE tbl_cart_details.id_sanpham=tbl_sanpham.id_sanpham 
                      AND tbl_cart_details.code_cart='$code_cart'";
    $query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);

    // Lấy thông tin thống kê theo ngày
    $sql_thongke = "SELECT * FROM tbl_thongke WHERE ngaydat='$now'";
    $query_thongke = mysqli_query($mysqli, $sql_thongke);

    // Tính doanh thu và số lượng mua
    $soluongmua = 0;
    $doanhthu = 0;
    while ($row = mysqli_fetch_array($query_lietke_dh)) {
        $soluongmua += $row['soluongmua'];
        $doanhthu += $row['soluongmua'] * $row['giasanpham'];
    }

    // Cập nhật hoặc thêm mới thống kê
    if (mysqli_num_rows($query_thongke) == 0) {
        $donhang = 1;
        $soluongban = $soluongmua;
        $sql_update_thongke = "INSERT INTO tbl_thongke (ngaydat, donhang, doanhthu, soluongban) 
                               VALUES ('$now', '$donhang', '$doanhthu', '$soluongban')";
    } else {
        while ($row_tk = mysqli_fetch_array($query_thongke)) {
            $donhang = $row_tk['donhang'] + 1;
            $doanhthu += $row_tk['doanhthu'];
            $soluongban = $row_tk['soluongban'] + $soluongmua;
        }
        $sql_update_thongke = "UPDATE tbl_thongke 
                               SET donhang='$donhang', doanhthu='$doanhthu', soluongban='$soluongban' 
                               WHERE ngaydat='$now'";
    }

    mysqli_query($mysqli, $sql_update_thongke);
    header('Location:../../index.php?action=quanlydonhang&query=lietke');
}
?>
