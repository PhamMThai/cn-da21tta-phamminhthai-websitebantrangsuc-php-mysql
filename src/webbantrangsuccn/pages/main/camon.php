<?php
include('Amin/config/config.php');
if(isset($_GET['partnerCode'])){
$id_khachhang = $_SESSION['id_khachhang'];
$code_order = rand(0,9999);
$partnerCode = $_GET['partnerCode'];
$orderId = $_GET['orderId'];
$amount = $_GET['amount'];
$orderInfo = $_GET['orderInfo'];
$orderType = $_GET['orderType'];
$transId = $_GET['transId'];
$payType = $_GET['payType'];
$cart_payment = 'momo';
$now = date('Y-m-d H:i:s'); // Lấy thời gian hiện tại
//lay id tt van chuyen 
$sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
$id_shipping = $row_get_vanchuyen["id_shipping"];
//insert database momo
$insert_momo = "INSERT INTO tbl_momo(partner_code,order_id,amount,order_info,order_type,trans_id,pay_type,code_cart) VALUE('".$partnerCode."','".$orderId."','".$amount."','".$orderInfo."','".$orderType."','".$transId."','".$payType."','".$code_order."')";
$cart_query = mysqli_query($mysqli,$insert_momo);
if($cart_query){
  $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
    $cart_query = mysqli_query($mysqli,$insert_cart);
 //insert gio hang
 //them don hang chi tiet
 
 foreach($_SESSION['cart'] as $key => $value){
    $id_sanpham = $value['id'];
    $soluong = $value['soluong'];
    $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
  mysqli_query($mysqli,$insert_order_details); 
}
  echo '<h3>Giao dịch thanh toán bằng MOMO thành công</h3>';  
  echo '<p>Vui lòng vào trang <a target="_blank" href="#">Lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
}else{
   echo 'Giao dịch MOMO thất bại';


}

}
?>
<p>Cảm ơn bạn đã đặt hàng, chúng tôi sẽ liên hệ lại cho bạn để xác nhận!</p>
