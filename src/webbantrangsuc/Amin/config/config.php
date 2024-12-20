<?php
//https://www.w3schools.com/php/func_mysqli_connect.asp lay code tren day
$mysqli = new mysqli("localhost","root","","web_bantrangsuc");

// Check connection
if ($mysqli->connect_errno) {
  echo "Kết nối WEBBANTRANGSUC bị lỗi " . $mysqli->connect_error;
  exit();
}
?>