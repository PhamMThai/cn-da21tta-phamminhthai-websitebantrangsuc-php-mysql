<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>CỬA HÀNG TRANG SỨC</title>
   
   <!-- Thêm favicon -->
   <link rel="icon" href="favicon.ico" type="image/x-icon">
   
   <!-- Liên kết tới các file CSS -->
   <link rel="stylesheet" type="text/css" href="Css/style.css">
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"> <!-- Đường dẫn để icon thùng rác và + - -->
</head>
<body>
  <div class="wrapper">
      <?php 
         session_start(); // Bắt đầu session để lưu trữ và sử dụng thông tin giỏ hàng
         include("Amin/config/config.php");
         include("pages/header.php");
         include("pages/menu.php");
         include("pages/main.php");
         include("pages/footer.php");

      ?>
  </div>
</body>
</html>
