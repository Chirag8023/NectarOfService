<?php
// define a base path of this file
define('ADMIN_MAIN_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_MAIN_BASE_PATH .'../assets/scripts/auth_check.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script src="package/dist/chart.umd.js"></script>
    <link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">
</head>
<body>
    <header>
        <h3>NectarOfService</h3>      
        <h2>ADMIN DASHBOARD</h2>
        <a href="http://localhost/nectarofservice/assets/scripts/admin_logout.php"><button>Logout</button></a>   
    </header>

    <aside class="sidebar">
        <nav class="nav">
            <ul id="nav-list">
                
                <li><a style="font-size:1.4rem; font-weight:700;">Menu</a></li>
                <hr>
                <li><a href="#">Campaigns</a></li>
                <li><a href="#">Newsletter</a></li>
                <li><a href="#">Donations</a></li>
            </ul>
        </nav>
    </aside>

    <main class="main-content">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-top:1rem; margin-bottom:0.5rem;">
            <h1>Analytics</h1>
            <div>
            <button onclick="show('totalAmount')">Show Total Donations</button>
            <button onclick="show('donationsByDate')">Show Total Contributors</button>
            <button onclick="show('campaigns')">Show Campaigns Performance</button>
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
</html>