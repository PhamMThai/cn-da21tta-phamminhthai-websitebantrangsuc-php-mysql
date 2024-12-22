<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
   <title>ĐỒ ÁN CHUYÊN NGÀNH</title>
   
   <!-- Thêm favicon -->
   <link rel="icon" href="favicon.ico" type="image/x-icon">
   
   <!-- Liên kết tới các file CSS -->
   <link rel="stylesheet" type="text/css" href="Css/style.css">
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"> <!-- Đường dẫn để icon thùng rác và + - -->
<!-- link boot trap để nhúng các  <div class="col-md-8"> -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
<!-- đoạn js phần chi tiết sp -->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    // Show the first tab and hide the rest
$('#tabs-nav li:first-child').addClass('active');
$('.tab-content').hide();
$('.tab-content:first').show();

// Click function
$('#tabs-nav li').click(function(){
  $('#tabs-nav li').removeClass('active');
  $(this).addClass('active');
  $('.tab-content').hide();
  
  var activeTab = $(this).find('a').attr('href');
  $(activeTab).fadeIn();
  return false;
});
</script>

<!-- <script type="text/javascript">
   jQuery(document).ready(function () {
    var back = jQuery(".prev");
    var next = jQuery(".next");
    var steps = jQuery(".step");

    next.on("click", function () {
        steps.each(function (i) {
            if (jQuery(steps[i]).hasClass("current") && !jQuery(steps[i]).hasClass("done")) {
                jQuery(steps[i]).removeClass("current").addClass("done");
                if (steps[i + 1]) {
                    jQuery(steps[i + 1]).addClass("current");
                }
                return false; 
            }
        });
    });

    back.on("click", function () {
        steps.each(function (i) {
            if (jQuery(steps[i]).hasClass("done") && jQuery(steps[i + 1]).hasClass("current")) {
                jQuery(steps[i + 1]).removeClass("current");
                jQuery(steps[i]).removeClass("done").addClass("current");
                return false; 
            }
        });
    });
});

</script> -->
</html>
