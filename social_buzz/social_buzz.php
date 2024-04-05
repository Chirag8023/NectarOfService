<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
<link rel="preload" href="/NectarOfService/assets/fonts/CormorantGaramond-Regular.ttf" as="font" type="font/ttf"
    crossorigin>
<link rel="preload" href="/NectarOfService/assets/fonts/Inter-VariableFont_slnt,wght.ttf" as="font" type="font/ttf"
    crossorigin>
<link rel="preload" href="/NectarOfService/assets/fonts/Bungee-Regular.ttf" as="font" type="font/ttf"
    crossorigin>

<title>Social Buzz</title>
<body class="body">
    <?php include '../assets/header.php'; ?>
    <div id="social-buzz-top">
        <h1 id="inspireHeader">be the voice, that can <span id="inspireWord" style="color:#e593ff"></span></h1>
        <h2>because your words resonate louder</h2>
        <div id="tweets-container"></div>
    </div>
    <div id="social-buzz-middle">
        <h1>Use <span style="color:#9900ff">#NectarOfService</span> on socials to support the cause</h1>
    </div>

    <div id="social-buzz-bottom">
        <h1 style="text-align:center;">have something to share with us?<br>let's share it with everyone!</h1>
        <div id="tweet-popup">
            <textarea id="tweet-text" placeholder="Share your thoughts..." rows="4" maxlength="260"></textarea>
            <div style="display:flex; justify-content:space-between; align-items:baseline;">
                <span id="char-count">260</span>
                <button id="tweet-button">Tweet</button>
            </div>
        </div>
    </div>
    <script src="http://localhost/NectarOfService/assets/scripts/social_buzz_script.js"></script>
</body>
<?php include '../assets/footer.php'; ?>