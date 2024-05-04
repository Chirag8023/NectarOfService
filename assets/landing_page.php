<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<title> NectarOfService </title>

<body class='body'>
    <?php include 'header.php'; ?>
    <div style="
      background-image:url(http://localhost/NectarOfService/assets/images/duotone.png); background-size:cover;
margin-right:-0.5rem; margin-left:-1%; padding-left: 0.8rem; border-bottom: 2px solid black;">
        <div class="main-container">
            <!-- Left section -->
            <div class="left-section">
                <h1>Service is our constitution</h1>
                <p>so let's serve to greater cause.</p><br>
                <a href="http://localhost/NectarOfService/fundraiser/campaigns_home.php"><button
                        class="join-now-button">Explore</button></a>
            </div>

            <!-- Right section -->
            <div class="right-section">
                <img src="http://localhost/NectarOfService/assets/images/main.png" alt="main_image"
                    style="width: 100%;">
            </div>
        </div>
    </div>

    <h1 style="text-align:center; font-weight: 700; font-size: 2.7rem; margin:4rem auto;">
        Welcome to <span style="color:#e02;">NectarOfService</span>, Inspired by <br>
        real-world impact stories, we aim to <br> simplify the ability to donate.
    </h1>


    <div class="carousel">
        <div class="carousel-inner">
            <div class="carousel-item">
                <img src="http://localhost/NectarOfService/assets/images/1.png" alt="Slide 1">
            </div>
            <div class="carousel-item">
                <img src="http://localhost/NectarOfService/assets/images/2.png" alt="Slide 2">
            </div>
            <div class="carousel-item">
                <img src="http://localhost/NectarOfService/assets/images/3.png" alt="Slide 3">
            </div>
        </div>
        <label for="carousel-3" class="carousel-control prev">←</label>
        <label for="carousel-2" class="carousel-control next">→</label>
    </div>

    <div style="margin:8rem 1.5rem 6rem 1.5rem; display:flex; flex-direction:column;">
        <h1 style="font-size:2.5rem; line-height:1.3; text-align:center;">
            How is your donation utilized?
        </h1>
        <div style="display:flex;">
            <div style="width:50%; display:flex; flex-direction:column; align-items:center; text-align:center;">
                <img src="http://localhost/nectarofservice/assets/images/3d-fluency-yellow-heart.png" width="150rem">
                <h1 style="align-self:center; font-size:1.6rem; font-weight:705;">Feeding<br>The Souls</h1>
            </div>
            <div style="width:50%; display:flex; flex-direction:column; align-items:center; text-align:center;">
                <img src="http://localhost/nectarofservice/assets/images/3d-fluency-lotus.png" width="150rem">
                <h1 style="align-self:center; font-size:1.6rem; font-weight:705;">Building<br>Temples</h1>
            </div>
            <div style="width:50%; display:flex; flex-direction:column; align-items:center; text-align:center;">
                <img src="http://localhost/nectarofservice/assets/images/3d-fluency-smiling-face-with-smiling-eyes-emoji.png" width="150rem">
                <h1 style="align-self:center; font-size:1.6rem; font-weight:705;">Spreading<br>Joy</h1>
            </div>
            <div style="width:50%; display:flex; flex-direction:column; align-items:center; text-align:center;">
                <img src="http://localhost/nectarofservice/assets/images/3d-fluency-people.png" width="150rem">
                <h1 style="align-self:center; font-size:1.6rem; font-weight:705;">Community<br> Empowerment</h1>
            </div>
        </div>
    </div>

    <div class="patron-section">
        <div style="flex:1; padding: 2rem;">
            <h1 style="font-weight:700; font-size:2.5rem;">Founder Patron Program</h1>
            <p style="font-weight:500; font-size:1.5rem;">Join our patron program today and be part of mission to serve.</p>
        </div>
        <a href="https://forms.gle/H8swUTSpBsi6c5sD9" target="_blank" style="text-decoration: none; margin:1rem; display:flex;">
            <button class="patron-button">Become Patron</button>
            <button class="patron-button" style="border-left:none; background:#000; color:#fff; font-size:3rem; padding:0 1rem;">
                <span style="transform:translateY(0.8rem);">↗</span>
            </button>
        </a>
    </div>

    <div class="terminal-section">
        <?php include 'terminal_stats/terminal_stats.php'; ?>
        <p style="flex:1; font-weight:700; font-size:2rem;">
            Join the movement!<br><br>Every donation counts towards goal of making a difference.<br><br>
                <a href="http://localhost/NectarOfService/fundraiser/campaigns_home.php">
                    <button style="padding:0.8rem 2rem; font-size:1.6rem; font-weight:700;" class="header-button"> Make Difference </button>
                </a>
        </p>
    </div>

    <?php include 'newsletter/newsletter.php'; ?>

    <?php include 'footer.php'; ?>
    <script src="http://localhost/NectarOfService/assets/scripts/landing_page_carousel.js"></script>
</body>