<?php
// if session is not started previously then start the session
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(!isset($_SESSION['chi_receipt_number'])) {
    header('Location: http://localhost/NectarOfService/assets/404.php');
}
?>

<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<title> Thank You </title>

<?php include '../assets/header.php'; ?>

<body class="body">
    <div class="thank-you-container">
        <div>
            <a href='http://localhost/NectarOfService/assets/scripts/generate_receipt.php' style="color:#000;">
                <button id="receipt-icon">Download<br>Receipt</button></a>
        </div>
        <div>
        <h1 style="margin-bottom:0;">
            Thank you
        </h1>
        <p>Dear <?php echo $_SESSION['chi_donor_name']; ?>,</p>
        <p>We received your amount to the <?php echo $_SESSION['chi_campaign_name']; ?> campaign.<br> Your support
            is greatly appreciated.<br><br>
            Sincerely,<br>
            NectarOfService Team</p>

            <br>
            Already downloaded ? Go back to <a href='http://localhost/NectarOfService/assets/landing_page.php' style="color:#000;">Home</a>
        </div>
    </div>

</body>
<?php include '../assets/footer.php'; ?>