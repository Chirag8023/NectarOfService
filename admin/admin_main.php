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
        <a href="#"><button>Logout</button></a>   
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
            <h1>Analytics</h1>
            <div style="display:flex; flex-direction:column;">
            <h2>Total Donations (last 30 days)</h2>
            <div style="width: 1000px; margin: 0 auto;">
                <!-- Chart for total amount donated -->
                <canvas id="totalAmountChart" width=500></canvas>
            </div>
            <h2>Total contributors (last 30 days)</h2>
            <div style="width: 1000px; margin: 0 auto;">
                <!-- Chart for donations by date -->
                <canvas id="donationsByDateChart"></canvas>
            </div>
            <h2>Campaigns Performance (last 30 days)</h2>
            <div style="width: 500px; margin: 0 auto;">
                <!-- Chart for donations by campaign -->
                <canvas id="campaignsChart"></canvas> 
            </div>
            </div>
    </main>
    
    <script src="chart/chart_build.js"> </script>
</body>
</html>