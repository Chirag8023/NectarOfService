<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marquee Heading</title>
    <link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
    <script src="http://localhost/NectarOfService/assets/scripts/fetch_donations.js"></script>
</head>
<body style="background-color: #14b68e;" class='body'>
<?php include "../assets/header.php"; ?>
    <div class="main-area">
    <h2>Ongoing Fundraising Campaigns</h2>
    <p style="color:#fff; margin-top:-10px; text-shadow: 1px 1px 2px #666;">*All campaigns are eligible  for 80D tax benefits.</p>
    <br>
    <div id="campaignContent">
        <?php include '../assets/scripts/get_ongoing_campaigns.php'; ?>
    </div>
    <br>
    <h2>Completed Fundraising Campaigns</h2>
    <br>
    <div id="completedCampaigns">
    <?php include '../assets/scripts/get_completed_campaigns.php'; ?>
    </div>
    </div>
    <div style="width:80%; margin-left:0rem; ">
    <?php include '../assets/footer.php'; ?>
    </div>
<div class="live-feed-heading"><h2>Live Activity</h2></div>
<div class="activity-feed">
        <div class="scroll-container">
            <div class="scroll-text">
                <ul id="donations-list"></ul>
            </div>
        </div>
</div>

</body>
</html>