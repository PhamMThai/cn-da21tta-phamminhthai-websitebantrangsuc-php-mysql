<?php
// Kiểm tra nếu không có tham số 'quanly' trong URL, đây là trang chủ
$isHomePage = !isset($_GET['quanly']);
?>

<!-- Phần Banner Quảng Cáo: Chỉ hiển thị trên trang chủ -->
<?php if ($isHomePage): ?>
    <div class="promo-banner">
        <div class="promo-left">
            <img src="images/iconbanner.jpg" alt="Icon" class="promo-icon">
        </div>
        <div class="promo-middle">
            <span class="promo-text">QUÀ TẶNG CHÀO BẠN MỚI ĐẾN</span>
            <span class="promo-amount">1.300.000Đ</span>
        </div>
        <div class="promo-right">
            <button class="promo-btn">NHẬN QUÀ NGAY</button>
        </div>
    </div>
<?php endif; ?>

<!-- Phần Header với Logo: Luôn hiển thị -->
<div class="header">
    <img src="images/logochuyennganh.jpg" alt="Logo" class="header-logo">
</div>

<!-- Phần Carousel (Banner chạy tự động): Chỉ hiển thị trên trang chủ -->
<?php if ($isHomePage): ?>
    <div class="carousel">
        <div class="slides">
            <!-- Slide 1 -->
            <div class="slide active">
                <img src="images/banner4.jpg" alt="Banner 1">
            </div>
            <!-- Slide 2 -->
            <div class="slide">
                <img src="images/banner5.jpg" alt="Banner 2">
            </div>
            <!-- Slide 3 -->
            <div class="slide">
                <img src="images/banner6.jpg" alt="Banner 3">
            </div>
            <!-- Slide 4 -->
            <div class="slide">
                <img src="images/banner1.jpg" alt="Banner 4">
            </div>
        </div>

        <!-- Nút điều khiển -->
        <!-- <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
        <button class="next" onclick="moveSlide(1)">&#10095;</button> -->

        <!-- Dấu chấm chỉ số (pagination) -->
        <div class="dots">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
        </div>
    </div>
<?php endif; ?>

<!-- JavaScript Carousel -->
<script src="js/carousel.js" defer></script>
