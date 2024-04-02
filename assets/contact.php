    <link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
    <style>
/* Grid container */
.grid-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 40px;
    padding: 20px;
}

/* Left content */
.left-content {
    font-family: 'inter';
    margin-left: 1rem;
    font-size: 30px;
    color: #000;
    margin-top: -0.5rem;
}


.right-content {
    background-color: #fff;
    font-size: 20px;
    font-family: 'inter';
    font-weight: 600;
    margin-right: 1rem;
    border-radius: 1px;
    border: 3px solid black;
    box-shadow: 7px 7px rgba(0, 0, 0);
    padding: 20px;
    margin-bottom: 2rem;
}
    </style>
    <title>Contact Us</title>

    <body class="body">
        <?php include 'header.php'; ?>
        <div class="grid-container" style="padding-top: 4.5rem;">
            <div class="left-content">
                <h1>Contact us</h1>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut odio ac dolor tincidunt ultricies.
                    Phasellus vitae placerat turpis. Integer interdum nibh non diam malesuada, vitae venenatis libero
                    commodo. Nam tincidunt tellus at dui commodo, in tempus purus cursus.
                </p>
            </div>
            <div class="right-content">
                <h2 style="text-align:center; margin-bottom:2rem;">Contact Info</h2>
                <h4>Facebook. : @NectarOfService</h4>
                <h4>Instagram : @NectarOfService</h4>
                <h4>Email : NectarOfService@gmail.com</h4>
                <h4>Phone : +91 98XXXXXXXX</h4>
                <h4>Address : Sharda ComXXXX, XXXXXX,XXXXXX</h4>

            </div>
        </div>
        <?php include 'footer.php'; ?>
    </body>