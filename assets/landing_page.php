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
    
    <h1 style="display: flex; justify-content: center; font-family: 'bungee'; font-weight: 100; text-shadow: 0rem 0.25rem #ffc900aa; font-size: 3.5rem; margin-bottom:0;">
        The world is yours to build
    </h1>
    <div class="terminal-section">
        <?php include 'terminal_stats/terminal_stats.php'; ?>
        <div class="red-indicator"></div>
        <p style="flex:1; font-weight:700; font-size:2rem;">Join the movement!<br><br> Every donation counts towards goal of making a difference.<br><br><a href="http://localhost/NectarOfService/fundraiser/campaigns_home.php"><button style="padding:0.8rem 2rem; font-size:1.6rem; font-weight:700;" class="header-button"> Make Difference </button></a></p>
    </div>
    
    <?php include 'newsletter/newsletter.php'; ?>

    <?php include 'footer.php'; ?>
</body>