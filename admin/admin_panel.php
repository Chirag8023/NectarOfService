<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_main_style.css">
</head>
<body>
    <header>
        <h1>admin panel</h1>      
        <a href="http://localhost/nectarofservice/admin/admin_logout.php" class="logout"><button>Logout</button></a>   
    </header>

    <aside class="sidebar">
        <nav class="nav">
            <ul id="nav-list">
                <li><a href="#" class="active" data-panel="dashboard">Dashboard</a></li>
                <li><a href="#" data-panel="campaigns">Campaigns</a></li>
                <li><a href="#" data-panel="newsletter">Newsletter</a></li>
                <li><a href="#" data-panel="donations">Donations</a></li>
            </ul>
        </nav>
    </aside>

    <main class="main-content" id="main-content">
        <!-- Content panels will be dynamically loaded here -->
        <div id="dashboard" class="panel"><?php include "admin_dashboard.php"; ?></div>
        <div id="campaigns" class="panel" style="display: none;"><?php include "scripts/admin_add_campaigns.php"; ?></div>
        <div id="newsletter" class="panel" style="display: none;"><?php include "scripts/admin_send_newsletter.php"; ?></div>
        <div id="donations" class="panel" style="display: none;"><?php include "scripts/admin_donations_download.php"; ?></div>
    </main>

    <script>
        // First, we get the navigation list element by its ID
        var navList = document.getElementById('nav-list');

        // Then, we add a click event listener to the navigation list
        navList.addEventListener('click', function(event) {
            // The event object contains information about the event
            // We can use it to get the element that was clicked (event.target)

            // We check if the clicked element is a link (an 'A' element)
            if (event.target.tagName === 'A') {
                // If it is, we first find the currently active link
                var activeLink = document.querySelector('.active');

                // Then, we remove the 'active' class from it
                activeLink.classList.remove('active');

                // Next, we add the 'active' class to the clicked link
                event.target.classList.add('active');

                // We then find all the panel elements
                var panels = document.querySelectorAll('.panel');

                // And loop through them
                panels.forEach(function(panel) {
                    // For each panel, we hide it by setting its display style to 'none'
                    panel.style.display = 'none';
                });

                // Finally, we find the panel that corresponds to the clicked link
                // The ID of this panel is stored in the 'data-panel' attribute of the link
                var clickedPanel = document.getElementById(event.target.dataset.panel);

                // And we show this panel by setting its display style to 'block'
                clickedPanel.style.display = 'block';

                // We also prevent the default action of the link
                // This stops the browser from navigating to the link's href
                event.preventDefault();
            }
        });
    </script>
</body>
</html>