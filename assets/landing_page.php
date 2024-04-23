<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<title> NectarOfService </title>

<body class='body'>
    <?php include 'header.php'; ?>
    <div style="
      background-image:url(http://localhost/NectarOfService/assets/images/landing.svg); background-size:cover;
margin-right:-0.5rem; margin-left:-1%; padding-left: 0.8rem; border-bottom: 2px solid black; margin-bottom: 5%;">
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

    <div class="backlines">
        <p>
            ate inspire contribute donate inspire contribute
        </p>
    </div>

    <h1 style="display: flex; justify-content: center; font-family: 'bungee'; font-weight: 100; text-shadow: 0rem 0.2rem #ffc900; font-size: 3.5rem;">
        Shape the world through service
    </h1>

    <div class="backlines">
        <p>
            spire contribute donate inspire contribute donate
        </p>
    </div>

    <div style="margin-bottom:1rem;">
        <?php include 'terminal_stats/terminal_stats.php'; ?>
    </div>

    <?php include 'newsletter/newsletter.php'; ?>
    <?php include 'footer.php'; ?>
</body>