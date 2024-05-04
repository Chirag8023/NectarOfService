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

    <div style="margin: 5rem 1.5rem; display:flex; flex-direction:column;">
        <h1 style="font-size:2.5rem; line-height:1.3; text-align:center;">
            How all the donation is utilized ?
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

    <h1 style="text-align: center; font-size: 2.3rem;"> Each donation is a step</h1>
    <?php include 'terminal_stats/terminal_stats.php'; ?>
    
    <h1 style="text-align: center; margin: 8rem auto 0 auto; font-size: 2.3rem;"> Every donation counts towards goal of making a difference</h1>
    <div style="display:flex; width:70%; margin: 5rem auto; justify-content:space-around; align-items: center; margin-bottom: 8rem;">
            <a href="https://forms.gle/H8swUTSpBsi6c5sD9" target="_blank" style="text-decoration: none; display:flex;">
                <button class="final-button">Become Patron</button>
            </a>
            <h2>Now choice is yours</h2>    
            <a href="http://localhost/NectarOfService/fundraiser/campaigns_home.php" style="text-decoration: none; display:flex;">
                <button class="final-button">Make Donation</button>
            </a>
    </div>
    
    <?php include 'newsletter/newsletter.php'; ?>

    <?php include 'footer.php'; ?>
    <script src="http://localhost/NectarOfService/assets/scripts/landing_page_carousel.js"></script>
</body>