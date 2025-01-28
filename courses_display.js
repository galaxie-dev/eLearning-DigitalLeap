document.addEventListener('DOMContentLoaded', (event) => {
    console.log('Course details loaded');
    
    // Example: Smooth scrolling to sections
    document.querySelectorAll('h2').forEach(header => {
        header.addEventListener('click', function(e) {
            e.preventDefault();
            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });
});