<head>
<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
</head>
<body class='body'>
    <?php include 'header.php'; ?>
    <div style="
      --s: 7200px; /* control the size */
      --c: #ffc900;
      
      --_g: 
        #0000 calc(-650%/13) calc(50%/13),var(--c) 0 calc(100%/13),
        #0000 0 calc(150%/13),var(--c) 0 calc(200%/13),
        #0000 0 calc(250%/13),var(--c) 0 calc(300%/13);
      --_g0: repeating-linear-gradient( 45deg,var(--_g));
      --_g1: repeating-linear-gradient(-45deg,var(--_g));
      background:
        var(--_g0),var(--_g0) var(--s) var(--s),
        var(--_g1),var(--_g1) var(--s) var(--s) #C02942;
      background-size: calc(2*var(--s)) calc(2*var(--s));
    
margin-right:-0.5rem; margin-left:-1%; padding-left: 0.8rem; border-bottom: 2px solid black; margin-bottom: 5%;">
    <div class="main-container">
        <!-- Left section -->
        <div class="left-section">
            <h1>Let's<br>contribute<br>to greater cause</h1>
            <p>Don't wait for perfect time. Make it perfect.</p><br>
            <a href="http://localhost/NectarOfService/fundraiser/campaigns_home.php"><button class="join-now-button">Contribute Now</button></a>
        </div>

        <!-- Right section -->
        <div class="right-section">
        <img src="http://localhost/NectarOfService/assets/images/main.png" alt="main_image" style="width: 100%;">
        </div>
        </div>  
    </div>
    <div class="backlines"><p>ate inspire contribute donate inspire contribute<br>ontribute donate inspire contribute</p></div>
    
    <div style="margin-bottom:1rem;">
    
        <?php include 'terminal_stats/terminal_stats.php'; ?>
    </div>
    <?php include 'newsletter/newsletter.php'; ?>
    <?php include 'footer.php'; ?>
</body>
