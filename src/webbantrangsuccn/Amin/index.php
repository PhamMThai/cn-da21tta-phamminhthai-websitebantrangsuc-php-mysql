<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="css/styleadmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <?php
    //thống kê bieu do
    ?>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
</head>
<?php
session_start();
if(!isset($_SESSION['dangnhap'])){ //! la dau k ton tai
    header('Location:login.php');

}

?>
<body>
    <h3 class="title_admin">Welcome to Admin</h3>
    <div class="wrapper">
    <?php 
         include("config/config.php");
         include("modules/header.php");
         include("modules/menu.php");
         include("modules/main.php");
         include("modules/footer.php");

      ?>

    </div>
    <?php
    //thống kê biêu đồ
    //có nhiều dạng biểu đồ có thể thay đổi (Line, Area, Donut, Bar)
    ?>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        thongke();
        var char = new Morris.Area ({
  
  element: 'chart',
  
  xkey: 'date',
 
  ykeys: ['date','oder', 'sales', 'quantity'],
 
  labels: ['Đơn hàng', 'Doanh thu', 'Số lượng bán ra']
}); 
   $('.select-date').change(function(){
    var thoigian = $(this).val();
    if(thoigian=='7ngay'){
      var text = '7 ngày qua';
    }else if(thoigian=='28ngay'){
      var text = '28 ngày qua';
    }else if(thoigian=='90ngay'){
      var text = '90 ngày qua';
    }else{
      var text = '365 ngày qua';
    }
   
    $.ajax({
          url:"modules/thongke.php",
          method:"POST",
          dataType:"JSON",
          data:{thoigian:thoigian},
          success:function(data)
          {
            char.setData(data);
            $('#text-date').text(text);
          }
        });

   })
      function thongke(){
        var text = '365 ngày qua';
        $('#text-date').text(text);
        $.ajax({
          url:"modules/thongke.php",
          method:"POST",
          dataType:"JSON",

          success:function(data)
          {
            char.setData(data);
            $('#text-date').text(text);
          }
        });
      }
});
    </script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>  <?php // link lay bai viet ?>
    <script src="//cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>  <?php // link lay bai viet ?>
    <script>
						CKEDITOR.replace( 'tomtat' );
            CKEDITOR.replace( 'noidung' ); <?php // link lay bai viet ?>
				</script>
</body>
</html>