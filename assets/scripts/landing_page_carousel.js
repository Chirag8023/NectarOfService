document.addEventListener("DOMContentLoaded", function() {
    const prevBtn = document.querySelector('.carousel-control.prev');
    const nextBtn = document.querySelector('.carousel-control.next');
    const carouselInner = document.querySelector('.carousel-inner');
    const carouselItems = document.querySelectorAll('.carousel-item');

    let currentIndex = 0;
    let intervalId;

    function goToSlide(index) {
        carouselInner.style.transform = `translateX(-${index * 100}%)`;
        currentIndex = index;
    }

    function nextSlide() {
        currentIndex = (currentIndex === carouselItems.length - 1) ? 0 : currentIndex + 1;
        goToSlide(currentIndex);
    }

    function startAutoSlide() {
        intervalId = setInterval(nextSlide, 3000); // Change slide every 3 seconds
    }

    function stopAutoSlide() {
        clearInterval(intervalId);
    }

    prevBtn.addEventListener('click', function() {
        currentIndex = (currentIndex === 0) ? carouselItems.length - 1 : currentIndex - 1;
        goToSlide(currentIndex);
        stopAutoSlide(); // Stop auto-slide when manual navigation occurs
    });

    nextBtn.addEventListener('click', function() {
        nextSlide();
        stopAutoSlide(); // Stop auto-slide when manual navigation occurs
    });

    startAutoSlide(); // Start auto-slide when page loads
});