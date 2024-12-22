document.addEventListener("DOMContentLoaded", function () {
    let currentIndex = 0;
    const slides = document.querySelector('.slides');
    const slideItems = document.querySelectorAll('.slide');
    const dots = document.querySelectorAll('.dot');

    // Kiểm tra nếu không có phần tử nào để tránh lỗi
    if (!slides || slideItems.length === 0 || dots.length === 0) {
        console.error("Không tìm thấy các phần tử .slide hoặc .dot");
        return;
    }

    const totalSlides = slideItems.length;

    function updateDots(index) {
        dots.forEach(dot => dot.classList.remove('active'));
        dots[index].classList.add('active');
    }

    function moveToSlide(index) {
        if (index >= totalSlides) currentIndex = 0;
        if (index < 0) currentIndex = totalSlides - 1;
        
        slides.style.transform = `translateX(-${currentIndex * 100}%)`;
        updateDots(currentIndex);
    }

    function moveSlide(n) {
        currentIndex += n;
        moveToSlide(currentIndex);
    }

    function currentSlide(n) {
        currentIndex = n;
        moveToSlide(currentIndex);
    }

    function autoSlide() {
        currentIndex++;
        moveToSlide(currentIndex);
        setTimeout(autoSlide, 3000); // Tự động chuyển slide sau mỗi 3 giây
    }

    // Khởi tạo carousel
    moveToSlide(currentIndex);
    autoSlide();

    // Gắn sự kiện cho các nút điều khiển
    // document.querySelector('.prev').addEventListener('click', () => moveSlide(-1));
    // document.querySelector('.next').addEventListener('click', () => moveSlide(1));

    // Gắn sự kiện cho các dấu chấm
    dots.forEach((dot, index) => {
        dot.addEventListener('click', () => currentSlide(index));
    });
});
