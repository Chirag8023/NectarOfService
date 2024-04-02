<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">

<div class="footer">
    <div class="footer-content">
        <div class="f-content-left">
            <div class="footer-logo">NectarOfService</div>
            <div class="social-links">
                <a href="https://www.youtube.com/" target="_blank" class="social-link">Youtube</a>
                <a href="https://twitter.com/" target="_blank" class="social-link">Twitter</a>
                <a href="https://www.instagram.com/" target="_blank" class="social-link">Instagram</a>
            </div>
        </div>
        <div class="middle">
            <div class="middle-footer-quote">
                <h3>"Your inspiring quote here."</h3>
            </div>
            <div class="middle-quote-name">
                <p><b>@username</b></p>
            </div>
        </div>
        <div class="common-links">
            <a href="http://localhost/NectarOfService/assets/about.php" class="common-link">About</a>
            <a href="http://localhost/NectarOfService/assets/contact.php" class="common-link">Contact</a>
            <!-- Add more common links as needed -->
        </div>
    </div>
</div>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Function to get a random quote and username pair
    function getRandomQuoteAndUsername() {
        var quoteAndUsernames = [{
                quote: "The only way to do great work is to love what you do.",
                username: "Steve Jobs"
            },
            {
                quote: "Believe you can and you're halfway there.",
                username: "Theodore Roosevelt"
            },
            {
                quote: "It always seems impossible until it's done.",
                username: "Nelson Mandela"
            },
            {
                quote: "Strive not to be a success, but rather to be of value.",
                username: "Albert Einstein"
            },
            {
                quote: "The best way to predict the future is to create it.",
                username: "Peter Drucker"
            },
            {
                quote: "Success is not final, failure is not fatal: It is the courage to continue that counts.",
                username: "Winston Churchill"
            },
            {
                quote: "Your time is limited, don't waste it living someone else's life.",
                username: "Steve Jobs"
            },
            {
                quote: "The only limit to our realization of tomorrow will be our doubts of today.",
                username: "Franklin D. Roosevelt"
            },
            {
                quote: "Don't watch the clock; do what it does. Keep going.",
                username: "Sam Levenson"
            },
            {
                quote: "The only person you are destined to become is the person you decide to be.",
                username: "Ralph Waldo Emerson"
            },
            {
                quote: "You miss 100% of the shots you don't take.",
                username: "Wayne Gretzky"
            },
            {
                quote: "The future belongs to those who believe in the beauty of their dreams.",
                username: "Eleanor Roosevelt"
            },
            {
                quote: "Success is stumbling from failure to failure with no loss of enthusiasm.",
                username: "Winston Churchill"
            },
            {
                quote: "Strive not to be successful, but rather to be of value.",
                username: "Albert Einstein"
            },
            {
                quote: "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.",
                username: "Jordan Belfort"
            }
            // Add more quote and username pairs as needed
        ];
        var randomIndex = Math.floor(Math.random() * quoteAndUsernames.length);
        return quoteAndUsernames[randomIndex];
    }

    // Update the quote and username elements
    var quoteElement = document.querySelector('.middle-footer-quote h3');
    var usernameElement = document.querySelector('.middle-quote-name b');

    if (quoteElement && usernameElement) {
        var randomQuoteAndUsername = getRandomQuoteAndUsername();
        quoteElement.textContent = randomQuoteAndUsername.quote;
        usernameElement.textContent = '- ' + randomQuoteAndUsername.username;
    }
});
</script>