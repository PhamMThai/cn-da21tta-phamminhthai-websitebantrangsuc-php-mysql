<!-- Phần Banner Quảng Cáo -->
<!-- <div class="promo-banner">
    <div class="promo-content">
        <span class="promo-text">QUÀ TẶNG CHÀO BẠN MỚI ĐẾN 1.300.000Đ</span>
        <button class="promo-btn">NHẬN QUÀ NGAY</button>
    </div>
</div> -->

<!-- Phần Header với Logo -->
<div class="header">
    <img src="images/logonhom.jpg" alt="Logo" class="header-logo">
</div>

<!-- Phần Carousel (Banner chạy tự động) -->
<div class="carousel">
    <div class="slides">
        <!-- Slide 1 -->
        <div class="slide active">
            <img src="images/banner1.jpg" alt="Banner 1">
        </div>
        <!-- Slide 2 -->
        <div class="slide">
            <img src="images/banner2.jpg" alt="Banner 2">
        </div>
        <!-- Slide 3 -->
        <div class="slide">
            <img src="images/banner3.jpg" alt="Banner 3">
        </div>
    </div>

    <!-- Nút điều khiển -->
    <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
    <button class="next" onclick="moveSlide(1)">&#10095;</button>

    <!-- Dấu chấm chỉ số (pagination) -->
    <div class="dots">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
</div>
<script src="js/carousel.js" defer></script>
