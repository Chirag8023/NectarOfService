<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<div class="newsletter">
    <div>
        <h2>Join Newsletter</h2>
    </div>
    <div>
        <p>Get updates about how your contributions are making impact!</p>
        <p id="successMessage" style="color: #c02;"></p>
        <form id="newsletterForm">
            <input type="text" id="name" name="subscriber_name" placeholder="Name" required style="border-top-left-radius:4px; border-bottom-left-radius:4px;">
            <input type="email" id="email" name="subscriber_email" placeholder="Email" required>
            <button type="submit" style="border-top-right-radius:4px; border-bottom-right-radius:4px;">&#8594;</button>
        </form>
    </div>
</div>
<script>
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('newsletterForm');
    const successMessage = document.getElementById('successMessage');

    form.addEventListener('submit', function(event) {
        event.preventDefault();
        
        const formData = new FormData(form);

        fetch('http://localhost/nectarofservice/assets/scripts/submit_newsletter.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.message) {
                successMessage.textContent = data.message;
                form.reset();
                // deselect the input fields
                form.querySelectorAll('input').forEach(input => input.blur());
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    });

});

</script>