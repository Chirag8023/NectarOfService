<?php
// if session is not started previously then start the session
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(!isset($_SESSION['receipt_number'])) {
    header('Location: http://localhost/NectarOfService/assets/404.php');
}
?>


<style>
    .container {
        width: 80%;
        display: flex;
        flex-direction: column;
        margin: auto;
        padding: 20px;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        background-color: #f9f9f9;
        margin-top: 5rem;
    }

    .container h1 {
        color: #333;
        font-size: 2em;
        margin-bottom: 20px;
    }

    .container  p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 10px;
    }

    .container button {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 20px 2px;
        cursor: pointer;
        border-radius: 4px;
    }

    .container button:hover {
        background-color: #0056b3;
    }
</style>

<?php include '../assets/header.php'; ?>

<div class="container">
    
            <h1><a href='http://localhost/NectarOfService/assets/scripts/generate_receipt.php'><button>download receipt</button></a>
            Thank you for your donation
            <a href='http://localhost/NectarOfService/assets/landing_page.php'><button>Go bak Home</button></a></h1>
            <p>Dear <?php echo $_SESSION['donor_name']; ?>,</p>
            <p>Thank you for your contribution of ₹ <?php echo $_SESSION['amount']; ?>/- to the <?php echo $_SESSION['campaign_name']; unset($_SESSION['campaign_name']); ?> campaign. Your support is greatly appreciated.</p>
            <p>Sincerely,</p>
            <p>Nectar of Service Team</p>
            <p>Receipt Number: <?php echo $_SESSION['receipt_number']; ?></p>
            <p>Date: <?php echo $_SESSION['date']; ?></p>
            
            

</div>


<?php include '../assets/footer.php'; ?>
