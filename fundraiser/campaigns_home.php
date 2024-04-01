    <title>Marquee Heading</title>
    <link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
    <script src="http://localhost/NectarOfService/assets/scripts/fetch_donations.js"></script>
<body style="background-image:url('http://localhost/NectarOfService/assets/images/camp_home.svg');" class='body'>
<?php include "../assets/header.php"; ?>
    <div class="main-area">
    <h2>Ongoing Campaigns</h2>
    <p style="color:#fff; margin-top:-1.2rem; font-weight:500;">*All campaigns are eligible  for 80D tax benefits.</p>
    <br>
    <div id="campaignContent">
        <?php include '../assets/scripts/get_ongoing_campaigns.php'; ?>
    </div>
    <br>
    <h2>Recent Campaigns</h2>
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
