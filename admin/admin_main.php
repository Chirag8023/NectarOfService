<?php
// define a base path of this file
define('ADMIN_MAIN_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_MAIN_BASE_PATH .'../assets/scripts/auth_check.php';
?>

<title>Admin Dashboard</title>
<script src="package/dist/chart.umd.js"></script>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">
    <?php include ADMIN_MAIN_BASE_PATH . 'pages/admin_header.php'; ?>

    <aside class="sidebar">
        <nav class="nav">
            <ul id="nav-list">

                <li><a style="font-size:1.4rem; font-weight:700;">Menu</a></li>
                <hr>
                <li><a href="http://localhost/nectarofservice/admin/pages/admin_campaigns.php">Campaigns</a></li>
                <li><a href="http://localhost/nectarofservice/admin/pages/admin_newsletter.php">Newsletter</a></li>
                <li><a href="http://localhost/nectarofservice/admin/pages/admin_donations.php">Donations</a></li>
                <li><a href="http://localhost/nectarofservice/admin/pages/admin_social_buzz.php">Social Buzz</a></li>
            </ul>
        </nav>
    </aside>

    <main class="main-content">
        <div
            style="display:flex; justify-content:space-between; align-items:center; margin-top:1rem; margin-bottom:0.5rem;">
            <h1>Analytics</h1>
            <div>
                <button onclick="show('totalAmount')" style="background:#03DAC655; color:#000; font-weight:600;">Show
                    Total Donations</button>
                <button onclick="show('donationsByDate')"
                    style="background:#6200EAAA; color:#000; font-weight:600;">Show Total Contributors</button>
                <button onclick="show('campaigns')" style="background:#FF408199; color:#000; font-weight:600;">Show
                    Campaigns Performance</button>
            </div>
        </div>
        <hr>

        <div id="totalAmount">
            <h2>Total Donations (last 30 days)</h2>
            <div style="width: 950px; margin: 0 auto;">
                <canvas id="totalAmountChart" width=500></canvas>
            </div>
        </div>

        <div id="donationsByDate" style="display: none;">
            <h2>Total contributors (last 30 days)</h2>
            <div style="width: 950px; margin: 0 auto;">
                <canvas id="donationsByDateChart"></canvas>
            </div>
        </div>

        <div id="campaigns" style="display: none;">
            <h2>Campaigns Performance (last 30 days)</h2>
            <div style="width: 470px; margin: 0 auto;">
                <canvas id="campaignsChart"></canvas>
            </div>
        </div>
    </main>

    <script src="chart/chart_build.js"> </script>
</body>