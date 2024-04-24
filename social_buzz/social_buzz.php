<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<title>Social Buzz</title>
<body class="body">
    <?php include '../assets/header.php'; ?>
    <div id="social-buzz-top">
        <h1 id="inspireHeader">be the voice, that can <span id="inspireWord" style="color:#ff9800"></span></h1>
        <h2>because your words resonate louder</h2>
        <div id="tweets-container"></div>
    </div>
    <div id="social-buzz-middle">
        <h1>Use <span style="color:#ef0028">#NectarOfService</span> on socials to support the cause</h1>
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
    
    <div id="social-buzz-middle">
        <h1 style="text-align:left;">Looking for <span style="color:#ef0028">Volunteer Opportunities ?</span> Check out our Volunteer Hub. 👇🏻</h1>
    </div>

    <div style="display: flex; justify-content: center; margin:4rem 0;">
    <iframe src="https://e.widgetbot.io/channels/1230099532336070656/1230099532336070659" allow="clipboard-write; fullscreen" height="500" width="1000"></iframe>    
    </div>

    <script src="http://localhost/NectarOfService/assets/scripts/social_buzz_script.js"></script>
</body>
<?php include '../assets/footer.php'; ?>