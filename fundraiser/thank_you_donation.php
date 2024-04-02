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

<style>
.container {
    width: 60%;
    height: 85%;
    display: flex;
    flex-direction: column;
    margin: auto;
    text-align: left;
    margin-top: 6rem;
    font-size: 21px;
    font-family: 'Cormorant Garamond';
    font-weight: 600;
}


.container button {
    color: #ffffff;
    font-size: 20px;
    padding: 1rem 19rem;
    background-color: #007BFF;
}

.container a {
    color: #000;
}
</style>

<?php include '../assets/header.php'; ?>

<body class="body">
    <div class="container">

        <h1>
            Thank you for your donation
        </h1>
        <p>Dear <?php echo $_SESSION['chi_donor_name']; ?>,</p>
        <p>Thank you for your contribution to the <?php echo $_SESSION['chi_campaign_name']; ?> campaign. Your support
            is greatly appreciated.<br><br>
            Sincerely,<br>
            Nectar of Service Team</p>

        <br>
        <div>
            <a href='http://localhost/NectarOfService/assets/scripts/generate_receipt.php'><button
                    class="header-button">Download Receipt</button></a>
            <br><br>
            Already downloaded ? Go back to <a href='http://localhost/NectarOfService/assets/landing_page.php'>Home</a>
        </div>
    </div>

</body>
<?php include '../assets/footer.php'; ?>