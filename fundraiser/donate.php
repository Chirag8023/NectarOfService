<?php
include "../assets/scripts/dbconnect.php";

// Fetch data from fundraising_campaigns table
$campaign_id = $_GET['campaign_id'];
$query = "SELECT * FROM fundraising_campaigns WHERE id = $campaign_id";
$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $campaign_name = $row['title'];
    $description = $row['description'];
    $image_pathname =  '../assets/images/'. $row['image_filename'];
    $percentage = ($row["current_amount"] / $row["goal"]) * 100;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $campaign_name; ?></title>
    <link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
</head>
<body class='body' style="padding-left: 0;">
    <?php include "../assets/header.php";?>

    <div class="grid-container">
        <div class="donation-about">
            <h2 style="text-align: center;"><?php echo $campaign_name; ?></h2>
            <div class="donation-about-image-container">
                <img src="<?php echo $image_pathname; ?>" alt="Campaign Image">
            </div>
            <div class="description-container">
                <p><?php echo $description; ?></p>
            </div>
        </div>

        <div class="donation-section">
            <div class="donation-page-progress">
                <div class="donation-page-progress-bar" style="width: <?php echo min(100, $percentage); ?>%;"></div>
                <div class="donation-page-progress-text"><?php echo "Raised: ₹" .round($row['current_amount']).'/-<br>Goal: ₹'.round($row['goal']).'/-'; ?></div>
            </div>
            <h2>Donation Form</h2>
            <form id="donationForm" method="post" action="http://localhost/NectarOfService/assets/scripts/proceed_donation.php">
                <label for="donor_name">Donor Name:</label>
                <input type="text" name="donor_name" id="donor_name" required>

                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>

                <label for="phone_number">Phone Number:</label>
                <input type="tel" name="phone_number" id="phone_number" required>

                <label for="amount">Amount:</label>
                <input type="number" name="amount" id="amount" min="1" required>

                <label for="payment_type">Select Payment Type:</label>
                <select name="payment_type" id="payment_type" required>
                    <option value="paypal">PayPal</option>
                    <option value="upi">UPI</option>
                    <!-- Add more payment options if needed -->
                </select>

                <input type="hidden" name="campaign_id" value="<?php echo $_GET['campaign_id']; ?>">
                <input type="button" value="Donate" class="header-button" id="donateButton">
            </form>
        </div>
    </div>

    <?php include "../assets/footer.php";?>
    <script src="http://localhost/NectarOfService/assets/scripts/donate_page_script.js"></script>

</body>
</html>
